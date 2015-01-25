
_can = _this select 0;
_pCan = 2500;


if ((parseNumber _can) < 0) exitWith {
	hint "Escribe un numero mayor que 0.";
};

if ((parseNumber _can) > droCan) exitWith {
	hint "No tengo tanto cannabis.";
};

[true,"cannabis",(parseNumber _can)] call life_fnc_handleInv;
droCan = droCan - (parseNumber _can);
publicVariable "droCan";

life_cash = life_cash - (_pCan * (parseNumber _can));

hint format ["Has gastado %1 comprando cannabis.\nMe quedan  %2.",(_pCan * (parseNumber _can)), droCan];