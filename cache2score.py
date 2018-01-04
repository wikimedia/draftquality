"""
Converts a feature cache into a set of scores.  Adds a 'score' field to the
JSON observation and deletes the 'cache' field.

Usage:
    cache2score.py <model-file>
                   [--verbose]
                   [--debug]


Options:
    -h --help               Prints this documentation
    <model-file>            A model to use when predicting
    --verbose               Prints dots and stuff to indicate progress.
    --debug                 Print debug logging.
"""
import logging
import sys
import traceback

import docopt
from revscoring import ScorerModel
from revscoring.dependencies import solve
from revscoring.utilities.util import dump_observation, read_observations


def main(argv=None):
    args = docopt.docopt(__doc__, argv=argv)

    logging.basicConfig(
        level=logging.INFO if not args['--debug'] else logging.DEBUG,
        format='%(asctime)s %(levelname)s:%(name)s -- %(message)s'
    )

    observations = read_observations(sys.stdin)

    model = ScorerModel.load(open(args['<model-file>']))
    verbose = args['--verbose']

    run(observations, model, verbose)


def run(observations, model, verbose):

    for ob in observations:
        try:
            features = list(solve(model.features, cache=ob['cache']))
            ob['score'] = model.score(features)
            del ob['cache']
            dump_observation(ob, sys.stdout)
            if verbose:
                sys.stderr.write(".")
                sys.stderr.flush()
        except:  # noqa: E722
            # We're naughty to eat all exceptions.
            sys.stderr.write(traceback.format_exc())

    if verbose:
        sys.stderr.write("\n")


if __name__ == "__main__":
    main(sys.argv[1:])
