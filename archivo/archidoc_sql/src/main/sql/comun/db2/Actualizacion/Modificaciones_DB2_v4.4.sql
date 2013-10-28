--/*************************/
--/* Versi�n 4.4           */
--/*************************/

	-- Insertar la versi�n actual de bd
	INSERT INTO AGINFOSISTEMA (NOMBRE,VALOR,FECHAACTUALIZACION) VALUES ('VERSIONBD','4.3->4.4',CURRENT TIMESTAMP);

	-- Crear tabla de Edificios
	CREATE TABLE ASGSEDIFICIO (
     ID			VARCHAR (32) NOT NULL,
     NOMBRE        VARCHAR (64) NOT NULL,
     UBICACION     VARCHAR (254),
     IDARCHIVO     VARCHAR (32) NOT NULL
	);

	-- Crear �ndices de la tabla de Edificios
	CREATE UNIQUE INDEX ASGSEDIFICIO1 ON ASGSEDIFICIO(ID);
	CREATE UNIQUE INDEX ASGSEDIFICIO2 ON ASGSEDIFICIO(NOMBRE);

	-- Crear tabla de Salas
	CREATE TABLE ASGSSALA (
     ID                    VARCHAR (32) NOT NULL,
     NOMBRE                VARCHAR (64) NOT NULL,
     DESCRIPCION           VARCHAR (254),
     IDEDIFICIO            VARCHAR (32) NOT NULL,
     EQUIPOINFORMATICO     CHAR (1) NOT NULL
	);

	-- Crear �ndices de la tabla de Salas
	CREATE UNIQUE INDEX ASGSSALA1 ON ASGSSALA(ID);
	CREATE UNIQUE INDEX ASGSSALA2 ON ASGSSALA(IDEDIFICIO,NOMBRE);
	CREATE INDEX ASGSSALA3 ON ASGSSALA(IDEDIFICIO);

	-- Crear tabla de Mesas
	CREATE TABLE ASGSMESA (
     ID              VARCHAR (32) NOT NULL,
     CODIGO          VARCHAR (64) NOT NULL,
     NUMORDEN        INTEGER NOT NULL,
     IDSALA          VARCHAR (32) NOT NULL,
     ESTADO          CHAR (1) NOT NULL,
     FECHAESTADO     TIMESTAMP NOT NULL,
     IDUSRCSALA      VARCHAR (32)
	);

	-- Crear �ndices de la tabla Mesas
	CREATE INDEX ASGSMESA1 ON ASGSMESA(IDSALA);
	CREATE UNIQUE INDEX ASGSMESA2 ON ASGSMESA(IDSALA,CODIGO);
	CREATE UNIQUE INDEX ASGSMESA3 ON ASGSMESA(IDSALA,NUMORDEN);
	CREATE INDEX ASGSMESA4 ON ASGSMESA(ESTADO);

	-- Crear tabla de usuarios investigadores de consulta de sala
	CREATE TABLE ASGSUSRCSALA (
     ID                        VARCHAR (32) NOT NULL,
     TIPODOCIDENTIFICACION     INTEGER NOT NULL,
     NUMDOCIDENTIFICACION		VARCHAR (32) NOT NULL,
     NOMBRE                    VARCHAR (64) NOT NULL,
     APELLIDOS                 VARCHAR (254) NOT NULL,
     NACIONALIDAD              VARCHAR (64),
     TELEFONOS					VARCHAR (128),
     EMAIL						VARCHAR (128),
     DIRECCION                 VARCHAR (254),
     FECHAALTA                 TIMESTAMP NOT NULL,
     VIGENTE					CHAR (1) NOT NULL,
     IDSCAUSR					VARCHAR (32)
	);

	-- Crear �ndices de la tabla usuarios investigadores
	CREATE UNIQUE INDEX ASGSUSRCSALA1 ON ASGSUSRCSALA(ID);
	CREATE INDEX ASGSUSRCSALA2 ON ASGSUSRCSALA(NUMDOCIDENTIFICACION);
	CREATE INDEX ASGSUSRCSALA3 ON ASGSUSRCSALA(VIGENTE);

	-- Crear tabla relaci�n usuarios consulta y archivos
	CREATE TABLE ASGSUSRCSARCH (
     IDUSRCSALA      VARCHAR (32) NOT NULL,
     IDARCHIVO       VARCHAR (64) NOT NULL
	);

	-- Crear �ndices de la tabla de relaci�n entre usuarios y archivos de consulta
	CREATE UNIQUE INDEX ASGSUSRCSARCH1 ON ASGSUSRCSARCH(IDUSRCSALA,IDARCHIVO);
	CREATE INDEX ASGSUSRCSARCH2 ON ASGSUSRCSARCH(IDUSRCSALA);

	-- Crear tabla de registro de consultas
	CREATE TABLE ASGSREGCSALA (
     ID                    VARCHAR (32) NOT NULL,
     IDUSRCSALA            VARCHAR (32) NOT NULL,
     FENTRADA				TIMESTAMP NOT NULL,
     FSALIDA				TIMESTAMP,
     NUMDOCIDENTIFICACION	VARCHAR (32) NOT NULL,
     NOMBREAPELLIDOS		VARCHAR (254) NOT NULL,
     IDSCAUSR				VARCHAR (32),
     IDARCHIVO				VARCHAR (32) NOT NULL,
     MESAASIGNADA			VARCHAR (254) NOT NULL
	);

	-- Crear �ndices de la tabla de registro de consultas
	CREATE UNIQUE INDEX ASGSREGCSALA1 ON ASGSREGCSALA(ID);
	CREATE INDEX ASGSREGCSALA2 ON ASGSREGCSALA(IDUSRCSALA);
	CREATE INDEX ASGSREGCSALA3 ON ASGSREGCSALA(NUMDOCIDENTIFICACION);

	--A�adir columna IDUSRCSALA
	ALTER TABLE ASGPCONSULTA ADD COLUMN IDUSRCSALA VARCHAR(32);

	--A�adir columna IDUSRCSALA
	ALTER TABLE ASGPTEMA ADD COLUMN IDUSRCSALA VARCHAR(32);