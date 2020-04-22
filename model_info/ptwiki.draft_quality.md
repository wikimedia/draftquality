Model Information:
	 - type: GradientBoosting
	 - version: 0.2.1
	 - params: {'loss': 'deviance', 'verbose': 0, 'n_estimators': 700, 'presort': 'auto', 'multilabel': False, 'min_samples_leaf': 1, 'min_impurity_split': None, 'max_depth': 7, 'random_state': None, 'n_iter_no_change': None, 'labels': ['OK', 'spam', 'unsuitable'], 'validation_fraction': 0.1, 'init': None, 'scale': False, 'warm_start': False, 'tol': 0.0001, 'max_features': 'log2', 'center': False, 'min_samples_split': 2, 'min_weight_fraction_leaf': 0.0, 'min_impurity_decrease': 0.0, 'population_rates': None, 'max_leaf_nodes': None, 'subsample': 1.0, 'learning_rate': 0.01, 'label_weights': None, 'criterion': 'friedman_mse'}
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
		'OK'          1600  -->   1277      128            195
		'spam'        1481  -->     90     1112            279
		'unsuitable'  1591  -->    171      306           1114
	rates:
		              'OK'    'spam'    'unsuitable'
		----------  ------  --------  --------------
		sample       0.342     0.317           0.341
		population   0.971     0.01            0.02
	match_rate (micro=0.759, macro=0.361):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.777   0.142         0.165
	filter_rate (micro=0.241, macro=0.639):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.223   0.858         0.835
	recall (micro=0.796, macro=0.75):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.798   0.751           0.7
	!recall (micro=0.913, macro=0.875):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.915   0.864         0.846
	precision (micro=0.97, macro=0.377):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.997    0.05         0.084
	!precision (micro=0.145, macro=0.703):
		  OK    spam    unsuitable
		----  ------  ------------
		0.12   0.997         0.993
	f1 (micro=0.864, macro=0.377):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.886   0.095         0.149
	!f1 (micro=0.233, macro=0.684):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.212   0.926         0.914
	accuracy (micro=0.803, macro=0.836):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.802   0.863         0.843
	fpr (micro=0.087, macro=0.125):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.085   0.136         0.154
	roc_auc (micro=0.908, macro=0.891):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.909   0.902         0.862
	pr_auc (micro=0.973, macro=0.438):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.997   0.133         0.183
	
	 - score_schema: {'title': 'Scikit learn-based classifier score with probability', 'properties': {'prediction': {'description': 'The most likely label predicted by the estimator', 'type': 'string'}, 'probability': {'description': 'A mapping of probabilities onto each of the potential output labels', 'properties': {'OK': {'type': 'number'}, 'spam': {'type': 'number'}, 'unsuitable': {'type': 'number'}}, 'type': 'object'}}, 'type': 'object'}

