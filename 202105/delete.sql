--DELETE

BEGIN TRAN;

DELETE FROM testTbl
 WHERE Id = 4;

DELETE FROM testTbl
 where addr = '����';

 SELECT * FROM testTbl;

 COMMIT;
 ROLLBACK;