CREATE DATABASE BANCODB;

CREATE TABLE tipodocumento(
	id SERIAL PRIMARY KEY,
	tipo VARCHAR(50) NOT NULL,
	sigla VARCHAR(50) NOT NULL,
	UNIQUE(tipo),
	UNIQUE(sigla)
);


CREATE TABLE pais (
	id SERIAL PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL,
	UNIQUE(nombre)
);


CREATE TABLE ciudad(
	id SERIAL PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL,
	departamento VARCHAR(50) NOT NULL,
	idPais INT NOT NULL REFERENCES pais(id)
);

CREATE TYPE direcciontipo 
AS (
	direccion VARCHAR(100),
	idciudad INT
);


CREATE TABLE cliente(
	id SERIAL PRIMARY KEY,
	apellido1 VARCHAR(50) NOT NULL,
	apellido2 VARCHAR(50) NOT NULL,
	nombres VARCHAR(100) NOT NULL,
	documento VARCHAR(20) NOT NULL,
	idtipodocumento INT NOT NULL REFERENCES tipodocumento(id),
	fechanacimiento DATE NOT NULL,
	idciudadnacimiento INT NOT NULL REFERENCES ciudad(id),
	direccion DIRECCIONTIPO,
	movil VARCHAR(100),
	correo VARCHAR(100),
	foto BYTEA,
	UNIQUE(idtipodocumento, documento)
);

CREATE TYPE tipocuenta 
AS (
	numero INT ,
	saldo INT ,
	fechaApertura DATE
);

CREATE TYPE tipoAhorros 
AS (
	BASE tipoCuenta,
	tasaInteres INT 
);

CREATE TYPE tipoCorriente 
AS (
	BASE tipoCuenta,
	sobreGiro INT 
);

CREATE TYPE tipoCredito 
AS (
	BASE tipocuenta,
	valor INT,
	TasaMensual INT,
	plazo DATE
);

CREATE TABLE credito (
	idCliente INT NOT NULL REFERENCES cliente(id),
	credito tipoCredito
);

CREATE TABLE cuentaAhorro (
	idCliente INT NOT NULL REFERENCES cliente(id),
	ahorros tipoAhorros
);

CREATE TABLE cuentaCorriente (
	idCliente INT NOT NULL REFERENCES cliente(id),
	corriente tipoCorriente
);