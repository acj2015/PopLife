
_que = _this select 0;
_can = parseNumber (_this select 1);

disableSerialization;
_ui = uiNamespace getVariable "suministros_dialog";

_preAli = round ((1700 - aliJac) / 2);
_preMed = round ((1700 - medJac) / 2);
_preAgu = round ((1700 - aguJac) / 2);
_preCom = round ((1700 - comJac) / 2);


if (_que == "alimento") exitWith {

	if (_can < 0) exitWith {hint "La cantidad debe ser mayor que 0"};
	if ((_can * 10) > aliJac) exitWith {hint "No hay tantos recursos."};
	if !(life_cash >= (_can * (_preAli / 2.5))) exitWith {hint "No tienes suficiente dinero"};

	[true,"raciondealimento",_can] call life_fnc_handleInv;

	aliJac = aliJac - (_can * 10);
	publicVariable "aliJac";

	hint format ["Has comprado %1 racion(es) de alimento por %2€. \n\nAhora tenemos %3/1000.", _can, ((_preAli / 2.5) * _can), aliJac];
	life_cash = life_cash - ((_can * (_preAli / 2.5)) * _can);
};

if (_que == "agua") exitWith {

	if (_can < 0) exitWith {hint "La cantidad debe ser mayor que 0"};
	if ((_can * 10) > aguJac) exitWith {hint "No hay tantos recursos."};
	if !(life_cash >= (_can * (_preAgu / 2.5))) exitWith {hint "No tienes suficiente dinero"};

	[true,"water",_can] call life_fnc_handleInv;

	aguJac = aguJac - (_can * 10);
	publicVariable "aguJac";

	hint format ["Has comprado %1 botella(s) de agua por %2€. \n\nAhora tenemos %3/1000.", _can, ((_preAgu / 2.5) * _can), aguJac];
	life_cash = life_cash - ((_preAgu / 2.5) * _can);
};

if (_que == "combustible") exitWith {

	if (_can < 0) exitWith {hint "La cantidad debe ser mayor que 0"};
	if ((_can * 10) > comJac) exitWith {hint "No hay tantos recursos."};
	if !(life_cash >= (_can * _preCom)) exitWith {hint "No tienes suficiente dinero"};

	[true,"fuelF",_can] call life_fnc_handleInv;

	comJac = comJac - (_can * 10);
	publicVariable "comJac";

	hint format ["Has comprado %1 garrafa(s) de combustible por %2€. \n\nAhora tenemos %3/1000.", _can, (_preCom * _can), comJac];
	life_cash = life_cash - (_preCom * _can);
};

if (_que == "medicamentos") exitWith {
	
};