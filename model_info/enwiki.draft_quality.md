Model Information:
	 - type: GradientBoosting
	 - version: 0.2.0
	 - params: {'loss': 'deviance', 'min_samples_leaf': 1, 'center': False, 'learning_rate': 0.01, 'population_rates': None, 'n_estimators': 700, 'verbose': 0, 'label_weights': None, 'min_weight_fraction_leaf': 0.0, 'multilabel': False, 'init': None, 'min_samples_split': 2, 'criterion': 'friedman_mse', 'warm_start': False, 'labels': ['OK', 'spam', 'vandalism', 'attack'], 'subsample': 1.0, 'scale': False, 'max_features': 'log2', 'random_state': None, 'max_leaf_nodes': None, 'max_depth': 7, 'presort': 'auto', 'min_impurity_split': None, 'min_impurity_decrease': 0.0}
	Environment:
	 - revscoring_version: '2.3.0'
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
		'OK'         175000  -->  171486     2672           814         28
		'spam'        17699  -->    2816    14036           827         20
		'vandalism'    6503  -->    1657     1429          3212        205
		'attack'       2059  -->     274      381          1137        267
	rates:
		              'OK'    'spam'    'vandalism'    'attack'
		----------  ------  --------  -------------  ----------
		sample       0.87      0.088          0.032       0.01
		population   0.971     0.02           0.007       0.002
	match_rate (micro=0.93, macro=0.254):
		  attack    vandalism     OK    spam
		--------  -----------  -----  ------
		   0.002        0.018  0.957   0.039
	filter_rate (micro=0.07, macro=0.746):
		  attack    vandalism     OK    spam
		--------  -----------  -----  ------
		   0.998        0.982  0.043   0.961
	recall (micro=0.971, macro=0.599):
		  attack    vandalism    OK    spam
		--------  -----------  ----  ------
		    0.13        0.494  0.98   0.793
	!recall (micro=0.824, macro=0.945):
		  attack    vandalism     OK    spam
		--------  -----------  -----  ------
		   0.999        0.986  0.819   0.976
	precision (micro=0.975, macro=0.444):
		  attack    vandalism     OK    spam
		--------  -----------  -----  ------
		   0.188          0.2  0.995   0.393
	!precision (micro=0.562, macro=0.885):
		  attack    vandalism     OK    spam
		--------  -----------  -----  ------
		   0.998        0.996  0.549   0.996
	f1 (micro=0.971, macro=0.488):
		  attack    vandalism     OK    spam
		--------  -----------  -----  ------
		   0.154        0.285  0.987   0.525
	!f1 (micro=0.667, macro=0.908):
		  attack    vandalism     OK    spam
		--------  -----------  -----  ------
		   0.998        0.991  0.657   0.986
	accuracy (micro=0.975, macro=0.982):
		  attack    vandalism     OK    spam
		--------  -----------  -----  ------
		   0.997        0.982  0.975   0.972
	fpr (micro=0.176, macro=0.055):
		  attack    vandalism     OK    spam
		--------  -----------  -----  ------
		   0.001        0.014  0.181   0.024
	roc_auc (micro=0.983, macro=0.971):
		  attack    vandalism     OK    spam
		--------  -----------  -----  ------
		   0.968        0.954  0.984   0.979
	pr_auc (micro=0.984, macro=0.49):
		  attack    vandalism     OK    spam
		--------  -----------  -----  ------
		   0.105        0.232  0.999   0.624
	
	 - score_schema: {'properties': {'prediction': {'description': 'The most likely label predicted by the estimator', 'type': 'string'}, 'probability': {'properties': {'attack': {'type': 'number'}, 'vandalism': {'type': 'number'}, 'OK': {'type': 'number'}, 'spam': {'type': 'number'}}, 'description': 'A mapping of probabilities onto each of the potential output labels', 'type': 'object'}}, 'title': 'Scikit learn-based classifier score with probability', 'type': 'object'}

