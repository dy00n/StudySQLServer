USE sampleDB;
GO

CREATE TABLE userTBL
(
	userID CHAR(8) NOT NULL PRIMARY KEY, --기본키
	name NVARCHAR(10) NOT NULL,
	birthYear INT NOT NULL,
	height SMALLINT 
);
--ddl table 생성
CREATE TABLE buyTBL
(
	number INT NOT NULL PRIMARY KEY, --기본키
	userID	CHAR(8) NOT NULL
		FOREIGN KEY REFERENCES userTBL(userID), -- 외래키, RDB, Relational
	prodName NCHAR(6) NOT NULL,
	price INT NOT NULL
);
GO

--userTBL에 email(유니크제약조건) 추가
ALTER TABLE userTBL
	ADD email VARCHAR(50) not NULL unique;

--CHECK
ALTER TABLE userTBL
	ADD CONSTRAINT CK_birthYear
	CHECK (birthYear >= 1900 AND birthYear <= YEAR(GETDATE()));
--2021까지

--ddl 한개이상 컬럼 pk로 지정 테이블 생성
CREATE TABLE prodTbl
(
	prodCode NCHAR(3) NOT NULL PRIMARY KEY,
	prodID NCHAR(4) NOT NULL,
	prodDate DATETIME NOT NULL,
	prodCur NCHAR(10) NULL,
	CONSTRAINT PK_prodTbl_prodCode_prodID
		PRIMARY KEY (prodCode, prodID)
);
GO