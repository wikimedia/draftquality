# Model tuning report
- Revscoring version: 2.6.9
- Features: draftquality.feature_lists.ptwiki.draft_quality
- Date: 2020-04-16T16:09:06.725300
- Observations: 3947
- Labels: ["OK", "spam", "unsuitable"]
- Statistic: roc_auc.macro (maximize)
- Folds: 5

# Top scoring configurations
| model                  |   roc_auc.macro | params                                                                         |
|:-----------------------|----------------:|:-------------------------------------------------------------------------------|
| GradientBoosting       |          0.8879 | max_depth=7, max_features="log2", n_estimators=700, learning_rate=0.01         |
| GradientBoosting       |          0.8869 | max_depth=7, max_features="log2", n_estimators=500, learning_rate=0.01         |
| GradientBoosting       |          0.8865 | max_depth=7, max_features="log2", n_estimators=300, learning_rate=0.1          |
| GradientBoosting       |          0.8849 | max_depth=5, max_features="log2", n_estimators=700, learning_rate=0.01         |
| GradientBoosting       |          0.8847 | max_depth=7, max_features="log2", n_estimators=700, learning_rate=0.1          |
| GradientBoosting       |          0.8846 | max_depth=7, max_features="log2", n_estimators=500, learning_rate=0.1          |
| GradientBoosting       |          0.8836 | max_depth=7, max_features="log2", n_estimators=100, learning_rate=0.1          |
| GradientBoosting       |          0.8833 | max_depth=7, max_features="log2", n_estimators=300, learning_rate=0.01         |
| RandomForestClassifier |          0.883  | max_features="log2", min_samples_leaf=1, criterion="entropy", n_estimators=640 |
| GradientBoosting       |          0.8821 | max_depth=5, max_features="log2", n_estimators=700, learning_rate=0.1          |

# Models
## LogisticRegression
|   roc_auc.macro | params              |
|----------------:|:--------------------|
|          0.8361 | penalty="l1", C=0.1 |
|          0.8299 | penalty="l2", C=0.1 |
|          0.8237 | penalty="l1", C=1   |
|          0.8184 | penalty="l2", C=1   |
|          0.8123 | penalty="l1", C=10  |
|          0.8116 | penalty="l2", C=10  |

