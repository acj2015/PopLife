
_can = _this select 0;
_pCan = 2500 + 800;


if ((parseNumber _can) < 0) exitWith {
	hint "Escribe un numero mayor que 0.";
};

if ((parseNumber _can) > (60 - droKavCan)) exitWith {
	hint "Ya tengo demasiado de eso.";
};

if (life_inv_marijuana < (parseNumber _can)) exitWith {hint "No tienes tanta marihuana";};

[false,"marijuana",(parseNumber _can)] call life_fnc_handleInv;
droKavCan = droKavCan + (parseNumber _can);
publicVariable "droKavCan";

life_cash = life_cash + (_pCan * (parseNumber _can));

hint format ["Has ganado %1 \nAún me quedan %2.",(_pCan * (parseNumber _can)), droKavCan];