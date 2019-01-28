Model Information:
	 - type: GradientBoosting
	 - version: 0.2.0
	 - params: {'loss': 'deviance', 'max_leaf_nodes': None, 'verbose': 0, 'criterion': 'friedman_mse', 'center': False, 'labels': ['OK', 'spam', 'vandalism', 'attack'], 'learning_rate': 0.1, 'max_depth': 5, 'min_impurity_decrease': 0.0, 'min_samples_split': 2, 'presort': 'auto', 'population_rates': None, 'n_estimators': 300, 'max_features': 'log2', 'init': None, 'scale': False, 'random_state': None, 'min_impurity_split': None, 'warm_start': False, 'multilabel': False, 'label_weights': None, 'subsample': 1.0, 'min_samples_leaf': 1, 'min_weight_fraction_leaf': 0.0}
	Environment:
	 - revscoring_version: '2.3.0'
	 - platform: 'Linux-4.9.0-8-amd64-x86_64-with-debian-9.5'
	 - machine: 'x86_64'
	 - version: '#1 SMP Debian 4.9.110-3+deb9u6 (2018-10-08)'
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
	counts (n=201261):
		label             n          ~OK    ~spam    ~vandalism    ~attack
		-----------  ------  ---  ------  -------  ------------  ---------
		'OK'         175000  -->  171442     2663           847         48
		'spam'        17699  -->    2763    14054           848         34
		'vandalism'    6503  -->    1611     1370          3188        334
		'attack'       2059  -->     259      360          1086        354
	rates:
		              'OK'    'spam'    'vandalism'    'attack'
		----------  ------  --------  -------------  ----------
		sample       0.87      0.088          0.032       0.01
		population   0.971     0.02           0.007       0.002
	match_rate (micro=0.93, macro=0.254):
		  spam    vandalism     OK    attack
		------  -----------  -----  --------
		 0.039        0.018  0.956     0.002
	filter_rate (micro=0.07, macro=0.746):
		  spam    vandalism     OK    attack
		------  -----------  -----  --------
		 0.961        0.982  0.044     0.998
	recall (micro=0.971, macro=0.609):
		  spam    vandalism    OK    attack
		------  -----------  ----  --------
		 0.794         0.49  0.98     0.172
	!recall (micro=0.828, macro=0.946):
		  spam    vandalism     OK    attack
		------  -----------  -----  --------
		 0.976        0.986  0.824     0.998
	precision (micro=0.975, macro=0.437):
		  spam    vandalism     OK    attack
		------  -----------  -----  --------
		 0.398        0.199  0.995     0.158
	!precision (micro=0.56, macro=0.884):
		  spam    vandalism     OK    attack
		------  -----------  -----  --------
		 0.996        0.996  0.547     0.998
	f1 (micro=0.971, macro=0.491):
		  spam    vandalism     OK    attack
		------  -----------  -----  --------
		  0.53        0.283  0.987     0.165
	!f1 (micro=0.667, macro=0.908):
		  spam    vandalism     OK    attack
		------  -----------  -----  --------
		 0.986        0.991  0.657     0.998
	accuracy (micro=0.975, macro=0.981):
		  spam    vandalism     OK    attack
		------  -----------  -----  --------
		 0.973        0.982  0.975     0.996
	fpr (micro=0.172, macro=0.054):
		  spam    vandalism     OK    attack
		------  -----------  -----  --------
		 0.024        0.014  0.176     0.002
	roc_auc (micro=0.979, macro=0.971):
		  spam    vandalism     OK    attack
		------  -----------  -----  --------
		 0.979        0.956  0.979     0.968
	pr_auc (micro=0.984, macro=0.482):
		  spam    vandalism     OK    attack
		------  -----------  -----  --------
		  0.61        0.219  0.999     0.098
	
	 - score_schema: {'type': 'object', 'properties': {'probability': {'type': 'object', 'properties': {'spam': {'type': 'number'}, 'vandalism': {'type': 'number'}, 'OK': {'type': 'number'}, 'attack': {'type': 'number'}}, 'description': 'A mapping of probabilities onto each of the potential output labels'}, 'prediction': {'type': 'string', 'description': 'The most likely label predicted by the estimator'}}, 'title': 'Scikit learn-based classifier score with probability'}

