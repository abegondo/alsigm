







CREATE TABLE AANAUDITACCION (
	MODULO INTEGER NOT NULL,
	ACCION INTEGER NOT NULL,
	NIVEL INTEGER NOT NULL
);

CREATE TABLE AANAUDITUSR (
	TIPOAUDITADO VARCHAR(32) NOT NULL,
	IDAUDITADO VARCHAR(32) NOT NULL,
	NIVEL INTEGER NOT NULL
);

CREATE TABLE AADATOSTRAZA (
	ID VARCHAR(32) NOT NULL,
	IDTRAZA VARCHAR(32) NOT NULL,
	CONTENIDO CLOB,
	TIPOOBJETO INTEGER,
	IDOBJETO VARCHAR(32)
);

CREATE TABLE AATRAZA (
	ID VARCHAR(32) NOT NULL,
	MODULO INTEGER NOT NULL,
	ACCION INTEGER NOT NULL,
	TIMESTAMP TIMESTAMP NOT NULL,
	DIRIP VARCHAR(32) NOT NULL,
	IDUSUARIO VARCHAR(32),
	CODERROR INTEGER
);

CREATE TABLE AASESION (
	IDUSUARIO VARCHAR(32) NOT NULL,
	KEEPALIVE TIMESTAMP NOT NULL,
	ID VARCHAR(64) NOT NULL
);

CREATE TABLE ADAREA (
	ID VARCHAR(32) NOT NULL,
	NOMBRE VARCHAR(128) NOT NULL,
	TIPONORMA INTEGER DEFAULT 0 NOT NULL,
	DESCRIPCION VARCHAR(254)
);

CREATE TABLE ADCAMPODATO (
	ID VARCHAR(32) NOT NULL,
	NOMBRE VARCHAR(64) NOT NULL,
	TIPO INTEGER NOT NULL,
	TIPONORMA INTEGER NOT NULL,
	IDAREA VARCHAR(32),
	IDTBLPADRE VARCHAR(32),
	POSENTBL INTEGER,
	ETIQUETAXML VARCHAR(128) NOT NULL,
	DESCRIPCION VARCHAR(254)
);

CREATE TABLE ADCAMPOTBL (
	ID VARCHAR(32) NOT NULL,
	NOMBRE VARCHAR(64) NOT NULL,
	TIPONORMA INTEGER NOT NULL,
	IDAREA VARCHAR(32),
	ETIQUETAXML VARCHAR(128) NOT NULL,
	ETIQXMLFILA VARCHAR(128) NOT NULL,
	DESCRIPCION VARCHAR(254)
);

CREATE TABLE ADCTLGLISTAD (
	ID VARCHAR(32) NOT NULL,
	NOMBRE VARCHAR(64) NOT NULL,
	TIPO INTEGER NOT NULL,
	TIPODESCRIPTOR INTEGER NOT NULL,
	IDFICHADESCRPREF VARCHAR(32),
	IDFICHACLFDOCPREF VARCHAR(32),
	IDREPECMPREF VARCHAR(32),
	DESCRIPCION VARCHAR(254)
);

CREATE TABLE ADCTLGTBLVLD (
	ID VARCHAR(32) NOT NULL,
	NOMBRE VARCHAR(64) NOT NULL,
	DESCRIPCION VARCHAR(254),
	USOINTERNO CHAR(1)
);

CREATE TABLE ADDESCRIPTOR (
	ID VARCHAR(32) NOT NULL,
	NOMBRE VARCHAR(512) NOT NULL,
	IDLISTA VARCHAR(32) NOT NULL,
	TIPO INTEGER NOT NULL,
	ESTADO INTEGER NOT NULL,
	IDSISTEXT VARCHAR(64),
	IDDESCRSISTEXT VARCHAR(32),
	TIMESTAMP TIMESTAMP NOT NULL,
	IDFICHADESCR VARCHAR(32),
	TIENEDESCR CHAR(1),
	EDITCLFDOCS CHAR(1),
	IDREPECM VARCHAR(32),
	NIVELACCESO SMALLINT NOT NULL,
	IDLCA VARCHAR(32)
);


CREATE TABLE ADFICHA (
	ID VARCHAR(32) NOT NULL,
	NOMBRE VARCHAR(64) NOT NULL,
	DEFINICION CLOB NOT NULL,
	TIPONORMA INTEGER NOT NULL,
	TIPONIVEL INTEGER NOT NULL,
	SUBTIPONIVEL INTEGER DEFAULT 0 NOT NULL,
	DESCRIPCION VARCHAR(254)
);

CREATE TABLE ADFMTFICHA (
	ID VARCHAR(32) NOT NULL,
	NOMBRE VARCHAR(128) NOT NULL,
	DEFINICION CLOB NOT NULL,
	IDFICHA VARCHAR(32) NOT NULL,
	TIPO SMALLINT NOT NULL,
	NIVELACCESO SMALLINT NOT NULL,
	IDLCA VARCHAR(32),
	DESCRIPCION VARCHAR(254)
);

CREATE TABLE ADFMTPREF (
	IDFICHA VARCHAR(32) NOT NULL,
	IDUSUARIO VARCHAR(32) NOT NULL,
	TIPOFMT SMALLINT NOT NULL,
	IDFMT VARCHAR(32) NOT NULL
);

CREATE TABLE ADOCCLASIFCF (
	ID VARCHAR(32) NOT NULL,
	NOMBRE VARCHAR(128) NOT NULL,
	IDCLFPADRE VARCHAR(32),
	IDELEMENTOCF VARCHAR(32) NOT NULL,
	MARCAS INTEGER NOT NULL,
	ESTADO INTEGER NOT NULL,
	DESCRIPCION VARCHAR(512)
);

CREATE TABLE ADOCCLASIFDESCR (
	ID VARCHAR(32) NOT NULL,
	NOMBRE VARCHAR(128) NOT NULL,
	IDCLFPADRE VARCHAR(32),
	IDDESCR VARCHAR(32) NOT NULL,
	MARCAS INTEGER NOT NULL,
	ESTADO INTEGER NOT NULL,
	DESCRIPCION VARCHAR(254)
);

CREATE TABLE ADOCDOCUMENTOCF (
	ID VARCHAR(32) NOT NULL,
	NOMBRE VARCHAR(128) NOT NULL,
	IDCLFPADRE VARCHAR(32),
	IDELEMENTOCF VARCHAR(32) NOT NULL,
	TAMANOFICH FLOAT NOT NULL,
	NOMBREORGFICH VARCHAR(254) NOT NULL,
	EXTFICH VARCHAR(16) NOT NULL,
	IDEXTDEPOSITO VARCHAR(32),
	IDFICH VARCHAR(128) NOT NULL,
	ESTADO INTEGER NOT NULL,
	DESCRIPCION VARCHAR(254),
	IDREPECM VARCHAR(32)
);

CREATE TABLE ADOCDOCUMENTODESCR (
	ID VARCHAR(32) NOT NULL,
	NOMBRE VARCHAR(128) NOT NULL,
	IDCLFPADRE VARCHAR(32),
	IDDESCR VARCHAR(32) NOT NULL,
	TAMANOFICH FLOAT NOT NULL,
	NOMBREORGFICH VARCHAR(254) NOT NULL,
	EXTFICH VARCHAR(16) NOT NULL,
	IDFICH VARCHAR(128) NOT NULL,
	ESTADO INTEGER NOT NULL,
	DESCRIPCION VARCHAR(254),
	IDREPECM VARCHAR(32)
);

