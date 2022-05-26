# Changelog
All notable changes to this project will be documented in this file.

## [Unreleased]

## [0.0.3]
- Allow requirement for revscoring 2.11.x
- Rebuilds models with revscoring-2.8.2
- Update deploy script to explicitly install twine.
- Retuned and retrained ptwiki model with more data

## [0.0.2]

### Added
- Add polarity score features to enwiki feature list d306559
- Add `words_to_watch` to enwiki feature list 458cdfa
- Added requirement for revscoring v2.5.1
- Added json2tsv in requirements.txt
- Release Criteria.
- Feature list for ptwiki

### Changed
- Included NLTK Wordnet and SentiWordnet requirements to README

## [0.0.1] - 2017-01-31
First release on PyPI
### Added
- Added `cache2score` script
- Added enwiki feature lists
- Added cache2feature_tsv.py
