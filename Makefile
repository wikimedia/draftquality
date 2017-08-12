# Remove target files after command failure.
.DELETE_ON_ERROR:

models: \
	enwiki_models

draft_quality_major_minor = 0.1

#datasets/enwiki.draft_quality.50k_stratified.json: \
#	       datasets/enwiki.draft_quality.201508-201608.tsv.bz2
#       ( \
#	 bzcat datasets/enwiki.draft_quality.201508-201608.tsv.bz2 | \
#	 tsv2json str int str int str | \
#	 grep '"draft_quality": "OK"' | shuf -n 26257; \
#	 bzcat datasets/enwiki.draft_quality.201508-201608.tsv.bz2 | \
#	 tsv2json str int str int str | \
#	 grep -v '"draft_quality": "OK"' \
#       ) > \
#       datasets/enwiki.draft_quality.50k_stratified.json

datasets/enwiki.draft_quality.201508-201608.json.bz2: \
		datasets/enwiki.draft_quality.201508-201608.tsv.bz2
	bzcat $< | \
	tsv2json str int str int str | bzip2 -c > $@

datasets/enwiki.draft_quality.balanced_50k.json.bz2: \
		datasets/enwiki.draft_quality.201508-201608.json.bz2
	(bzcat $< | grep '"draft_quality": "OK"' | shuf -n 26261; \
	 bzcat $< | grep -v '"draft_quality": "OK"') | \
	shuf | bzip2 -c > $@

datasets/enwiki.draft_quality.balanced_50k.with_text.json.bz2: \
		datasets/enwiki.draft_quality.balanced_50k.json.bz2
	bzcat $< | \
	revscoring fetch_text --host https://en.wikipedia.org --threads 4 \
	  --verbose | bzip2 -c > $@

datasets/enwiki.draft_quality.balanced_50k.with_cache.json.bz2: \
		datasets/enwiki.draft_quality.balanced_50k.with_text.json.bz2
	bzcat $< | \
	wikiclass extract_from_text \
	  draftquality.feature_lists.enwiki.draft_quality \
	  --verbose | bzip2 -c > $@

tuning_reports/enwiki.draft_quality.md: \
		datasets/enwiki.draft_quality.balanced_50k.with_cache.json.bz2
	bzcat $< | \
	revscoring tune \
	  config/classifiers.params.yaml \
	  draftquality.feature_lists.enwiki.draft_quality \
	  draft_quality \
		roc_auc.macro \
		--pop-rate '"OK"=0.9710595482772492' \
		--pop-rate '"spam"=0.019504857204256047' \
		--pop-rate '"vandalism"=0.00716651146388367' \
		--pop-rate '"attack"=0.0022690830546111757' \
		--scale --center \
	  --cv-timeout=60 \
	  --debug > $@

models/enwiki.draft_quality.gradient_boosting.model: \
		datasets/enwiki.draft_quality.balanced_50k.with_cache.json.bz2
	bzcat $< | \
	revscoring cv_train \
	  revscoring.scoring.models.GradientBoosting \
	  draftquality.feature_lists.enwiki.draft_quality \
	  draft_quality \
	  -p 'learning_rate=0.01' \
	  -p 'max_features="log2"' \
	  -p 'max_depth=7' \
	  -p 'n_estimators=700' \
		--pop-rate '"OK"=0.9710595482772492' \
		--pop-rate '"spam"=0.019504857204256047' \
		--pop-rate '"vandalism"=0.00716651146388367' \
		--pop-rate '"attack"=0.0022690830546111757' \
	  --version $(draft_quality_major_minor).0 > $@

enwiki_models: \
	models/enwiki.draft_quality.gradient_boosting.model

############### Big dataset ###################################################

host=analytics-store.eqiad.wmnet
user=research

mysql_args = -h $(host) -u $(user)
mysqlc = mysql $(mysql_args)
mysqlc_import = mysqlimport $(mysql_args) --local

