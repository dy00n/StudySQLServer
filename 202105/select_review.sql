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

