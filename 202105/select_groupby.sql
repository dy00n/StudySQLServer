--GROUP BY 
--아이디별로 물건 몇개 샀는지 조회
SELECT userID, SUM(amount) AS '총구매갯수'
  FROM buyTbl
  GROUP BY userID;

--우리 쇼핑몰에서 가장 돈 많이 쓴 사람을
--아이디별로 조회하고 그금액을 같이 출력하라
SELECT userID, sum(amount * price) AS '총구매금액'
  FROM buyTbl
 GROUP BY userID
 ORDER BY SUM(amount * price) DESC;

SELECT sum(amount * price) AS '총구매금액'
  FROM buyTbl

--평균구매금액
SELECT AVG(price) AS '평균구매금액' FROM buyTbl;

--사용자테이블에서 키가 가장 큰 사람하고 가장 작은 사람 조회
SELECT * FROM userTbl
 ORDER BY height ASC;
 
SELECT * FROM userTbl
 ORDER BY height DESC;

SELECT * FROM userTbl
 ORDER BY height DESC;

SELECT * FROM userTbl
 WHERE height = 166 OR height = 186; -- X!!

SELECT name AS '이름', height AS [키] FROM userTbl
 WHERE height = (SELECT MAX(height) FROM userTbl)
	OR height = (SELECT MAX(height) FROM userTbl); -- O!!


--GROUP BY / HAVING
SELECT userID AS '사용자아이디'
	, SUM(price * amount) AS [총구매금액]
  FROM buyTbl
 --WHERE SUM(price*amount) >= 1000 //절대불가
 GROUP BY userID
 HAVING SUM(price * amount) >= 1000;
 
--통계
--제품 그룹별로 사용자가 얼마만큼 구매를 했는지 조회
SELECT groupName
	 , userID
	 , SUM(price * amount) AS [총구매금액]
  FROM buyTbl
 GROUP BY ROLLUP(groupName, userID);

SELECT groupName
	 , userID
	 , SUM(price * amount) AS [총구매금액]
  FROM buyTbl
 GROUP BY CUBE(groupName,userID);

SELECT groupName
	 , SUM(price * amount) AS [총구매금액]
	 , GROUPING_ID(groupName) AS 'SUM'
  FROM buyTbl
 GROUP BY ROLLUP(groupName);