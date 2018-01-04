"""
Fetches the wikitext for a set of draft revisions.

Usage:
    fetch_text --host=<url>

Options:
    -h --help     Prints this documentation
    --host=<url>  The URL of the MediaWiki host to query
"""
import mwapi
from revscoring.utilities.util import get_user_pass

USER_AGENT = "Draft quality fetch_text script <ahalfaker@wikimedia.org>"


# TODO: commandline glue
# def main():


def run(host, observations):
    username, password = get_user_pass(host)
    session = mwapi.Session(host, user_agent=USER_AGENT)
    session.login(username, password)
