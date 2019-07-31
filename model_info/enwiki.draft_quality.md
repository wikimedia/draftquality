Model Information:
	 - type: GradientBoosting
	 - version: 0.2.0
	 - params: {'validation_fraction': 0.1, 'labels': ['OK', 'spam', 'vandalism', 'attack'], 'init': None, 'n_iter_no_change': None, 'min_samples_leaf': 1, 'warm_start': False, 'presort': 'auto', 'criterion': 'friedman_mse', 'verbose': 0, 'max_leaf_nodes': None, 'subsample': 1.0, 'learning_rate': 0.1, 'tol': 0.0001, 'multilabel': False, 'min_impurity_split': None, 'max_features': 'log2', 'label_weights': None, 'loss': 'deviance', 'min_impurity_decrease': 0.0, 'n_estimators': 300, 'scale': False, 'random_state': None, 'population_rates': None, 'max_depth': 5, 'min_samples_split': 2, 'min_weight_fraction_leaf': 0.0, 'center': False}
	Environment:
	 - revscoring_version: '2.5.1'
	 - platform: 'Linux-4.9.0-9-amd64-x86_64-with-debian-9.9'
	 - machine: 'x86_64'
	 - version: '#1 SMP Debian 4.9.168-1+deb9u2 (2019-05-13)'
	 - system: 'Linux'
	 - processor: ''
	 - python_build: ('default', 'Sep 27 2018 17:25:39')
	 - python_compiler: 'GCC 6.3.0 20170516'
	 - python_branch: ''
	 - python_implementation: 'CPython'
	 - python_revision: ''
	 - python_version: '3.5.3'
	 - release: '4.9.0-9-amd64'
	
	Statistics:
	counts (n=201261):
		label             n          ~OK    ~spam    ~vandalism    ~attack
		-----------  ------  ---  ------  -------  ------------  ---------
		'OK'         175000  -->  171443     2655           845         57
		'spam'        17699  -->    2761    14033           864         41
		'vandalism'    6503  -->    1638     1356          3167        342
		'attack'       2059  -->     273      355          1109        322
	rates:
		              'OK'    'spam'    'vandalism'    'attack'
		----------  ------  --------  -------------  ----------
		sample       0.87      0.088          0.032       0.01
		population   0.971     0.02           0.007       0.002
	match_rate (micro=0.93, macro=0.254):
		   OK    attack    vandalism    spam
		-----  --------  -----------  ------
		0.956     0.003        0.018   0.039
	filter_rate (micro=0.07, macro=0.746):
		   OK    attack    vandalism    spam
		-----  --------  -----------  ------
		0.044     0.997        0.982   0.961
	recall (micro=0.971, macro=0.604):
		  OK    attack    vandalism    spam
		----  --------  -----------  ------
		0.98     0.156        0.487   0.793
	!recall (micro=0.827, macro=0.945):
		   OK    attack    vandalism    spam
		-----  --------  -----------  ------
		0.822     0.998        0.986   0.976
	precision (micro=0.975, macro=0.432):
		   OK    attack    vandalism    spam
		-----  --------  -----------  ------
		0.995     0.139        0.195   0.399
	!precision (micro=0.56, macro=0.884):
		   OK    attack    vandalism    spam
		-----  --------  -----------  ------
		0.547     0.998        0.996   0.996
	f1 (micro=0.971, macro=0.486):
		   OK    attack    vandalism    spam
		-----  --------  -----------  ------
		0.987     0.147        0.279   0.531
	!f1 (micro=0.666, macro=0.908):
		   OK    attack    vandalism    spam
		-----  --------  -----------  ------
		0.657     0.998        0.991   0.986
	accuracy (micro=0.975, macro=0.981):
		   OK    attack    vandalism    spam
		-----  --------  -----------  ------
		0.975     0.996        0.982   0.973
	fpr (micro=0.173, macro=0.055):
		   OK    attack    vandalism    spam
		-----  --------  -----------  ------
		0.178     0.002        0.014   0.024
	roc_auc (micro=0.979, macro=0.971):
		   OK    attack    vandalism    spam
		-----  --------  -----------  ------
		0.979     0.968        0.956   0.979
	pr_auc (micro=0.984, macro=0.479):
		   OK    attack    vandalism    spam
		-----  --------  -----------  ------
		0.999     0.094        0.208   0.613
	
	 - score_schema: {'properties': {'prediction': {'description': 'The most likely label predicted by the estimator', 'type': 'string'}, 'probability': {'properties': {'OK': {'type': 'number'}, 'attack': {'type': 'number'}, 'vandalism': {'type': 'number'}, 'spam': {'type': 'number'}}, 'description': 'A mapping of probabilities onto each of the potential output labels', 'type': 'object'}}, 'type': 'object', 'title': 'Scikit learn-based classifier score with probability'}

