
SELECT Idx
	  ,CONCAT('제목: ', Names) AS Names
	  ,CONCAT('저자> ', Author) AS Author
	  ,ReleaseDate
	  ,ISBN
	  ,CONCAT(FORMAT (Price , '#,#'),'원') AS 가격
	FROM bookstbl
	ORDER BY Idx DESC;

	