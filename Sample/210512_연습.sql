--조회명령문
SELECT memberID, memberName
  FROM memberTBL
  WHERE memberID = 'Won';

--* 은 전체를 의미함
--SELECT productName, cost, company FROM productTBL;


--입력명령문
INSERT INTO memberTBL
VALUES ('Bang' , '방문식' , '부산시 진구');
