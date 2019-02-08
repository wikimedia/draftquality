Model Information:
	 - type: GradientBoosting
	 - version: 0.2.0
	 - params: {'max_leaf_nodes': None, 'learning_rate': 0.1, 'min_impurity_decrease': 0.0, 'label_weights': None, 'center': False, 'scale': False, 'min_samples_split': 2, 'max_features': 'log2', 'criterion': 'friedman_mse', 'presort': 'auto', 'loss': 'deviance', 'init': None, 'warm_start': False, 'verbose': 0, 'min_weight_fraction_leaf': 0.0, 'n_estimators': 300, 'labels': ['OK', 'spam', 'vandalism', 'attack'], 'max_depth': 5, 'random_state': None, 'subsample': 1.0, 'min_impurity_split': None, 'min_samples_leaf': 1, 'multilabel': False, 'population_rates': None}
	Environment:
	 - revscoring_version: '2.3.3'
	 - platform: 'Linux-4.9.0-8-amd64-x86_64-with-debian-9.5'
	 - machine: 'x86_64'
	 - version: '#1 SMP Debian 4.9.110-3+deb9u6 (2018-10-08)'
	 - system: 'Linux'
	 - processor: ''
	 - python_build: ('default', 'Jan 19 2017 14:11:04')
	 - python_compiler: 'GCC 6.3.0 20170118'
	 - python_branch: ''
	 - python_implementation: 'CPython'
	 - python_revision: ''
	 - python_version: '3.5.3'
	 - release: '4.9.0-8-amd64'
	
	Statistics:
	counts (n=201261):
		label             n          ~OK    ~spam    ~vandalism    ~attack
		-----------  ------  ---  ------  -------  ------------  ---------
		'OK'         175000  -->  171443     2652           852         53
		'spam'        17699  -->    2718    14091           848         42
		'vandalism'    6503  -->    1603     1379          3188        333
		'attack'       2059  -->     257      369          1074        359
	rates:
		              'OK'    'spam'    'vandalism'    'attack'
		----------  ------  --------  -------------  ----------
		sample       0.87      0.088          0.032       0.01
		population   0.971     0.02           0.007       0.002
	match_rate (micro=0.93, macro=0.254):
		   OK    attack    spam    vandalism
		-----  --------  ------  -----------
		0.956     0.003   0.039        0.018
	filter_rate (micro=0.07, macro=0.746):
		   OK    attack    spam    vandalism
		-----  --------  ------  -----------
		0.044     0.997   0.961        0.982
	recall (micro=0.971, macro=0.61):
		  OK    attack    spam    vandalism
		----  --------  ------  -----------
		0.98     0.174   0.796         0.49
	!recall (micro=0.83, macro=0.946):
		   OK    attack    spam    vandalism
		-----  --------  ------  -----------
		0.826     0.998   0.976        0.986
	precision (micro=0.975, macro=0.437):
		   OK    attack    spam    vandalism
		-----  --------  ------  -----------
		0.995     0.156   0.398        0.199
	!precision (micro=0.561, macro=0.884):
		   OK    attack    spam    vandalism
		-----  --------  ------  -----------
		0.548     0.998   0.996        0.996
	f1 (micro=0.971, macro=0.491):
		   OK    attack    spam    vandalism
		-----  --------  ------  -----------
		0.987     0.165   0.531        0.283
	!f1 (micro=0.668, macro=0.908):
		   OK    attack    spam    vandalism
		-----  --------  ------  -----------
		0.659     0.998   0.986        0.991
	accuracy (micro=0.975, macro=0.981):
		   OK    attack    spam    vandalism
		-----  --------  ------  -----------
		0.975     0.996   0.973        0.982
	fpr (micro=0.17, macro=0.054):
		   OK    attack    spam    vandalism
		-----  --------  ------  -----------
		0.174     0.002   0.024        0.014
	roc_auc (micro=0.979, macro=0.971):
		   OK    attack    spam    vandalism
		-----  --------  ------  -----------
		0.979     0.967   0.979        0.956
	pr_auc (micro=0.984, macro=0.481):
		   OK    attack    spam    vandalism
		-----  --------  ------  -----------
		0.999     0.097   0.612        0.214
	
	 - score_schema: {'properties': {'probability': {'properties': {'OK': {'type': 'number'}, 'attack': {'type': 'number'}, 'spam': {'type': 'number'}, 'vandalism': {'type': 'number'}}, 'type': 'object', 'description': 'A mapping of probabilities onto each of the potential output labels'}, 'prediction': {'type': 'string', 'description': 'The most likely label predicted by the estimator'}}, 'type': 'object', 'title': 'Scikit learn-based classifier score with probability'}

