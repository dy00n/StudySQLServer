--DELETE

BEGIN TRAN;

DELETE FROM testTbl
 WHERE Id = 4;

DELETE FROM testTbl
 where addr = '¼­¿ï';

 SELECT * FROM testTbl;

 COMMIT;
 ROLLBACK;