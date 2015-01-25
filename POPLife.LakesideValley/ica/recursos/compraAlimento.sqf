
_can = _this select 0;

_preAli = round ((1700 - aliJac) / 2);
_preMed = round ((1700 - medJac) / 2);
_preAgu = round ((1700 - aguJac) / 2);
_preCom = round ((1700 - comJac) / 2);


if (_can < 0) exitWith {hint "La cantidad debe ser mayor que 0"};
if ((_can * 10) > aliJac) exitWith {hint "No hay tantos recursos."};
if !(life_cash >= (_can * _preAli)) exitWith {hint "No tienes suficiente dinero"};

[true,"raciondealimento",_can] call life_fnc_handleInv;

aliJac = aliJac - (_can * 10);
publicVariable "aliJac";

hint format ["Has comprado %1 racion(es) de alimento por %2€. \n\nAhora tenemos %3/1000.", _can, (_preAli * _can), aliJac];
life_cash = life_cash - (_preAli * _can);