## RandomForestClassifier
|   roc_auc.macro | params                                                                          |
|----------------:|:--------------------------------------------------------------------------------|
|          0.883  | max_features="log2", min_samples_leaf=1, criterion="entropy", n_estimators=640  |
|          0.882  | max_features="log2", min_samples_leaf=1, criterion="gini", n_estimators=640     |
|          0.8807 | max_features="log2", min_samples_leaf=3, criterion="entropy", n_estimators=640  |
|          0.8807 | max_features="log2", min_samples_leaf=1, criterion="gini", n_estimators=320     |
|          0.8805 | max_features="log2", min_samples_leaf=1, criterion="entropy", n_estimators=80   |
|          0.8805 | max_features="log2", min_samples_leaf=1, criterion="entropy", n_estimators=320  |
|          0.8804 | max_features="log2", min_samples_leaf=1, criterion="entropy", n_estimators=160  |
|          0.8798 | max_features="log2", min_samples_leaf=3, criterion="entropy", n_estimators=320  |
|          0.8797 | max_features="log2", min_samples_leaf=1, criterion="gini", n_estimators=160     |
|          0.8795 | max_features="log2", min_samples_leaf=3, criterion="entropy", n_estimators=160  |
|          0.879  | max_features="log2", min_samples_leaf=3, criterion="gini", n_estimators=320     |
|          0.8786 | max_features="log2", min_samples_leaf=3, criterion="gini", n_estimators=640     |
|          0.8785 | max_features="log2", min_samples_leaf=3, criterion="gini", n_estimators=160     |
|          0.8776 | max_features="log2", min_samples_leaf=5, criterion="entropy", n_estimators=640  |
|          0.8776 | max_features="log2", min_samples_leaf=3, criterion="gini", n_estimators=80      |
|          0.8769 | max_features="log2", min_samples_leaf=5, criterion="entropy", n_estimators=320  |
|          0.8767 | max_features="log2", min_samples_leaf=5, criterion="gini", n_estimators=640     |
|          0.8766 | max_features="log2", min_samples_leaf=1, criterion="gini", n_estimators=80      |
|          0.8758 | max_features="log2", min_samples_leaf=5, criterion="gini", n_estimators=320     |
|          0.8756 | max_features="log2", min_samples_leaf=5, criterion="entropy", n_estimators=160  |
|          0.875  | max_features="log2", min_samples_leaf=5, criterion="gini", n_estimators=80      |
|          0.8749 | max_features="log2", min_samples_leaf=5, criterion="entropy", n_estimators=80   |
|          0.8748 | max_features="log2", min_samples_leaf=7, criterion="entropy", n_estimators=640  |
|          0.8748 | max_features="log2", min_samples_leaf=5, criterion="gini", n_estimators=160     |
|          0.8745 | max_features="log2", min_samples_leaf=3, criterion="entropy", n_estimators=80   |
|          0.8745 | max_features="log2", min_samples_leaf=7, criterion="gini", n_estimators=640     |
|          0.8742 | max_features="log2", min_samples_leaf=7, criterion="gini", n_estimators=320     |
|          0.8742 | max_features="log2", min_samples_leaf=1, criterion="entropy", n_estimators=40   |
|          0.8739 | max_features="log2", min_samples_leaf=7, criterion="gini", n_estimators=160     |
|          0.8738 | max_features="log2", min_samples_leaf=7, criterion="entropy", n_estimators=320  |
|          0.8731 | max_features="log2", min_samples_leaf=7, criterion="entropy", n_estimators=160  |
|          0.8725 | max_features="log2", min_samples_leaf=7, criterion="gini", n_estimators=80      |
|          0.8723 | max_features="log2", min_samples_leaf=7, criterion="entropy", n_estimators=80   |
|          0.8714 | max_features="log2", min_samples_leaf=7, criterion="entropy", n_estimators=40   |
|          0.871  | max_features="log2", min_samples_leaf=5, criterion="entropy", n_estimators=40   |
|          0.8709 | max_features="log2", min_samples_leaf=3, criterion="gini", n_estimators=40      |
|          0.8704 | max_features="log2", min_samples_leaf=3, criterion="entropy", n_estimators=40   |
|          0.8697 | max_features="log2", min_samples_leaf=1, criterion="gini", n_estimators=40      |
|          0.8687 | max_features="log2", min_samples_leaf=13, criterion="gini", n_estimators=640    |
|          0.8684 | max_features="log2", min_samples_leaf=13, criterion="entropy", n_estimators=640 |
|          0.8677 | max_features="log2", min_samples_leaf=13, criterion="gini", n_estimators=320    |
|          0.8677 | max_features="log2", min_samples_leaf=13, criterion="entropy", n_estimators=320 |
|          0.8669 | max_features="log2", min_samples_leaf=7, criterion="gini", n_estimators=40      |
|          0.8668 | max_features="log2", min_samples_leaf=13, criterion="gini", n_estimators=80     |
|          0.8667 | max_features="log2", min_samples_leaf=13, criterion="gini", n_estimators=160    |
|          0.8666 | max_features="log2", min_samples_leaf=13, criterion="entropy", n_estimators=160 |
|          0.8663 | max_features="log2", min_samples_leaf=5, criterion="gini", n_estimators=40      |
|          0.866  | max_features="log2", min_samples_leaf=13, criterion="entropy", n_estimators=80  |
|          0.8653 | max_features="log2", min_samples_leaf=5, criterion="entropy", n_estimators=20   |
|          0.8649 | max_features="log2", min_samples_leaf=7, criterion="entropy", n_estimators=20   |
|          0.8647 | max_features="log2", min_samples_leaf=7, criterion="gini", n_estimators=20      |
|          0.8636 | max_features="log2", min_samples_leaf=13, criterion="entropy", n_estimators=40  |
|          0.8635 | max_features="log2", min_samples_leaf=5, criterion="gini", n_estimators=20      |
|          0.8627 | max_features="log2", min_samples_leaf=3, criterion="entropy", n_estimators=20   |
|          0.8625 | max_features="log2", min_samples_leaf=13, criterion="gini", n_estimators=40     |
|          0.8615 | max_features="log2", min_samples_leaf=1, criterion="entropy", n_estimators=20   |
|          0.8614 | max_features="log2", min_samples_leaf=13, criterion="gini", n_estimators=20     |
|          0.8611 | max_features="log2", min_samples_leaf=3, criterion="gini", n_estimators=20      |
|          0.8604 | max_features="log2", min_samples_leaf=13, criterion="entropy", n_estimators=20  |
|          0.8598 | max_features="log2", min_samples_leaf=1, criterion="gini", n_estimators=20      |
|          0.8581 | max_features="log2", min_samples_leaf=7, criterion="gini", n_estimators=10      |
|          0.8559 | max_features="log2", min_samples_leaf=13, criterion="entropy", n_estimators=10  |
|          0.8555 | max_features="log2", min_samples_leaf=7, criterion="entropy", n_estimators=10   |
|          0.8549 | max_features="log2", min_samples_leaf=3, criterion="gini", n_estimators=10      |
|          0.8537 | max_features="log2", min_samples_leaf=3, criterion="entropy", n_estimators=10   |
|          0.8526 | max_features="log2", min_samples_leaf=5, criterion="entropy", n_estimators=10   |
|          0.8524 | max_features="log2", min_samples_leaf=13, criterion="gini", n_estimators=10     |
|          0.849  | max_features="log2", min_samples_leaf=5, criterion="gini", n_estimators=10      |
|          0.8384 | max_features="log2", min_samples_leaf=1, criterion="entropy", n_estimators=10   |
|          0.8364 | max_features="log2", min_samples_leaf=1, criterion="gini", n_estimators=10      |

