# Model tuning report
- Revscoring version: 2.7.2
- Features: draftquality.feature_lists.ptwiki.draft_quality
- Date: 2020-04-27T14:00:43.448523
- Observations: 4672
- Labels: ["OK", "spam", "unsuitable"]
- Statistic: roc_auc.macro (maximize)
- Folds: 5

# Top scoring configurations
| model            |   roc_auc.macro | params                                                                 |
|:-----------------|----------------:|:-----------------------------------------------------------------------|
| GradientBoosting |          0.8863 | n_estimators=500, max_depth=7, max_features="log2", learning_rate=0.1  |
| GradientBoosting |          0.886  | n_estimators=700, max_depth=7, max_features="log2", learning_rate=0.01 |
| GradientBoosting |          0.8856 | n_estimators=300, max_depth=7, max_features="log2", learning_rate=0.1  |
| GradientBoosting |          0.8854 | n_estimators=700, max_depth=7, max_features="log2", learning_rate=0.1  |
| GradientBoosting |          0.8846 | n_estimators=500, max_depth=7, max_features="log2", learning_rate=0.01 |
| GradientBoosting |          0.8833 | n_estimators=700, max_depth=5, max_features="log2", learning_rate=0.1  |
| GradientBoosting |          0.8829 | n_estimators=500, max_depth=5, max_features="log2", learning_rate=0.1  |
| GradientBoosting |          0.8827 | n_estimators=700, max_depth=5, max_features="log2", learning_rate=0.01 |
| GradientBoosting |          0.8817 | n_estimators=100, max_depth=7, max_features="log2", learning_rate=0.1  |
| GradientBoosting |          0.8809 | n_estimators=100, max_depth=5, max_features="log2", learning_rate=0.1  |

