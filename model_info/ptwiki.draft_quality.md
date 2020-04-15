Model Information:
	 - type: GradientBoosting
	 - version: 0.2.1
	 - params: {'min_impurity_split': None, 'tol': 0.0001, 'min_impurity_decrease': 0.0, 'learning_rate': 0.1, 'verbose': 0, 'max_features': 'log2', 'min_weight_fraction_leaf': 0.0, 'subsample': 1.0, 'presort': 'auto', 'multilabel': False, 'max_leaf_nodes': None, 'max_depth': 5, 'labels': ['OK', 'spam', 'unsuitable'], 'loss': 'deviance', 'min_samples_leaf': 1, 'label_weights': None, 'min_samples_split': 2, 'warm_start': False, 'init': None, 'center': False, 'scale': False, 'validation_fraction': 0.1, 'random_state': None, 'n_estimators': 300, 'population_rates': None, 'criterion': 'friedman_mse', 'n_iter_no_change': None}
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
	counts (n=3947):
		label            n         ~OK    ~spam    ~unsuitable
		------------  ----  ---  -----  -------  -------------
		'OK'          1600  -->   1298       76            226
		'spam'         766  -->     75      433            258
		'unsuitable'  1581  -->    205      145           1231
	rates:
		              'OK'    'spam'    'unsuitable'
		----------  ------  --------  --------------
		sample       0.405     0.194           0.401
		population   0.971     0.01            0.02
	match_rate (micro=0.773, macro=0.36):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.791   0.074         0.216
	filter_rate (micro=0.227, macro=0.64):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.209   0.926         0.784
	recall (micro=0.808, macro=0.718):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.811   0.565         0.779
	!recall (micro=0.879, macro=0.869):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.881   0.931         0.795
	precision (micro=0.969, macro=0.38):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.996   0.073         0.071
	!precision (micro=0.148, macro=0.704):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.123   0.996         0.994
	f1 (micro=0.872, macro=0.384):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.894   0.129          0.13
	!f1 (micro=0.236, macro=0.687):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.216   0.962         0.884
	accuracy (micro=0.814, macro=0.845):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.813   0.927         0.795
	fpr (micro=0.121, macro=0.131):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.119   0.069         0.205
	roc_auc (micro=0.907, macro=0.891):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.908   0.895          0.87
	pr_auc (micro=0.972, macro=0.43):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.997   0.112         0.181
	
	 - score_schema: {'type': 'object', 'title': 'Scikit learn-based classifier score with probability', 'properties': {'probability': {'type': 'object', 'description': 'A mapping of probabilities onto each of the potential output labels', 'properties': {'unsuitable': {'type': 'number'}, 'spam': {'type': 'number'}, 'OK': {'type': 'number'}}}, 'prediction': {'type': 'string', 'description': 'The most likely label predicted by the estimator'}}}