CREATE TABLE ADOCFICHACLF (
	ID VARCHAR(32) NOT NULL,
	NOMBRE VARCHAR(64) NOT NULL,
	DEFINICION CLOB NOT NULL,
	DESCRIPCION VARCHAR(254)
);

CREATE TABLE ADOCTCAPTURA (
	ID VARCHAR(32) NOT NULL,
	TIPOOBJ INTEGER NOT NULL,
	IDOBJ VARCHAR(32) NOT NULL,
	IDUSRCAPTURA VARCHAR(32) NOT NULL,
	CODREFOBJ VARCHAR(1024),
	TITULOOBJ VARCHAR(1024) NOT NULL,
	ESTADO INTEGER NOT NULL,
	FECHAESTADO TIMESTAMP NOT NULL,
	OBSERVACIONES VARCHAR(254),
	MOTIVOERROR VARCHAR(254)
);

CREATE TABLE ADPCDOCUMENTOVIT (
	ID VARCHAR(32) NOT NULL,
	IDBDTERCEROS VARCHAR(64) NOT NULL,
	NUMIDENTIDAD VARCHAR(32),
	IDENTIDAD VARCHAR(254),
	IDTIPODOCVIT VARCHAR(32) NOT NULL,
	FECHACAD TIMESTAMP,
	ESTADODOCVIT INTEGER NOT NULL,
	FECHACR TIMESTAMP NOT NULL,
	IDUSUARIOCR VARCHAR(32) NOT NULL,
	FECHAVIG TIMESTAMP,
	IDUSUARIOVIG VARCHAR(32),
	NUMACCESOS INTEGER NOT NULL,
	FECHAULTACCESO TIMESTAMP,
	TAMANOFICH FLOAT NOT NULL,
	NOMBREORGFICH VARCHAR(254) NOT NULL,
	EXTFICH VARCHAR(16) NOT NULL,
	IDFICH VARCHAR(128) NOT NULL,
	OBSERVACIONES VARCHAR(254),
	IDREPECM		VARCHAR(32)
);

CREATE TABLE ADPCUSODOCVIT (
	IDDOCVIT VARCHAR(32) NOT NULL,
	IDEXP VARCHAR(254) NOT NULL,
	IDSIST VARCHAR(254) NOT NULL,
	FECHAUSO TIMESTAMP NOT NULL,
	USUARIO VARCHAR(254) NOT NULL
);

CREATE TABLE ADPCTIPODOCVIT (
	ID VARCHAR(32) NOT NULL,
	NOMBRE VARCHAR(254) NOT NULL,
	DESCRIPCION VARCHAR(512)
);

CREATE TABLE ADPCTIPODOCPROC (
	IDTIPODOC VARCHAR(32) NOT NULL,
	IDPROC VARCHAR(254) NOT NULL
);

CREATE TABLE ADTEXTTBLVLD (
	ID VARCHAR(32) NOT NULL,
	VALOR VARCHAR(254) NOT NULL,
	IDTBLVLD VARCHAR(32) NOT NULL
);

CREATE TABLE ADUSOOBJETO (
	IDOBJ VARCHAR(32) NOT NULL,
	TIPOOBJ INTEGER NOT NULL,
	IDOBJUSUARIO VARCHAR(32) NOT NULL,
	TIPOOBJUSUARIO INTEGER NOT NULL
);

CREATE TABLE ADVCFECHACF (
	IDELEMENTOCF VARCHAR(32) NOT NULL,
	IDCAMPO VARCHAR(32) NOT NULL,
	VALOR VARCHAR(64),
	FECHAINI TIMESTAMP,
	FECHAFIN TIMESTAMP,
	CALIFICADOR VARCHAR(32),
	ORDEN INTEGER NOT NULL,
	TIMESTAMP TIMESTAMP NOT NULL,
	FORMATO VARCHAR(16),
	SEP CHAR(1)
);

CREATE TABLE ADVCFECHADESCR (
	IDDESCR VARCHAR(32) NOT NULL,
	IDCAMPO VARCHAR(32) NOT NULL,
	VALOR VARCHAR(64),
	FECHAINI TIMESTAMP,
	FECHAFIN TIMESTAMP,
	FORMATO VARCHAR(16),
	SEP CHAR(1),
	CALIFICADOR VARCHAR(32),
	ORDEN INTEGER NOT NULL,
	TIMESTAMP TIMESTAMP NOT NULL
);

CREATE TABLE ADVCNUMCF (
	IDELEMENTOCF VARCHAR(32) NOT NULL,
	IDCAMPO VARCHAR(32) NOT NULL,
	VALOR FLOAT NOT NULL,
	ORDEN INTEGER NOT NULL,
	TIMESTAMP TIMESTAMP NOT NULL,
	TIPOMEDIDA INTEGER,
	UNIDADMEDIDA VARCHAR(16)
);

CREATE TABLE ADVCNUMDESCR (
	IDDESCR VARCHAR(32) NOT NULL,
	IDCAMPO VARCHAR(32) NOT NULL,
	VALOR FLOAT NOT NULL,
	ORDEN INTEGER NOT NULL,
	TIMESTAMP TIMESTAMP NOT NULL,
	TIPOMEDIDA INTEGER,
	UNIDADMEDIDA VARCHAR(16)
);

CREATE TABLE ADVCREFCF (
	IDELEMENTOCF VARCHAR(32) NOT NULL,
	IDCAMPO VARCHAR(32) NOT NULL,
	TIPOOBJREF INTEGER NOT NULL,
	IDOBJREF VARCHAR(32) NOT NULL,
	ORDEN INTEGER NOT NULL,
	TIMESTAMP TIMESTAMP NOT NULL
);

CREATE TABLE ADVCREFDESCR (
	IDDESCR VARCHAR(32) NOT NULL,
	IDCAMPO VARCHAR(32) NOT NULL,
	TIPOOBJREF INTEGER NOT NULL,
	IDOBJREF VARCHAR(32) NOT NULL,
	ORDEN INTEGER NOT NULL,
	TIMESTAMP TIMESTAMP NOT NULL
);

CREATE TABLE ADVCTEXTCF (
	IDELEMENTOCF VARCHAR(32) NOT NULL,
	IDCAMPO VARCHAR(32) NOT NULL,
	VALOR VARCHAR(254) NOT NULL,
	ORDEN INTEGER NOT NULL,
	TIMESTAMP TIMESTAMP NOT NULL
);


CREATE TABLE ADVCTEXTDESCR (
	IDDESCR VARCHAR(32) NOT NULL,
	IDCAMPO VARCHAR(32) NOT NULL,
	VALOR VARCHAR(254) NOT NULL,
	ORDEN INTEGER NOT NULL,
	TIMESTAMP TIMESTAMP NOT NULL
);


CREATE TABLE ADVCTEXTLCF (
	IDELEMENTOCF VARCHAR(32) NOT NULL,
	IDCAMPO VARCHAR(32) NOT NULL,
	VALOR CLOB NOT NULL,
	ORDEN INTEGER NOT NULL,
	TIMESTAMP TIMESTAMP NOT NULL
);


CREATE TABLE ADVCTEXTLDESCR (
	IDDESCR VARCHAR(32) NOT NULL,
	IDCAMPO VARCHAR(32) NOT NULL,
	VALOR CLOB NOT NULL,
	ORDEN INTEGER NOT NULL,
	TIMESTAMP TIMESTAMP NOT NULL
);


