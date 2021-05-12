USE sqlDB;
GO

SELECT * FROM userTbl
  WHERE userID = 'KKH';
  
--����� ���̺��� ����⵵ 1970�⿡�� 1980�� ����
--�̰� Ű�� 180�̻��� ����� ��ȸ
SELECT * FROM userTbl
  where birthYear > 1970 and birthYear <= 1980
  AND height >= 180;

--����⵵�� 1970�� �����̰ų� Ű�� 182�̻��� ��� ��ȸ
SELECT * FROM userTbl
  where birthYear > 1970 OR height >= 180;

SELECT * FROM userTbl
  WHERE birthYear BETWEEN 1970 AND 1980
	AND height >= 180;
	
--����� �߿� ������ �泲, ����, ����� ����� ��ȸ
SELECT name, userID, addr FROM userTbl
  WHERE addr = '�泲' OR addr = '����' or addr = '���';
SELECT name, userID, addr FROM userTbl
  WHERE addr IN ('����','���','����');

--LIKE �� (���ڿ����� ���ϴ� ���ڿ��� �ִ� (contain) );
 SELECT name, userID, addr FROM userTbl
--�达 ���� ���� �����
   Where name LIKE '��%';

   SELECT name, userID, addr FROM userTbl
   Where name like '_��Ŵ';

   SELECT name, userID, addr FROM userTbl
   Where name LIKE '��__';
   
  SELECT name, userID, addr FROM userTbl
   --�达 ���� ���� �����
   Where name LIKE '%��%';

--SubQuery
--Ű�� 175���� ū ����� ��ȸ
SELECT * FROM userTBL
 WHERE height > 175;

 --���ȣ���� Ű�� ū ����� ��ȸ
SELECT * FROM userTBL
  Where height > (SELECT height from userTBL where name = '���ȣ');

-- �泲�� ��� ����麸�� Ű�� ū ����� ��ȸ
SELECT * FROM userTBL
  Where height > ANY (SELECT height from userTBL where addr = '�泲');

-- (= ANY) == (IN)�� ������������ ���� ����� ��ġ�ϴ� ����� ��ȸ
SELECT * FROM userTBL
  Where height = ANY (SELECT height from userTBL where addr = '�泲');
SELECT * FROM userTBL
  Where height IN (SELECT height from userTBL where addr = '�泲');

--ORDERBY / ASC:�������� DESC:��������
--Ű�� �������� ���� �� ���� ���� ������ �̸����� ��������
SELECT * FROM userTBL
  ORDER BY height DESC, name ASC;
 
--mobile1 ���� �������� �� ���� ���̸� mobile2�� ��������
SELECT * FROM userTbl
  ORDER BY mobile1 ASC, mobile2 DESC;

--userTbl�� �� ���� ������(���ڵ�)�� �ִ��� Ȯ��
SELECT COUNT(*) FROM userTBL;
SELECT COUNT(*) FROM buyTBL;

--DISTINCT (�ߺ�����)
SELECT DISTINCT addr FROM userTbl;

--TOP
USE AdventureWorksLT2019;
GO

SELECT * FROM SalesLT.Customer;
SELECT TOP (10) Percent *  
  FROM SalesLT.Customer
  WHERE Title = 'MS.'
  ORDER BY CustomerID DESC;

  --10�ۼ�Ʈ�� ����
  SELECT TOP (10) Percent *  
  FROM SalesLT.Customer
  ORDER BY CustomerID DESC;

  --10% ���ø� ��� ��ȸ
  SELECT * FROM SalesLT.Customer
    TABLESAMPLE(10 PERCENT);

--���� ����
SELECT * FROM SalesLT.Customer
  ORDER BY FirstName
OFFSET 5 ROW 
FETCH NEXT 3 ROWS ONLY; --���ν���/�Լ�  