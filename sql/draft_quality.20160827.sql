SELECT
  page_title,
  rev_id,
  rev_timestamp AS creation_timestamp,
  FALSE AS archived,
  "OK" AS draft_quality 
FROM revision 
INNER JOIN page ON
  rev_page = page_id WHERE
  rev_timestamp BETWEEN "20150827" AND "20160827" AND
  rev_parent_id = 0 AND
  page_namespace = 0 

UNION ALL 

SELECT
  ar_title AS page_title,
  ar_rev_id AS rev_id,
  ar_timestamp AS creation_timestamp,
  True AS archived,
  IF(log_comment REGEXP "WP:CSD#G3\\|", "vandalism",
       IF(log_comment REGEXP "WP:CSD#G10\\|", "attack",
       IF(log_comment REGEXP "WP:CSD#G11\\|", "spam",
       IF(log_comment REGEXP "WP:CSD#A11\\|", "hoax", "OK")))) AS draft_quality 
FROM archive 
LEFT JOIN logging speedy_delete ON
  log_namespace = ar_namespace AND
  log_title = ar_title AND
  log_type = "delete" AND
  log_action = "delete" AND
  log_comment LIKE "[[WP:CSD#%" AND
  log_comment REGEXP "WP:CSD#(G3|G10|G11|A11)\\|" AND
  log_timestamp > ar_timestamp 
WHERE
  ar_timestamp BETWEEN "20150827" AND "20160827" AND
  log_timestamp BETWEEN "20150827" AND "20160827" AND
  ar_parent_id = 0 AND
  ar_namespace = 0;
