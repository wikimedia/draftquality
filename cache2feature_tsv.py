"""
Converts a feature cache into a feature TSV.

Usage:
    cache2feature_tsv.py <features> <label>
                         [--verbose]
                         [--debug]
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
        except:
            sys.stderr.write(traceback.format_exc())

    if verbose:
        sys.stderr.write("\n")
