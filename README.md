# draftquality

Warning: As of late 2023, the ORES infrastructure is being deprecated by the
WMF  Machine Learning team, please check
https://wikitech.wikimedia.org/wiki/ORES for more info.

While the code in this repository may still work, it is unmaintained, and as
such may break at any time. Special consideration should also be given to
machine learning models seeing drift in quality of predictions.

The replacement for ORES and associated infrastructure is Lift Wing:
https://wikitech.wikimedia.org/wiki/Machine_Learning/LiftWing

Some Revscoring models from ORES run on the Lift Wing infrastructure, but they
are otherwise unsupported (no new training or code updates).

They can be downloaded from the links documented at:
https://wikitech.wikimedia.org/wiki/Machine_Learning/LiftWing#Revscoring_models_(migrated_from_ORES)

In the long term, some or all these models *may* be replaced by newer models
specifically tailored to be run on modern ML infrastructure like Lift Wing.

If you have any questions, contact the WMF Machine Learning team:
https://wikitech.wikimedia.org/wiki/Machine_Learning

This library provides a set of utilities for building and maintaining
draft (new article creation) quality prediction models for Wikipedia.

* **Installation:** ``pip install draftquality``
* **Repository:** https://github.com/wikimedia/draftquality
* **License:** MIT

## Requirements

Optionally requires the following based on usage:

* NLTK SentiWordnet - ``python -m nltk.downloader sentiwordnet``
* NLTK Wordnet - ``python -m nltk.downloader wordnet``

## Author
* Aaron Halfaker -- https://github.com/halfak
