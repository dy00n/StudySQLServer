--트랜잭션 3번 수행
BEGIN TRAN
UPDATE userTBL SET addr = '제주' WHERE userID = 'KBS'
COMMIT

BEGIN TRAN
UPDATE userTBL SET addr = '미국' WHERE userID = 'KKH'
ROLLBACK

BEGIN TRAN
UPDATE userTBL SET addr = '호주' WHERE userID = 'JYP'
COMMIT

SELECT * FROM userTbl

--트랜잭션 1번 수행
UPDATE userTBL SET addr = '호주' WHERE userID = 'JYP'
UPDATE userTBL SET addr = '미국' WHERE userID = 'KKH'
UPDATE userTBL SET addr = '호주' WHERE userID = 'JYP'
COMMIT

--Transaction 처리순서 시뮬
USE sampleDB;
GO

CREATE TABLE testTbl (num INT);
GO
INSERT INTO testTbl VALUES (1),(3),(5);

--실행하지 말것
BEGIN TRAN
UPDATE testTbl SET num = 11 WHERE num = 1; -- 1 실행
UPDATE testTbl SET num = 33 WHERE num = 3;
UPDATE testTbl SET num = 55 WHERE num = 5;
COMMIT
ROLLBACK

SELECT * FROM testTbl

SELECT @@TRANCOUNT