# Models
## RandomForestClassifier
|   roc_auc.macro | params                                                                          |
|----------------:|:--------------------------------------------------------------------------------|
|          0.8804 | criterion="entropy", n_estimators=640, max_features="log2", min_samples_leaf=1  |
|          0.8802 | criterion="gini", n_estimators=640, max_features="log2", min_samples_leaf=1     |
|          0.8795 | criterion="entropy", n_estimators=320, max_features="log2", min_samples_leaf=1  |
|          0.8786 | criterion="gini", n_estimators=160, max_features="log2", min_samples_leaf=1     |
|          0.8786 | criterion="gini", n_estimators=320, max_features="log2", min_samples_leaf=1     |
|          0.8781 | criterion="entropy", n_estimators=640, max_features="log2", min_samples_leaf=3  |
|          0.8778 | criterion="gini", n_estimators=640, max_features="log2", min_samples_leaf=3     |
|          0.8776 | criterion="entropy", n_estimators=320, max_features="log2", min_samples_leaf=3  |
|          0.8776 | criterion="entropy", n_estimators=160, max_features="log2", min_samples_leaf=3  |
|          0.877  | criterion="gini", n_estimators=320, max_features="log2", min_samples_leaf=3     |
|          0.8768 | criterion="entropy", n_estimators=160, max_features="log2", min_samples_leaf=1  |
|          0.8755 | criterion="entropy", n_estimators=80, max_features="log2", min_samples_leaf=3   |
|          0.8755 | criterion="gini", n_estimators=160, max_features="log2", min_samples_leaf=3     |
|          0.8754 | criterion="entropy", n_estimators=640, max_features="log2", min_samples_leaf=5  |
|          0.8752 | criterion="gini", n_estimators=320, max_features="log2", min_samples_leaf=5     |
|          0.875  | criterion="entropy", n_estimators=80, max_features="log2", min_samples_leaf=1   |
|          0.8746 | criterion="gini", n_estimators=80, max_features="log2", min_samples_leaf=3      |
|          0.8746 | criterion="gini", n_estimators=640, max_features="log2", min_samples_leaf=5     |
|          0.8743 | criterion="gini", n_estimators=160, max_features="log2", min_samples_leaf=5     |
|          0.8743 | criterion="entropy", n_estimators=320, max_features="log2", min_samples_leaf=5  |
|          0.8743 | criterion="entropy", n_estimators=160, max_features="log2", min_samples_leaf=5  |
|          0.8742 | criterion="gini", n_estimators=80, max_features="log2", min_samples_leaf=1      |
|          0.8732 | criterion="entropy", n_estimators=40, max_features="log2", min_samples_leaf=1   |
|          0.8732 | criterion="entropy", n_estimators=80, max_features="log2", min_samples_leaf=5   |
|          0.8728 | criterion="gini", n_estimators=640, max_features="log2", min_samples_leaf=7     |
|          0.8724 | criterion="entropy", n_estimators=640, max_features="log2", min_samples_leaf=7  |
|          0.8723 | criterion="entropy", n_estimators=160, max_features="log2", min_samples_leaf=7  |
|          0.8721 | criterion="entropy", n_estimators=320, max_features="log2", min_samples_leaf=7  |
|          0.8721 | criterion="gini", n_estimators=40, max_features="log2", min_samples_leaf=1      |
|          0.8719 | criterion="gini", n_estimators=320, max_features="log2", min_samples_leaf=7     |
|          0.8715 | criterion="gini", n_estimators=40, max_features="log2", min_samples_leaf=3      |
|          0.8712 | criterion="gini", n_estimators=40, max_features="log2", min_samples_leaf=5      |
|          0.871  | criterion="entropy", n_estimators=80, max_features="log2", min_samples_leaf=7   |
|          0.8709 | criterion="gini", n_estimators=160, max_features="log2", min_samples_leaf=7     |
|          0.8708 | criterion="gini", n_estimators=80, max_features="log2", min_samples_leaf=5      |
|          0.8708 | criterion="entropy", n_estimators=40, max_features="log2", min_samples_leaf=3   |
|          0.8701 | criterion="gini", n_estimators=80, max_features="log2", min_samples_leaf=7      |
|          0.8698 | criterion="entropy", n_estimators=40, max_features="log2", min_samples_leaf=5   |
|          0.8685 | criterion="gini", n_estimators=40, max_features="log2", min_samples_leaf=7      |
|          0.866  | criterion="entropy", n_estimators=40, max_features="log2", min_samples_leaf=7   |
|          0.8658 | criterion="gini", n_estimators=640, max_features="log2", min_samples_leaf=13    |
|          0.8658 | criterion="gini", n_estimators=320, max_features="log2", min_samples_leaf=13    |
|          0.8657 | criterion="gini", n_estimators=80, max_features="log2", min_samples_leaf=13     |
|          0.8657 | criterion="entropy", n_estimators=640, max_features="log2", min_samples_leaf=13 |
|          0.8656 | criterion="gini", n_estimators=160, max_features="log2", min_samples_leaf=13    |
|          0.8655 | criterion="entropy", n_estimators=160, max_features="log2", min_samples_leaf=13 |
|          0.865  | criterion="entropy", n_estimators=320, max_features="log2", min_samples_leaf=13 |
|          0.8648 | criterion="gini", n_estimators=20, max_features="log2", min_samples_leaf=7      |
|          0.8645 | criterion="gini", n_estimators=40, max_features="log2", min_samples_leaf=13     |
|          0.8644 | criterion="gini", n_estimators=20, max_features="log2", min_samples_leaf=5      |
|          0.8644 | criterion="gini", n_estimators=20, max_features="log2", min_samples_leaf=3      |
|          0.8642 | criterion="entropy", n_estimators=80, max_features="log2", min_samples_leaf=13  |
|          0.864  | criterion="entropy", n_estimators=20, max_features="log2", min_samples_leaf=3   |
|          0.8618 | criterion="entropy", n_estimators=20, max_features="log2", min_samples_leaf=7   |
|          0.8611 | criterion="entropy", n_estimators=20, max_features="log2", min_samples_leaf=13  |
|          0.861  | criterion="entropy", n_estimators=40, max_features="log2", min_samples_leaf=13  |
|          0.8592 | criterion="entropy", n_estimators=20, max_features="log2", min_samples_leaf=1   |
|          0.859  | criterion="gini", n_estimators=20, max_features="log2", min_samples_leaf=13     |
|          0.8582 | criterion="entropy", n_estimators=20, max_features="log2", min_samples_leaf=5   |
|          0.858  | criterion="gini", n_estimators=20, max_features="log2", min_samples_leaf=1      |
|          0.8566 | criterion="entropy", n_estimators=10, max_features="log2", min_samples_leaf=5   |
|          0.8557 | criterion="gini", n_estimators=10, max_features="log2", min_samples_leaf=7      |
|          0.8546 | criterion="gini", n_estimators=10, max_features="log2", min_samples_leaf=5      |
|          0.8544 | criterion="gini", n_estimators=10, max_features="log2", min_samples_leaf=13     |
|          0.8544 | criterion="entropy", n_estimators=10, max_features="log2", min_samples_leaf=13  |
|          0.8536 | criterion="entropy", n_estimators=10, max_features="log2", min_samples_leaf=7   |
|          0.853  | criterion="entropy", n_estimators=10, max_features="log2", min_samples_leaf=3   |
|          0.8529 | criterion="gini", n_estimators=10, max_features="log2", min_samples_leaf=3      |
|          0.8454 | criterion="entropy", n_estimators=10, max_features="log2", min_samples_leaf=1   |
|          0.8403 | criterion="gini", n_estimators=10, max_features="log2", min_samples_leaf=1      |