CREATE TABLE AGARCHIVO (
	ID VARCHAR(32) NOT NULL,
	CODIGO VARCHAR(32) NOT NULL,
	NOMBRE VARCHAR(128) NOT NULL,
	IDNIVEL VARCHAR(32) NOT NULL,
	IDRECEPTORDEFECTO VARCHAR(32),
	NOMBRECORTO VARCHAR(25) NOT NULL,
    TIPOSIGNATURACION INTEGER DEFAULT 1 NOT NULL
);

CREATE TABLE AGNIVELARCHIVO (
	ID VARCHAR(32) NOT NULL,
	NOMBRE VARCHAR(64) NOT NULL,
	DESCRIPCION VARCHAR(254),
	ORDEN SMALLINT NOT NULL
);

CREATE TABLE AGFORMATO (
	ID VARCHAR(32) NOT NULL,
	NOMBRE VARCHAR(64) NOT NULL,
	TIPO SMALLINT NOT NULL,
	ESMULTIDOC SMALLINT NOT NULL,
	REGULAR SMALLINT NOT NULL,
	LONGITUD FLOAT,
	XINFO VARCHAR(1024),
	VIGENTE SMALLINT NOT NULL
);

CREATE TABLE AGOBJBLOQUEO (
	IDOBJ VARCHAR(32) NOT NULL,
	TIPOOBJ SMALLINT NOT NULL,
	MODULO SMALLINT NOT NULL,
	TS TIMESTAMP NOT NULL,
	IDUSUARIO VARCHAR(32) NOT NULL
);

CREATE TABLE ASCAGRUPO (
	ID VARCHAR(32) NOT NULL,
	NOMBRE VARCHAR(254) NOT NULL,
	IDARCHIVO VARCHAR(32),
	DESCRIPCION VARCHAR(254),
	INFO VARCHAR(1024) DEFAULT ''
);

CREATE TABLE ASCALISTCA (
	ID VARCHAR(32) NOT NULL,
	NOMBRE VARCHAR(254) NOT NULL,
	TIPO SMALLINT NOT NULL,
	DESCRIPCION VARCHAR(512)
);

CREATE TABLE ASCAORGANO (
	ID VARCHAR(32) NOT NULL,
	CODIGO VARCHAR(64) NOT NULL,
	NOMBRE VARCHAR(254) NOT NULL,
	NOMBRELARGO VARCHAR(1024),
	IDARCHIVORECEPTOR VARCHAR(32) NOT NULL,
	SISTEXTGESTOR VARCHAR(32) NOT NULL,
	IDORGSEXTGESTOR VARCHAR(64) NOT NULL,
	VIGENTE CHAR(1) NOT NULL,
	DESCRIPCION VARCHAR(254)
);

CREATE TABLE ASCAPERMGENROL (
	IDROL VARCHAR(32) NOT NULL,
	TIPOMODULO SMALLINT NOT NULL,
	PERM INTEGER NOT NULL
);

CREATE TABLE ASCAPERMLISTCA (
	IDLISTCA VARCHAR(32) NOT NULL,
	TIPODEST SMALLINT NOT NULL,
	IDDEST VARCHAR(64) NOT NULL,
	PERM INTEGER NOT NULL
);

CREATE TABLE ASCAROL (
	ID VARCHAR(32) NOT NULL,
	NOMBRE VARCHAR(64) NOT NULL,
	TIPOMODULO SMALLINT,
	DESCRIPCION VARCHAR(254)
);

CREATE TABLE ASCAROLUSR (
	IDROL VARCHAR(32) NOT NULL,
	TIPOMODULO SMALLINT NOT NULL,
	IDUSUARIO VARCHAR(32) NOT NULL
);

CREATE TABLE ASCAUSRGRP (
	IDUSUARIO VARCHAR(32) NOT NULL,
	IDGRUPO VARCHAR(32) NOT NULL
);

CREATE TABLE ASCAUSRORG (
	IDUSUARIO VARCHAR(32) NOT NULL,
	IDORGANO VARCHAR(32) NOT NULL,
	FECHAINI TIMESTAMP,
	FECHAFIN TIMESTAMP
);

CREATE TABLE ASCAUSUARIO (
	ID VARCHAR(32) NOT NULL,
	NOMBRE VARCHAR(254) NOT NULL,
	APELLIDOS VARCHAR(254),
	EMAIL VARCHAR(254),
	DIRECCION VARCHAR(254),
	TIPO CHAR(1) NOT NULL,
	HABILITADO CHAR(1) NOT NULL,
	FMAXVIGENCIA TIMESTAMP,
	IDUSRSEXTGESTOR VARCHAR(64) NOT NULL,
	IDUSRSISTORG VARCHAR(64),
	DESCRIPCION VARCHAR(254)
);

CREATE TABLE ASGDDEPOSITO (
	ID VARCHAR(32) NOT NULL,
	IDTIPOELEMENTO VARCHAR(32) NOT NULL,
	NUMORDEN SMALLINT NOT NULL,
	NOMBRE VARCHAR(64) NOT NULL,
	UBICACION VARCHAR(255) NOT NULL,
	MARCAS INTEGER NOT NULL,
	IDARCHIVO VARCHAR(32) NOT NULL
);

CREATE TABLE ASGDDEPOSITOELECTRONICO (
	ID VARCHAR(32) NOT NULL,
	IDEXT VARCHAR(64) NOT NULL,
	NOMBRE VARCHAR(64) NOT NULL,
	DESCRIPCION VARCHAR(254),
	LOCALIZACION CLOB NOT NULL,
	USOFIRMA VARCHAR(1) DEFAULT 'N' NOT NULL
);

CREATE TABLE ASGDELEMASIG (
	ID VARCHAR(32) NOT NULL,
	NOMBRE VARCHAR(64) NOT NULL,
	IDTIPOELEMENTO VARCHAR(32) NOT NULL,
	NUMORDEN INTEGER NOT NULL,
	IDELEMNAPADRE VARCHAR(32) NOT NULL,
	IDDEPOSITO VARCHAR(32) NOT NULL,
	LONGITUD FLOAT NOT NULL,
	IDFORMATO VARCHAR(32) NOT NULL,
	NUMHUECOS SMALLINT NOT NULL,
	CODORDEN VARCHAR(50) DEFAULT ' ' NOT NULL
);

CREATE TABLE ASGDELEMNOASIG (
	ID VARCHAR(32) NOT NULL,
	IDTIPOELEMENTO VARCHAR(32) NOT NULL,
	NUMORDEN SMALLINT NOT NULL,
	IDDEPOSITO VARCHAR(32) NOT NULL,
	NOMBRE VARCHAR(64) NOT NULL,
	IDPADRE VARCHAR(32),
	MARCAS INTEGER NOT NULL,
	CODORDEN VARCHAR(50) DEFAULT ' ' NOT NULL
);

CREATE TABLE ASGDHUECO (
	IDELEMAPADRE VARCHAR(32) NOT NULL,
	IDDEPOSITO VARCHAR(32) NOT NULL,
	NUMORDEN SMALLINT NOT NULL,
	ESTADO CHAR(1) NOT NULL,
	IDFORMATO VARCHAR(32) NOT NULL,
	IDUINSTALACION VARCHAR(32),
	IDRELENTREGA VARCHAR(32),
	FECHAESTADO TIMESTAMP NOT NULL,
	PATH VARCHAR(512) NOT NULL,
	ORDENENRELACION SMALLINT DEFAULT 0,
	CODORDEN VARCHAR(50) DEFAULT ' ' NOT NULL,
	TIPOORD SMALLINT DEFAULT 1 NOT NULL,
	NUMERACION VARCHAR (16),
	MARCAS SMALLINT DEFAULT 0 NOT NULL,
	IDUIREEACR VARCHAR (32)
);

