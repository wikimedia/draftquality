Model Information:
	 - type: GradientBoosting
	 - version: 0.2.1
	 - params: {'ccp_alpha': 0.0, 'init': None, 'learning_rate': 0.1, 'warm_start': False, 'min_samples_leaf': 1, 'label_weights': None, 'loss': 'deviance', 'subsample': 1.0, 'min_impurity_decrease': 0.0, 'n_estimators': 500, 'max_leaf_nodes': None, 'multilabel': False, 'random_state': None, 'min_samples_split': 2, 'criterion': 'friedman_mse', 'n_iter_no_change': None, 'center': False, 'validation_fraction': 0.1, 'max_depth': 7, 'verbose': 0, 'tol': 0.0001, 'population_rates': None, 'presort': 'deprecated', 'labels': ['OK', 'spam', 'unsuitable'], 'scale': False, 'min_impurity_split': None, 'max_features': 'log2', 'min_weight_fraction_leaf': 0.0}
	Environment:
	 - revscoring_version: '2.8.2'
	 - platform: 'Linux-4.9.0-11-amd64-x86_64-with-debian-9.12'
	 - machine: 'x86_64'
	 - version: '#1 SMP Debian 4.9.189-3+deb9u1 (2019-09-20)'
	 - system: 'Linux'
	 - processor: ''
	 - python_build: ('default', 'Sep 27 2018 17:25:39')
	 - python_compiler: 'GCC 6.3.0 20170516'
	 - python_branch: ''
	 - python_implementation: 'CPython'
	 - python_revision: ''
	 - python_version: '3.5.3'
	 - release: '4.9.0-11-amd64'
	
	Statistics:
	counts (n=4672):
		label            n         ~OK    ~spam    ~unsuitable
		------------  ----  ---  -----  -------  -------------
		'OK'          1600  -->   1286      129            185
		'spam'        1481  -->     76     1124            281
		'unsuitable'  1591  -->    169      292           1130
	rates:
		              'OK'    'spam'    'unsuitable'
		----------  ------  --------  --------------
		sample       0.342     0.317           0.341
		population   0.962     0.018           0.02
	match_rate (micro=0.752, macro=0.361):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.776   0.143         0.162
	filter_rate (micro=0.248, macro=0.639):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.224   0.857         0.838
	recall (micro=0.801, macro=0.758):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.804   0.759          0.71
	!recall (micro=0.918, macro=0.879):
		  OK    spam    unsuitable
		----  ------  ------------
		0.92   0.868         0.849
	precision (micro=0.961, macro=0.393):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.996   0.098         0.087
	!precision (micro=0.189, macro=0.715):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.157   0.995         0.993
	f1 (micro=0.862, macro=0.406):
		  OK    spam    unsuitable
		----  ------  ------------
		0.89   0.173         0.155
	!f1 (micro=0.293, macro=0.704):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.269   0.927         0.915
	accuracy (micro=0.81, macro=0.84):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.808   0.866         0.846
	fpr (micro=0.082, macro=0.121):
		  OK    spam    unsuitable
		----  ------  ------------
		0.08   0.132         0.151
	roc_auc (micro=0.92, macro=0.897):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.921   0.901         0.867
	pr_auc (micro=0.965, macro=0.461):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.996   0.213         0.174
	
	 - score_schema: {'title': 'Scikit learn-based classifier score with probability', 'properties': {'probability': {'description': 'A mapping of probabilities onto each of the potential output labels', 'properties': {'spam': {'type': 'number'}, 'unsuitable': {'type': 'number'}, 'OK': {'type': 'number'}}, 'type': 'object'}, 'prediction': {'description': 'The most likely label predicted by the estimator', 'type': 'string'}}, 'type': 'object'}

