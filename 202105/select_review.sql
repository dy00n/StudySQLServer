--������ ��ȸ
SELECT * FROM userTbl;

--������ ��ȸ ���͸�
SELECT * FROM userTbl
 WHERE userID = 'BBK';

SELECT * FROM userTbl
 WHERE name LIKE '��%';

--Ư�� ���̺� ���ڵ�(������) ���� Ȯ��
SELECT COUNT(*) FROM userTbl;

--Ű�� 180�̻��̰� 
--����⵵�� 1970���Ŀ� �¾ ��� ��ȸ
--���̵�, �̸�, Ű�� ��ȸ�ϼ���
SELECT * FROM userTbl
 WHERE height > 180 AND birthYear >= 1970;

--����⵵�� (��������)���� �����ؼ� ��ȸ
SELECT * FROM userTbl
 ORDER BY birthYear DESC;

--SELECT INTO
--userTbl_New ���̺��� ���� (PK Ű������ �̻���)
SELECT * INTO userTbl_New FROM userTbl;

SELECT * FROM userTbl_New;

SELECT userID, name, addr INTO userTbl_Backup2 FROM userTbl
 WHERE addr = '����';

SELECT * FROM userTbl_Backup;

SELECT * FROM userTbl_Backup2;