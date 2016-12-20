

datasets/enwiki.draft_quality.50k_stratified.json: \
		datasets/enwiki.draft_quality.201508-201608.tsv.bz2
	( \
	  bzcat datasets/enwiki.draft_quality.201508-201608.tsv.bz2 | \
	  tsv2json str int str int str | \
	  grep '"draft_quality": "OK"' | shuf -n 26257; \
	  bzcat datasets/enwiki.draft_quality.201508-201608.tsv.bz2 | \
	  tsv2json str int str int str | \
	  grep -v '"draft_quality": "OK"' \
	) > \
	datasets/enwiki.draft_quality.50k_stratified.json

datasets/enwiki.draft_quality.50k_stratified.with_text.json.bz2: \
		datasets/enwiki.draft_quality.50k_stratified.json
	cat datasets/enwiki.draft_quality.50k_stratified.json | \
	revscoring fetch_text --host https://en.wikipedia.org \
	  --verbose | bzip2 -c > \
	datasets/enwiki.draft_quality.50k_stratified.with_text.json.bz2

datasets/enwiki.draft_quality.50k_stratified.with_cache.json.bz2: \
		datasets/enwiki.draft_quality.50k_stratified.with_text.json.bz2
	bzcat datasets/enwiki.draft_quality.50k_stratified.with_text.json.bz2 | \
	wikiclass extract_from_text \
	  draftquality.feature_lists.enwiki.draft_quality \
	  --verbose | bzip2 -c > \
	datasets/enwiki.draft_quality.50k_stratified.with_cache.json.bz2

tuning_reports/enwiki.draft_quality.md: \
		datasets/enwiki.draft_quality.50k_stratified.with_cache.json.bz2
	bzcat datasets/enwiki.draft_quality.50k_stratified.with_cache.json.bz2 | \
	revscoring tune \
	  config/classifiers.params.yaml \
	  draftquality.feature_lists.enwiki.draft_quality \
	  draft_quality \
	  --cv-timeout=60 \
	  --scoring=accuracy \
	  --debug > \
	tuning_reports/enwiki.draft_quality.md

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
	) | bzip2 -c > \
	datasets/enwiki.draft_quality.201508-201608.tsv.bz2

datasets/enwiki.draft_quality.201508.tsv.bz2: \
		sql/draft_quality.variables.sql
	echo 'SET @start="201508", @end="201509";' | \
	cat - sql/draft_quality.variables.sql | \
	$(mysqlc) enwiki | bzip2 -c > \
	datasets/enwiki.draft_quality.201508.tsv.bz2

datasets/enwiki.draft_quality.201509.tsv.bz2: \
		sql/draft_quality.variables.sql
	echo 'SET @start="201509", @end="201510";' | \
	cat - sql/draft_quality.variables.sql | \
	$(mysqlc) enwiki | bzip2 -c > \
	datasets/enwiki.draft_quality.201509.tsv.bz2

datasets/enwiki.draft_quality.201510.tsv.bz2: \
		sql/draft_quality.variables.sql
	echo 'SET @start="201510", @end="201511";' | \
	cat - sql/draft_quality.variables.sql | \
	$(mysqlc) enwiki | bzip2 -c > \
	datasets/enwiki.draft_quality.201510.tsv.bz2

datasets/enwiki.draft_quality.201511.tsv.bz2: \
		sql/draft_quality.variables.sql
	echo 'SET @start="201511", @end="201512";' | \
	cat - sql/draft_quality.variables.sql | \
	$(mysqlc) enwiki | bzip2 -c > \
	datasets/enwiki.draft_quality.201511.tsv.bz2

datasets/enwiki.draft_quality.201512.tsv.bz2: \
		sql/draft_quality.variables.sql
	echo 'SET @start="201512", @end="201601";' | \
	cat - sql/draft_quality.variables.sql | \
	$(mysqlc) enwiki | bzip2 -c > \
	datasets/enwiki.draft_quality.201512.tsv.bz2

datasets/enwiki.draft_quality.201601.tsv.bz2: \
		sql/draft_quality.variables.sql
	echo 'SET @start="201601", @end="201602";' | \
	cat - sql/draft_quality.variables.sql | \
	$(mysqlc) enwiki | bzip2 -c > \
	datasets/enwiki.draft_quality.201601.tsv.bz2

datasets/enwiki.draft_quality.201602.tsv.bz2: \
		sql/draft_quality.variables.sql
	echo 'SET @start="201602", @end="201603";' | \
	cat - sql/draft_quality.variables.sql | \
	$(mysqlc) enwiki | bzip2 -c > \
	datasets/enwiki.draft_quality.201602.tsv.bz2

datasets/enwiki.draft_quality.201603.tsv.bz2: \
		sql/draft_quality.variables.sql
	echo 'SET @start="201603", @end="201604";' | \
	cat - sql/draft_quality.variables.sql | \
	$(mysqlc) enwiki | bzip2 -c > \
	datasets/enwiki.draft_quality.201603.tsv.bz2

datasets/enwiki.draft_quality.201604.tsv.bz2: \
		sql/draft_quality.variables.sql
	echo 'SET @start="201604", @end="201605";' | \
	cat - sql/draft_quality.variables.sql | \
	$(mysqlc) enwiki | bzip2 -c > \
	datasets/enwiki.draft_quality.201604.tsv.bz2

datasets/enwiki.draft_quality.201605.tsv.bz2: \
		sql/draft_quality.variables.sql
	echo 'SET @start="201605", @end="201606";' | \
	cat - sql/draft_quality.variables.sql | \
	$(mysqlc) enwiki | bzip2 -c > \
	datasets/enwiki.draft_quality.201605.tsv.bz2

datasets/enwiki.draft_quality.201606.tsv.bz2: \
		sql/draft_quality.variables.sql
	echo 'SET @start="201606", @end="201607";' | \
	cat - sql/draft_quality.variables.sql | \
	$(mysqlc) enwiki | bzip2 -c > \
	datasets/enwiki.draft_quality.201606.tsv.bz2

datasets/enwiki.draft_quality.201607.tsv.bz2: \
		sql/draft_quality.variables.sql
	echo 'SET @start="201607", @end="201608";' | \
	cat - sql/draft_quality.variables.sql | \
	$(mysqlc) enwiki | bzip2 -c > \
	datasets/enwiki.draft_quality.201607.tsv.bz2

datasets/enwiki.draft_quality.300_not_OK_sample.tsv: \
		datasets/enwiki.draft_quality.201508-201608.tsv.bz2
	( \
	  bzcat datasets/enwiki.draft_quality.201508-201608.tsv.bz2 | head -n 1; \
	  bzcat datasets/enwiki.draft_quality.201508-201608.tsv.bz2 | grep -P 'spam$$' | shuf -n 100; \
	  bzcat datasets/enwiki.draft_quality.201508-201608.tsv.bz2 | grep -P 'attack$$' | shuf -n 100; \
	  bzcat datasets/enwiki.draft_quality.201508-201608.tsv.bz2 | grep -P 'vandalism$$' | shuf -n 100 \
	) > datasets/enwiki.draft_quality.300_not_OK_sample.tsv
