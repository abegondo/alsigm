// Permisos que tiene el usuario sobre un determinado libro
// las constantes indican la posicion del bit que controla el permiso
var POS_PERM_CONSULTA   = 0;
var POS_PERM_CREAR      = 1;
var POS_PERM_MODIFICAR  = 2;

// Constantes para definir los interesados
var FLD_INTERESTED_FLDID = "9";
var MAX_LENGTH_INTER     = 80;

// Campo destino
var FLD_DEST_FLDID = "8";

// Campo origen
var FLD_ORIG_FLDID = "7";

// Campo esatdo
var FLD_STATE_FLDID = "6";

// Distribucion rechazada
var IDS_DISTR_RECH = "4";

var ARCHIVE_EREG = "1";
var ARCHIVE_SREG = "2"

var VAL_TP_ORIGREG = "7";
var VAL_TP_TRANSPORT = "2";
var VAL_TP_TYPEMATTER = "3";
var VAL_TP_UNITS = "1";