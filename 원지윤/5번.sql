
SELECT d.names
	  ,FORMAT (SUM(b.price) , '#,#원') AS 총합계금액
	FROM divtbl AS b
	INNER JOIN bookstbl AS b
		ON d.division = b.division
	GROUP BY ROLLUP(d.names)
	