datasets/enwiki.draft_quality.201508-201608.tsv.bz2: \
		datasets/enwiki.draft_quality.201508.tsv.bz2 \
		datasets/enwiki.draft_quality.201509.tsv.bz2 \
		datasets/enwiki.draft_quality.201510.tsv.bz2 \
		datasets/enwiki.draft_quality.201511.tsv.bz2 \
		datasets/enwiki.draft_quality.201512.tsv.bz2 \
		datasets/enwiki.draft_quality.201601.tsv.bz2 \
		datasets/enwiki.draft_quality.201602.tsv.bz2 \
		datasets/enwiki.draft_quality.201603.tsv.bz2 \
		datasets/enwiki.draft_quality.201604.tsv.bz2 \
		datasets/enwiki.draft_quality.201605.tsv.bz2 \
		datasets/enwiki.draft_quality.201606.tsv.bz2 \
		datasets/enwiki.draft_quality.201607.tsv.bz2
	( \
	  bzcat datasets/enwiki.draft_quality.201508.tsv.bz2; \
	  bzcat datasets/enwiki.draft_quality.201509.tsv.bz2 | tail -n+2; \
	  bzcat datasets/enwiki.draft_quality.201510.tsv.bz2 | tail -n+2; \
	  bzcat datasets/enwiki.draft_quality.201511.tsv.bz2 | tail -n+2; \
	  bzcat datasets/enwiki.draft_quality.201512.tsv.bz2 | tail -n+2; \
	  bzcat datasets/enwiki.draft_quality.201601.tsv.bz2 | tail -n+2; \
	  bzcat datasets/enwiki.draft_quality.201602.tsv.bz2 | tail -n+2; \
	  bzcat datasets/enwiki.draft_quality.201603.tsv.bz2 | tail -n+2; \
	  bzcat datasets/enwiki.draft_quality.201604.tsv.bz2 | tail -n+2; \
	  bzcat datasets/enwiki.draft_quality.201605.tsv.bz2 | tail -n+2; \
	  bzcat datasets/enwiki.draft_quality.201606.tsv.bz2 | tail -n+2; \
	  bzcat datasets/enwiki.draft_quality.201607.tsv.bz2 | tail -n+2 \
	) | bzip2 -c > $@

datasets/enwiki.draft_quality.201508.tsv.bz2: \
		sql/draft_quality.variables.sql
	echo 'SET @start="201508", @end="201509";' | \
	cat - $< | \
	$(mysqlc) enwiki | bzip2 -c > $@

datasets/enwiki.draft_quality.201509.tsv.bz2: \
		sql/draft_quality.variables.sql
	echo 'SET @start="201509", @end="201510";' | \
	cat - $< | \
	$(mysqlc) enwiki | bzip2 -c > $@

datasets/enwiki.draft_quality.201510.tsv.bz2: \
		sql/draft_quality.variables.sql
	echo 'SET @start="201510", @end="201511";' | \
	cat - $< | \
	$(mysqlc) enwiki | bzip2 -c > $@

datasets/enwiki.draft_quality.201511.tsv.bz2: \
		sql/draft_quality.variables.sql
	echo 'SET @start="201511", @end="201512";' | \
	cat - $< | \
	$(mysqlc) enwiki | bzip2 -c > $@

datasets/enwiki.draft_quality.201512.tsv.bz2: \
		sql/draft_quality.variables.sql
	echo 'SET @start="201512", @end="201601";' | \
	cat - $< | \
	$(mysqlc) enwiki | bzip2 -c > $@

datasets/enwiki.draft_quality.201601.tsv.bz2: \
		sql/draft_quality.variables.sql
	echo 'SET @start="201601", @end="201602";' | \
	cat - $< | \
	$(mysqlc) enwiki | bzip2 -c > $@

datasets/enwiki.draft_quality.201602.tsv.bz2: \
		sql/draft_quality.variables.sql
	echo 'SET @start="201602", @end="201603";' | \
	cat - $< | \
	$(mysqlc) enwiki | bzip2 -c > $@

datasets/enwiki.draft_quality.201603.tsv.bz2: \
		sql/draft_quality.variables.sql
	echo 'SET @start="201603", @end="201604";' | \
	cat - $< | \
	$(mysqlc) enwiki | bzip2 -c > $@

datasets/enwiki.draft_quality.201604.tsv.bz2: \
		sql/draft_quality.variables.sql
	echo 'SET @start="201604", @end="201605";' | \
	cat - $< | \
	$(mysqlc) enwiki | bzip2 -c > $@

datasets/enwiki.draft_quality.201605.tsv.bz2: \
		sql/draft_quality.variables.sql
	echo 'SET @start="201605", @end="201606";' | \
	cat - $< | \
	$(mysqlc) enwiki | bzip2 -c > $@

