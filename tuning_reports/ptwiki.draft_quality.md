# Model tuning report
- Revscoring version: 2.6.9
- Features: draftquality.feature_lists.ptwiki.draft_quality
- Date: 2020-04-16T04:36:29.712289
- Observations: 3947
- Labels: ["OK", "spam", "unsuitable"]
- Statistic: roc_auc.macro (maximize)
- Folds: 5

# Top scoring configurations
| model            |   roc_auc.macro | params                                                                 |
|:-----------------|----------------:|:-----------------------------------------------------------------------|
| GradientBoosting |          0.8878 | n_estimators=700, max_features="log2", max_depth=7, learning_rate=0.01 |
| GradientBoosting |          0.8875 | n_estimators=500, max_features="log2", max_depth=7, learning_rate=0.01 |
| GradientBoosting |          0.886  | n_estimators=100, max_features="log2", max_depth=7, learning_rate=0.1  |
| GradientBoosting |          0.8859 | n_estimators=500, max_features="log2", max_depth=7, learning_rate=0.1  |
| GradientBoosting |          0.8857 | n_estimators=300, max_features="log2", max_depth=7, learning_rate=0.1  |
| GradientBoosting |          0.8853 | n_estimators=700, max_features="log2", max_depth=7, learning_rate=0.1  |
| GradientBoosting |          0.8851 | n_estimators=700, max_features="log2", max_depth=5, learning_rate=0.01 |
| GradientBoosting |          0.8841 | n_estimators=300, max_features="log2", max_depth=5, learning_rate=0.1  |
| GradientBoosting |          0.8834 | n_estimators=300, max_features="log2", max_depth=7, learning_rate=0.01 |
| GradientBoosting |          0.8831 | n_estimators=100, max_features="log2", max_depth=5, learning_rate=0.1  |

# Models
## LogisticRegression
|   roc_auc.macro | params              |
|----------------:|:--------------------|
|          0.8492 | C=1, penalty="l1"   |
|          0.847  | C=10, penalty="l1"  |
|          0.8469 | C=1, penalty="l2"   |
|          0.8455 | C=0.1, penalty="l2" |
|          0.8421 | C=0.1, penalty="l1" |
|          0.8417 | C=10, penalty="l2"  |

