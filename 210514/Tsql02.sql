-- 시스템함수(SQL서버가 기본으로 제공해주는 함수들)
SELECT CAST(AVG(CAST (amount AS float)) AS decimal(5,4)) FROM buyTbl;

SELECT AVG(CONVERT(FLOAT, amount)) FROM buyTbl;

SELECT PARSE('3.14' AS INT); -- 예외발생하면 쿼리가 비정상 종료
SELECT TRY_PARSE('3.14' AS INT); --값 변환 못하면 NULL 값대체 정상적 수행

--HEIGHT SMALLINT --> VARCHAR, CHAR 형변환
SELECT name, CAST(height AS VARCHAR) + 'cm' FROM userTbl
 WHERE height IS NOT NULL; 
 --NULL값은 =로 비교x // IS(같다) / IS NOT (같지않다)

 SELECT TRY_PARSE ('2021년 5월 14일 10시 27분' AS DATETIME);
 SELECT PARSE ('2021 05-14 10:27:10' AS DATETIME);
 -- YYYY-MM-DD HH:min:ss

 SELECT GETDATE(); -- INSERT 현재 년월일시분초 제일 많이 사용
 
 SELECT @@VERSION;

 --날짜 및 시간함수
SELECT YEAR(GETDATE()) AS '현재년도';
SELECT MONTH(GETDATE()) AS '현재월';
SELECT DAY(GETDATE()) AS '오늘';

--수치함수
SELECT ABS(-100); --절대값
SELECT ROUND(3.141592, 2); --반올림
SELECT FLOOR(RAND() * 100); --랜덤 + 내림

--논리함수
SELECT IIF (100 > 200, '참', '거짓');


