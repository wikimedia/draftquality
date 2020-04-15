# Model tuning report
- Revscoring version: 2.6.9
- Features: draftquality.feature_lists.ptwiki.draft_quality
- Date: 2020-04-15T21:02:48.609811
- Observations: 3947
- Labels: ["OK", "spam", "unsuitable"]
- Statistic: roc_auc.macro (maximize)
- Folds: 5

# Top scoring configurations
| model                  |   roc_auc.macro | params                                                                      |
|:-----------------------|----------------:|:----------------------------------------------------------------------------|
| GradientBoosting       |          0.8878 | n_estimators=700, max_depth=7, learning_rate=0.01, max_features="log2"      |
| GradientBoosting       |          0.8872 | n_estimators=500, max_depth=7, learning_rate=0.01, max_features="log2"      |
| GradientBoosting       |          0.8867 | n_estimators=300, max_depth=7, learning_rate=0.1, max_features="log2"       |
| GradientBoosting       |          0.8849 | n_estimators=500, max_depth=7, learning_rate=0.1, max_features="log2"       |
| GradientBoosting       |          0.8848 | n_estimators=700, max_depth=5, learning_rate=0.01, max_features="log2"      |
| GradientBoosting       |          0.8843 | n_estimators=700, max_depth=7, learning_rate=0.1, max_features="log2"       |
| GradientBoosting       |          0.8841 | n_estimators=300, max_depth=7, learning_rate=0.01, max_features="log2"      |
| RandomForestClassifier |          0.8837 | min_samples_leaf=1, criterion="gini", n_estimators=640, max_features="log2" |
| GradientBoosting       |          0.8834 | n_estimators=300, max_depth=5, learning_rate=0.1, max_features="log2"       |
| GradientBoosting       |          0.8831 | n_estimators=700, max_depth=5, learning_rate=0.1, max_features="log2"       |

# Models
## LogisticRegression
|   roc_auc.macro | params              |
|----------------:|:--------------------|
|          0.8492 | penalty="l1", C=1   |
|          0.847  | penalty="l1", C=10  |
|          0.8469 | penalty="l2", C=1   |
|          0.8455 | penalty="l2", C=0.1 |
|          0.8421 | penalty="l1", C=0.1 |
|          0.8417 | penalty="l2", C=10  |