datasets/enwiki.draft_quality.201606.tsv.bz2: \
		sql/draft_quality.variables.sql
	echo 'SET @start="201606", @end="201607";' | \
	cat - $< | \
	$(mysqlc) enwiki | bzip2 -c > $@

datasets/enwiki.draft_quality.201607.tsv.bz2: \
		sql/draft_quality.variables.sql
	echo 'SET @start="201607", @end="201608";' | \
	cat - $< | \
	$(mysqlc) enwiki | bzip2 -c > $@

datasets/enwiki.draft_quality.75_not_OK_sample.tsv: \
		datasets/enwiki.draft_quality.201508-201608.tsv.bz2
	( \
	  bzcat datasets/enwiki.draft_quality.201508-201608.tsv.bz2 | head -n 1; \
	  bzcat datasets/enwiki.draft_quality.201508-201608.tsv.bz2 | grep -P 'spam$$' | shuf -n 25; \
	  bzcat datasets/enwiki.draft_quality.201508-201608.tsv.bz2 | grep -P 'attack$$' | shuf -n 25; \
	  bzcat datasets/enwiki.draft_quality.201508-201608.tsv.bz2 | grep -P 'vandalism$$' | shuf -n 25 \
	) > $@

datasets/enwiki.draft_quality.201608-201701.tsv.bz2: \
		datasets/enwiki.draft_quality.201608.tsv.bz2 \
		datasets/enwiki.draft_quality.201609.tsv.bz2 \
		datasets/enwiki.draft_quality.201610.tsv.bz2 \
		datasets/enwiki.draft_quality.201611.tsv.bz2 \
		datasets/enwiki.draft_quality.201612.tsv.bz2
	( \
	  bzcat datasets/enwiki.draft_quality.201608.tsv.bz2; \
	  bzcat datasets/enwiki.draft_quality.201609.tsv.bz2 | tail -n+2; \
	  bzcat datasets/enwiki.draft_quality.201610.tsv.bz2 | tail -n+2; \
	  bzcat datasets/enwiki.draft_quality.201611.tsv.bz2 | tail -n+2; \
	  bzcat datasets/enwiki.draft_quality.201612.tsv.bz2 | tail -n+2 \
	) | bzip2 -c > $@

datasets/enwiki.draft_quality.201608.tsv.bz2: \
		sql/draft_quality.variables.sql
	echo 'SET @start="201608", @end="201609";' | \
	cat - $< | \
	$(mysqlc) enwiki | bzip2 -c > $@

datasets/enwiki.draft_quality.201609.tsv.bz2: \
		sql/draft_quality.variables.sql
	echo 'SET @start="201609", @end="201610";' | \
	cat - $< | \
	$(mysqlc) enwiki | bzip2 -c > $@

datasets/enwiki.draft_quality.201610.tsv.bz2: \
		sql/draft_quality.variables.sql
	echo 'SET @start="201610", @end="201611";' | \
	cat - $< | \
	$(mysqlc) enwiki | bzip2 -c > $@

datasets/enwiki.draft_quality.201611.tsv.bz2: \
		sql/draft_quality.variables.sql
	echo 'SET @start="201611", @end="201612";' | \
	cat - $< | \
	$(mysqlc) enwiki | bzip2 -c > $@

datasets/enwiki.draft_quality.201612.tsv.bz2: \
		sql/draft_quality.variables.sql
	echo 'SET @start="201612", @end="201701";' | \
	cat - $< | \
	$(mysqlc) enwiki | bzip2 -c > $@

datasets/enwiki.draft_quality.201608-201701.json: \
		datasets/enwiki.draft_quality.201608-201701.tsv.bz2
	bzcat $< | \
	tsv2json str int str int str > $@

datasets/enwiki.draft_quality.201608-201701.with_text.json.bz2: \
		datasets/enwiki.draft_quality.201608-201701.json
	cat $< | \
	revscoring fetch_text --host https://en.wikipedia.org \
	  --verbose | bzip2 -c > $@

datasets/enwiki.draft_quality.201608-201701.with_cache.json.bz2: \
		datasets/enwiki.draft_quality.201608-201701.with_text.json.bz2
	bzcat $< | \
	wikiclass extract_from_text \
	  draftquality.feature_lists.enwiki.draft_quality \
	  --verbose | bzip2 -c > $@
