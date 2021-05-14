-- 3개 테이블 내부조인
SELECT * FROM stdTbl;
SELECT * FROM clubTbl;

SELECT s.stuId, s.stuName, 
	   r.clubName, 
	   c.ClubRoom, r.Regdate
  FROM stdTbl AS s
 INNER JOIN RegDate AS r
	ON s.stuId = r.stuID
 INNER JOIN clubTbl AS c
	ON c.ClubName = r.ClubName
 WHERE s.stuID = 'KBS';
