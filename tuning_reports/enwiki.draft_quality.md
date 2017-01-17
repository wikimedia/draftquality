# Model tuning report
- Revscoring version: 1.3.2
- Features: draftquality.feature_lists.enwiki.draft_quality
- Date: 2016-12-29T15:48:23.128684
- Observations: 52518
- Labels: ["vandalism", "spam", "OK", "attack"]
- Scoring: accuracy
- Folds: 5

# Top scoring configurations
| model                      |   mean(scores) |   std(scores) | params                                                                 |
|:---------------------------|---------------:|--------------:|:-----------------------------------------------------------------------|
| GradientBoostingClassifier |          0.847 |         0.004 | learning_rate=0.01, max_features="log2", max_depth=7, n_estimators=700 |
| GradientBoostingClassifier |          0.845 |         0.003 | learning_rate=0.1, max_features="log2", max_depth=3, n_estimators=700  |
| GradientBoostingClassifier |          0.845 |         0.004 | learning_rate=0.1, max_features="log2", max_depth=7, n_estimators=100  |
| GradientBoostingClassifier |          0.845 |         0.004 | learning_rate=0.01, max_features="log2", max_depth=7, n_estimators=500 |
| GradientBoostingClassifier |          0.844 |         0.004 | learning_rate=0.1, max_features="log2", max_depth=5, n_estimators=300  |
| GradientBoostingClassifier |          0.844 |         0.003 | learning_rate=0.1, max_features="log2", max_depth=7, n_estimators=300  |
| GradientBoostingClassifier |          0.844 |         0.003 | learning_rate=0.1, max_features="log2", max_depth=7, n_estimators=500  |
| GradientBoostingClassifier |          0.844 |         0.002 | learning_rate=0.1, max_features="log2", max_depth=5, n_estimators=500  |
| GradientBoostingClassifier |          0.844 |         0.002 | learning_rate=0.1, max_features="log2", max_depth=3, n_estimators=500  |
| GradientBoostingClassifier |          0.844 |         0.003 | learning_rate=0.1, max_features="log2", max_depth=5, n_estimators=100  |

