
_can = _this select 0;
_pHer = 4000;


if ((parseNumber _can) < 0) exitWith {
	hint "Escribe un numero mayor que 0.";
};

if ((parseNumber _can) > droHer) exitWith {
	hint "No tengo tanto cannabis.";
};

[true,"heroinu",(parseNumber _can)] call life_fnc_handleInv;
droHer = droHer - (parseNumber _can);
publicVariable "droHer";

life_cash = life_cash - (_pHer * (parseNumber _can));

hint format ["Has gastado %1 comprando heroína.\nMe quedan  %2.",(_pHer * (parseNumber _can)), droHer];