CREATE TABLE ASGDSIGNUMORDEN (
	IDTIPOELEMPADRE VARCHAR(32),
	IDELEMPADRE VARCHAR(32),
	IDTIPOELEMENTO VARCHAR(32) NOT NULL,
	NUMORDEN SMALLINT NOT NULL
);

CREATE TABLE ASGDTIPOELEMENTO (
	ID VARCHAR(32) NOT NULL,
	NOMBRE VARCHAR(64) NOT NULL,
	NOMBREABREV VARCHAR(16),
	IDPADRE VARCHAR(32),
	ASIGNABLE SMALLINT NOT NULL,
	DESCRIPCION VARCHAR(254),
	CARACTERORDEN CHAR(1) DEFAULT ' ' NOT NULL,
	TIPOORD SMALLINT DEFAULT 1 NOT NULL
);

CREATE TABLE ASGDUDOCENUI (
	IDUNIDADDOC VARCHAR(32),
	IDUINSTALACION VARCHAR(32) NOT NULL,
	POSUDOCENUI SMALLINT NOT NULL,
	SIGNATURAUDOC VARCHAR(32) NOT NULL,
	IDENTIFICACION VARCHAR(254) NOT NULL,
	IDUDOCRE VARCHAR(32),
	DESCRIPCION VARCHAR(254)
);

CREATE TABLE ASGDUINSTALACION (
	ID VARCHAR(32) NOT NULL,
	IDFORMATO VARCHAR(32) NOT NULL,
	SIGNATURAUI VARCHAR(16) NOT NULL,
	IDENTIFICACION VARCHAR(254) NOT NULL,
	MARCASBLOQUEO INTEGER DEFAULT 0 NOT NULL,
    FCREACION 	TIMESTAMP NOT NULL DEFAULT CURRENT TIMESTAMP
);

CREATE TABLE ASGDHISTUINSTALACION(
	ID              VARCHAR(32) NOT NULL,
	IDARCHIVO       VARCHAR(32) NOT NULL,
	IDFORMATO       VARCHAR(32) NOT NULL,
	SIGNATURAUI	    VARCHAR(16) NOT NULL,
	IDENTIFICACION  VARCHAR(254)	NOT NULL,
	FELIMINACION    TIMESTAMP NOT NULL,
	MOTIVO	        SMALLINT NOT NULL
);

CREATE TABLE ASGFELEMENTOCF (
	ID VARCHAR(32) NOT NULL,
	TIPO SMALLINT NOT NULL,
	IDNIVEL VARCHAR(32) NOT NULL,
	CODIGO VARCHAR(128),
	TITULO VARCHAR(1024) NOT NULL,
	IDPADRE VARCHAR(32),
	IDFONDO VARCHAR(32),
	CODREFFONDO VARCHAR(254),
	FINALCODREFPADRE VARCHAR(1024),
	CODREFERENCIA VARCHAR(1024),
	ESTADO SMALLINT NOT NULL,
	IDELIMINACION VARCHAR(32),
	IDFICHADESCR VARCHAR(32),
	TIENEDESCR CHAR(1),
	EDITCLFDOCS CHAR(1),
	IDREPECM VARCHAR(32),
	IDARCHIVO VARCHAR(32),
	NIVELACCESO SMALLINT NOT NULL,
	IDLCA VARCHAR(32),
	SUBTIPO SMALLINT DEFAULT 0 NOT NULL,
	ORDPOS 		 VARCHAR(32)
);

CREATE TABLE ASGFENTPRODUCTORA (
	CODIGO VARCHAR(32) NOT NULL,
	TIPO SMALLINT NOT NULL,
	SISTGESTORORG VARCHAR(32),
	IDENTPRODSGORG VARCHAR(64),
	IDDESCR VARCHAR(32) NOT NULL
);

CREATE TABLE ASGFESTRUCTJNIVCF (
	IDNIVELPADRE VARCHAR(32) NOT NULL,
	TIPONIVELPADRE SMALLINT NOT NULL,
	IDNIVELHIJO VARCHAR(32) NOT NULL,
	TIPONIVELHIJO SMALLINT NOT NULL
);

CREATE TABLE ASGFFONDO (
	CODPAIS VARCHAR(16) NOT NULL,
	CODCOMUNIDAD VARCHAR(16) NOT NULL,
	CODARCHIVO VARCHAR(32) NOT NULL,
	TIPO SMALLINT NOT NULL,
	IDENTPRODUCTORA VARCHAR(32) NOT NULL,
	IDELEMENTOCF VARCHAR(32) NOT NULL
);

CREATE TABLE ASGFNIVELCF (
	ID VARCHAR(32) NOT NULL,
	NOMBRE VARCHAR(64) NOT NULL,
	TIPO SMALLINT NOT NULL,
	IDFICHADESCRPREF VARCHAR(32),
	IDFICHACLFDOCPREF VARCHAR(32),
	IDREPECMPREF VARCHAR(32),
	SUBTIPO SMALLINT DEFAULT 0 NOT NULL
);

CREATE TABLE ASGFORGPROD (
	IDDESCR VARCHAR(32) NOT NULL,
	IDORG VARCHAR(32) NOT NULL,
	IDENTPRODINST VARCHAR(32) NOT NULL
);

CREATE TABLE ASGFPRODSERIE (
	IDSERIE VARCHAR(32) NOT NULL,
	IDPROCEDIMIENTO VARCHAR(32),
	IDPRODUCTOR VARCHAR(32) NOT NULL,
	TIPOPRODUCTOR SMALLINT NOT NULL,
	FECHAINICIO TIMESTAMP NOT NULL,
	FECHAFINAL TIMESTAMP,
	IDLCAPREF VARCHAR(32),
	MARCAS INTEGER DEFAULT 0
);

CREATE TABLE ASGFSERIE (
	IDELEMENTOCF VARCHAR(32) NOT NULL,
	IDFONDO VARCHAR(32) NOT NULL,
	ESTADOSERIE SMALLINT NOT NULL,
	FECHAESTADO TIMESTAMP NOT NULL,
	ULTIMOESTADOAUTORIZ SMALLINT,
	IDUSRGESTOR VARCHAR(32),
	FEXTREMAINICIAL TIMESTAMP,
	FEXTREMAFINAL TIMESTAMP,
	IDPROCEDIMIENTO VARCHAR(32),
	TIPOPROCEDIMIENTO SMALLINT,
	NUMUNIDADDOC INTEGER NOT NULL,
	NUMUINSTALACION INTEGER NOT NULL,
	VOLUMEN FLOAT NOT NULL,
	IDENTIFICACION CLOB,
	OBSERVACIONES VARCHAR(254),
	INFOFICHAUDOCREPECM CLOB
);

CREATE TABLE ASGFVOLUMENSERIE (
	IDSERIE VARCHAR(32) NOT NULL,
	TIPODOCUMENTAL VARCHAR(254) NOT NULL,
	CANTIDAD FLOAT NOT NULL
);

CREATE TABLE ASGFSOLICITUDSERIE (
	ID VARCHAR(32) NOT NULL,
	IDSERIE VARCHAR(32),
	ETIQUETASERIE VARCHAR(254) NOT NULL,
	TIPO SMALLINT NOT NULL,
	FECHA TIMESTAMP NOT NULL,
	INFO VARCHAR(2000),
	MOTIVOSOLICITUD VARCHAR(254),
	IDUSRSOLICITANTE VARCHAR(32) NOT NULL,
	ESTADO SMALLINT NOT NULL,
	FECHAESTADO TIMESTAMP NOT NULL,
	IDUSRGESTOR VARCHAR(32),
	MOTIVORECHAZO VARCHAR(254)
);