# Models
## GradientBoostingClassifier
|   mean(scores) |   std(scores) | params                                                                 |
|---------------:|--------------:|:-----------------------------------------------------------------------|
|          0.847 |         0.004 | learning_rate=0.01, max_features="log2", max_depth=7, n_estimators=700 |
|          0.845 |         0.003 | learning_rate=0.1, max_features="log2", max_depth=3, n_estimators=700  |
|          0.845 |         0.004 | learning_rate=0.1, max_features="log2", max_depth=7, n_estimators=100  |
|          0.845 |         0.004 | learning_rate=0.01, max_features="log2", max_depth=7, n_estimators=500 |
|          0.844 |         0.004 | learning_rate=0.1, max_features="log2", max_depth=5, n_estimators=300  |
|          0.844 |         0.003 | learning_rate=0.1, max_features="log2", max_depth=7, n_estimators=300  |
|          0.844 |         0.003 | learning_rate=0.1, max_features="log2", max_depth=7, n_estimators=500  |
|          0.844 |         0.002 | learning_rate=0.1, max_features="log2", max_depth=5, n_estimators=500  |
|          0.844 |         0.002 | learning_rate=0.1, max_features="log2", max_depth=3, n_estimators=500  |
|          0.844 |         0.003 | learning_rate=0.1, max_features="log2", max_depth=5, n_estimators=100  |
|          0.844 |         0.002 | learning_rate=0.1, max_features="log2", max_depth=3, n_estimators=300  |
|          0.844 |         0.004 | learning_rate=0.1, max_features="log2", max_depth=5, n_estimators=700  |
|          0.844 |         0.003 | learning_rate=0.01, max_features="log2", max_depth=5, n_estimators=700 |
|          0.844 |         0.004 | learning_rate=0.1, max_features="log2", max_depth=7, n_estimators=700  |
|          0.842 |         0.004 | learning_rate=0.01, max_features="log2", max_depth=7, n_estimators=300 |
|          0.841 |         0.003 | learning_rate=0.01, max_features="log2", max_depth=5, n_estimators=500 |
|          0.839 |         0.003 | learning_rate=0.5, max_features="log2", max_depth=1, n_estimators=700  |
|          0.839 |         0.002 | learning_rate=0.5, max_features="log2", max_depth=1, n_estimators=500  |
|          0.839 |         0.003 | learning_rate=0.5, max_features="log2", max_depth=1, n_estimators=300  |
|          0.838 |         0.003 | learning_rate=0.5, max_features="log2", max_depth=3, n_estimators=300  |
|          0.838 |         0.004 | learning_rate=0.1, max_features="log2", max_depth=3, n_estimators=100  |
|          0.838 |         0.003 | learning_rate=0.5, max_features="log2", max_depth=3, n_estimators=100  |
|          0.837 |         0.002 | learning_rate=0.1, max_features="log2", max_depth=1, n_estimators=700  |
|          0.836 |         0.004 | learning_rate=0.01, max_features="log2", max_depth=3, n_estimators=700 |
|          0.835 |         0.002 | learning_rate=0.1, max_features="log2", max_depth=1, n_estimators=500  |
|          0.835 |         0.002 | learning_rate=1, max_features="log2", max_depth=1, n_estimators=300    |
|          0.835 |         0.004 | learning_rate=0.01, max_features="log2", max_depth=5, n_estimators=300 |
|          0.834 |         0.003 | learning_rate=0.5, max_features="log2", max_depth=3, n_estimators=500  |
|          0.834 |         0.004 | learning_rate=0.5, max_features="log2", max_depth=5, n_estimators=100  |
|          0.834 |         0.004 | learning_rate=0.5, max_features="log2", max_depth=3, n_estimators=700  |
|          0.833 |         0.002 | learning_rate=0.5, max_features="log2", max_depth=1, n_estimators=100  |
|          0.832 |         0.003 | learning_rate=0.5, max_features="log2", max_depth=7, n_estimators=100  |
|          0.832 |         0.002 | learning_rate=1, max_features="log2", max_depth=3, n_estimators=100    |
|          0.831 |         0.003 | learning_rate=0.1, max_features="log2", max_depth=1, n_estimators=300  |
|          0.831 |         0.005 | learning_rate=0.01, max_features="log2", max_depth=3, n_estimators=500 |
|          0.83  |         0.004 | learning_rate=0.5, max_features="log2", max_depth=5, n_estimators=300  |
|          0.83  |         0.003 | learning_rate=0.01, max_features="log2", max_depth=7, n_estimators=100 |
|          0.826 |         0.02  | learning_rate=1, max_features="log2", max_depth=1, n_estimators=500    |
|          0.826 |         0.009 | learning_rate=1, max_features="log2", max_depth=3, n_estimators=300    |
|          0.824 |         0.009 | learning_rate=0.5, max_features="log2", max_depth=5, n_estimators=500  |
|          0.823 |         0.013 | learning_rate=0.5, max_features="log2", max_depth=7, n_estimators=300  |
|          0.822 |         0.003 | learning_rate=1, max_features="log2", max_depth=5, n_estimators=100    |
|          0.821 |         0.007 | learning_rate=1, max_features="log2", max_depth=3, n_estimators=500    |
|          0.82  |         0.004 | learning_rate=0.01, max_features="log2", max_depth=3, n_estimators=300 |
|          0.82  |         0.004 | learning_rate=0.01, max_features="log2", max_depth=5, n_estimators=100 |
|          0.814 |         0.003 | learning_rate=0.1, max_features="log2", max_depth=1, n_estimators=100  |
|          0.812 |         0.004 | learning_rate=1, max_features="log2", max_depth=7, n_estimators=100    |
|          0.808 |         0.003 | learning_rate=0.01, max_features="log2", max_depth=1, n_estimators=700 |
|          0.805 |         0.002 | learning_rate=0.01, max_features="log2", max_depth=3, n_estimators=100 |
|          0.802 |         0.003 | learning_rate=0.01, max_features="log2", max_depth=1, n_estimators=500 |
|          0.793 |         0.003 | learning_rate=0.01, max_features="log2", max_depth=1, n_estimators=300 |
|          0.79  |         0.061 | learning_rate=0.5, max_features="log2", max_depth=5, n_estimators=700  |
|          0.781 |         0.038 | learning_rate=1, max_features="log2", max_depth=5, n_estimators=300    |
|          0.768 |         0.005 | learning_rate=0.01, max_features="log2", max_depth=1, n_estimators=100 |
|          0.766 |         0.134 | learning_rate=1, max_features="log2", max_depth=1, n_estimators=700    |
|          0.749 |         0.087 | learning_rate=0.5, max_features="log2", max_depth=7, n_estimators=500  |
|          0.746 |         0.064 | learning_rate=1, max_features="log2", max_depth=7, n_estimators=300    |
|          0.732 |         0.196 | learning_rate=1, max_features="log2", max_depth=1, n_estimators=100    |
|          0.708 |         0.182 | learning_rate=1, max_features="log2", max_depth=3, n_estimators=700    |
|          0.663 |         0.185 | learning_rate=1, max_features="log2", max_depth=5, n_estimators=500    |
|          0.655 |         0.147 | learning_rate=0.5, max_features="log2", max_depth=7, n_estimators=700  |
|          0.565 |         0.134 | learning_rate=1, max_features="log2", max_depth=7, n_estimators=500    |
|          0.549 |         0.079 | learning_rate=1, max_features="log2", max_depth=7, n_estimators=700    |
|          0.497 |         0.172 | learning_rate=1, max_features="log2", max_depth=5, n_estimators=700    |

