--������ �Է�
INSERT INTO testTbl VALUES ('ȫ�浿', '����');
INSERT INTO testTbl  (userName, addr) VALUES ('����', '����');
INSERT INTO testTbl (Id, userName) VALUES (3, '������'); --������ ������ �� / ������ �˾Ƽ� ������
INSERT INTO testTbl (addr, Id, userName) VALUES ('����', 4, '������');
INSERT INTO testTbl (userName) VALUES ('ȫ���');
INSERT INTO testTbl (addr) VALUES ('����');

SELECT * FROM testTbl;

--DELETE FROM testTbl;

INSERT INTO userTbl (userID, name, birthYear, addr)
VALUES ('IU', '������', 1993, '����');

SELECT * FROM userTbl WHERE userID = 'IU'

INSERT INTO userTbl (userID, name, birthYear, addr, height)
VALUES ('JJH', '������', 1982, '�ž�', 187);

SELECT * FROM userTbl;

