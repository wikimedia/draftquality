# Model tuning report
- Revscoring version: 2.3.0
- Features: draftquality.feature_lists.enwiki.draft_quality
- Date: 2019-01-23T14:27:55.320051
- Observations: 201261
- Labels: ["OK", "spam", "vandalism", "attack"]
- Statistic: roc_auc.macro (maximize)
- Folds: 5

# Top scoring configurations
| model                  |   roc_auc.macro | params                                                                         |
|:-----------------------|----------------:|:-------------------------------------------------------------------------------|
| RandomForestClassifier |          0.9719 | n_estimators=640, min_samples_leaf=3, criterion="entropy", max_features="log2" |
| RandomForestClassifier |          0.9718 | n_estimators=320, min_samples_leaf=3, criterion="entropy", max_features="log2" |
| RandomForestClassifier |          0.9716 | n_estimators=320, min_samples_leaf=5, criterion="entropy", max_features="log2" |
| RandomForestClassifier |          0.9716 | n_estimators=320, min_samples_leaf=3, criterion="gini", max_features="log2"    |
| RandomForestClassifier |          0.9716 | n_estimators=640, min_samples_leaf=1, criterion="entropy", max_features="log2" |
| RandomForestClassifier |          0.9716 | n_estimators=640, min_samples_leaf=7, criterion="entropy", max_features="log2" |
| RandomForestClassifier |          0.9715 | n_estimators=640, min_samples_leaf=5, criterion="gini", max_features="log2"    |
| RandomForestClassifier |          0.9715 | n_estimators=640, min_samples_leaf=5, criterion="entropy", max_features="log2" |
| RandomForestClassifier |          0.9715 | n_estimators=640, min_samples_leaf=3, criterion="gini", max_features="log2"    |
| RandomForestClassifier |          0.9714 | n_estimators=320, min_samples_leaf=7, criterion="entropy", max_features="log2" |

