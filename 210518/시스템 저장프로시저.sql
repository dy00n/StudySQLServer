SELECT * FROM userTbl

--시스템 저장프로시저
EXEC sp_databases;
EXEC sp_tables 'userTBL', 'dbo';

SELECT * FROM userTbl WHERE userID = 'KKH'