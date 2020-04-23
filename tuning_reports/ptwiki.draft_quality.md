# Model tuning report
- Revscoring version: 2.6.9
- Features: draftquality.feature_lists.ptwiki.draft_quality
- Date: 2020-04-22T15:33:30.035760
- Observations: 4672
- Labels: ["OK", "spam", "unsuitable"]
- Statistic: roc_auc.macro (maximize)
- Folds: 5

# Top scoring configurations
| model                  |   roc_auc.macro | params                                                                         |
|:-----------------------|----------------:|:-------------------------------------------------------------------------------|
| GradientBoosting       |          0.8854 | max_depth=7, max_features="log2", n_estimators=500, learning_rate=0.1          |
| GradientBoosting       |          0.8851 | max_depth=7, max_features="log2", n_estimators=700, learning_rate=0.01         |
| GradientBoosting       |          0.8849 | max_depth=7, max_features="log2", n_estimators=700, learning_rate=0.1          |
| GradientBoosting       |          0.8845 | max_depth=7, max_features="log2", n_estimators=500, learning_rate=0.01         |
| GradientBoosting       |          0.884  | max_depth=7, max_features="log2", n_estimators=300, learning_rate=0.1          |
| GradientBoosting       |          0.8821 | max_depth=5, max_features="log2", n_estimators=500, learning_rate=0.1          |
| GradientBoosting       |          0.8817 | max_depth=5, max_features="log2", n_estimators=700, learning_rate=0.1          |
| GradientBoosting       |          0.8815 | max_depth=5, max_features="log2", n_estimators=700, learning_rate=0.01         |
| GradientBoosting       |          0.8814 | max_depth=7, max_features="log2", n_estimators=100, learning_rate=0.1          |
| RandomForestClassifier |          0.8811 | max_features="log2", criterion="entropy", n_estimators=320, min_samples_leaf=1 |

# Models
## GradientBoosting
|   roc_auc.macro | params                                                                 |
|----------------:|:-----------------------------------------------------------------------|
|          0.8854 | max_depth=7, max_features="log2", n_estimators=500, learning_rate=0.1  |
|          0.8851 | max_depth=7, max_features="log2", n_estimators=700, learning_rate=0.01 |
|          0.8849 | max_depth=7, max_features="log2", n_estimators=700, learning_rate=0.1  |
|          0.8845 | max_depth=7, max_features="log2", n_estimators=500, learning_rate=0.01 |
|          0.884  | max_depth=7, max_features="log2", n_estimators=300, learning_rate=0.1  |
|          0.8821 | max_depth=5, max_features="log2", n_estimators=500, learning_rate=0.1  |
|          0.8817 | max_depth=5, max_features="log2", n_estimators=700, learning_rate=0.1  |
|          0.8815 | max_depth=5, max_features="log2", n_estimators=700, learning_rate=0.01 |
|          0.8814 | max_depth=7, max_features="log2", n_estimators=100, learning_rate=0.1  |
|          0.8808 | max_depth=7, max_features="log2", n_estimators=300, learning_rate=0.01 |
|          0.8794 | max_depth=5, max_features="log2", n_estimators=500, learning_rate=0.01 |
|          0.8789 | max_depth=5, max_features="log2", n_estimators=300, learning_rate=0.1  |
|          0.8785 | max_depth=5, max_features="log2", n_estimators=100, learning_rate=0.1  |
|          0.8768 | max_depth=7, max_features="log2", n_estimators=100, learning_rate=0.5  |
|          0.876  | max_depth=7, max_features="log2", n_estimators=300, learning_rate=0.5  |
|          0.8758 | max_depth=3, max_features="log2", n_estimators=500, learning_rate=0.1  |
|          0.8751 | max_depth=3, max_features="log2", n_estimators=300, learning_rate=0.1  |
|          0.8748 | max_depth=3, max_features="log2", n_estimators=700, learning_rate=0.1  |
|          0.8745 | max_depth=5, max_features="log2", n_estimators=500, learning_rate=0.5  |
|          0.8739 | max_depth=7, max_features="log2", n_estimators=500, learning_rate=0.5  |
|          0.8733 | max_depth=5, max_features="log2", n_estimators=300, learning_rate=0.01 |
|          0.8729 | max_depth=5, max_features="log2", n_estimators=300, learning_rate=0.5  |
|          0.8716 | max_depth=3, max_features="log2", n_estimators=100, learning_rate=0.1  |
|          0.8714 | max_depth=5, max_features="log2", n_estimators=700, learning_rate=0.5  |
|          0.8706 | max_depth=7, max_features="log2", n_estimators=100, learning_rate=0.01 |
|          0.8697 | max_depth=3, max_features="log2", n_estimators=700, learning_rate=0.01 |
|          0.8686 | max_depth=5, max_features="log2", n_estimators=100, learning_rate=0.5  |
|          0.8679 | max_depth=7, max_features="log2", n_estimators=700, learning_rate=0.5  |
|          0.8645 | max_depth=5, max_features="log2", n_estimators=300, learning_rate=1    |
|          0.8643 | max_depth=3, max_features="log2", n_estimators=500, learning_rate=0.01 |
|          0.8633 | max_depth=1, max_features="log2", n_estimators=500, learning_rate=0.1  |
|          0.8632 | max_depth=3, max_features="log2", n_estimators=700, learning_rate=0.5  |
|          0.8626 | max_depth=1, max_features="log2", n_estimators=700, learning_rate=0.1  |
|          0.8626 | max_depth=7, max_features="log2", n_estimators=500, learning_rate=1    |
|          0.8618 | max_depth=3, max_features="log2", n_estimators=500, learning_rate=0.5  |
|          0.8614 | max_depth=5, max_features="log2", n_estimators=500, learning_rate=1    |
|          0.8612 | max_depth=3, max_features="log2", n_estimators=100, learning_rate=0.5  |
|          0.8595 | max_depth=1, max_features="log2", n_estimators=300, learning_rate=0.5  |
|          0.8594 | max_depth=1, max_features="log2", n_estimators=300, learning_rate=0.1  |
|          0.8585 | max_depth=1, max_features="log2", n_estimators=100, learning_rate=0.5  |
|          0.8582 | max_depth=3, max_features="log2", n_estimators=700, learning_rate=1    |
|          0.8578 | max_depth=5, max_features="log2", n_estimators=700, learning_rate=1    |
|          0.8574 | max_depth=3, max_features="log2", n_estimators=300, learning_rate=0.5  |
|          0.8568 | max_depth=3, max_features="log2", n_estimators=300, learning_rate=1    |
|          0.8559 | max_depth=5, max_features="log2", n_estimators=100, learning_rate=0.01 |
|          0.8551 | max_depth=1, max_features="log2", n_estimators=700, learning_rate=0.5  |
|          0.8541 | max_depth=1, max_features="log2", n_estimators=100, learning_rate=1    |
|          0.8537 | max_depth=5, max_features="log2", n_estimators=100, learning_rate=1    |
|          0.8534 | max_depth=3, max_features="log2", n_estimators=300, learning_rate=0.01 |
|          0.8515 | max_depth=1, max_features="log2", n_estimators=300, learning_rate=1    |
|          0.8496 | max_depth=3, max_features="log2", n_estimators=500, learning_rate=1    |
|          0.8434 | max_depth=1, max_features="log2", n_estimators=700, learning_rate=1    |
|          0.8428 | max_depth=1, max_features="log2", n_estimators=100, learning_rate=0.1  |
|          0.839  | max_depth=1, max_features="log2", n_estimators=500, learning_rate=0.5  |
|          0.8381 | max_depth=3, max_features="log2", n_estimators=100, learning_rate=1    |
|          0.8377 | max_depth=1, max_features="log2", n_estimators=500, learning_rate=1    |
|          0.8362 | max_depth=1, max_features="log2", n_estimators=700, learning_rate=0.01 |
|          0.836  | max_depth=3, max_features="log2", n_estimators=100, learning_rate=0.01 |
|          0.8295 | max_depth=1, max_features="log2", n_estimators=500, learning_rate=0.01 |
|          0.8207 | max_depth=1, max_features="log2", n_estimators=300, learning_rate=0.01 |
|          0.8182 | max_depth=7, max_features="log2", n_estimators=700, learning_rate=1    |
|          0.808  | max_depth=1, max_features="log2", n_estimators=100, learning_rate=0.01 |
|          0.8059 | max_depth=7, max_features="log2", n_estimators=100, learning_rate=1    |
|          0.7769 | max_depth=7, max_features="log2", n_estimators=300, learning_rate=1    |

## LogisticRegression
|   roc_auc.macro | params              |
|----------------:|:--------------------|
|          0.8362 | C=1, penalty="l2"   |
|          0.8362 | C=1, penalty="l1"   |
|          0.836  | C=10, penalty="l1"  |
|          0.8353 | C=10, penalty="l2"  |
|          0.835  | C=0.1, penalty="l2" |
|          0.8341 | C=0.1, penalty="l1" |

## RandomForestClassifier
|   roc_auc.macro | params                                                                          |
|----------------:|:--------------------------------------------------------------------------------|
|          0.8811 | max_features="log2", criterion="entropy", n_estimators=320, min_samples_leaf=1  |
|          0.8804 | max_features="log2", criterion="entropy", n_estimators=640, min_samples_leaf=1  |
|          0.8799 | max_features="log2", criterion="gini", n_estimators=640, min_samples_leaf=1     |
|          0.8788 | max_features="log2", criterion="gini", n_estimators=320, min_samples_leaf=1     |
|          0.8781 | max_features="log2", criterion="entropy", n_estimators=160, min_samples_leaf=1  |
|          0.8779 | max_features="log2", criterion="entropy", n_estimators=640, min_samples_leaf=3  |
|          0.8773 | max_features="log2", criterion="entropy", n_estimators=320, min_samples_leaf=3  |
|          0.8772 | max_features="log2", criterion="gini", n_estimators=640, min_samples_leaf=3     |
|          0.8769 | max_features="log2", criterion="gini", n_estimators=320, min_samples_leaf=3     |
|          0.8761 | max_features="log2", criterion="gini", n_estimators=80, min_samples_leaf=1      |
|          0.876  | max_features="log2", criterion="gini", n_estimators=160, min_samples_leaf=1     |
|          0.8759 | max_features="log2", criterion="gini", n_estimators=160, min_samples_leaf=3     |
|          0.8759 | max_features="log2", criterion="entropy", n_estimators=80, min_samples_leaf=1   |
|          0.8755 | max_features="log2", criterion="entropy", n_estimators=640, min_samples_leaf=5  |
|          0.8754 | max_features="log2", criterion="entropy", n_estimators=160, min_samples_leaf=3  |
|          0.8751 | max_features="log2", criterion="gini", n_estimators=320, min_samples_leaf=5     |
|          0.8749 | max_features="log2", criterion="gini", n_estimators=640, min_samples_leaf=5     |
|          0.8747 | max_features="log2", criterion="gini", n_estimators=80, min_samples_leaf=3      |
|          0.8744 | max_features="log2", criterion="gini", n_estimators=160, min_samples_leaf=5     |
|          0.8743 | max_features="log2", criterion="entropy", n_estimators=320, min_samples_leaf=5  |
|          0.8742 | max_features="log2", criterion="gini", n_estimators=80, min_samples_leaf=5      |
|          0.8738 | max_features="log2", criterion="entropy", n_estimators=80, min_samples_leaf=3   |
|          0.8737 | max_features="log2", criterion="entropy", n_estimators=160, min_samples_leaf=5  |
|          0.8729 | max_features="log2", criterion="entropy", n_estimators=80, min_samples_leaf=5   |
|          0.8726 | max_features="log2", criterion="entropy", n_estimators=320, min_samples_leaf=7  |
|          0.8725 | max_features="log2", criterion="gini", n_estimators=640, min_samples_leaf=7     |
|          0.8724 | max_features="log2", criterion="entropy", n_estimators=40, min_samples_leaf=3   |
|          0.8724 | max_features="log2", criterion="gini", n_estimators=320, min_samples_leaf=7     |
|          0.8722 | max_features="log2", criterion="entropy", n_estimators=640, min_samples_leaf=7  |
|          0.8718 | max_features="log2", criterion="entropy", n_estimators=160, min_samples_leaf=7  |
|          0.8717 | max_features="log2", criterion="gini", n_estimators=160, min_samples_leaf=7     |
|          0.8703 | max_features="log2", criterion="entropy", n_estimators=80, min_samples_leaf=7   |
|          0.8702 | max_features="log2", criterion="gini", n_estimators=80, min_samples_leaf=7      |
|          0.8697 | max_features="log2", criterion="gini", n_estimators=40, min_samples_leaf=1      |
|          0.8694 | max_features="log2", criterion="entropy", n_estimators=40, min_samples_leaf=1   |
|          0.8687 | max_features="log2", criterion="gini", n_estimators=40, min_samples_leaf=3      |
|          0.8685 | max_features="log2", criterion="gini", n_estimators=40, min_samples_leaf=5      |
|          0.8674 | max_features="log2", criterion="gini", n_estimators=40, min_samples_leaf=7      |
|          0.867  | max_features="log2", criterion="entropy", n_estimators=40, min_samples_leaf=7   |
|          0.8669 | max_features="log2", criterion="entropy", n_estimators=40, min_samples_leaf=5   |
|          0.8663 | max_features="log2", criterion="gini", n_estimators=320, min_samples_leaf=13    |
|          0.8662 | max_features="log2", criterion="gini", n_estimators=640, min_samples_leaf=13    |
|          0.8661 | max_features="log2", criterion="entropy", n_estimators=640, min_samples_leaf=13 |
|          0.8661 | max_features="log2", criterion="gini", n_estimators=160, min_samples_leaf=13    |
|          0.8656 | max_features="log2", criterion="entropy", n_estimators=20, min_samples_leaf=3   |
|          0.8654 | max_features="log2", criterion="entropy", n_estimators=160, min_samples_leaf=13 |
|          0.8652 | max_features="log2", criterion="entropy", n_estimators=20, min_samples_leaf=5   |
|          0.8651 | max_features="log2", criterion="gini", n_estimators=20, min_samples_leaf=3      |
|          0.865  | max_features="log2", criterion="entropy", n_estimators=320, min_samples_leaf=13 |
|          0.8649 | max_features="log2", criterion="gini", n_estimators=80, min_samples_leaf=13     |
|          0.8641 | max_features="log2", criterion="entropy", n_estimators=20, min_samples_leaf=7   |
|          0.864  | max_features="log2", criterion="entropy", n_estimators=80, min_samples_leaf=13  |
|          0.8637 | max_features="log2", criterion="gini", n_estimators=20, min_samples_leaf=1      |
|          0.8632 | max_features="log2", criterion="gini", n_estimators=20, min_samples_leaf=5      |
|          0.8629 | max_features="log2", criterion="entropy", n_estimators=20, min_samples_leaf=1   |
|          0.8623 | max_features="log2", criterion="entropy", n_estimators=40, min_samples_leaf=13  |
|          0.8623 | max_features="log2", criterion="gini", n_estimators=20, min_samples_leaf=13     |
|          0.8614 | max_features="log2", criterion="gini", n_estimators=40, min_samples_leaf=13     |
|          0.8595 | max_features="log2", criterion="entropy", n_estimators=20, min_samples_leaf=13  |
|          0.8586 | max_features="log2", criterion="gini", n_estimators=20, min_samples_leaf=7      |
|          0.8554 | max_features="log2", criterion="gini", n_estimators=10, min_samples_leaf=3      |
|          0.8547 | max_features="log2", criterion="entropy", n_estimators=10, min_samples_leaf=5   |
|          0.8543 | max_features="log2", criterion="gini", n_estimators=10, min_samples_leaf=7      |
|          0.8535 | max_features="log2", criterion="gini", n_estimators=10, min_samples_leaf=5      |
|          0.8533 | max_features="log2", criterion="gini", n_estimators=10, min_samples_leaf=13     |
|          0.8511 | max_features="log2", criterion="entropy", n_estimators=10, min_samples_leaf=7   |
|          0.8488 | max_features="log2", criterion="entropy", n_estimators=10, min_samples_leaf=3   |
|          0.8485 | max_features="log2", criterion="entropy", n_estimators=10, min_samples_leaf=13  |
|          0.8449 | max_features="log2", criterion="entropy", n_estimators=10, min_samples_leaf=1   |
|          0.8414 | max_features="log2", criterion="gini", n_estimators=10, min_samples_leaf=1      |