CREATE TABLE ASGFUNIDADDOC (
	IDELEMENTOCF VARCHAR(32),
	IDSERIE VARCHAR(32),
	IDFONDO VARCHAR(32),
	TIPODOCUMENTAL VARCHAR(254),
	NUMEXP VARCHAR(256),
	CODSISTPRODUCTOR VARCHAR(16),
	MARCASBLOQUEO INTEGER DEFAULT 0 NOT NULL
);

CREATE TABLE ASGFSNSEC (
	NUMSEC INTEGER NOT NULL
);

CREATE TABLE ASGFNUMSECVAL (
	IDSERIE VARCHAR(32) NOT NULL,
	NUMSEC INTEGER NOT NULL
);

CREATE TABLE ASGFNUMSECSEL (
	IDSERIE VARCHAR(32) NOT NULL,
	NUMSEC INTEGER NOT NULL
);

CREATE TABLE ASGFVALSERIE (
	ID VARCHAR(32) NOT NULL,
	IDSERIE VARCHAR(32) NOT NULL,
	TITULO VARCHAR(254) NOT NULL,
	ESTADO SMALLINT NOT NULL,
	FECHAESTADO TIMESTAMP NOT NULL,
	MOTIVORECHAZO VARCHAR(254),
	ORDSERIEPRIMERNIVEL SMALLINT,
	ORDSERIESEGNIVEL SMALLINT,
	SERIESPRECEDENTES CLOB,
	SERIESRELACIONADAS CLOB,
	DOCSRECOPILATORIOS VARCHAR(1024),
	VALORADMTIPO SMALLINT,
	VALORADMVIG SMALLINT,
	VALORADMJUST VARCHAR(1024),
	VALORLEGALTIPO SMALLINT,
	VALORLEGALVIG SMALLINT,
	VALORLEGALJUST VARCHAR(1024),
	VALORINFTIPO SMALLINT,
	VALORINFJUST VARCHAR(1024),
	VALORCIENTTIPO SMALLINT,
	VALORCIENTJUST VARCHAR(1024),
	VALORTECNTIPO SMALLINT,
	VALORTECNJUST VARCHAR(1024),
	VALORCULTTIPO SMALLINT,
	VALORCULTJUST VARCHAR(1024),
	TECNICAMUESTREO SMALLINT,
	NUMREGISTRO INTEGER,
	FVALIDACION TIMESTAMP,
	FEVALUACION TIMESTAMP,
	FDICTAMEN TIMESTAMP,
	VALORDICTAMEN SMALLINT,
	VALORDICTJUST CLOB,
	FRESOLDICTAMEN TIMESTAMP,
	BOLETINDICTAMEN VARCHAR(128),
	FBOLETINDICTAMEN TIMESTAMP,
	IDUSRGESTORSERIE VARCHAR(32) NOT NULL,
	REGIMENACCESOTIPO SMALLINT NOT NULL,
	REGIMENACCESOJUST VARCHAR(1024),
	REGIMENACCESOVIG SMALLINT,
	INFOSERIE CLOB,
	REGIMENACCESOSUBTIPO SMALLINT
);

CREATE TABLE ASGFELIMSERIE (
	ID VARCHAR(32) NOT NULL,
	IDVALORACION VARCHAR(32) NOT NULL,
	IDSERIE VARCHAR(32) NOT NULL,
	TITULO VARCHAR(254) NOT NULL,
	ESTADO INTEGER NOT NULL,
	FECHAESTADO TIMESTAMP NOT NULL,
	MOTIVORECHAZO VARCHAR(254),
	NOTAS VARCHAR(1024),
	MAXANOSVIGENCIA INTEGER NOT NULL,
	CONDBUSQANADIDA VARCHAR(1024),
	TIPOELIMINACION INTEGER NOT NULL,
	SELECCIONUDOC VARCHAR(1) NOT NULL,
	FEJECUCION TIMESTAMP,
	FAPROBACION TIMESTAMP,
	FDESTRUCCION TIMESTAMP,
	FFINALIZACION TIMESTAMP,
	IDARCHIVO VARCHAR(32) NOT NULL
);

CREATE TABLE ASGFELIMUDOCCONS (
	IDELIMINACION VARCHAR(32) NOT NULL,
	IDUDOC VARCHAR(32) NOT NULL,
	SIGNATURAUDOC VARCHAR(128) NOT NULL,
	TITULOUDOC VARCHAR(1024) NOT NULL,
	FECHAINIUDOC TIMESTAMP,
	FECHAFINUDOC TIMESTAMP
);

CREATE TABLE ASGFELIMSELUDOC(
    IDELIMINACION VARCHAR(32) NOT NULL,
    IDUDOC VARCHAR(32) NOT NULL,
    IDFONDO VARCHAR(32),
    CODREFERENCIA VARCHAR(1024),
    CODIGO VARCHAR(128),
    SIGNATURAUDOC VARCHAR(32),
    EXPEDIENTEUDOC VARCHAR(256),
    TITULO VARCHAR(1024),
    CODSISTPRODUCTOR VARCHAR(16),
    TIPODOCUMENTAL VARCHAR(254),
    IDUINSTALACION VARCHAR(32),
    UBICACION VARCHAR(512),
    FECHAINIUDOC TIMESTAMP,
    FECHAFINUDOC TIMESTAMP,
    NUMERO VARCHAR(10)
);

CREATE TABLE ASGFHISTUDOC (
	IDELIMINACION VARCHAR(32) NOT NULL,
	IDUDOC VARCHAR(32) NOT NULL,
	SIGNATURAUDOC VARCHAR(128) NOT NULL,
	TITULOUDOC VARCHAR(1024) NOT NULL,
	NUMEXPUDOC VARCHAR(256),
	CODREFUDOC VARCHAR(1024) NOT NULL,
	DATOSDESCRUDOC CLOB
);

CREATE TABLE ASGPCONSULTA (
	ID VARCHAR(32) NOT NULL,
	ANO VARCHAR(4) NOT NULL,
	ORDEN INTEGER NOT NULL,
	TIPOENTCONSULTORA SMALLINT NOT NULL,
	NORGCONSULTOR VARCHAR(254),
	NUSRCONSULTOR VARCHAR(254) NOT NULL,
	FINICIALRESERVA TIMESTAMP,
	FENTREGA TIMESTAMP,
	FMAXFINCONSULTA TIMESTAMP,
	ESTADO SMALLINT NOT NULL,
	FESTADO TIMESTAMP NOT NULL,
	MOTIVO VARCHAR(254),
	IDARCHIVO VARCHAR(32) NOT NULL,
	IDUSRSOLICITANTE VARCHAR(32) NOT NULL,
	INFORMACION VARCHAR(1024),
	TEMA VARCHAR(254),
	TIPO SMALLINT NOT NULL,
	TIPOENTREGA VARCHAR(254),
	DATOSAUTORIZADO VARCHAR(254),
	DATOSSOLICITANTE VARCHAR(512),
	OBSERVACIONES VARCHAR(254),
    IDMOTIVO VARCHAR(32),
    IDUSRCSALA VARCHAR(32)
);

