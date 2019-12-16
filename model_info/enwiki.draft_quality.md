Model Information:
	 - type: GradientBoosting
	 - version: 0.2.1
	 - params: {'min_samples_leaf': 1, 'loss': 'deviance', 'max_features': 'log2', 'min_weight_fraction_leaf': 0.0, 'min_impurity_decrease': 0.0, 'presort': 'auto', 'warm_start': False, 'population_rates': None, 'min_impurity_split': None, 'max_depth': 5, 'verbose': 0, 'labels': ['OK', 'spam', 'vandalism', 'attack'], 'tol': 0.0001, 'learning_rate': 0.1, 'validation_fraction': 0.1, 'init': None, 'multilabel': False, 'label_weights': None, 'subsample': 1.0, 'max_leaf_nodes': None, 'random_state': None, 'n_iter_no_change': None, 'center': False, 'min_samples_split': 2, 'criterion': 'friedman_mse', 'scale': False, 'n_estimators': 300}
	Environment:
	 - revscoring_version: '2.6.2'
	 - platform: 'Linux-4.9.0-11-amd64-x86_64-with-debian-9.11'
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
		'OK'         175000  -->  171487     2634           816         63
		'spam'        17699  -->    2770    14065           820         44
		'vandalism'    6503  -->    1627     1341          3188        347
		'attack'       2059  -->     263      357          1084        355
	rates:
		              'OK'    'spam'    'vandalism'    'attack'
		----------  ------  --------  -------------  ----------
		sample       0.87      0.088          0.032       0.01
		population   0.971     0.02           0.007       0.002
	match_rate (micro=0.93, macro=0.254):
		   OK    spam    vandalism    attack
		-----  ------  -----------  --------
		0.957   0.039        0.017     0.003
	filter_rate (micro=0.07, macro=0.746):
		   OK    spam    vandalism    attack
		-----  ------  -----------  --------
		0.043   0.961        0.983     0.997
	recall (micro=0.971, macro=0.609):
		  OK    spam    vandalism    attack
		----  ------  -----------  --------
		0.98   0.795         0.49     0.172
	!recall (micro=0.827, macro=0.946):
		   OK    spam    vandalism    attack
		-----  ------  -----------  --------
		0.823   0.976        0.986     0.998
	precision (micro=0.975, macro=0.436):
		   OK    spam    vandalism    attack
		-----  ------  -----------  --------
		0.995   0.401        0.202     0.147
	!precision (micro=0.563, macro=0.885):
		  OK    spam    vandalism    attack
		----  ------  -----------  --------
		0.55   0.996        0.996     0.998
	f1 (micro=0.971, macro=0.491):
		   OK    spam    vandalism    attack
		-----  ------  -----------  --------
		0.987   0.533        0.286     0.159
	!f1 (micro=0.669, macro=0.909):
		   OK    spam    vandalism    attack
		-----  ------  -----------  --------
		0.659   0.986        0.991     0.998
	accuracy (micro=0.975, macro=0.982):
		   OK    spam    vandalism    attack
		-----  ------  -----------  --------
		0.975   0.973        0.982     0.996
	fpr (micro=0.173, macro=0.054):
		   OK    spam    vandalism    attack
		-----  ------  -----------  --------
		0.177   0.024        0.014     0.002
	roc_auc (micro=0.979, macro=0.971):
		   OK    spam    vandalism    attack
		-----  ------  -----------  --------
		0.979   0.979        0.956     0.968
	pr_auc (micro=0.984, macro=0.484):
		   OK    spam    vandalism    attack
		-----  ------  -----------  --------
		0.999   0.616        0.217     0.101
	
	 - score_schema: {'title': 'Scikit learn-based classifier score with probability', 'properties': {'probability': {'properties': {'vandalism': {'type': 'number'}, 'spam': {'type': 'number'}, 'attack': {'type': 'number'}, 'OK': {'type': 'number'}}, 'type': 'object', 'description': 'A mapping of probabilities onto each of the potential output labels'}, 'prediction': {'type': 'string', 'description': 'The most likely label predicted by the estimator'}}, 'type': 'object'}