## GradientBoosting
|   roc_auc.macro | params                                                                 |
|----------------:|:-----------------------------------------------------------------------|
|          0.8878 | n_estimators=700, max_depth=7, learning_rate=0.01, max_features="log2" |
|          0.8872 | n_estimators=500, max_depth=7, learning_rate=0.01, max_features="log2" |
|          0.8867 | n_estimators=300, max_depth=7, learning_rate=0.1, max_features="log2"  |
|          0.8849 | n_estimators=500, max_depth=7, learning_rate=0.1, max_features="log2"  |
|          0.8848 | n_estimators=700, max_depth=5, learning_rate=0.01, max_features="log2" |
|          0.8843 | n_estimators=700, max_depth=7, learning_rate=0.1, max_features="log2"  |
|          0.8841 | n_estimators=300, max_depth=7, learning_rate=0.01, max_features="log2" |
|          0.8834 | n_estimators=300, max_depth=5, learning_rate=0.1, max_features="log2"  |
|          0.8831 | n_estimators=700, max_depth=5, learning_rate=0.1, max_features="log2"  |
|          0.8828 | n_estimators=100, max_depth=7, learning_rate=0.1, max_features="log2"  |
|          0.8825 | n_estimators=500, max_depth=5, learning_rate=0.01, max_features="log2" |
|          0.8822 | n_estimators=500, max_depth=5, learning_rate=0.1, max_features="log2"  |
|          0.8808 | n_estimators=100, max_depth=5, learning_rate=0.1, max_features="log2"  |
|          0.8802 | n_estimators=300, max_depth=3, learning_rate=0.1, max_features="log2"  |
|          0.8778 | n_estimators=500, max_depth=3, learning_rate=0.1, max_features="log2"  |
|          0.8776 | n_estimators=100, max_depth=7, learning_rate=0.5, max_features="log2"  |
|          0.8763 | n_estimators=700, max_depth=3, learning_rate=0.1, max_features="log2"  |
|          0.876  | n_estimators=300, max_depth=5, learning_rate=0.01, max_features="log2" |
|          0.8756 | n_estimators=100, max_depth=3, learning_rate=0.1, max_features="log2"  |
|          0.8744 | n_estimators=700, max_depth=3, learning_rate=0.01, max_features="log2" |
|          0.8731 | n_estimators=300, max_depth=5, learning_rate=0.5, max_features="log2"  |
|          0.8731 | n_estimators=300, max_depth=7, learning_rate=0.5, max_features="log2"  |
|          0.872  | n_estimators=100, max_depth=7, learning_rate=0.01, max_features="log2" |
|          0.8714 | n_estimators=500, max_depth=5, learning_rate=0.5, max_features="log2"  |
|          0.8713 | n_estimators=500, max_depth=7, learning_rate=0.5, max_features="log2"  |
|          0.8704 | n_estimators=100, max_depth=7, learning_rate=1, max_features="log2"    |
|          0.8702 | n_estimators=700, max_depth=5, learning_rate=0.5, max_features="log2"  |
|          0.8695 | n_estimators=100, max_depth=5, learning_rate=0.5, max_features="log2"  |
|          0.8693 | n_estimators=500, max_depth=3, learning_rate=0.01, max_features="log2" |
|          0.8692 | n_estimators=700, max_depth=1, learning_rate=0.1, max_features="log2"  |
|          0.8681 | n_estimators=500, max_depth=1, learning_rate=0.1, max_features="log2"  |
|          0.8671 | n_estimators=300, max_depth=3, learning_rate=0.5, max_features="log2"  |
|          0.8651 | n_estimators=700, max_depth=7, learning_rate=0.5, max_features="log2"  |
|          0.8644 | n_estimators=300, max_depth=1, learning_rate=0.1, max_features="log2"  |
|          0.8635 | n_estimators=500, max_depth=3, learning_rate=0.5, max_features="log2"  |
|          0.863  | n_estimators=500, max_depth=5, learning_rate=1, max_features="log2"    |
|          0.8626 | n_estimators=100, max_depth=1, learning_rate=0.5, max_features="log2"  |
|          0.8621 | n_estimators=100, max_depth=5, learning_rate=0.01, max_features="log2" |
|          0.8616 | n_estimators=100, max_depth=3, learning_rate=0.5, max_features="log2"  |
|          0.8615 | n_estimators=300, max_depth=5, learning_rate=1, max_features="log2"    |
|          0.8612 | n_estimators=700, max_depth=3, learning_rate=0.5, max_features="log2"  |
|          0.86   | n_estimators=500, max_depth=7, learning_rate=1, max_features="log2"    |
|          0.86   | n_estimators=300, max_depth=3, learning_rate=0.01, max_features="log2" |
|          0.8599 | n_estimators=700, max_depth=5, learning_rate=1, max_features="log2"    |
|          0.8596 | n_estimators=300, max_depth=1, learning_rate=0.5, max_features="log2"  |
|          0.8587 | n_estimators=700, max_depth=7, learning_rate=1, max_features="log2"    |
|          0.8569 | n_estimators=700, max_depth=3, learning_rate=1, max_features="log2"    |
|          0.8564 | n_estimators=500, max_depth=1, learning_rate=0.5, max_features="log2"  |
|          0.8528 | n_estimators=500, max_depth=3, learning_rate=1, max_features="log2"    |
|          0.852  | n_estimators=100, max_depth=1, learning_rate=1, max_features="log2"    |
|          0.8515 | n_estimators=300, max_depth=3, learning_rate=1, max_features="log2"    |
|          0.8513 | n_estimators=100, max_depth=1, learning_rate=0.1, max_features="log2"  |
|          0.8468 | n_estimators=700, max_depth=1, learning_rate=0.5, max_features="log2"  |
|          0.845  | n_estimators=100, max_depth=3, learning_rate=0.01, max_features="log2" |
|          0.8436 | n_estimators=700, max_depth=1, learning_rate=0.01, max_features="log2" |
|          0.843  | n_estimators=100, max_depth=3, learning_rate=1, max_features="log2"    |
|          0.8409 | n_estimators=100, max_depth=5, learning_rate=1, max_features="log2"    |
|          0.8393 | n_estimators=500, max_depth=1, learning_rate=1, max_features="log2"    |
|          0.8383 | n_estimators=700, max_depth=1, learning_rate=1, max_features="log2"    |
|          0.8372 | n_estimators=500, max_depth=1, learning_rate=0.01, max_features="log2" |
|          0.8284 | n_estimators=300, max_depth=1, learning_rate=0.01, max_features="log2" |
|          0.8215 | n_estimators=300, max_depth=1, learning_rate=1, max_features="log2"    |
|          0.818  | n_estimators=100, max_depth=1, learning_rate=0.01, max_features="log2" |
|          0.8036 | n_estimators=300, max_depth=7, learning_rate=1, max_features="log2"    |

