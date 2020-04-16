Model Information:
	 - type: GradientBoosting
	 - version: 0.2.1
	 - params: {'random_state': None, 'n_iter_no_change': None, 'subsample': 1.0, 'loss': 'deviance', 'presort': 'auto', 'max_features': 'log2', 'warm_start': False, 'center': False, 'labels': ['OK', 'spam', 'unsuitable'], 'n_estimators': 700, 'max_depth': 7, 'min_impurity_decrease': 0.0, 'min_impurity_split': None, 'tol': 0.0001, 'min_weight_fraction_leaf': 0.0, 'min_samples_split': 2, 'label_weights': None, 'learning_rate': 0.01, 'init': None, 'verbose': 0, 'max_leaf_nodes': None, 'multilabel': False, 'validation_fraction': 0.1, 'scale': False, 'population_rates': None, 'criterion': 'friedman_mse', 'min_samples_leaf': 1}
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
		'OK'          1600  -->   1301       73            226
		'spam'         766  -->     75      422            269
		'unsuitable'  1581  -->    195      126           1260
	rates:
		              'OK'    'spam'    'unsuitable'
		----------  ------  --------  --------------
		sample       0.405     0.194           0.401
		population   0.971     0.01            0.02
	match_rate (micro=0.775, macro=0.36):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.793   0.067         0.221
	filter_rate (micro=0.225, macro=0.64):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.207   0.933         0.779
	recall (micro=0.81, macro=0.72):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.813   0.551         0.797
	!recall (micro=0.884, macro=0.871):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.885   0.937         0.791
	precision (micro=0.969, macro=0.382):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.996   0.078         0.071
	!precision (micro=0.15, macro=0.705):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.125   0.995         0.995
	f1 (micro=0.873, macro=0.387):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.895   0.137          0.13
	!f1 (micro=0.239, macro=0.688):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.219   0.966         0.881
	accuracy (micro=0.816, macro=0.847):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.815   0.934         0.791
	fpr (micro=0.116, macro=0.129):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.115   0.063         0.209
	roc_auc (micro=0.91, macro=0.894):
		  OK    spam    unsuitable
		----  ------  ------------
		0.91   0.898         0.875
	pr_auc (micro=0.973, macro=0.435):
		   OK    spam    unsuitable
		-----  ------  ------------
		0.997   0.119          0.19
	
	 - score_schema: {'type': 'object', 'properties': {'probability': {'type': 'object', 'description': 'A mapping of probabilities onto each of the potential output labels', 'properties': {'spam': {'type': 'number'}, 'OK': {'type': 'number'}, 'unsuitable': {'type': 'number'}}}, 'prediction': {'type': 'string', 'description': 'The most likely label predicted by the estimator'}}, 'title': 'Scikit learn-based classifier score with probability'}

