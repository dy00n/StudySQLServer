--문자열 함수
SELECT ASCII('z'), CHAR(47); --사용빈도 하
SELECT UNICODE('가'), NCHAR(44035); --사용빈도 하


--문자열 연결
SELECT CONCAT('SQL ', 'SERVER ', 2019) AS [NAME]; --사용빈도 상
SELECT 'SQL' + 'server' + CAST(2019 AS VARCHAR);

--단어 시작위치
SELECT CHARINDEX('world', 'Hello world'); 
-- C#, java, python 문자열 0부터 시작
--DB 1부터 시작

--LERT, RIGHT, SUBSTRING, LEN, LOWER, UPPER, LTRIM, RTRIM
DECLARE @STR VARCHAR;
SET @STR = 'SQL Server 2019';
SELECT LEFT(@STR, 3), RIGHT(@STR, 4);

SELECT SUBSTRING('대한민국만세!', 5, 2);

SELECT LEN('Hello World');
SELECT LEN('대한민국만세!');

SELECT LOWER('hELLO World'), UPPER('hELLO World');

--스페이스 제거 함수
SELECT '    SQL', LTRIM ('    SQL'); --왼쪽여백없앰 --중
SELECT '    SQL', RTRIM ('    SQL          '); --오른쪽여백없앰 --중
SELECT '    SQL', TRIM ('    SQL          '); --여백없앰 --상

--REPLAC 사용빈도 최상
SELECT REPLACE ('SQL Server 2019', 'Server', '서버');

--STR 사용빈도 하
SELECT STR(3.141592);
SELECT STR(45);

--FORMAT 사용빈도 상
SELECT GETDATE();
SELECT FORMAT(GETDATE(), 'yyyy-MM-dd hh:mm:ss'); --한국식
SELECT FORMAT(GETDATE(), 'MM/dd/yyyy hh:mm:ss'); --미국식







