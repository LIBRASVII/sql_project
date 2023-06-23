CREATE DATABASE COMERCIOELETRONICO;

USE COMERCIOELETRONICO;

CREATE TABLE CLIENTE (
	IDCL INT NOT NULL AUTO_INCREMENT,
    NOMECLIENTE VARCHAR(50),
    EMAIL VARCHAR(30),
    DTHR DATETIME,
    TIPOCLIENTE INT(1),
    PRIMARY KEY (IDCL)
	);

CREATE TABLE TIPOPESSOA (
    PF INT(1),
    PJ INT(1)
	);
    
CREATE TABLE CESTACOMPRA (
    IDCC INT NOT NULL AUTO_INCREMENT,
    TOTALVALOR DECIMAL(15,2),
    TOTALITEM INT,
    PRIMARY KEY (IDCC)
	);

CREATE TABLE CESTAITEM (
    IDCI INT NOT NULL AUTO_INCREMENT,
    TOTALVALOR DECIMAL(15,2),
    QTD INT,
    PRIMARY KEY (IDCI)
	);
    
CREATE TABLE PRODUTO (
    IDPR INT NOT NULL AUTO_INCREMENT,
    NOMEPRODUTO VARCHAR(30),
    PREÇO DECIMAL(15,2),
    PRIMARY KEY(IDPR)
	);
    

ALTER TABLE TIPOPESSOA
RENAME TIPOCLIENTE;

DESC TIPOCLIENTE;

SHOW TABLES;

DESC TIPOPESSOA;

ALTER TABLE CLIENTE 
CHANGE TIPOCLIENTE TIPOCLIENTE INT(1);

ALTER TABLE CLIENTE
ADD TIPOCLIENTE INT(1);

DESC CLIENTE;

