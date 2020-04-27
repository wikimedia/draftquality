Model Information:
	 - type: GradientBoosting
	 - version: 0.2.1
	 - params: {'presort': 'auto', 'subsample': 1.0, 'center': False, 'min_impurity_decrease': 0.0, 'max_features': 'log2', 'n_iter_no_change': None, 'random_state': None, 'max_depth': 7, 'criterion': 'friedman_mse', 'labels': ['OK', 'spam', 'unsuitable'], 'validation_fraction': 0.1, 'max_leaf_nodes': None, 'label_weights': None, 'multilabel': False, 'warm_start': False, 'min_impurity_split': None, 'init': None, 'min_weight_fraction_leaf': 0.0, 'min_samples_split': 2, 'loss': 'deviance', 'learning_rate': 0.1, 'n_estimators': 500, 'population_rates': None, 'min_samples_leaf': 1, 'verbose': 0, 'tol': 0.0001, 'scale': False}
	Environment:
	 - revscoring_version: '2.7.2'
	 - platform: 'Linux-4.9.0-8-amd64-x86_64-with-debian-9.4'
	 - machine: 'x86_64'
	 - version: '#1 SMP Debian 4.9.144-3.1 (2019-02-19)'
	 - system: 'Linux'
	 - processor: ''
	 - python_build: ('default', 'Sep 27 2018 17:25:39')
	 - python_compiler: 'GCC 6.3.0 20170516'
	 - python_branch: ''
	 - python_implementation: 'CPython'
	 - python_revision: ''
	 - python_version: '3.5.3'
	 - release: '4.9.0-8-amd64'
	
	Statistics:
	counts (n=4672):
		label            n         ~OK    ~spam    ~unsuitable
		------------  ----  ---  -----  -------  -------------
		'OK'          1600  -->   1265      137            198
		'spam'        1481  -->     90     1116            275
		'unsuitable'  1591  -->    169      297           1125
	rates:
		              'OK'    'spam'    'unsuitable'
		----------  ------  --------  --------------
		sample       0.342     0.317           0.341
		population   0.962     0.018           0.02
	match_rate (micro=0.74, macro=0.358):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.764   0.147         0.164
	filter_rate (micro=0.26, macro=0.642):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.236   0.853         0.836
	recall (micro=0.788, macro=0.75):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.791   0.754         0.707
	!recall (micro=0.913, macro=0.875):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.916   0.864         0.846
	precision (micro=0.961, macro=0.392):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.996   0.094         0.085
	!precision (micro=0.181, macro=0.712):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.148   0.995         0.993
	f1 (micro=0.854, macro=0.4):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.881   0.168         0.152
	!f1 (micro=0.28, macro=0.698):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.255   0.925         0.914
	accuracy (micro=0.798, macro=0.834):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.795   0.862         0.844
	fpr (micro=0.087, macro=0.125):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.084   0.136         0.154
	roc_auc (micro=0.905, macro=0.888):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.906   0.898          0.86
	pr_auc (micro=0.964, macro=0.448):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.995   0.203         0.146
	
	 - score_schema: {'properties': {'probability': {'properties': {'spam': {'type': 'number'}, 'unsuitable': {'type': 'number'}, 'OK': {'type': 'number'}}, 'description': 'A mapping of probabilities onto each of the potential output labels', 'type': 'object'}, 'prediction': {'description': 'The most likely label predicted by the estimator', 'type': 'string'}}, 'type': 'object', 'title': 'Scikit learn-based classifier score with probability'}

