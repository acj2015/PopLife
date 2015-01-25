/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/


createDialog "suministros_dialog";


disableSerialization;
_ui = uiNamespace getVariable "suministros_dialog";

while {!isNil {abierto}} do {

	_can = ctrlText 9303;
	_nombre = _this select 0;
	
	_precioAli = round ((1700 - aliJac) / 2);
	_precioAgu = round ((1700 - aguJac) / 2);
	_precioCom = round ((1700 - comJac) / 2);
	
	if ((parseNumber _can) < 0) then {
		(_ui displayCtrl 9303) ctrlSetText format ["%1", 0];
	};
	
	(_ui displayCtrl 9300) ctrlSetText format ["%1", _nombre];
	
	if (_nombre == "alimento") then {	
		(_ui displayCtrl 9301) ctrlSetText format ["%1 / 1000",aliJac];	
		(_ui displayCtrl 9306) ctrlSetText format ["%1 E/u", _precioAli];
		(_ui displayCtrl 9302) ctrlSetText format ["%1 E/u", round (_precioAli / 3)];
		buttonSetAction [9304, "_nil = [ctrlText 9303] execVM ""ica\recursos\compraalimento.sqf"""];
		buttonSetAction [9305, "_nil = [ctrlText 9303] execVM ""ica\recursos\vendealimento.sqf"""];
		
	};

	if (_nombre == "agua") then {	
		(_ui displayCtrl 9301) ctrlSetText format ["%1 / 1000",aguJac];	
		(_ui displayCtrl 9306) ctrlSetText format ["%1 E/u", _precioAgu];
		(_ui displayCtrl 9302) ctrlSetText format ["%1 E/u", round (_precioAgu / 3)];
		buttonSetAction [9304, "_nil = [ctrlText 9303] execVM ""ica\recursos\compraAgua.sqf"""];
		buttonSetAction [9305, "_nil = [ctrlText 9303] execVM ""ica\recursos\vendeAgua.sqf"""];
	};
	
	if (_nombre == "combustible") then {	
		(_ui displayCtrl 9301) ctrlSetText format ["%1 / 1000",comJac];	
		(_ui displayCtrl 9306) ctrlSetText format ["%1 E/u", _precioCom];
		(_ui displayCtrl 9302) ctrlSetText format ["%1 E/u", round (_precioCom / 2)];
		buttonSetAction [9304, "_nil = [ctrlText 9303] execVM ""ica\recursos\compraCombustible.sqf"""];
		buttonSetAction [9305, "_nil = [ctrlText 9303] execVM ""ica\recursos\vendeCombustible.sqf"""];
	};
	
sleep 1;
};
