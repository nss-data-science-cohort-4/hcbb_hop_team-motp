WITH ratio AS (
	 		  SELECT *,
			  RANK() OVER(PARTITION BY zip ORDER BY tot_ratio DESC) AS rnk
			  FROM cbsa2
			  )
SELECT *
FROM ratio
WHERE rnk = 1
	