"""
This package contains a set of utilities and assets for
building and maintaining draft (new article creation) quality
prediction models for Wikipedia.

In this package, you'll find the
:mod:`feature lists <draftquality.feature_lists>` used to train models
for the supported wiki.

See the :ref:`API Reference <api_reference>` for low level details.
"""

from .about import (__author__, __author_email__, __description__, __name__,
                    __url__, __version__)

__all__ = [__name__, __version__, __author__, __author_email__,
           __description__, __url__]
