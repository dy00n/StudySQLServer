--데이터 입력
INSERT INTO testTbl VALUES ('홍길동', '서울');
INSERT INTO testTbl  (userName, addr) VALUES ('설현', '서울');
INSERT INTO testTbl (Id, userName) VALUES (3, '아이유'); --갯수만 맞으면 됌 / 순서는 알아서 맞춰짐
INSERT INTO testTbl (addr, Id, userName) VALUES ('세종', 4, '김형욱');
INSERT INTO testTbl (userName) VALUES ('홍길순');
INSERT INTO testTbl (addr) VALUES ('제주');

SELECT * FROM testTbl;

--DELETE FROM testTbl;

INSERT INTO userTbl (userID, name, birthYear, addr)
VALUES ('IU', '아이유', 1993, '서울');

SELECT * FROM userTbl WHERE userID = 'IU'

INSERT INTO userTbl (userID, name, birthYear, addr, height)
VALUES ('JJH', '주지훈', 1982, '신안', 187);

SELECT * FROM userTbl;

