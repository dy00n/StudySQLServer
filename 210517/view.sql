--VIEW

CREATE VIEW v_userTBl
AS
	SELECT userID, name, addr FROM userTBL;
GO

SELECT userID, name, addr FROM v_userTBl

SELECT * FROM v_buyTBL

SELECT number, userID, price FROM buyTBL

CREATE VIEW v_userbuyInfo
AS 
	SELECT u.userID, u.name, b.prodName, b.price
		FROM userTbl AS u
	  INNER JOIN buyTbl AS b
		ON u.userID = b.userID
GO

SELECT * FROM v_userbuyInfo
	ORDER BY price DESC;
