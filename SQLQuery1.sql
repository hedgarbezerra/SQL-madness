CREATE TABLE [AMOR1] (
	[ID1] [INT] IDENTITY(10,10) NOT NULL,
	[NOME] [CHAR] (30) ,
	[SNOME] [CHAR](50) );
CREATE TABLE [STUDENT](
	[ID] [INT] IDENTITY (10,10),
	[NAME] [CHAR] (100),
	[LEVEL] [NUMERIC] (1),
	CONSTRAINT PK_STUDENT PRIMARY KEY (ID)
)
INSERT DBO.STUDENT ([NAME] , [LEVEL]) VALUES ('Head', 1  );
	
	INSERT  DBO.AMOR1 ([NOME], [SNOME]) VALUES ('Hed', 'Gar');  
	
	select * from dbo.AMOR1;

	SELECT * FROM STUDENT;