CREATE TABLE ASGPMTVCONSULTA (
    ID 			VARCHAR(32) NOT NULL,
	TIPOENTIDAD SMALLINT NOT NULL,
	MOTIVO VARCHAR(254) NOT NULL,
	TIPOCONSULTA SMALLINT NOT NULL,
    VISIBILIDAD SMALLINT
);

CREATE TABLE ASGPMTVRECHAZO (
    ID 			 VARCHAR(32) NOT NULL,
	TIPOSOLICITUD SMALLINT NOT NULL,
	MOTIVO VARCHAR(254) NOT NULL
);

CREATE TABLE ASGPPRESTAMO (
	ID VARCHAR(32) NOT NULL,
	ANO VARCHAR(4) NOT NULL,
	ORDEN INTEGER NOT NULL,
	NORGSOLICITANTE VARCHAR(254) NOT NULL,
	NUSRSOLICITANTE VARCHAR(254) NOT NULL,
	IDUSRSOLICITANTE VARCHAR(32),
	FINICIALRESERVA TIMESTAMP,
	IDORGSOLICITANTE VARCHAR(32),
	FENTREGA TIMESTAMP,
	FMAXFINPRESTAMO TIMESTAMP,
	ESTADO SMALLINT NOT NULL,
	FESTADO TIMESTAMP NOT NULL,
	IDARCHIVO VARCHAR(32) NOT NULL,
	IDUSRGESTOR VARCHAR(32) NOT NULL,
	NUMRECLAMACIONES INTEGER NOT NULL,
	FRECLAMACION1 TIMESTAMP,
	FRECLAMACION2 TIMESTAMP,
	TIPOENTREGA VARCHAR(254),
	DATOSAUTORIZADO VARCHAR(254),
	DATOSSOLICITANTE VARCHAR(512),
	OBSERVACIONES VARCHAR(254),
    IDMOTIVO VARCHAR(32)
);

CREATE TABLE ASGPMTVPRESTAMO (
	ID            VARCHAR(32) NOT NULL,
	TIPOUSUARIO   SMALLINT    NOT NULL,
	MOTIVO        VARCHAR (254)  NOT NULL,
	VISIBILIDAD   SMALLINT
);

CREATE TABLE ASGPPRORROGA (
	ID VARCHAR(32) NOT NULL,
	IDPRESTAMO VARCHAR(32) NOT NULL,
	ESTADO SMALLINT NOT NULL,
	FESTADO TIMESTAMP NOT NULL,
	MOTIVORECHAZO VARCHAR(254),
    IDMOTIVO VARCHAR(32),
    FECHAFINPRORROGA TIMESTAMP,
    MOTIVOPRORROGA VARCHAR(512)
);

CREATE TABLE ASGPSNSEC (
	TIPO INTEGER NOT NULL,
	ANO VARCHAR(4) NOT NULL,
	NUMSEC INTEGER NOT NULL
);

CREATE TABLE ASGPSOLICITUDUDOC (
	IDSOLICITUD VARCHAR(32) NOT NULL,
	TIPOSOLICITUD SMALLINT NOT NULL,
	IDUDOC VARCHAR(32) NOT NULL,
	TITULO VARCHAR(1024) NOT NULL,
	SIGNATURAUDOC VARCHAR(254) NOT NULL,
	EXPEDIENTEUDOC VARCHAR(128),
	IDENTIFICACION VARCHAR(254) NOT NULL,
	ESTADO SMALLINT NOT NULL,
	FESTADO TIMESTAMP NOT NULL,
	FINICIALUSO TIMESTAMP,
	FFINALUSO TIMESTAMP,
	MOTIVORECHAZO VARCHAR(254),
	INFORMACION VARCHAR(1024),
	IDFONDO VARCHAR(32) NOT NULL,
    IDMOTIVO VARCHAR(32)
);

CREATE TABLE ASGPTEMA (
	IDUSUARIO VARCHAR(32),
	TIPOENTIDAD SMALLINT NOT NULL,
	TEMA VARCHAR(254) NOT NULL,
	IDUSRCSALA VARCHAR(32)
);

CREATE TABLE ASGTDETALLEPREV (
	ID VARCHAR(32) NOT NULL,
	IDPREVISION VARCHAR(32) NOT NULL,
	ORDEN SMALLINT NOT NULL,
	CODSISTPRODUCTOR VARCHAR(16),
	NOMBRESISTPRODUCTOR VARCHAR(64),
	IDPROCEDIMIENTO VARCHAR(32),
	IDSERIEDESTINO VARCHAR(32) NOT NULL,
	ANOINIUDOC CHAR(4) NOT NULL,
	ANOFINUDOC CHAR(4) NOT NULL,
	NUMUINSTALACION SMALLINT NOT NULL,
	IDFORMATOUI VARCHAR(32) NOT NULL,
	NUMRENTREGA SMALLINT,
	CERRADO CHAR(1) NOT NULL,
	OBSERVACIONES VARCHAR(254),
	IDSERIEORIGEN VARCHAR(32),
	INFO VARCHAR(1024)
);

CREATE TABLE ASGTPREVISION (
	ID CHAR(32) NOT NULL,
	TIPOTRANSFERENCIA INTEGER NOT NULL,
	TIPOPREVISION INTEGER NOT NULL,
	IDORGREMITENTE VARCHAR(32) NOT NULL,
	ANO VARCHAR(4) NOT NULL,
	ORDEN INTEGER NOT NULL,
	IDFONDODESTINO VARCHAR(32) NOT NULL,
	FECHAINITRANS TIMESTAMP,
	FECHAFINTRANS TIMESTAMP,
	NUMUINSTALACION SMALLINT,
	ESTADO SMALLINT NOT NULL,
	FECHAESTADO TIMESTAMP NOT NULL,
	IDARCHIVORECEPTOR VARCHAR(32) NOT NULL,
	IDUSRGESTOR VARCHAR(32) NOT NULL,
	MOTIVORECHAZO VARCHAR(254),
	OBSERVACIONES VARCHAR(254),
	IDARCHIVOREMITENTE VARCHAR(32)
);

CREATE TABLE ASGTRENTREGA (
	ID VARCHAR(32) NOT NULL,
	TIPOTRANSFERENCIA SMALLINT NOT NULL,
	IDPREVISION VARCHAR(32) NOT NULL,
	IDDETPREVISION VARCHAR(32),
	IDORGANOREMITENTE VARCHAR(32) NOT NULL,
	ANO CHAR(4) NOT NULL,
	ORDEN INTEGER NOT NULL,
	IDFONDODESTINO VARCHAR(32) NOT NULL,
	CODSISTPRODUCTOR VARCHAR(16),
	NOMBRESISTPRODUCTOR VARCHAR(64),
	IDPROCEDIMIENTO VARCHAR(32),
	IDFORMATOUI VARCHAR(32) NOT NULL,
	TIPODOCUMENTAL VARCHAR(254),
	ESTADO SMALLINT NOT NULL,
	FECHAESTADO TIMESTAMP NOT NULL,
	IDARCHIVORECEPTOR VARCHAR(32) NOT NULL,
	FECHARECEPCION TIMESTAMP,
	IDUSRGESTORREM VARCHAR(32) NOT NULL,
	IDUSRGESTORARCHIVOREC VARCHAR(32),
	IDDEPOSITO VARCHAR(32),
	RESERVADEPOSITO SMALLINT,
	UIENDEPOSITO CHAR(1),
	DEVOLUCIONUI CHAR(1),
	REGENTRADA VARCHAR(64),
	OBSERVACIONES VARCHAR(2048),
	IDSERIEDESTINO VARCHAR(32) NOT NULL,
	IDELMTODRESERVA VARCHAR(32),
	IDDESCRORGPRODUCTOR VARCHAR(32),
	IDTIPOELMTODRESERVA VARCHAR(32),
	IDARCHIVOREMITENTE VARCHAR(32),
	IDFONDOORIGEN VARCHAR(32),
	IDSERIEORIGEN VARCHAR(32),
	CORRECCIONENARCHIVO CHAR(1) DEFAULT 'N' NOT NULL,
	IDNIVELDOCUMENTAL VARCHAR(32) NOT NULL,
	SINDOCSFISICOS CHAR(1),
	IDFICHA VARCHAR(32),
	CONREENCAJADO CHAR(1) DEFAULT 'N' NOT NULL,
	IDFORMATORE	VARCHAR(32)
);

