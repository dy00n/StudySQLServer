--���ڿ� �Լ�
SELECT ASCII('z'), CHAR(47); --���� ��
SELECT UNICODE('��'), NCHAR(44035); --���� ��


--���ڿ� ����
SELECT CONCAT('SQL ', 'SERVER ', 2019) AS [NAME]; --���� ��
SELECT 'SQL' + 'server' + CAST(2019 AS VARCHAR);

--�ܾ� ������ġ
SELECT CHARINDEX('world', 'Hello world'); 
-- C#, java, python ���ڿ� 0���� ����
--DB 1���� ����

--LERT, RIGHT, SUBSTRING, LEN, LOWER, UPPER, LTRIM, RTRIM
DECLARE @STR VARCHAR;
SET @STR = 'SQL Server 2019';
SELECT LEFT(@STR, 3), RIGHT(@STR, 4);

SELECT SUBSTRING('���ѹα�����!', 5, 2);

SELECT LEN('Hello World');
SELECT LEN('���ѹα�����!');

SELECT LOWER('hELLO World'), UPPER('hELLO World');

--�����̽� ���� �Լ�
SELECT '    SQL', LTRIM ('    SQL'); --���ʿ������ --��
SELECT '    SQL', RTRIM ('    SQL          '); --�����ʿ������ --��
SELECT '    SQL', TRIM ('    SQL          '); --������� --��

--REPLAC ���� �ֻ�
SELECT REPLACE ('SQL Server 2019', 'Server', '����');

--STR ���� ��
SELECT STR(3.141592);
SELECT STR(45);

--FORMAT ���� ��
SELECT GETDATE();
SELECT FORMAT(GETDATE(), 'yyyy-MM-dd hh:mm:ss'); --�ѱ���
SELECT FORMAT(GETDATE(), 'MM/dd/yyyy hh:mm:ss'); --�̱���







