Model Information:
	 - type: GradientBoosting
	 - version: 0.2.1
	 - params: {'n_iter_no_change': None, 'loss': 'deviance', 'criterion': 'friedman_mse', 'labels': ['OK', 'spam', 'unsuitable'], 'scale': False, 'multilabel': False, 'min_weight_fraction_leaf': 0.0, 'warm_start': False, 'min_samples_split': 2, 'init': None, 'subsample': 1.0, 'n_estimators': 500, 'max_features': 'log2', 'learning_rate': 0.1, 'validation_fraction': 0.1, 'max_leaf_nodes': None, 'center': False, 'random_state': None, 'presort': 'auto', 'min_impurity_decrease': 0.0, 'label_weights': None, 'tol': 0.0001, 'verbose': 0, 'max_depth': 7, 'population_rates': None, 'min_impurity_split': None, 'min_samples_leaf': 1}
	Environment:
	 - revscoring_version: '2.6.9'
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
		'OK'          1600  -->   1265      135            200
		'spam'        1481  -->     86     1105            290
		'unsuitable'  1591  -->    172      304           1115
	rates:
		              'OK'    'spam'    'unsuitable'
		----------  ------  --------  --------------
		sample       0.342     0.317           0.341
		population   0.962     0.018           0.02
	match_rate (micro=0.74, macro=0.361):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.764   0.149          0.17
	filter_rate (micro=0.26, macro=0.639):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.236   0.851          0.83
	recall (micro=0.788, macro=0.746):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.791   0.746         0.701
	!recall (micro=0.914, macro=0.873):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.916   0.862         0.841
	precision (micro=0.961, macro=0.39):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.996   0.092         0.082
	!precision (micro=0.181, macro=0.712):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.148   0.994         0.993
	f1 (micro=0.854, macro=0.397):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.881   0.165         0.146
	!f1 (micro=0.28, macro=0.697):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.255   0.924         0.911
	accuracy (micro=0.797, macro=0.831):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.795    0.86         0.838
	fpr (micro=0.086, macro=0.127):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.084   0.138         0.159
	roc_auc (micro=0.903, macro=0.887):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.904   0.896         0.859
	pr_auc (micro=0.964, macro=0.45):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.995   0.202         0.152
	
	 - score_schema: {'type': 'object', 'title': 'Scikit learn-based classifier score with probability', 'properties': {'prediction': {'type': 'string', 'description': 'The most likely label predicted by the estimator'}, 'probability': {'type': 'object', 'description': 'A mapping of probabilities onto each of the potential output labels', 'properties': {'OK': {'type': 'number'}, 'spam': {'type': 'number'}, 'unsuitable': {'type': 'number'}}}}}

