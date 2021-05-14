--집합(테이블 합치기)
SELECT stuName, Region FROM stdTbl
UNION
SELECT ClubName, ClubRoom FROM clubTbl;

--데이터 타입이 일치해야 union 가능
SELECT CAST(Id AS VARCHAR), stuID FROM RegDate
UNION
SELECT clubName, clubRoom FROM clubTbl;

--중복을 허용
SELECT stuName, Region FROM stdTbl
UNION ALL
SELECT stuName, Region FROM stdTbl

--except
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
EXCEPT --빼버린다
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
WHERE mobile1 IS NOT NULL

--뒤의 테이블 기준 만족하는 데이터만 추려내는 것
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
INTERSECT
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
WHERE mobile1 IS NOT NULL