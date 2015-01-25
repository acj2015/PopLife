/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/


createDialog "suministros_dialog";


disableSerialization;
_ui = uiNamespace getVariable "suministros_dialog";
_nombre = _this select 0;

while {!isNil {abierto}} do {

	_can = ctrlText 9303;
	
	
	_precioAli = round ((1700 - aliJac) / 2);
	_precioAgu = round ((1700 - aguJac) / 2);
	_precioCom = round ((1700 - comJac) / 2);
	_precioMed = round ((1700 - medJac) / 2);
	
	if ((parseNumber _can) < 0) then {
		(_ui displayCtrl 9303) ctrlSetText format ["%1", 0];
	};
	
	(_ui displayCtrl 9300) ctrlSetText format ["%1", _nombre];

	
	if (_nombre == "alimento") then {	
		(_ui displayCtrl 9301) ctrlSetText format ["%1 / 1000",aliJac];	
		(_ui displayCtrl 9306) ctrlSetText format ["%1 E/u", _precioAli];
		(_ui displayCtrl 9302) ctrlSetText format ["%1 E/u", round (_precioAli / 2.5)];
		buttonSetAction [9304, "_nil = ['alimento', ctrlText 9303] execVM ""ica\recursos\compra.sqf"""];
		buttonSetAction [9305, "_nil = ['alimento', ctrlText 9303] execVM ""ica\recursos\vende.sqf"""];
		
	};

	if (_nombre == "agua") then {	
		(_ui displayCtrl 9301) ctrlSetText format ["%1 / 1000",aguJac];	
		(_ui displayCtrl 9306) ctrlSetText format ["%1 E/u", _precioAgu];
		(_ui displayCtrl 9302) ctrlSetText format ["%1 E/u", round (_precioAgu / 2.5)];
		buttonSetAction [9304, "_nil = ['agua', ctrlText 9303] execVM ""ica\recursos\compra.sqf"""];
		buttonSetAction [9305, "_nil = ['agua', ctrlText 9303] execVM ""ica\recursos\vende.sqf"""];
	};
	
	if (_nombre == "combustible") then {	
		(_ui displayCtrl 9301) ctrlSetText format ["%1 / 1000",comJac];	
		(_ui displayCtrl 9306) ctrlSetText format ["%1 E/u", _precioCom];
		(_ui displayCtrl 9302) ctrlSetText format ["%1 E/u", round (_precioCom / 2)];
		buttonSetAction [9304, "_nil = ['combustible', ctrlText 9303] execVM ""ica\recursos\compra.sqf"""];
		buttonSetAction [9305, "_nil = ['combustible', ctrlText 9303] execVM ""ica\recursos\vende.sqf"""];
	};
	
	if (_nombre == "medicamentos") then {	
		(_ui displayCtrl 9301) ctrlSetText format ["%1 / 1000",medJac];	
		(_ui displayCtrl 9306) ctrlSetText format ["%1 E/u", _precioMed];
		(_ui displayCtrl 9302) ctrlSetText format ["%1 E/u", round (_precioMed / 2)];
		buttonSetAction [9304, "_nil = ['medicamentos', ctrlText 9303] execVM ""ica\recursos\compra.sqf"""];
		buttonSetAction [9305, "_nil = ['medicamentos', ctrlText 9303] execVM ""ica\recursos\vende.sqf"""];
		
		(_ui displayCtrl 9304) ctrlEnable false;
	};
	
sleep 1;
};
