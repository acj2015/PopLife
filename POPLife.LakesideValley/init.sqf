// TFR Variables API
tf_no_auto_long_range_radio = true; 
tf_west_radio_code = "";
tf_east_radio_code = tf_west_radio_code;
tf_guer_radio_code = tf_west_radio_code;
tf_civ_radio_code = tf_west_radio_code;

// Server SetVariables
if (isServer) then {
	bank setvariable ["robbed",false,true];
	stash1 setvariable ["robbed",false,true];
	stash2 setvariable ["robbed",false,true];
	stash3 setvariable ["robbed",false,true];
	stash4 setvariable ["robbed",false,true];
};

enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};

// Funciones ica
ICARUK_fnc_addAction = {  
    private["_object","_script"];  
    _object = _this select 0;  
    _script = _this select 1;  

    _object addAction _script;  
};

MTP_fnc_numberToString = {
    _number = _this;
    _str = "";
    if (_number % 1 == 0) then
    {
        while { _number > 0 } do
        {
            _digit = floor (_number % 10);
            _str = (str _digit) + _str;
            _number = floor (_number / 10);
        };
    }
    else
    {
        _decimals = _number % 1;
        _decimals = _decimals * 1000000;
        _number = floor _number;
        _str = _number call MTP_fnc_numberToString;
        _str = _str + "." + str _decimals;
    };
    
    _str;
};

// Recursos y materiales
if (isServer) then {
	[] execVM "ica\recursos\initRecursos.sqf";
	[] execVM "ica\recursos\Recursos.sqf";
	[] execVM "ica\recursos\initMateriales.sqf";
	[] execVM "ica\recursos\Materiales.sqf";
	[] execVM "ica\recursos\corrector.sqf";
};


// Loteria
if (isServer) then {
	[] execVM "ica\loteria\activador.sqf";
	[] execVM "ica\loteria\mensajesLoteria.sqf";
};

// Banco
if (isServer) then {
	null = [] execVM "ica\banco\initBanco.sqf";
	null = [] execVM "ica\banco\nuevoCodigoBancario.sqf";
};

[] execVM "ica\banco\sumaDeposito.sqf";

// Electricidad
if (isServer) then {
	[] execVM "ica\electricidad\electricidad.sqf";
};

[] execVM "accionesIca.sqf";
	
//Announce system
call compile preprocessFileLineNumbers "core\functions\fn_announce.sqf";

MAC_fnc_switchMove = {
    private["_object","_anim"];
    _object = _this select 0;
    _anim = _this select 1;

    _object switchMove _anim;
    
};

enableSaving[false,false];

life_versionInfo = "ArmA 3 Life 0.3";
[] execVM "KRON_Strings.sqf";

StartProgress = true;

"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};