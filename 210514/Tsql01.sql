--���α׷� ����
USE sqlDB
GO

DECLARE @myVar1 INT;
DECLARE @myvar2 DECIMAL(5, 2); --�����κ� 3, �Ҽ��� 2
DECLARE @myVar3 NCHAR (20);
DECLARE @inchUnit DECIMAL(4, 3); --�����κ� 1, �Ҽ��� 3

SET @myVar1 = 4000;
SET @myvar2 = 3.14;
SET @myVar3 = '���� �̸� => ';
Set @inchUnit = 0.393

--SELECT @myVar1, @myVar2;
--SELECT @myVar3 AS 'string', name FROM userTbl WHERE height > 180;
SELECT name, height * @inchUnit AS 'Ű(inch)' FROM userTbl;