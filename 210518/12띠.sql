CREATE OR ALTER PROC usp_zodiac
	@userName NVARCHAR(10)
AS
	DECLARE @bYear INT
	DECLARE @zodiac NVARCHAR(3) --띠이름 변수
	SELECT @bYear = birthYear FROM userTbl
	 WHERE name = @userName;

	SET @zodiac = 
		CASE
			WHEN (@bYear%12 = 0) THEN '원숭이'
			WHEN (@bYear%12 = 1) THEN '닭'
			WHEN (@bYear%12 = 2) THEN '개'
			WHEN (@bYear%12 = 3) THEN '돼지'
			WHEN (@bYear%12 = 4) THEN '쥐'
			WHEN (@bYear%12 = 5) THEN '소'
			WHEN (@bYear%12 = 6) THEN '호랑이'
			WHEN (@bYear%12 = 7) THEN '토끼'
			WHEN (@bYear%12 = 8) THEN '용'
			WHEN (@bYear%12 = 9) THEN '뱀'
			WHEN (@bYear%12 = 10) THEN '말'
			ELSE '양'
		END;
	PRINT CONCAT(@userName, '(', @bYear, '년생)','의 띠는 ', @zodiac, '입니다');
GO

EXEC usp_zodiac '임재범';