## GradientBoosting
|   roc_auc.macro | params                                                                 |
|----------------:|:-----------------------------------------------------------------------|
|          0.8878 | n_estimators=700, max_features="log2", max_depth=7, learning_rate=0.01 |
|          0.8875 | n_estimators=500, max_features="log2", max_depth=7, learning_rate=0.01 |
|          0.886  | n_estimators=100, max_features="log2", max_depth=7, learning_rate=0.1  |
|          0.8859 | n_estimators=500, max_features="log2", max_depth=7, learning_rate=0.1  |
|          0.8857 | n_estimators=300, max_features="log2", max_depth=7, learning_rate=0.1  |
|          0.8853 | n_estimators=700, max_features="log2", max_depth=7, learning_rate=0.1  |
|          0.8851 | n_estimators=700, max_features="log2", max_depth=5, learning_rate=0.01 |
|          0.8841 | n_estimators=300, max_features="log2", max_depth=5, learning_rate=0.1  |
|          0.8834 | n_estimators=300, max_features="log2", max_depth=7, learning_rate=0.01 |
|          0.8831 | n_estimators=100, max_features="log2", max_depth=5, learning_rate=0.1  |
|          0.8826 | n_estimators=500, max_features="log2", max_depth=5, learning_rate=0.01 |
|          0.8826 | n_estimators=700, max_features="log2", max_depth=5, learning_rate=0.1  |
|          0.8826 | n_estimators=500, max_features="log2", max_depth=5, learning_rate=0.1  |
|          0.8807 | n_estimators=300, max_features="log2", max_depth=3, learning_rate=0.1  |
|          0.8791 | n_estimators=500, max_features="log2", max_depth=3, learning_rate=0.1  |
|          0.8771 | n_estimators=100, max_features="log2", max_depth=3, learning_rate=0.1  |
|          0.8769 | n_estimators=700, max_features="log2", max_depth=3, learning_rate=0.1  |
|          0.8768 | n_estimators=100, max_features="log2", max_depth=7, learning_rate=0.5  |
|          0.8756 | n_estimators=300, max_features="log2", max_depth=5, learning_rate=0.01 |
|          0.8752 | n_estimators=300, max_features="log2", max_depth=7, learning_rate=0.5  |
|          0.8746 | n_estimators=700, max_features="log2", max_depth=3, learning_rate=0.01 |
|          0.8738 | n_estimators=100, max_features="log2", max_depth=7, learning_rate=0.01 |
|          0.8719 | n_estimators=500, max_features="log2", max_depth=7, learning_rate=0.5  |
|          0.8715 | n_estimators=300, max_features="log2", max_depth=5, learning_rate=0.5  |
|          0.8698 | n_estimators=500, max_features="log2", max_depth=5, learning_rate=0.5  |
|          0.8697 | n_estimators=700, max_features="log2", max_depth=1, learning_rate=0.1  |
|          0.8697 | n_estimators=700, max_features="log2", max_depth=5, learning_rate=0.5  |
|          0.8696 | n_estimators=500, max_features="log2", max_depth=1, learning_rate=0.1  |
|          0.8695 | n_estimators=500, max_features="log2", max_depth=3, learning_rate=0.01 |
|          0.8672 | n_estimators=700, max_features="log2", max_depth=7, learning_rate=0.5  |
|          0.8671 | n_estimators=700, max_features="log2", max_depth=3, learning_rate=0.5  |
|          0.8654 | n_estimators=100, max_features="log2", max_depth=1, learning_rate=0.5  |
|          0.8649 | n_estimators=100, max_features="log2", max_depth=7, learning_rate=1    |
|          0.8643 | n_estimators=300, max_features="log2", max_depth=1, learning_rate=0.1  |
|          0.8634 | n_estimators=100, max_features="log2", max_depth=5, learning_rate=0.5  |
|          0.8627 | n_estimators=500, max_features="log2", max_depth=3, learning_rate=0.5  |
|          0.8625 | n_estimators=100, max_features="log2", max_depth=3, learning_rate=0.5  |
|          0.8623 | n_estimators=300, max_features="log2", max_depth=5, learning_rate=1    |
|          0.8617 | n_estimators=100, max_features="log2", max_depth=5, learning_rate=0.01 |
|          0.8615 | n_estimators=500, max_features="log2", max_depth=7, learning_rate=1    |
|          0.8605 | n_estimators=300, max_features="log2", max_depth=3, learning_rate=0.5  |
|          0.8602 | n_estimators=500, max_features="log2", max_depth=3, learning_rate=1    |
|          0.8597 | n_estimators=300, max_features="log2", max_depth=3, learning_rate=0.01 |
|          0.8596 | n_estimators=500, max_features="log2", max_depth=5, learning_rate=1    |
|          0.8582 | n_estimators=700, max_features="log2", max_depth=7, learning_rate=1    |
|          0.8571 | n_estimators=700, max_features="log2", max_depth=5, learning_rate=1    |
|          0.8562 | n_estimators=500, max_features="log2", max_depth=1, learning_rate=0.5  |
|          0.8561 | n_estimators=300, max_features="log2", max_depth=1, learning_rate=0.5  |
|          0.856  | n_estimators=100, max_features="log2", max_depth=5, learning_rate=1    |
|          0.8551 | n_estimators=300, max_features="log2", max_depth=3, learning_rate=1    |
|          0.8539 | n_estimators=100, max_features="log2", max_depth=1, learning_rate=1    |
|          0.8501 | n_estimators=100, max_features="log2", max_depth=1, learning_rate=0.1  |
|          0.8501 | n_estimators=700, max_features="log2", max_depth=3, learning_rate=1    |
|          0.8475 | n_estimators=700, max_features="log2", max_depth=1, learning_rate=0.5  |
|          0.8444 | n_estimators=100, max_features="log2", max_depth=3, learning_rate=0.01 |
|          0.8434 | n_estimators=700, max_features="log2", max_depth=1, learning_rate=0.01 |
|          0.8426 | n_estimators=700, max_features="log2", max_depth=1, learning_rate=1    |
|          0.8414 | n_estimators=300, max_features="log2", max_depth=1, learning_rate=1    |
|          0.8375 | n_estimators=500, max_features="log2", max_depth=1, learning_rate=0.01 |
|          0.8372 | n_estimators=100, max_features="log2", max_depth=3, learning_rate=1    |
|          0.8347 | n_estimators=500, max_features="log2", max_depth=1, learning_rate=1    |
|          0.8291 | n_estimators=300, max_features="log2", max_depth=1, learning_rate=0.01 |
|          0.8153 | n_estimators=100, max_features="log2", max_depth=1, learning_rate=0.01 |
|          0.795  | n_estimators=300, max_features="log2", max_depth=7, learning_rate=1    |