CREATE TABLE ASGTSNSEC (
	TIPO SMALLINT NOT NULL,
	ANO CHAR(4) NOT NULL,
	NUMSEC INTEGER NOT NULL,
	IDARCHIVO VARCHAR(32) NOT NULL
);

CREATE TABLE ASGTSNSECUI (
	NUMSEC INTEGER NOT NULL,
	IDARCHIVO VARCHAR(32)
);

CREATE TABLE ASGTSNSECUDOC (
	NUMSEC INTEGER NOT NULL
);

CREATE TABLE ASGTUDOCENUI (
	IDRELENTREGA CHAR(32) NOT NULL,
	IDUNIDADDOC CHAR(32) NOT NULL,
	IDUINSTALACIONRE CHAR(32) NOT NULL,
	POSUDOCENUI SMALLINT NOT NULL,
	UDOCCOMPLETA CHAR(1) NOT NULL,
	ESTADOCOTEJO SMALLINT NOT NULL,
	NOTASCOTEJO VARCHAR(254),
	SIGNATURAUDOC VARCHAR(32),
	NUMPARTEUDOC SMALLINT NOT NULL,
	DESCCONTENIDO VARCHAR(254)
);

CREATE TABLE ASGTUINSTALACIONRE (
	ID VARCHAR(32) NOT NULL,
	IDRELENTREGA VARCHAR(32) NOT NULL,
	ORDEN SMALLINT NOT NULL,
	IDFORMATO VARCHAR(32) NOT NULL,
	SIGNATURAUI VARCHAR(16),
	ESTADOCOTEJO SMALLINT NOT NULL,
	NOTASCOTEJO VARCHAR(254),
	DEVOLUCION CHAR(1) NOT NULL,
	IDUIUBICADA VARCHAR(32)
);

CREATE TABLE ASGTUINSTALACIONREEA (
	IDUIDEPOSITO VARCHAR(32) NOT NULL,
	IDRELENTREGA VARCHAR(32) NOT NULL,
	ORDEN SMALLINT NOT NULL,
	IDFORMATO VARCHAR(32) NOT NULL,
	ESTADOCOTEJO SMALLINT NOT NULL,
	NOTASCOTEJO VARCHAR(254),
	DEVOLUCION CHAR(1) NOT NULL,
	PATHDEPOSITOORIGEN VARCHAR(512) NOT NULL,
	SIGNATURAUI VARCHAR(16),
	IDELEMAPADREHUECOORIGEN VARCHAR(32) NOT NULL,
	NUMORDENHUECOORIGEN SMALLINT NOT NULL,
	SIGNATURAUIORIGEN VARCHAR(16)
);

CREATE TABLE ASGTUNIDADDOCRE (
	ID VARCHAR(32) NOT NULL,
	IDRELENTREGA VARCHAR(32) NOT NULL,
	TIPOTRANSFERENCIA SMALLINT NOT NULL,
	NUMEXP VARCHAR(256),
	CODSISTPRODUCTOR VARCHAR(16),
	FECHAEXTINI TIMESTAMP,
	FECHAEXTFIN TIMESTAMP,
	ASUNTO VARCHAR(1024),
	VALIDADA CHAR(1) NOT NULL,
	SINDOCSFISICOS CHAR(1) NOT NULL,
	INFO CLOB NOT NULL,
	NUMPARTES SMALLINT,
	ORDEN INTEGER,
	MARCASBLOQUEO INTEGER DEFAULT 0 NOT NULL
);

CREATE TABLE ASGTUDOCSDF (
	ID VARCHAR(32) NOT NULL,
	IDRELENTREGA VARCHAR(32) NOT NULL,
	POSICION SMALLINT NOT NULL,
	ESTADOCOTEJO SMALLINT NOT NULL,
	NOTASCOTEJO VARCHAR(254)
);

CREATE TABLE ASGFUDOCSDF (
	IDELEMENTOCF VARCHAR(32) NOT NULL,
	MARCASBLOQUEO SMALLINT DEFAULT 0 NOT NULL
);

CREATE TABLE ASGTMAPDESCRUDOC (
	IDFICHA VARCHAR(32) NOT NULL,
	INFO CLOB NOT NULL
);

CREATE TABLE ITDGUIDGEN (
	CNODE VARCHAR(12),
	CLPID INTEGER
);

CREATE TABLE AGINFOSISTEMA (
	AUTID INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1, NO CACHE),
	NOMBRE VARCHAR(32) NOT NULL,
	VALOR CLOB NOT NULL,
	FECHAACTUALIZACION TIMESTAMP NOT NULL
);

CREATE TABLE ADVCFECHAUDOCRE (
	IDUDOCRE VARCHAR(32) NOT NULL,
	IDCAMPO VARCHAR(32) NOT NULL,
	VALOR VARCHAR(64),
	FECHAINI TIMESTAMP,
	FECHAFIN TIMESTAMP,
	FORMATO VARCHAR(16),
	SEP VARCHAR(1),
	CALIFICADOR VARCHAR(32),
	ORDEN INTEGER NOT NULL,
	TIPOUDOC SMALLINT DEFAULT 1 NOT NULL
);

CREATE TABLE ADVCNUMUDOCRE (
	IDUDOCRE VARCHAR(32) NOT NULL,
	IDCAMPO VARCHAR(32) NOT NULL,
	VALOR DECIMAL(8,2) NOT NULL,
	ORDEN INTEGER NOT NULL,
	TIPOMEDIDA INTEGER,
	UNIDADMEDIDA VARCHAR(16),
	TIPOUDOC SMALLINT DEFAULT 1 NOT NULL
);

CREATE TABLE ADVCREFUDOCRE (
	IDUDOCRE VARCHAR(32) NOT NULL,
	IDCAMPO VARCHAR(32) NOT NULL,
	TIPOOBJREF INTEGER NOT NULL,
	IDOBJREF VARCHAR(32) NOT NULL,
	ORDEN INTEGER NOT NULL,
	TIPOUDOC SMALLINT DEFAULT 1 NOT NULL
);

CREATE TABLE ADVCTEXTLUDOCRE (
	IDUDOCRE VARCHAR(32) NOT NULL,
	IDCAMPO VARCHAR(32) NOT NULL,
	VALOR CLOB NOT NULL,
	ORDEN INTEGER NOT NULL,
	TIPOUDOC SMALLINT DEFAULT 1 NOT NULL
);

CREATE TABLE ADVCTEXTUDOCRE (
	IDUDOCRE VARCHAR(32) NOT NULL,
	IDCAMPO VARCHAR(32) NOT NULL,
	VALOR VARCHAR(254) NOT NULL,
	ORDEN INTEGER NOT NULL,
	TIPOUDOC SMALLINT DEFAULT 1 NOT NULL
);

