
_can = _this select 0;
_pCoc = 6600;


if ((parseNumber _can) < 0) exitWith {
	hint "Escribe un numero mayor que 0.";
};

if ((parseNumber _can) > droCoc) exitWith {
	hint "No tengo tanta cocaína.";
};

[true,"cocaine",(parseNumber _can)] call life_fnc_handleInv;
droCoc = droCoc - (parseNumber _can);
publicVariable "droCoc";

life_cash = life_cash - (_pCoc * (parseNumber _can));

hint format ["Has gastado %1 comprando cannabis.\nMe quedan  %2.",(_pCoc * (parseNumber _can)), droCoc];