## GradientBoosting
|   roc_auc.macro | params                                                                 |
|----------------:|:-----------------------------------------------------------------------|
|          0.8879 | max_depth=7, max_features="log2", n_estimators=700, learning_rate=0.01 |
|          0.8869 | max_depth=7, max_features="log2", n_estimators=500, learning_rate=0.01 |
|          0.8865 | max_depth=7, max_features="log2", n_estimators=300, learning_rate=0.1  |
|          0.8849 | max_depth=5, max_features="log2", n_estimators=700, learning_rate=0.01 |
|          0.8847 | max_depth=7, max_features="log2", n_estimators=700, learning_rate=0.1  |
|          0.8846 | max_depth=7, max_features="log2", n_estimators=500, learning_rate=0.1  |
|          0.8836 | max_depth=7, max_features="log2", n_estimators=100, learning_rate=0.1  |
|          0.8833 | max_depth=7, max_features="log2", n_estimators=300, learning_rate=0.01 |
|          0.8821 | max_depth=5, max_features="log2", n_estimators=700, learning_rate=0.1  |
|          0.8821 | max_depth=5, max_features="log2", n_estimators=100, learning_rate=0.1  |
|          0.8821 | max_depth=5, max_features="log2", n_estimators=500, learning_rate=0.01 |
|          0.8819 | max_depth=5, max_features="log2", n_estimators=300, learning_rate=0.1  |
|          0.8815 | max_depth=5, max_features="log2", n_estimators=500, learning_rate=0.1  |
|          0.8772 | max_depth=3, max_features="log2", n_estimators=500, learning_rate=0.1  |
|          0.8769 | max_depth=3, max_features="log2", n_estimators=700, learning_rate=0.1  |
|          0.8764 | max_depth=3, max_features="log2", n_estimators=300, learning_rate=0.1  |
|          0.8762 | max_depth=7, max_features="log2", n_estimators=100, learning_rate=0.5  |
|          0.8761 | max_depth=5, max_features="log2", n_estimators=300, learning_rate=0.01 |
|          0.8761 | max_depth=7, max_features="log2", n_estimators=300, learning_rate=0.5  |
|          0.8749 | max_depth=3, max_features="log2", n_estimators=100, learning_rate=0.1  |
|          0.8736 | max_depth=7, max_features="log2", n_estimators=100, learning_rate=0.01 |
|          0.8735 | max_depth=5, max_features="log2", n_estimators=300, learning_rate=0.5  |
|          0.8727 | max_depth=3, max_features="log2", n_estimators=700, learning_rate=0.01 |
|          0.8711 | max_depth=5, max_features="log2", n_estimators=500, learning_rate=0.5  |
|          0.8698 | max_depth=5, max_features="log2", n_estimators=100, learning_rate=0.5  |
|          0.8687 | max_depth=3, max_features="log2", n_estimators=500, learning_rate=0.01 |
|          0.8684 | max_depth=5, max_features="log2", n_estimators=700, learning_rate=0.5  |
|          0.8679 | max_depth=7, max_features="log2", n_estimators=500, learning_rate=0.5  |
|          0.8675 | max_depth=7, max_features="log2", n_estimators=700, learning_rate=0.5  |
|          0.8665 | max_depth=1, max_features="log2", n_estimators=700, learning_rate=0.1  |
|          0.8664 | max_depth=1, max_features="log2", n_estimators=500, learning_rate=0.1  |
|          0.8662 | max_depth=3, max_features="log2", n_estimators=500, learning_rate=0.5  |
|          0.8642 | max_depth=1, max_features="log2", n_estimators=300, learning_rate=0.1  |
|          0.8638 | max_depth=3, max_features="log2", n_estimators=300, learning_rate=0.5  |
|          0.8621 | max_depth=3, max_features="log2", n_estimators=700, learning_rate=0.5  |
|          0.8619 | max_depth=1, max_features="log2", n_estimators=100, learning_rate=0.5  |
|          0.8614 | max_depth=5, max_features="log2", n_estimators=100, learning_rate=0.01 |
|          0.8607 | max_depth=7, max_features="log2", n_estimators=500, learning_rate=1    |
|          0.8602 | max_depth=3, max_features="log2", n_estimators=300, learning_rate=0.01 |
|          0.8599 | max_depth=7, max_features="log2", n_estimators=300, learning_rate=1    |
|          0.859  | max_depth=5, max_features="log2", n_estimators=300, learning_rate=1    |
|          0.8574 | max_depth=3, max_features="log2", n_estimators=700, learning_rate=1    |
|          0.8573 | max_depth=5, max_features="log2", n_estimators=500, learning_rate=1    |
|          0.855  | max_depth=5, max_features="log2", n_estimators=700, learning_rate=1    |
|          0.855  | max_depth=7, max_features="log2", n_estimators=100, learning_rate=1    |
|          0.854  | max_depth=3, max_features="log2", n_estimators=500, learning_rate=1    |
|          0.8537 | max_depth=1, max_features="log2", n_estimators=300, learning_rate=0.5  |
|          0.853  | max_depth=7, max_features="log2", n_estimators=700, learning_rate=1    |
|          0.8521 | max_depth=1, max_features="log2", n_estimators=100, learning_rate=1    |
|          0.8486 | max_depth=3, max_features="log2", n_estimators=300, learning_rate=1    |
|          0.8466 | max_depth=1, max_features="log2", n_estimators=500, learning_rate=0.5  |
|          0.8465 | max_depth=1, max_features="log2", n_estimators=100, learning_rate=0.1  |
|          0.8459 | max_depth=1, max_features="log2", n_estimators=700, learning_rate=0.5  |
|          0.8446 | max_depth=3, max_features="log2", n_estimators=100, learning_rate=0.5  |
|          0.8444 | max_depth=3, max_features="log2", n_estimators=100, learning_rate=0.01 |
|          0.8426 | max_depth=1, max_features="log2", n_estimators=700, learning_rate=0.01 |
|          0.8425 | max_depth=5, max_features="log2", n_estimators=100, learning_rate=1    |
|          0.8412 | max_depth=1, max_features="log2", n_estimators=300, learning_rate=1    |
|          0.8368 | max_depth=1, max_features="log2", n_estimators=500, learning_rate=0.01 |
|          0.8339 | max_depth=3, max_features="log2", n_estimators=100, learning_rate=1    |
|          0.8298 | max_depth=1, max_features="log2", n_estimators=700, learning_rate=1    |
|          0.828  | max_depth=1, max_features="log2", n_estimators=300, learning_rate=0.01 |
|          0.8244 | max_depth=1, max_features="log2", n_estimators=500, learning_rate=1    |
|          0.8169 | max_depth=1, max_features="log2", n_estimators=100, learning_rate=0.01 |

