CREATE TABLE IVOLACTDIR (
  VOLID     NUMBER (10)   NOT NULL,
  ACTDIR    NUMBER (10)   NOT NULL,
  NUMFILES  NUMBER (10)   NOT NULL ) ;


CREATE TABLE IVOLARCHLIST (
  ARCHID  NUMBER (10)   NOT NULL,
  LISTID  NUMBER (10)   NOT NULL ) ;


CREATE TABLE IVOLFILEFTS (
  ID         NUMBER (10)   NOT NULL,
  EXTID1     NUMBER (10)   NOT NULL,
  EXTID2     NUMBER (10)   NOT NULL,
  EXTID3     NUMBER (10)   NOT NULL,
  EXTID4     NUMBER (10)   NOT NULL,
  PATH       VARCHAR2 (254)  NOT NULL,
  TIMESTAMP  DATE          NOT NULL ) ;

CREATE TABLE IVOLFILEHDR (
  ID         NUMBER (10)   NOT NULL,
  VOLID      NUMBER (10)   NOT NULL,
  LOC        VARCHAR2 (254)  NOT NULL,
  EXTID1     NUMBER (10)   NOT NULL,
  EXTID2     NUMBER (10)   NOT NULL,
  EXTID3     NUMBER (10)   NOT NULL,
  FLAGS      NUMBER (10)   NOT NULL,
  STAT       NUMBER (10)   NOT NULL,
  TIMESTAMP  DATE,
  FILESIZE   NUMBER (20,4) NOT NULL ) ;


CREATE TABLE IVOLLISTHDR (
  ID        NUMBER (10)   NOT NULL,
  NAME      VARCHAR2 (32)  NOT NULL,
  FLAGS     NUMBER (10)   NOT NULL,
  STAT      NUMBER (10)   NOT NULL,
  REMARKS   VARCHAR2 (254),
  CRTRID    NUMBER (10)   NOT NULL,
  CRTNDATE  DATE          NOT NULL,
  UPDRID    NUMBER (10),
  UPDDATE   DATE ) ;


CREATE TABLE IVOLLISTVOL (
  LISTID     NUMBER (10)   NOT NULL,
  VOLID      NUMBER (10)   NOT NULL,
  SORTORDER  NUMBER (10)   NOT NULL ) ;


CREATE TABLE IVOLNEXTID (
  TYPE  NUMBER (10)   NOT NULL,
  ID    NUMBER (10)   NOT NULL ) ;


CREATE TABLE IVOLREPHDR (
  ID        NUMBER (10)   NOT NULL,
  NAME      VARCHAR2 (32)  NOT NULL,
  TYPE      NUMBER (10)   NOT NULL,
  INFO      CLOB          NOT NULL,
  STAT      NUMBER (10)   NOT NULL,
  REMARKS   VARCHAR2 (254),
  CRTRID    NUMBER (10)   NOT NULL,
  CRTNDATE  DATE          NOT NULL,
  UPDRID    NUMBER (10),
  UPDDATE   DATE ) ;


CREATE TABLE IVOLVOLHDR (
  ID        NUMBER (10)   NOT NULL,
  NAME      VARCHAR2 (32)  NOT NULL,
  REPID     NUMBER (10)   NOT NULL,
  INFO      CLOB          NOT NULL,
  ITEMP     NUMBER (10)   NOT NULL,
  ACTSIZE   VARCHAR2 (32)  NOT NULL,
  NUMFILES  NUMBER (10)   NOT NULL,
  STAT      NUMBER (10)   NOT NULL,
  REMARKS   VARCHAR2 (254),
  CRTRID    NUMBER (10)   NOT NULL,
  CRTNDATE  DATE          NOT NULL,
  UPDRID    NUMBER (10),
  UPDDATE   DATE ) ;

CREATE TABLE IVOLVOLTBL (
  LOCID    VARCHAR2 (32)  NOT NULL,
  EXTID1   NUMBER (10)   NOT NULL,
  EXTID2   NUMBER (10)   NOT NULL,
  EXTID3   NUMBER (10)   NOT NULL,
  EXTID4   NUMBER (10)   NOT NULL,
  FILEEXT  VARCHAR2 (10)  NOT NULL,
  FILEVAL  LONG RAW      NOT NULL ) ;