## RandomForestClassifier
|   roc_auc.macro | params                                                                          |
|----------------:|:--------------------------------------------------------------------------------|
|          0.8827 | n_estimators=320, max_features="log2", min_samples_leaf=1, criterion="entropy"  |
|          0.8823 | n_estimators=640, max_features="log2", min_samples_leaf=1, criterion="entropy"  |
|          0.8819 | n_estimators=640, max_features="log2", min_samples_leaf=1, criterion="gini"     |
|          0.8807 | n_estimators=320, max_features="log2", min_samples_leaf=1, criterion="gini"     |
|          0.8803 | n_estimators=640, max_features="log2", min_samples_leaf=3, criterion="entropy"  |
|          0.8799 | n_estimators=160, max_features="log2", min_samples_leaf=1, criterion="gini"     |
|          0.8794 | n_estimators=160, max_features="log2", min_samples_leaf=1, criterion="entropy"  |
|          0.8793 | n_estimators=80, max_features="log2", min_samples_leaf=1, criterion="entropy"   |
|          0.8793 | n_estimators=320, max_features="log2", min_samples_leaf=3, criterion="gini"     |
|          0.8791 | n_estimators=640, max_features="log2", min_samples_leaf=3, criterion="gini"     |
|          0.8789 | n_estimators=320, max_features="log2", min_samples_leaf=3, criterion="entropy"  |
|          0.8786 | n_estimators=160, max_features="log2", min_samples_leaf=3, criterion="gini"     |
|          0.8782 | n_estimators=160, max_features="log2", min_samples_leaf=3, criterion="entropy"  |
|          0.8774 | n_estimators=640, max_features="log2", min_samples_leaf=5, criterion="gini"     |
|          0.8773 | n_estimators=640, max_features="log2", min_samples_leaf=5, criterion="entropy"  |
|          0.8769 | n_estimators=160, max_features="log2", min_samples_leaf=5, criterion="entropy"  |
|          0.8767 | n_estimators=80, max_features="log2", min_samples_leaf=3, criterion="entropy"   |
|          0.8766 | n_estimators=320, max_features="log2", min_samples_leaf=5, criterion="gini"     |
|          0.8766 | n_estimators=80, max_features="log2", min_samples_leaf=5, criterion="entropy"   |
|          0.8764 | n_estimators=160, max_features="log2", min_samples_leaf=5, criterion="gini"     |
|          0.8761 | n_estimators=40, max_features="log2", min_samples_leaf=1, criterion="entropy"   |
|          0.8758 | n_estimators=80, max_features="log2", min_samples_leaf=1, criterion="gini"      |
|          0.8757 | n_estimators=320, max_features="log2", min_samples_leaf=5, criterion="entropy"  |
|          0.8754 | n_estimators=80, max_features="log2", min_samples_leaf=3, criterion="gini"      |
|          0.8749 | n_estimators=640, max_features="log2", min_samples_leaf=7, criterion="entropy"  |
|          0.8744 | n_estimators=320, max_features="log2", min_samples_leaf=7, criterion="gini"     |
|          0.8742 | n_estimators=320, max_features="log2", min_samples_leaf=7, criterion="entropy"  |
|          0.874  | n_estimators=640, max_features="log2", min_samples_leaf=7, criterion="gini"     |
|          0.8735 | n_estimators=40, max_features="log2", min_samples_leaf=3, criterion="entropy"   |
|          0.8731 | n_estimators=160, max_features="log2", min_samples_leaf=7, criterion="entropy"  |
|          0.8731 | n_estimators=80, max_features="log2", min_samples_leaf=5, criterion="gini"      |
|          0.8721 | n_estimators=80, max_features="log2", min_samples_leaf=7, criterion="entropy"   |
|          0.872  | n_estimators=40, max_features="log2", min_samples_leaf=3, criterion="gini"      |
|          0.872  | n_estimators=160, max_features="log2", min_samples_leaf=7, criterion="gini"     |
|          0.8715 | n_estimators=40, max_features="log2", min_samples_leaf=1, criterion="gini"      |
|          0.8713 | n_estimators=80, max_features="log2", min_samples_leaf=7, criterion="gini"      |
|          0.8704 | n_estimators=40, max_features="log2", min_samples_leaf=5, criterion="entropy"   |
|          0.8696 | n_estimators=40, max_features="log2", min_samples_leaf=7, criterion="entropy"   |
|          0.8694 | n_estimators=40, max_features="log2", min_samples_leaf=7, criterion="gini"      |
|          0.869  | n_estimators=20, max_features="log2", min_samples_leaf=3, criterion="entropy"   |
|          0.8685 | n_estimators=320, max_features="log2", min_samples_leaf=13, criterion="gini"    |
|          0.8685 | n_estimators=40, max_features="log2", min_samples_leaf=5, criterion="gini"      |
|          0.868  | n_estimators=640, max_features="log2", min_samples_leaf=13, criterion="gini"    |
|          0.868  | n_estimators=640, max_features="log2", min_samples_leaf=13, criterion="entropy" |
|          0.8676 | n_estimators=160, max_features="log2", min_samples_leaf=13, criterion="gini"    |
|          0.8674 | n_estimators=80, max_features="log2", min_samples_leaf=13, criterion="gini"     |
|          0.8671 | n_estimators=20, max_features="log2", min_samples_leaf=3, criterion="gini"      |
|          0.867  | n_estimators=320, max_features="log2", min_samples_leaf=13, criterion="entropy" |
|          0.8662 | n_estimators=80, max_features="log2", min_samples_leaf=13, criterion="entropy"  |
|          0.8662 | n_estimators=20, max_features="log2", min_samples_leaf=5, criterion="gini"      |
|          0.8661 | n_estimators=160, max_features="log2", min_samples_leaf=13, criterion="entropy" |
|          0.8658 | n_estimators=20, max_features="log2", min_samples_leaf=7, criterion="gini"      |
|          0.8642 | n_estimators=20, max_features="log2", min_samples_leaf=7, criterion="entropy"   |
|          0.8631 | n_estimators=40, max_features="log2", min_samples_leaf=13, criterion="entropy"  |
|          0.863  | n_estimators=20, max_features="log2", min_samples_leaf=1, criterion="entropy"   |
|          0.8626 | n_estimators=40, max_features="log2", min_samples_leaf=13, criterion="gini"     |
|          0.8621 | n_estimators=20, max_features="log2", min_samples_leaf=5, criterion="entropy"   |
|          0.8616 | n_estimators=20, max_features="log2", min_samples_leaf=13, criterion="entropy"  |
|          0.8615 | n_estimators=20, max_features="log2", min_samples_leaf=13, criterion="gini"     |
|          0.8609 | n_estimators=20, max_features="log2", min_samples_leaf=1, criterion="gini"      |
|          0.8586 | n_estimators=10, max_features="log2", min_samples_leaf=7, criterion="entropy"   |
|          0.8577 | n_estimators=10, max_features="log2", min_samples_leaf=5, criterion="gini"      |
|          0.8564 | n_estimators=10, max_features="log2", min_samples_leaf=5, criterion="entropy"   |
|          0.8542 | n_estimators=10, max_features="log2", min_samples_leaf=7, criterion="gini"      |
|          0.8537 | n_estimators=10, max_features="log2", min_samples_leaf=3, criterion="gini"      |
|          0.8521 | n_estimators=10, max_features="log2", min_samples_leaf=13, criterion="entropy"  |
|          0.8506 | n_estimators=10, max_features="log2", min_samples_leaf=3, criterion="entropy"   |
|          0.8469 | n_estimators=10, max_features="log2", min_samples_leaf=13, criterion="gini"     |
|          0.8433 | n_estimators=10, max_features="log2", min_samples_leaf=1, criterion="entropy"   |
|          0.835  | n_estimators=10, max_features="log2", min_samples_leaf=1, criterion="gini"      |