## GradientBoosting
|   roc_auc.macro | params                                                                 |
|----------------:|:-----------------------------------------------------------------------|
|          0.8863 | n_estimators=500, max_depth=7, max_features="log2", learning_rate=0.1  |
|          0.886  | n_estimators=700, max_depth=7, max_features="log2", learning_rate=0.01 |
|          0.8856 | n_estimators=300, max_depth=7, max_features="log2", learning_rate=0.1  |
|          0.8854 | n_estimators=700, max_depth=7, max_features="log2", learning_rate=0.1  |
|          0.8846 | n_estimators=500, max_depth=7, max_features="log2", learning_rate=0.01 |
|          0.8833 | n_estimators=700, max_depth=5, max_features="log2", learning_rate=0.1  |
|          0.8829 | n_estimators=500, max_depth=5, max_features="log2", learning_rate=0.1  |
|          0.8827 | n_estimators=700, max_depth=5, max_features="log2", learning_rate=0.01 |
|          0.8817 | n_estimators=100, max_depth=7, max_features="log2", learning_rate=0.1  |
|          0.8809 | n_estimators=100, max_depth=5, max_features="log2", learning_rate=0.1  |
|          0.8806 | n_estimators=300, max_depth=7, max_features="log2", learning_rate=0.01 |
|          0.8801 | n_estimators=300, max_depth=5, max_features="log2", learning_rate=0.1  |
|          0.8782 | n_estimators=500, max_depth=5, max_features="log2", learning_rate=0.01 |
|          0.8782 | n_estimators=500, max_depth=3, max_features="log2", learning_rate=0.1  |
|          0.8764 | n_estimators=300, max_depth=7, max_features="log2", learning_rate=0.5  |
|          0.876  | n_estimators=300, max_depth=3, max_features="log2", learning_rate=0.1  |
|          0.8758 | n_estimators=300, max_depth=5, max_features="log2", learning_rate=0.5  |
|          0.8749 | n_estimators=700, max_depth=3, max_features="log2", learning_rate=0.1  |
|          0.8744 | n_estimators=500, max_depth=5, max_features="log2", learning_rate=0.5  |
|          0.8743 | n_estimators=700, max_depth=5, max_features="log2", learning_rate=0.5  |
|          0.8739 | n_estimators=500, max_depth=7, max_features="log2", learning_rate=0.5  |
|          0.8729 | n_estimators=100, max_depth=5, max_features="log2", learning_rate=0.5  |
|          0.8722 | n_estimators=300, max_depth=5, max_features="log2", learning_rate=0.01 |
|          0.872  | n_estimators=700, max_depth=7, max_features="log2", learning_rate=0.5  |
|          0.8713 | n_estimators=100, max_depth=3, max_features="log2", learning_rate=0.1  |
|          0.871  | n_estimators=100, max_depth=7, max_features="log2", learning_rate=0.5  |
|          0.8697 | n_estimators=700, max_depth=3, max_features="log2", learning_rate=0.01 |
|          0.8693 | n_estimators=100, max_depth=7, max_features="log2", learning_rate=0.01 |
|          0.869  | n_estimators=700, max_depth=3, max_features="log2", learning_rate=0.5  |
|          0.8667 | n_estimators=100, max_depth=3, max_features="log2", learning_rate=0.5  |
|          0.8665 | n_estimators=500, max_depth=3, max_features="log2", learning_rate=0.5  |
|          0.865  | n_estimators=300, max_depth=3, max_features="log2", learning_rate=0.5  |
|          0.8644 | n_estimators=300, max_depth=7, max_features="log2", learning_rate=1    |
|          0.8642 | n_estimators=500, max_depth=7, max_features="log2", learning_rate=1    |
|          0.8642 | n_estimators=100, max_depth=7, max_features="log2", learning_rate=1    |
|          0.8641 | n_estimators=500, max_depth=3, max_features="log2", learning_rate=0.01 |
|          0.8638 | n_estimators=500, max_depth=5, max_features="log2", learning_rate=1    |
|          0.8637 | n_estimators=700, max_depth=1, max_features="log2", learning_rate=0.1  |
|          0.862  | n_estimators=500, max_depth=1, max_features="log2", learning_rate=0.1  |
|          0.8606 | n_estimators=300, max_depth=5, max_features="log2", learning_rate=1    |
|          0.8602 | n_estimators=300, max_depth=1, max_features="log2", learning_rate=0.5  |
|          0.8589 | n_estimators=700, max_depth=3, max_features="log2", learning_rate=1    |
|          0.8588 | n_estimators=300, max_depth=1, max_features="log2", learning_rate=0.1  |
|          0.8578 | n_estimators=500, max_depth=1, max_features="log2", learning_rate=0.5  |
|          0.8571 | n_estimators=300, max_depth=3, max_features="log2", learning_rate=1    |
|          0.8571 | n_estimators=700, max_depth=1, max_features="log2", learning_rate=0.5  |
|          0.8564 | n_estimators=100, max_depth=1, max_features="log2", learning_rate=0.5  |
|          0.8548 | n_estimators=100, max_depth=1, max_features="log2", learning_rate=1    |
|          0.8545 | n_estimators=100, max_depth=5, max_features="log2", learning_rate=0.01 |
|          0.8539 | n_estimators=300, max_depth=3, max_features="log2", learning_rate=0.01 |
|          0.8536 | n_estimators=500, max_depth=3, max_features="log2", learning_rate=1    |
|          0.8536 | n_estimators=100, max_depth=5, max_features="log2", learning_rate=1    |
|          0.8486 | n_estimators=300, max_depth=1, max_features="log2", learning_rate=1    |
|          0.8455 | n_estimators=500, max_depth=1, max_features="log2", learning_rate=1    |
|          0.8446 | n_estimators=700, max_depth=1, max_features="log2", learning_rate=1    |
|          0.8405 | n_estimators=100, max_depth=1, max_features="log2", learning_rate=0.1  |
|          0.8384 | n_estimators=100, max_depth=3, max_features="log2", learning_rate=1    |
|          0.8353 | n_estimators=700, max_depth=1, max_features="log2", learning_rate=0.01 |
|          0.835  | n_estimators=100, max_depth=3, max_features="log2", learning_rate=0.01 |
|          0.8284 | n_estimators=500, max_depth=1, max_features="log2", learning_rate=0.01 |
|          0.8199 | n_estimators=300, max_depth=1, max_features="log2", learning_rate=0.01 |
|          0.817  | n_estimators=700, max_depth=7, max_features="log2", learning_rate=1    |
|          0.8074 | n_estimators=100, max_depth=1, max_features="log2", learning_rate=0.01 |
|          0.8052 | n_estimators=700, max_depth=5, max_features="log2", learning_rate=1    |

## LogisticRegression
|   roc_auc.macro | params              |
|----------------:|:--------------------|
|          0.8362 | penalty="l1", C=1   |
|          0.836  | penalty="l1", C=10  |
|          0.8357 | penalty="l2", C=1   |
|          0.8355 | penalty="l2", C=0.1 |
|          0.8355 | penalty="l2", C=10  |
|          0.8344 | penalty="l1", C=0.1 |

