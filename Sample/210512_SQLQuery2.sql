USE sqlDB;
GO

SELECT * FROM userTbl
  WHERE userID = 'KKH';
  
--사용자 테이블에서 출생년도 1970년에서 1980년 사이
--이고 키가 180이상인 사람을 조회
SELECT * FROM userTbl
  where birthYear > 1970 and birthYear <= 1980
  AND height >= 180;

--출생년도가 1970년 이후이거나 키가 182이상인 사람 조회
SELECT * FROM userTbl
  where birthYear > 1970 OR height >= 180;

SELECT * FROM userTbl
  WHERE birthYear BETWEEN 1970 AND 1980
	AND height >= 180;
	
--사용자 중에 지역이 경남, 전남, 경북인 사람만 조회
SELECT name, userID, addr FROM userTbl
  WHERE addr = '경남' OR addr = '전남' or addr = '경북';
SELECT name, userID, addr FROM userTbl
  WHERE addr IN ('정암','경북','전남');

--LIKE 절 (문자열에서 속하는 문자열이 있는 (contain) );
 SELECT name, userID, addr FROM userTbl
--김씨 성을 가진 사람들
   Where name LIKE '김%';

   SELECT name, userID, addr FROM userTbl
   Where name like '_비킴';

   SELECT name, userID, addr FROM userTbl
   Where name LIKE '김__';
   
  SELECT name, userID, addr FROM userTbl
   --김씨 성을 가진 사람들
   Where name LIKE '%용%';

--SubQuery
--키가 175보다 큰 사람들 조회
SELECT * FROM userTBL
 WHERE height > 175;

 --김경호보다 키가 큰 사람들 조회
SELECT * FROM userTBL
  Where height > (SELECT height from userTBL where name = '김경호');

-- 경남에 사는 사람들보다 키가 큰 사람들 조회
SELECT * FROM userTBL
  Where height > ANY (SELECT height from userTBL where addr = '경남');

-- (= ANY) == (IN)은 서브쿼리에서 나온 결과와 일치하는 결과만 조회
SELECT * FROM userTBL
  Where height = ANY (SELECT height from userTBL where addr = '경남');
SELECT * FROM userTBL
  Where height IN (SELECT height from userTBL where addr = '경남');

--ORDERBY / ASC:오름차순 DESC:내림차순
--키로 내림차순 정렬 후 같은 값이 있으면 이름으로 오름차순
SELECT * FROM userTBL
  ORDER BY height DESC, name ASC;
 
--mobile1 으로 오름차순 뒤 같은 값이면 mobile2로 내림차순
SELECT * FROM userTbl
  ORDER BY mobile1 ASC, mobile2 DESC;

--userTbl에 몇 개의 데이터(레코드)가 있는지 확인
SELECT COUNT(*) FROM userTBL;
SELECT COUNT(*) FROM buyTBL;

--DISTINCT (중복제거)
SELECT DISTINCT addr FROM userTbl;

--TOP
USE AdventureWorksLT2019;
GO

SELECT * FROM SalesLT.Customer;
SELECT TOP (10) Percent *  
  FROM SalesLT.Customer
  WHERE Title = 'MS.'
  ORDER BY CustomerID DESC;

  --10퍼센트만 나옴
  SELECT TOP (10) Percent *  
  FROM SalesLT.Customer
  ORDER BY CustomerID DESC;

  --10% 샘플링 결과 조회
  SELECT * FROM SalesLT.Customer
    TABLESAMPLE(10 PERCENT);

--사용빈도 낮음
SELECT * FROM SalesLT.Customer
  ORDER BY FirstName
OFFSET 5 ROW 
FETCH NEXT 3 ROWS ONLY; --프로시저/함수  