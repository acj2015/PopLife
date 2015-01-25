
_que = _this select 0;
_can = parseNumber (_this select 1);

_preAli = round ((1700 - aliJac) / 2);
_preMed = round ((1700 - medJac) / 2);
_preAgu = round ((1700 - aguJac) / 2);
_preCom = round ((1700 - comJac) / 2);


if (_que == "alimento") exitWith {

	if (_can < 0) exitWith {hint "La cantidad debe ser mayor que 0"};
	if (_can > life_inv_cajadealimento) exitWith {hint "No tienes tantas cajas de comida."};

	[false,"cajadealimento",_can] call life_fnc_handleInv;

	aliJac = aliJac + (_can * 5);
	publicVariable "aliJac";

	hint format ["Has vendido %1 caja(s) de alimento por %2€. \n\nAhora tenemos %3/1000.", _can, (_preAli * _can), aliJac];
	life_cash = life_cash + (_preAli * _can);
};

if (_que == "agua") exitWith {

	if (_can < 0) exitWith {hint "La cantidad debe ser mayor que 0"};
	if (_can > life_inv_paquetedebotellas) exitWith {hint "No tienes tantas cajas de comida."};

	[false,"paquetedebotellas",_can] call life_fnc_handleInv;

	aguJac = aguJac + (_can * 5);
	publicVariable "aguJac";

	hint format ["Has vendido %1 paquete(s) de botellas por %2€. \n\nAhora tenemos %3/1000.", _can, (_preAgu * _can), aguJac];
	life_cash = life_cash + (_preAgu * _can);
};

if (_que == "combustible") exitWith {

	if (_can < 0) exitWith {hint "La cantidad debe ser mayor que 0"};
	if (_can > life_inv_oilp) exitWith {hint "No tienes tantos bidones de petroleo."};

	[false,"oilp",_can] call life_fnc_handleInv;

	comJac = comJac + (_can * 5);
	publicVariable "comJac";

	hint format ["Has vendido %1 bidon(es) de combustible por %2€. \n\nAhora tenemos %3/1000.", _can, (_preCom * _can), comJac];
	life_cash = life_cash + (_preCom * _can);
};

if (_que == "medicamentos") exitWith {

	if (_can < 0) exitWith {hint "La cantidad debe ser mayor que 0"};
	if (_can > life_inv_cajademedicamentos) exitWith {hint "No tienes tantas cajas de medicamentos."};

	[false,"cajademedicamentos",_can] call life_fnc_handleInv;

	medJac = medJac + (_can * 5);
	publicVariable "medJac";

	hint format ["Has vendido %1 caja(s) de medicamentos por %2€. \n\nAhora tenemos %3/1000.", _can, (_preMed * _can), medJac];
	life_cash = life_cash + (_preMed * _can);
};