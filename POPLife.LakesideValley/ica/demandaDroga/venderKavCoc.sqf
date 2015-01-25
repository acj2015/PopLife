
_can = _this select 0;
_pCoc = 6600 + 2200;


if ((parseNumber _can) < 0) exitWith {
	hint "Escribe un numero mayor que 0.";
};

if ((parseNumber _can) > (60 - droKavCoc)) exitWith {
	hint "Ya tengo demasiado de eso.";
};

if (life_inv_cokep < (parseNumber _can)) exitWith {hint "No tienes tanta cocaina";};

[false,"cocainep",(parseNumber _can)] call life_fnc_handleInv;
droKavCoc = droKavCoc + (parseNumber _can);
publicVariable "droKavCoc";

life_cash = life_cash + (_pCoc * (parseNumber _can));

hint format ["Has ganado %1 \nAún me quedan %2.",(_pCoc * (parseNumber _can)), droKavCoc];