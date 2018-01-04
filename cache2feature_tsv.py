"""
Converts a feature cache into a feature TSV.

Usage:
    cache2feature_tsv.py <features> <label>
                         [--verbose]
                         [--debug]


Options:
    -h --help               Prints this documentation
    <features>              Classpath to an list of features to use when
                            constructing the model
    <label>                 The name of the field to be predicted
    --verbose               Prints dots and stuff to indicate progress.
    --debug                 Print debug logging.
"""
import logging
import sys
import traceback

import docopt
import mysqltsv
import yamlconf
from revscoring.dependencies import solve
from revscoring.utilities.util import read_observations


def main(argv=None):
    args = docopt.docopt(__doc__, argv=argv)

    logging.basicConfig(
        level=logging.INFO if not args['--debug'] else logging.DEBUG,
        format='%(asctime)s %(levelname)s:%(name)s -- %(message)s'
    )

    observations = read_observations(sys.stdin)

    sys.path.insert(0, ".")  # Search local directory first
    features = yamlconf.import_module(args['<features>'])
    label_name = args['<label>']
    verbose = args['--verbose']

    run(observations, features, label_name, verbose)


def run(observations, features, label_name, verbose):
    writer = mysqltsv.Writer(
        sys.stdout, headers=[str(f) for f in features] + [label_name])

    for ob in observations:
        try:
            row = list(solve(features, cache=ob['cache'])) + [ob[label_name]]
            writer.write(row)
            if verbose:
                sys.stderr.write(".")
                sys.stderr.flush()
        except:  # noqa: E722
            # Naughty indiscriminate exception consumption.
            sys.stderr.write(traceback.format_exc())

    if verbose:
        sys.stderr.write("\n")


if __name__ == "__main__":
    main(sys.argv[1:])
