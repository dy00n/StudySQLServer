
SELECT Idx
	  ,CONCAT('����: ', Names) AS Names
	  ,CONCAT('����> ', Author) AS Author
	  ,ReleaseDate
	  ,ISBN
	  ,CONCAT(FORMAT (Price , '#,#'),'��') AS ����
	FROM bookstbl
	ORDER BY Idx DESC;

	