# Models
## RandomForestClassifier
|   roc_auc.macro | params                                                                          |
|----------------:|:--------------------------------------------------------------------------------|
|          0.9719 | n_estimators=640, min_samples_leaf=3, criterion="entropy", max_features="log2"  |
|          0.9718 | n_estimators=320, min_samples_leaf=3, criterion="entropy", max_features="log2"  |
|          0.9716 | n_estimators=320, min_samples_leaf=5, criterion="entropy", max_features="log2"  |
|          0.9716 | n_estimators=320, min_samples_leaf=3, criterion="gini", max_features="log2"     |
|          0.9716 | n_estimators=640, min_samples_leaf=1, criterion="entropy", max_features="log2"  |
|          0.9716 | n_estimators=640, min_samples_leaf=7, criterion="entropy", max_features="log2"  |
|          0.9715 | n_estimators=640, min_samples_leaf=5, criterion="gini", max_features="log2"     |
|          0.9715 | n_estimators=640, min_samples_leaf=5, criterion="entropy", max_features="log2"  |
|          0.9715 | n_estimators=640, min_samples_leaf=3, criterion="gini", max_features="log2"     |
|          0.9714 | n_estimators=320, min_samples_leaf=7, criterion="entropy", max_features="log2"  |
|          0.9713 | n_estimators=320, min_samples_leaf=1, criterion="entropy", max_features="log2"  |
|          0.9713 | n_estimators=160, min_samples_leaf=3, criterion="entropy", max_features="log2"  |
|          0.9713 | n_estimators=640, min_samples_leaf=7, criterion="gini", max_features="log2"     |
|          0.9713 | n_estimators=160, min_samples_leaf=3, criterion="gini", max_features="log2"     |
|          0.9712 | n_estimators=320, min_samples_leaf=5, criterion="gini", max_features="log2"     |
|          0.9712 | n_estimators=640, min_samples_leaf=1, criterion="gini", max_features="log2"     |
|          0.9711 | n_estimators=160, min_samples_leaf=5, criterion="entropy", max_features="log2"  |
|          0.9711 | n_estimators=160, min_samples_leaf=7, criterion="entropy", max_features="log2"  |
|          0.9711 | n_estimators=160, min_samples_leaf=7, criterion="gini", max_features="log2"     |
|          0.9709 | n_estimators=160, min_samples_leaf=5, criterion="gini", max_features="log2"     |
|          0.9709 | n_estimators=320, min_samples_leaf=7, criterion="gini", max_features="log2"     |
|          0.9708 | n_estimators=80, min_samples_leaf=7, criterion="gini", max_features="log2"      |
|          0.9708 | n_estimators=640, min_samples_leaf=13, criterion="entropy", max_features="log2" |
|          0.9707 | n_estimators=80, min_samples_leaf=5, criterion="gini", max_features="log2"      |
|          0.9707 | n_estimators=320, min_samples_leaf=13, criterion="entropy", max_features="log2" |
|          0.9705 | n_estimators=80, min_samples_leaf=7, criterion="entropy", max_features="log2"   |
|          0.9705 | n_estimators=80, min_samples_leaf=5, criterion="entropy", max_features="log2"   |
|          0.9705 | n_estimators=160, min_samples_leaf=13, criterion="entropy", max_features="log2" |
|          0.9705 | n_estimators=640, min_samples_leaf=13, criterion="gini", max_features="log2"    |
|          0.9705 | n_estimators=80, min_samples_leaf=3, criterion="gini", max_features="log2"      |
|          0.9704 | n_estimators=320, min_samples_leaf=1, criterion="gini", max_features="log2"     |
|          0.9704 | n_estimators=320, min_samples_leaf=13, criterion="gini", max_features="log2"    |
|          0.9703 | n_estimators=160, min_samples_leaf=13, criterion="gini", max_features="log2"    |
|          0.9702 | n_estimators=80, min_samples_leaf=13, criterion="gini", max_features="log2"     |
|          0.9702 | n_estimators=80, min_samples_leaf=3, criterion="entropy", max_features="log2"   |
|          0.9701 | n_estimators=80, min_samples_leaf=13, criterion="entropy", max_features="log2"  |
|          0.9698 | n_estimators=40, min_samples_leaf=7, criterion="entropy", max_features="log2"   |
|          0.9696 | n_estimators=40, min_samples_leaf=13, criterion="entropy", max_features="log2"  |
|          0.9696 | n_estimators=40, min_samples_leaf=13, criterion="gini", max_features="log2"     |
|          0.9695 | n_estimators=160, min_samples_leaf=1, criterion="entropy", max_features="log2"  |
|          0.9695 | n_estimators=40, min_samples_leaf=7, criterion="gini", max_features="log2"      |
|          0.9693 | n_estimators=40, min_samples_leaf=5, criterion="entropy", max_features="log2"   |
|          0.969  | n_estimators=160, min_samples_leaf=1, criterion="gini", max_features="log2"     |
|          0.969  | n_estimators=40, min_samples_leaf=5, criterion="gini", max_features="log2"      |
|          0.9685 | n_estimators=40, min_samples_leaf=3, criterion="gini", max_features="log2"      |
|          0.9684 | n_estimators=40, min_samples_leaf=3, criterion="entropy", max_features="log2"   |
|          0.9683 | n_estimators=20, min_samples_leaf=13, criterion="entropy", max_features="log2"  |
|          0.9683 | n_estimators=20, min_samples_leaf=13, criterion="gini", max_features="log2"     |
|          0.9678 | n_estimators=20, min_samples_leaf=7, criterion="entropy", max_features="log2"   |
|          0.9676 | n_estimators=20, min_samples_leaf=7, criterion="gini", max_features="log2"      |
|          0.9672 | n_estimators=80, min_samples_leaf=1, criterion="entropy", max_features="log2"   |
|          0.9669 | n_estimators=80, min_samples_leaf=1, criterion="gini", max_features="log2"      |
|          0.9669 | n_estimators=20, min_samples_leaf=5, criterion="gini", max_features="log2"      |
|          0.9663 | n_estimators=10, min_samples_leaf=13, criterion="gini", max_features="log2"     |
|          0.9661 | n_estimators=20, min_samples_leaf=5, criterion="entropy", max_features="log2"   |
|          0.965  | n_estimators=10, min_samples_leaf=13, criterion="entropy", max_features="log2"  |
|          0.9644 | n_estimators=20, min_samples_leaf=3, criterion="gini", max_features="log2"      |
|          0.9639 | n_estimators=10, min_samples_leaf=7, criterion="gini", max_features="log2"      |
|          0.9632 | n_estimators=20, min_samples_leaf=3, criterion="entropy", max_features="log2"   |
|          0.9629 | n_estimators=10, min_samples_leaf=7, criterion="entropy", max_features="log2"   |
|          0.9619 | n_estimators=40, min_samples_leaf=1, criterion="gini", max_features="log2"      |
|          0.9615 | n_estimators=10, min_samples_leaf=5, criterion="gini", max_features="log2"      |
|          0.9612 | n_estimators=40, min_samples_leaf=1, criterion="entropy", max_features="log2"   |
|          0.9608 | n_estimators=10, min_samples_leaf=5, criterion="entropy", max_features="log2"   |
|          0.9544 | n_estimators=10, min_samples_leaf=3, criterion="gini", max_features="log2"      |
|          0.9522 | n_estimators=10, min_samples_leaf=3, criterion="entropy", max_features="log2"   |
|          0.9498 | n_estimators=20, min_samples_leaf=1, criterion="gini", max_features="log2"      |
|          0.9483 | n_estimators=20, min_samples_leaf=1, criterion="entropy", max_features="log2"   |
|          0.9256 | n_estimators=10, min_samples_leaf=1, criterion="entropy", max_features="log2"   |
|          0.9248 | n_estimators=10, min_samples_leaf=1, criterion="gini", max_features="log2"      |