## RandomForestClassifier
|   mean(scores) |   std(scores) | params                                                                          |
|---------------:|--------------:|:--------------------------------------------------------------------------------|
|          0.841 |         0.005 | max_features="log2", n_estimators=160, criterion="gini", min_samples_leaf=3     |
|          0.841 |         0.004 | max_features="log2", n_estimators=640, criterion="gini", min_samples_leaf=3     |
|          0.841 |         0.005 | max_features="log2", n_estimators=320, criterion="gini", min_samples_leaf=3     |
|          0.841 |         0.004 | max_features="log2", n_estimators=320, criterion="gini", min_samples_leaf=1     |
|          0.841 |         0.005 | max_features="log2", n_estimators=320, criterion="entropy", min_samples_leaf=3  |
|          0.841 |         0.005 | max_features="log2", n_estimators=640, criterion="entropy", min_samples_leaf=3  |
|          0.841 |         0.005 | max_features="log2", n_estimators=320, criterion="gini", min_samples_leaf=5     |
|          0.841 |         0.005 | max_features="log2", n_estimators=80, criterion="entropy", min_samples_leaf=3   |
|          0.84  |         0.005 | max_features="log2", n_estimators=320, criterion="entropy", min_samples_leaf=5  |
|          0.84  |         0.005 | max_features="log2", n_estimators=160, criterion="entropy", min_samples_leaf=3  |
|          0.84  |         0.005 | max_features="log2", n_estimators=80, criterion="gini", min_samples_leaf=3      |
|          0.84  |         0.005 | max_features="log2", n_estimators=640, criterion="gini", min_samples_leaf=1     |
|          0.84  |         0.004 | max_features="log2", n_estimators=640, criterion="entropy", min_samples_leaf=1  |
|          0.84  |         0.005 | max_features="log2", n_estimators=640, criterion="entropy", min_samples_leaf=5  |
|          0.84  |         0.005 | max_features="log2", n_estimators=640, criterion="gini", min_samples_leaf=5     |
|          0.84  |         0.005 | max_features="log2", n_estimators=160, criterion="gini", min_samples_leaf=5     |
|          0.84  |         0.004 | max_features="log2", n_estimators=80, criterion="gini", min_samples_leaf=5      |
|          0.84  |         0.004 | max_features="log2", n_estimators=160, criterion="entropy", min_samples_leaf=5  |
|          0.84  |         0.004 | max_features="log2", n_estimators=320, criterion="entropy", min_samples_leaf=1  |
|          0.84  |         0.005 | max_features="log2", n_estimators=160, criterion="entropy", min_samples_leaf=7  |
|          0.84  |         0.005 | max_features="log2", n_estimators=160, criterion="gini", min_samples_leaf=7     |
|          0.84  |         0.003 | max_features="log2", n_estimators=160, criterion="entropy", min_samples_leaf=1  |
|          0.839 |         0.004 | max_features="log2", n_estimators=40, criterion="gini", min_samples_leaf=3      |
|          0.839 |         0.005 | max_features="log2", n_estimators=640, criterion="gini", min_samples_leaf=7     |
|          0.839 |         0.005 | max_features="log2", n_estimators=320, criterion="gini", min_samples_leaf=7     |
|          0.839 |         0.004 | max_features="log2", n_estimators=80, criterion="entropy", min_samples_leaf=5   |
|          0.839 |         0.005 | max_features="log2", n_estimators=80, criterion="gini", min_samples_leaf=7      |
|          0.839 |         0.005 | max_features="log2", n_estimators=640, criterion="entropy", min_samples_leaf=7  |
|          0.839 |         0.004 | max_features="log2", n_estimators=320, criterion="entropy", min_samples_leaf=7  |
|          0.839 |         0.004 | max_features="log2", n_estimators=40, criterion="gini", min_samples_leaf=5      |
|          0.839 |         0.004 | max_features="log2", n_estimators=40, criterion="entropy", min_samples_leaf=3   |
|          0.839 |         0.003 | max_features="log2", n_estimators=80, criterion="entropy", min_samples_leaf=1   |
|          0.839 |         0.004 | max_features="log2", n_estimators=160, criterion="gini", min_samples_leaf=1     |
|          0.839 |         0.004 | max_features="log2", n_estimators=40, criterion="entropy", min_samples_leaf=5   |
|          0.839 |         0.004 | max_features="log2", n_estimators=80, criterion="entropy", min_samples_leaf=7   |
|          0.838 |         0.004 | max_features="log2", n_estimators=80, criterion="gini", min_samples_leaf=1      |
|          0.838 |         0.004 | max_features="log2", n_estimators=40, criterion="entropy", min_samples_leaf=7   |
|          0.838 |         0.005 | max_features="log2", n_estimators=40, criterion="gini", min_samples_leaf=7      |
|          0.838 |         0.003 | max_features="log2", n_estimators=40, criterion="gini", min_samples_leaf=1      |
|          0.837 |         0.005 | max_features="log2", n_estimators=640, criterion="gini", min_samples_leaf=13    |
|          0.837 |         0.005 | max_features="log2", n_estimators=20, criterion="entropy", min_samples_leaf=3   |
|          0.837 |         0.005 | max_features="log2", n_estimators=20, criterion="gini", min_samples_leaf=3      |
|          0.837 |         0.005 | max_features="log2", n_estimators=160, criterion="gini", min_samples_leaf=13    |
|          0.837 |         0.005 | max_features="log2", n_estimators=20, criterion="gini", min_samples_leaf=5      |
|          0.837 |         0.004 | max_features="log2", n_estimators=20, criterion="entropy", min_samples_leaf=5   |
|          0.837 |         0.004 | max_features="log2", n_estimators=320, criterion="entropy", min_samples_leaf=13 |
|          0.837 |         0.004 | max_features="log2", n_estimators=320, criterion="gini", min_samples_leaf=13    |
|          0.837 |         0.003 | max_features="log2", n_estimators=40, criterion="entropy", min_samples_leaf=1   |
|          0.837 |         0.005 | max_features="log2", n_estimators=640, criterion="entropy", min_samples_leaf=13 |
|          0.837 |         0.005 | max_features="log2", n_estimators=80, criterion="entropy", min_samples_leaf=13  |
|          0.837 |         0.005 | max_features="log2", n_estimators=160, criterion="entropy", min_samples_leaf=13 |
|          0.837 |         0.004 | max_features="log2", n_estimators=80, criterion="gini", min_samples_leaf=13     |
|          0.836 |         0.005 | max_features="log2", n_estimators=20, criterion="entropy", min_samples_leaf=7   |
|          0.836 |         0.004 | max_features="log2", n_estimators=40, criterion="gini", min_samples_leaf=13     |
|          0.836 |         0.004 | max_features="log2", n_estimators=40, criterion="entropy", min_samples_leaf=13  |
|          0.835 |         0.005 | max_features="log2", n_estimators=20, criterion="gini", min_samples_leaf=13     |
|          0.835 |         0.005 | max_features="log2", n_estimators=20, criterion="gini", min_samples_leaf=7      |
|          0.834 |         0.004 | max_features="log2", n_estimators=10, criterion="gini", min_samples_leaf=5      |
|          0.833 |         0.004 | max_features="log2", n_estimators=10, criterion="entropy", min_samples_leaf=7   |
|          0.833 |         0.004 | max_features="log2", n_estimators=20, criterion="gini", min_samples_leaf=1      |
|          0.833 |         0.004 | max_features="log2", n_estimators=20, criterion="entropy", min_samples_leaf=13  |
|          0.833 |         0.004 | max_features="log2", n_estimators=10, criterion="entropy", min_samples_leaf=5   |
|          0.832 |         0.006 | max_features="log2", n_estimators=10, criterion="gini", min_samples_leaf=13     |
|          0.832 |         0.004 | max_features="log2", n_estimators=10, criterion="gini", min_samples_leaf=7      |
|          0.832 |         0.004 | max_features="log2", n_estimators=20, criterion="entropy", min_samples_leaf=1   |
|          0.832 |         0.003 | max_features="log2", n_estimators=10, criterion="entropy", min_samples_leaf=3   |
|          0.832 |         0.003 | max_features="log2", n_estimators=10, criterion="entropy", min_samples_leaf=13  |
|          0.831 |         0.005 | max_features="log2", n_estimators=10, criterion="gini", min_samples_leaf=3      |
|          0.826 |         0.004 | max_features="log2", n_estimators=10, criterion="gini", min_samples_leaf=1      |
|          0.824 |         0.003 | max_features="log2", n_estimators=10, criterion="entropy", min_samples_leaf=1   |

## LogisticRegression
|   mean(scores) |   std(scores) | params              |
|---------------:|--------------:|:--------------------|
|          0.804 |         0.003 | C=1, penalty="l1"   |
|          0.798 |         0.004 | C=0.1, penalty="l1" |
|          0.77  |         0.008 | C=1, penalty="l2"   |
|          0.769 |         0.011 | C=0.1, penalty="l2" |
|          0.766 |         0.015 | C=10, penalty="l2"  |
|          0     |         0     | C=10, penalty="l1"  |

