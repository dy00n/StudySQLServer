-- SQL Programming
DECLARE @var1 INT    --변수 선언
SET @var1 = 170  

IF (@var1 < 170)
BEGIN
	PRINT '기준값이 작습니다'
END
ELSE IF (@var1 = 180)
BEGIN
		SELECT * FROM userTbl WHERE height > @var1;
END
ELSE
BEGIN
		SELECT * FROM userTbl WHERE height > @var1;
END