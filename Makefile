
host=enwiki.labsdb
user=u2041

labsdb=-h $(host)

mysql_args = -h $(host) -u $(user)
mysqlc = mysql $(mysql_args)
mysqlc_import = mysqlimport $(mysql_args) --local


datasets/enwiki.draft_quality.20160827.tsv: \
		sql/draft_quality.20160827.sql
	cat sql/draft_quality.20160827.sql | \
	$(mysqlc) enwiki_p > \
	datasets/enwiki.draft_quality.20160827.tsv