## GradientBoosting
|   roc_auc.macro | params                                                                 |
|----------------:|:-----------------------------------------------------------------------|
|          0.97   | n_estimators=300, learning_rate=0.1, max_depth=5, max_features="log2"  |
|          0.9699 | n_estimators=100, learning_rate=0.1, max_depth=7, max_features="log2"  |
|          0.969  | n_estimators=500, learning_rate=0.1, max_depth=3, max_features="log2"  |
|          0.9682 | n_estimators=100, learning_rate=0.1, max_depth=5, max_features="log2"  |
|          0.9681 | n_estimators=300, learning_rate=0.1, max_depth=3, max_features="log2"  |
|          0.9661 | n_estimators=300, learning_rate=0.5, max_depth=3, max_features="log2"  |
|          0.966  | n_estimators=700, learning_rate=0.5, max_depth=1, max_features="log2"  |
|          0.9655 | n_estimators=500, learning_rate=0.5, max_depth=1, max_features="log2"  |
|          0.9654 | n_estimators=100, learning_rate=0.1, max_depth=3, max_features="log2"  |
|          0.9652 | n_estimators=300, learning_rate=0.5, max_depth=1, max_features="log2"  |
|          0.965  | n_estimators=100, learning_rate=0.5, max_depth=3, max_features="log2"  |
|          0.9649 | n_estimators=700, learning_rate=0.1, max_depth=1, max_features="log2"  |
|          0.9648 | n_estimators=100, learning_rate=0.5, max_depth=5, max_features="log2"  |
|          0.9645 | n_estimators=100, learning_rate=0.01, max_depth=7, max_features="log2" |
|          0.964  | n_estimators=500, learning_rate=0.1, max_depth=1, max_features="log2"  |
|          0.9639 | n_estimators=500, learning_rate=0.5, max_depth=3, max_features="log2"  |
|          0.9637 | n_estimators=500, learning_rate=0.01, max_depth=3, max_features="log2" |
|          0.9634 | n_estimators=100, learning_rate=0.5, max_depth=1, max_features="log2"  |
|          0.9624 | n_estimators=300, learning_rate=0.1, max_depth=1, max_features="log2"  |
|          0.9619 | n_estimators=100, learning_rate=0.01, max_depth=5, max_features="log2" |
|          0.9609 | n_estimators=300, learning_rate=0.01, max_depth=3, max_features="log2" |
|          0.9592 | n_estimators=100, learning_rate=1, max_depth=1, max_features="log2"    |
|          0.9582 | n_estimators=100, learning_rate=1, max_depth=3, max_features="log2"    |
|          0.9571 | n_estimators=100, learning_rate=0.01, max_depth=3, max_features="log2" |
|          0.9571 | n_estimators=100, learning_rate=0.1, max_depth=1, max_features="log2"  |
|          0.9569 | n_estimators=300, learning_rate=0.5, max_depth=5, max_features="log2"  |
|          0.9563 | n_estimators=300, learning_rate=1, max_depth=1, max_features="log2"    |
|          0.955  | n_estimators=700, learning_rate=0.01, max_depth=1, max_features="log2" |
|          0.9548 | n_estimators=500, learning_rate=1, max_depth=1, max_features="log2"    |
|          0.9538 | n_estimators=100, learning_rate=0.5, max_depth=7, max_features="log2"  |
|          0.9526 | n_estimators=500, learning_rate=0.01, max_depth=1, max_features="log2" |
|          0.9498 | n_estimators=300, learning_rate=0.01, max_depth=1, max_features="log2" |
|          0.948  | n_estimators=100, learning_rate=1, max_depth=5, max_features="log2"    |
|          0.9456 | n_estimators=100, learning_rate=0.01, max_depth=1, max_features="log2" |
|          0.9303 | n_estimators=300, learning_rate=1, max_depth=3, max_features="log2"    |
|          0.9188 | n_estimators=700, learning_rate=1, max_depth=1, max_features="log2"    |
|          0.9125 | n_estimators=100, learning_rate=1, max_depth=7, max_features="log2"    |
|          0.8686 | n_estimators=300, learning_rate=1, max_depth=5, max_features="log2"    |
|          0.7805 | n_estimators=500, learning_rate=1, max_depth=3, max_features="log2"    |

## LogisticRegression
|   roc_auc.macro | params              |
|----------------:|:--------------------|
|          0.9154 | C=1, penalty="l2"   |
|          0.9139 | C=0.1, penalty="l2" |
|          0.9124 | C=10, penalty="l2"  |

