Model Information:
	 - type: GradientBoosting
	 - version: 0.2.1
	 - params: {'scale': False, 'population_rates': None, 'subsample': 1.0, 'loss': 'deviance', 'max_depth': 7, 'max_features': 'log2', 'min_impurity_decrease': 0.0, 'validation_fraction': 0.1, 'n_estimators': 700, 'min_impurity_split': None, 'criterion': 'friedman_mse', 'labels': ['OK', 'spam', 'unsuitable'], 'min_samples_split': 2, 'min_samples_leaf': 1, 'init': None, 'center': False, 'multilabel': False, 'max_leaf_nodes': None, 'learning_rate': 0.01, 'label_weights': None, 'n_iter_no_change': None, 'presort': 'auto', 'verbose': 0, 'random_state': None, 'tol': 0.0001, 'min_weight_fraction_leaf': 0.0, 'warm_start': False}
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
		'OK'          1600  -->   1297       71            232
		'spam'         766  -->     72      425            269
		'unsuitable'  1581  -->    191      130           1260
	rates:
		              'OK'    'spam'    'unsuitable'
		----------  ------  --------  --------------
		sample       0.405     0.194           0.401
		population   0.971     0.01            0.02
	match_rate (micro=0.772, macro=0.36):
		  OK    spam    unsuitable
		----  ------  ------------
		0.79   0.068         0.223
	filter_rate (micro=0.228, macro=0.64):
		  OK    spam    unsuitable
		----  ------  ------------
		0.21   0.932         0.777
	recall (micro=0.808, macro=0.721):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.811   0.555         0.797
	!recall (micro=0.886, macro=0.871):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.888   0.937         0.788
	precision (micro=0.969, macro=0.381):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.996   0.078          0.07
	!precision (micro=0.149, macro=0.705):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.124   0.995         0.995
	f1 (micro=0.871, macro=0.386):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.894   0.137         0.129
	!f1 (micro=0.237, macro=0.687):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.217   0.965          0.88
	accuracy (micro=0.814, macro=0.845):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.813   0.933         0.788
	fpr (micro=0.114, macro=0.129):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.112   0.063         0.212
	roc_auc (micro=0.91, macro=0.895):
		  OK    spam    unsuitable
		----  ------  ------------
		0.91   0.899         0.875
	pr_auc (micro=0.973, macro=0.434):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.997   0.119         0.186
	
	 - score_schema: {'type': 'object', 'title': 'Scikit learn-based classifier score with probability', 'properties': {'probability': {'type': 'object', 'description': 'A mapping of probabilities onto each of the potential output labels', 'properties': {'unsuitable': {'type': 'number'}, 'spam': {'type': 'number'}, 'OK': {'type': 'number'}}}, 'prediction': {'type': 'string', 'description': 'The most likely label predicted by the estimator'}}}