## RandomForestClassifier
|   roc_auc.macro | params                                                                          |
|----------------:|:--------------------------------------------------------------------------------|
|          0.8837 | min_samples_leaf=1, criterion="gini", n_estimators=640, max_features="log2"     |
|          0.8828 | min_samples_leaf=1, criterion="entropy", n_estimators=640, max_features="log2"  |
|          0.8817 | min_samples_leaf=1, criterion="gini", n_estimators=320, max_features="log2"     |
|          0.8813 | min_samples_leaf=1, criterion="entropy", n_estimators=320, max_features="log2"  |
|          0.8809 | min_samples_leaf=1, criterion="gini", n_estimators=160, max_features="log2"     |
|          0.8804 | min_samples_leaf=3, criterion="gini", n_estimators=320, max_features="log2"     |
|          0.8801 | min_samples_leaf=3, criterion="gini", n_estimators=640, max_features="log2"     |
|          0.88   | min_samples_leaf=1, criterion="entropy", n_estimators=160, max_features="log2"  |
|          0.8798 | min_samples_leaf=3, criterion="entropy", n_estimators=640, max_features="log2"  |
|          0.8793 | min_samples_leaf=3, criterion="entropy", n_estimators=320, max_features="log2"  |
|          0.8787 | min_samples_leaf=1, criterion="gini", n_estimators=80, max_features="log2"      |
|          0.8781 | min_samples_leaf=3, criterion="gini", n_estimators=160, max_features="log2"     |
|          0.8779 | min_samples_leaf=3, criterion="entropy", n_estimators=160, max_features="log2"  |
|          0.8775 | min_samples_leaf=3, criterion="gini", n_estimators=80, max_features="log2"      |
|          0.8772 | min_samples_leaf=5, criterion="entropy", n_estimators=320, max_features="log2"  |
|          0.8772 | min_samples_leaf=1, criterion="entropy", n_estimators=80, max_features="log2"   |
|          0.8772 | min_samples_leaf=5, criterion="entropy", n_estimators=640, max_features="log2"  |
|          0.8768 | min_samples_leaf=5, criterion="gini", n_estimators=640, max_features="log2"     |
|          0.8763 | min_samples_leaf=5, criterion="gini", n_estimators=320, max_features="log2"     |
|          0.8761 | min_samples_leaf=3, criterion="entropy", n_estimators=80, max_features="log2"   |
|          0.8758 | min_samples_leaf=5, criterion="entropy", n_estimators=160, max_features="log2"  |
|          0.8756 | min_samples_leaf=5, criterion="gini", n_estimators=160, max_features="log2"     |
|          0.8748 | min_samples_leaf=5, criterion="entropy", n_estimators=80, max_features="log2"   |
|          0.8745 | min_samples_leaf=7, criterion="entropy", n_estimators=640, max_features="log2"  |
|          0.8744 | min_samples_leaf=7, criterion="entropy", n_estimators=160, max_features="log2"  |
|          0.8742 | min_samples_leaf=7, criterion="gini", n_estimators=640, max_features="log2"     |
|          0.8741 | min_samples_leaf=7, criterion="gini", n_estimators=320, max_features="log2"     |
|          0.8739 | min_samples_leaf=7, criterion="entropy", n_estimators=320, max_features="log2"  |
|          0.873  | min_samples_leaf=3, criterion="gini", n_estimators=40, max_features="log2"      |
|          0.8729 | min_samples_leaf=1, criterion="entropy", n_estimators=40, max_features="log2"   |
|          0.8729 | min_samples_leaf=5, criterion="gini", n_estimators=80, max_features="log2"      |
|          0.8728 | min_samples_leaf=1, criterion="gini", n_estimators=40, max_features="log2"      |
|          0.8727 | min_samples_leaf=7, criterion="gini", n_estimators=160, max_features="log2"     |
|          0.8726 | min_samples_leaf=5, criterion="entropy", n_estimators=40, max_features="log2"   |
|          0.8725 | min_samples_leaf=7, criterion="entropy", n_estimators=80, max_features="log2"   |
|          0.8721 | min_samples_leaf=3, criterion="entropy", n_estimators=40, max_features="log2"   |
|          0.8712 | min_samples_leaf=7, criterion="gini", n_estimators=80, max_features="log2"      |
|          0.8708 | min_samples_leaf=5, criterion="gini", n_estimators=40, max_features="log2"      |
|          0.8706 | min_samples_leaf=7, criterion="entropy", n_estimators=40, max_features="log2"   |
|          0.8696 | min_samples_leaf=7, criterion="gini", n_estimators=40, max_features="log2"      |
|          0.8685 | min_samples_leaf=7, criterion="entropy", n_estimators=20, max_features="log2"   |
|          0.8681 | min_samples_leaf=13, criterion="entropy", n_estimators=640, max_features="log2" |
|          0.8678 | min_samples_leaf=13, criterion="gini", n_estimators=640, max_features="log2"    |
|          0.8677 | min_samples_leaf=5, criterion="gini", n_estimators=20, max_features="log2"      |
|          0.8671 | min_samples_leaf=13, criterion="entropy", n_estimators=320, max_features="log2" |
|          0.8671 | min_samples_leaf=13, criterion="gini", n_estimators=320, max_features="log2"    |
|          0.8667 | min_samples_leaf=13, criterion="gini", n_estimators=160, max_features="log2"    |
|          0.8667 | min_samples_leaf=13, criterion="entropy", n_estimators=160, max_features="log2" |
|          0.8663 | min_samples_leaf=13, criterion="entropy", n_estimators=80, max_features="log2"  |
|          0.8661 | min_samples_leaf=13, criterion="gini", n_estimators=80, max_features="log2"     |
|          0.8661 | min_samples_leaf=7, criterion="gini", n_estimators=20, max_features="log2"      |
|          0.864  | min_samples_leaf=13, criterion="entropy", n_estimators=40, max_features="log2"  |
|          0.8634 | min_samples_leaf=3, criterion="entropy", n_estimators=20, max_features="log2"   |
|          0.8632 | min_samples_leaf=1, criterion="entropy", n_estimators=20, max_features="log2"   |
|          0.8631 | min_samples_leaf=13, criterion="gini", n_estimators=40, max_features="log2"     |
|          0.863  | min_samples_leaf=5, criterion="entropy", n_estimators=20, max_features="log2"   |
|          0.8618 | min_samples_leaf=13, criterion="gini", n_estimators=20, max_features="log2"     |
|          0.8604 | min_samples_leaf=3, criterion="gini", n_estimators=20, max_features="log2"      |
|          0.8595 | min_samples_leaf=5, criterion="entropy", n_estimators=10, max_features="log2"   |
|          0.8593 | min_samples_leaf=1, criterion="gini", n_estimators=20, max_features="log2"      |
|          0.8592 | min_samples_leaf=13, criterion="gini", n_estimators=10, max_features="log2"     |
|          0.8582 | min_samples_leaf=5, criterion="gini", n_estimators=10, max_features="log2"      |
|          0.8579 | min_samples_leaf=13, criterion="entropy", n_estimators=20, max_features="log2"  |
|          0.8569 | min_samples_leaf=7, criterion="entropy", n_estimators=10, max_features="log2"   |
|          0.8558 | min_samples_leaf=3, criterion="entropy", n_estimators=10, max_features="log2"   |
|          0.8539 | min_samples_leaf=7, criterion="gini", n_estimators=10, max_features="log2"      |
|          0.8524 | min_samples_leaf=13, criterion="entropy", n_estimators=10, max_features="log2"  |
|          0.85   | min_samples_leaf=3, criterion="gini", n_estimators=10, max_features="log2"      |
|          0.8435 | min_samples_leaf=1, criterion="entropy", n_estimators=10, max_features="log2"   |
|          0.8427 | min_samples_leaf=1, criterion="gini", n_estimators=10, max_features="log2"      |

