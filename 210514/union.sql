--����(���̺� ��ġ��)
SELECT stuName, Region FROM stdTbl
UNION
SELECT ClubName, ClubRoom FROM clubTbl;

--������ Ÿ���� ��ġ�ؾ� union ����
SELECT CAST(Id AS VARCHAR), stuID FROM RegDate
UNION
SELECT clubName, clubRoom FROM clubTbl;

--�ߺ��� ���
SELECT stuName, Region FROM stdTbl
UNION ALL
SELECT stuName, Region FROM stdTbl

--except
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
EXCEPT --��������
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
WHERE mobile1 IS NOT NULL

--���� ���̺� ���� �����ϴ� �����͸� �߷����� ��
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
INTERSECT
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
WHERE mobile1 IS NOT NULL