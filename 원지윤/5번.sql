
SELECT d.names
	  ,FORMAT (SUM(b.price) , '#,#��') AS ���հ�ݾ�
	FROM divtbl AS b
	INNER JOIN bookstbl AS b
		ON d.division = b.division
	GROUP BY ROLLUP(d.names)
	
