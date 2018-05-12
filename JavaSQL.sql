CREATE TABLE FUNCIONARIOS (
    ID NUMBER(6),
    CPF NUMBER (11) NOT NULL,
    NOME CHAR(100) NOT NULL,
    EMAIL VARCHAR(60) NOT NULL,
    PROF CHAR(30) NOT NULL,
    SALARIO NUMBER(8,2) NOT NULL,
   DT_CAD DATE DEFAULT SYSDATE,
    TELE VARCHAR(12) NOT NULL,
    FOTO BLOB,
    DT_NASC DATE ,
    CONSTRAINT PK_FUNCIONARIOS PRIMARY KEY (ID));
    
CREATE TABLE  CHEFE(
    ID NUMBER (6),
    USUARIO VARCHAR(20) NOT NULL,
    NOME CHAR(100) NOT NULL,
    EMAIL VARCHAR(50) NOT NULL,
    SENHA VARCHAR(20),
    CONSTRAINT PK_CHEFE PRIMARY KEY(ID));
    
CREATE SEQUENCE CHEFESEQ
    START WITH 10
    INCREMENT BY 5
    ORDER
    NOCYCLE;
    
CREATE SEQUENCE FUNCSEQ
    START WITH 10
    INCREMENT BY 5
    ORDER
    NOCYCLE   ;