CREATE TABLE ASGFDIVISIONFS (
	IDFS VARCHAR(32) NOT NULL,
	IDFICHA VARCHAR(32),
	IDNIVELDOCUMENTAL VARCHAR(32) NOT NULL,
	IDUSRGESTOR VARCHAR(32) NOT NULL,
	ESTADO SMALLINT NOT NULL,
	INFO CLOB,
	FECHAESTADO TIMESTAMP NOT NULL
);

CREATE TABLE ASGFUDOCENDIVISIONFS (
	IDFS VARCHAR(32) NOT NULL,
	IDUDOC VARCHAR(32) NOT NULL,
	NUMEXP VARCHAR(256),
	FECHAEXTINI TIMESTAMP NOT NULL,
	FECHAEXTFIN TIMESTAMP NOT NULL,
	ASUNTO VARCHAR(1024) NOT NULL,
	ORDEN INTEGER NOT NULL,
	VALIDADA VARCHAR(1) NOT NULL,
	INFO CLOB
);

CREATE TABLE ASGFPZTRVALSERIE(
	IDVALSERIE VARCHAR(32) NOT NULL,
	PLAZO 			SMALLINT  NOT NULL,
	IDNIVELARCHORG 	VARCHAR(32) NOT NULL,
	IDNIVELARCHDST 	VARCHAR(32) NOT NULL,
	ORDEN 			SMALLINT NOT NULL
);

CREATE TABLE ASGDSIGNUMHUECO (
  IDARCHIVO 	VARCHAR(32) NOT NULL,
  SIGNUMHUECO  	BIGINT NOT NULL
);

CREATE TABLE ASGPREVDOCUDOC (
  IDREVDOC			VARCHAR (32)  NOT NULL,
  IDUDOC          		VARCHAR (32)  NOT NULL,
  TITULO          		VARCHAR (1024)  NOT NULL,
  SIGNATURAUDOC   	VARCHAR (254)  NOT NULL,
  EXPEDIENTEUDOC  	VARCHAR (128),
  ESTADO          		SMALLINT    NOT NULL,
  FESTADO         		TIMESTAMP          NOT NULL,
  OBSERVACIONES        	VARCHAR (1024),
  MOTIVORECHAZO 	VARCHAR (254),
  IDUSRGESTOR        	VARCHAR (32) NOT NULL,
  IDALTA			VARCHAR (32)
);

CREATE TABLE ASGSEDIFICIO (
  ID			VARCHAR (32) NOT NULL,
  NOMBRE        VARCHAR (64) NOT NULL,
  UBICACION     VARCHAR (254),
  IDARCHIVO   	VARCHAR (32) NOT NULL
);

CREATE TABLE ASGSSALA (
  ID	 	  	  		VARCHAR (32) NOT NULL,
  NOMBRE          		VARCHAR (64) NOT NULL,
  DESCRIPCION     		VARCHAR (254),
  IDEDIFICIO   	  		VARCHAR (32) NOT NULL,
  EQUIPOINFORMATICO     CHAR (1) NOT NULL
);

CREATE TABLE ASGSMESA (
  ID	 	  	  VARCHAR (32) NOT NULL,
  CODIGO          VARCHAR (64) NOT NULL,
  NUMORDEN	  	  INTEGER NOT NULL,
  IDSALA   	  	  VARCHAR (32) NOT NULL,
  ESTADO          CHAR (1) NOT NULL,
  FECHAESTADO     TIMESTAMP NOT NULL,
  IDUSRCSALA	  VARCHAR (32)
);

CREATE TABLE ASGSUSRCSALA (
  ID	 	  	  			VARCHAR (32) NOT NULL,
  TIPODOCIDENTIFICACION     INTEGER NOT NULL,
  NUMDOCIDENTIFICACION		VARCHAR (32) NOT NULL,
  NOMBRE			  	    VARCHAR (64) NOT NULL,
  APELLIDOS			  	    VARCHAR (254) NOT NULL,
  NACIONALIDAD	   	  	    VARCHAR (64),
  TELEFONOS					VARCHAR (128),
  EMAIL						VARCHAR (128),
  DIRECCION		            VARCHAR (254),
  FECHAALTA				    TIMESTAMP NOT NULL,
  VIGENTE					CHAR (1) NOT NULL,
  IDSCAUSR					VARCHAR (32)
);

CREATE TABLE ASGSUSRCSARCH (
  IDUSRCSALA  	  VARCHAR (32) NOT NULL,
  IDARCHIVO       VARCHAR (64) NOT NULL
);

CREATE TABLE ASGSREGCSALA (
  ID 					VARCHAR (32) NOT NULL,
  IDUSRCSALA  	  		VARCHAR (32) NOT NULL,
  FENTRADA				TIMESTAMP NOT NULL,
  FSALIDA				TIMESTAMP,
  NUMDOCIDENTIFICACION	VARCHAR (32) NOT NULL,
  NOMBREAPELLIDOS		VARCHAR (254) NOT NULL,
  IDSCAUSR				VARCHAR (32),
  IDARCHIVO				VARCHAR (32) NOT NULL,
  MESAASIGNADA			VARCHAR (254) NOT NULL
);

CREATE TABLE ASGTUIREEACR (
  ID			  VARCHAR (32)  NOT NULL,
  IDRELENTREGA    VARCHAR (32)  NOT NULL,
  IDUIDEPOSITO    VARCHAR (32),
  SIGNATURAUI     VARCHAR (16),
  IDFORMATO       VARCHAR (32) NOT NULL,
  ORDEN			  SMALLINT NOT NULL,
  ESTADOCOTEJO 	  SMALLINT DEFAULT 1 NOT NULL,
  NOTASCOTEJO	  VARCHAR (256),
  DEVOLUCION	  CHAR (1) DEFAULT 'N',
  DESCRIPCION	  VARCHAR (256)
);

CREATE TABLE ASGTUDOCENUIREEACR (
  ID			  VARCHAR (32)  NOT NULL,
  IDUDOCORIGEN    VARCHAR (32)  NOT NULL,
  IDRELENTREGA    VARCHAR (32)  NOT NULL,
  IDUNIDADDOC     VARCHAR (32)  NOT NULL,
  IDUIREEACR	  VARCHAR (32),
  ASUNTO		  VARCHAR (1024) NOT NULL,
  UDOCCOMPLETA	  VARCHAR (1) NOT NULL,
  SIGNATURAUDOC   VARCHAR (32),
  POSUDOCENUI     SMALLINT,
  NUMEXP          VARCHAR (256),
  NUMPARTE        SMALLINT,
  FECHAINI        VARCHAR (64),
  FECHAFIN        VARCHAR (64),
  SIGNATURAUDOCORIGEN VARCHAR (32),
  DESCRIPCION	  VARCHAR (256)
);

CREATE TABLE ASGTUDOCREEACR (
  ID			  VARCHAR (32)  NOT NULL,
  IDRELENTREGA    VARCHAR (32)  NOT NULL,
  IDUNIDADDOC     VARCHAR (32)  NOT NULL,
  SIGNATURAUDOC	  VARCHAR (32)  NOT NULL,
  IDUIDEPOSITO	  VARCHAR (32)  NOT NULL,
  SIGNATURAUI	  VARCHAR (16)  NOT NULL
);

CREATE TABLE ASGFCTLGTBLTMP(
	ID INTEGER	NOT NULL,
	NOMBRETABLA VARCHAR(16) NOT NULL,
	IDUSUARIO VARCHAR(32),
	ESTADO INTEGER default 0,
	FECHA TIMESTAMP
);
