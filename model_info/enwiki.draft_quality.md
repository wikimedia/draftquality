Model Information:
	 - type: GradientBoosting
	 - version: 0.2.1
	 - params: {'max_depth': 5, 'criterion': 'friedman_mse', 'presort': 'deprecated', 'loss': 'deviance', 'max_features': 'log2', 'learning_rate': 0.1, 'init': None, 'min_weight_fraction_leaf': 0.0, 'warm_start': False, 'population_rates': None, 'scale': False, 'min_impurity_decrease': 0.0, 'center': False, 'n_iter_no_change': None, 'labels': ['OK', 'spam', 'vandalism', 'attack'], 'min_impurity_split': None, 'n_estimators': 300, 'random_state': None, 'ccp_alpha': 0.0, 'min_samples_leaf': 1, 'verbose': 0, 'tol': 0.0001, 'max_leaf_nodes': None, 'validation_fraction': 0.1, 'label_weights': None, 'subsample': 1.0, 'min_samples_split': 2, 'multilabel': False}
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
	counts (n=201261):
		label             n          ~OK    ~spam    ~vandalism    ~attack
		-----------  ------  ---  ------  -------  ------------  ---------
		'OK'         175000  -->  171398     2658           856         88
		'spam'        17699  -->    2747    14038           840         74
		'vandalism'    6503  -->    1602     1366          3109        426
		'attack'       2059  -->     261      343          1041        414
	rates:
		              'OK'    'spam'    'vandalism'    'attack'
		----------  ------  --------  -------------  ----------
		sample       0.87      0.088          0.032       0.01
		population   0.971     0.02           0.007       0.002
	match_rate (micro=0.929, macro=0.254):
		   OK    spam    vandalism    attack
		-----  ------  -----------  --------
		0.956   0.039        0.017     0.003
	filter_rate (micro=0.071, macro=0.746):
		   OK    spam    vandalism    attack
		-----  ------  -----------  --------
		0.044   0.961        0.983     0.997
	recall (micro=0.97, macro=0.613):
		   OK    spam    vandalism    attack
		-----  ------  -----------  --------
		0.979   0.793        0.478     0.201
	!recall (micro=0.829, macro=0.946):
		   OK    spam    vandalism    attack
		-----  ------  -----------  --------
		0.824   0.976        0.986     0.997
	precision (micro=0.975, macro=0.431):
		   OK    spam    vandalism    attack
		-----  ------  -----------  --------
		0.995   0.399        0.197     0.134
	!precision (micro=0.557, macro=0.884):
		   OK    spam    vandalism    attack
		-----  ------  -----------  --------
		0.544   0.996        0.996     0.998
	f1 (micro=0.971, macro=0.489):
		   OK    spam    vandalism    attack
		-----  ------  -----------  --------
		0.987   0.531        0.279     0.161
	!f1 (micro=0.665, macro=0.908):
		   OK    spam    vandalism    attack
		-----  ------  -----------  --------
		0.656   0.986        0.991     0.998
	accuracy (micro=0.975, macro=0.981):
		   OK    spam    vandalism    attack
		-----  ------  -----------  --------
		0.975   0.973        0.982     0.995
	fpr (micro=0.171, macro=0.054):
		   OK    spam    vandalism    attack
		-----  ------  -----------  --------
		0.176   0.024        0.014     0.003
	roc_auc (micro=0.979, macro=0.97):
		   OK    spam    vandalism    attack
		-----  ------  -----------  --------
		0.979   0.979        0.955     0.968
	pr_auc (micro=0.979, macro=0.477):
		   OK    spam    vandalism    attack
		-----  ------  -----------  --------
		0.994   0.616        0.209     0.091
	
	 - score_schema: {'title': 'Scikit learn-based classifier score with probability', 'properties': {'probability': {'description': 'A mapping of probabilities onto each of the potential output labels', 'properties': {'attack': {'type': 'number'}, 'spam': {'type': 'number'}, 'OK': {'type': 'number'}, 'vandalism': {'type': 'number'}}, 'type': 'object'}, 'prediction': {'description': 'The most likely label predicted by the estimator', 'type': 'string'}}, 'type': 'object'}

