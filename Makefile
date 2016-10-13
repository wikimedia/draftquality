
# host=enwiki.labsdb
# user=u2041
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
