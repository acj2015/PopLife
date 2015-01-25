
_can = _this select 0;
_pCan = 2500;


if ((parseNumber _can) < 0) exitWith {
	hint "Escribe un numero mayor que 0.";
};

if ((parseNumber _can) > (60 - droCan)) exitWith {
	hint "Ya tengo demasiado de eso.";
};

if (life_inv_cannabis < (parseNumber _can)) exitWith {hint "No tienes tanto cannabis";};

[false,"cannabis",(parseNumber _can)] call life_fnc_handleInv;
droCan = droCan + (parseNumber _can);
publicVariable "droCan";

life_cash = life_cash + (_pCan * (parseNumber _can));

hint format ["Has ganado %1 \nAún me quedan %2.",(_pCan * (parseNumber _can)), droCan];