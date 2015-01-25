
_can = _this select 0;
_pCoc = 6600;


if ((parseNumber _can) < 0) exitWith {
	hint "Escribe un numero mayor que 0.";
};

if ((parseNumber _can) > (30 - droCoc)) exitWith {
	hint "Ya tengo demasiado de eso.";
};

if (life_inv_coke < (parseNumber _can)) exitWith {hint "No tienes tanta cocaina";};

¡¡
droCoc = droCoc + (parseNumber _can);
publicVariable "droCoc";

life_cash = life_cash + (_pCoc * (parseNumber _can));

hint format ["Has ganado %1 \nAún me quedan %2.",(_pCoc * (parseNumber _can)), droCoc];