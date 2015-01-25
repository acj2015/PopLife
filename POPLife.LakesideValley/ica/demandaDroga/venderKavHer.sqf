
_can = _this select 0;
_pHer = 4000 + 1300;


if ((parseNumber _can) < 0) exitWith {
	hint "Escribe un numero mayor que 0.";
};

if ((parseNumber _can) > (60 - droKavHer)) exitWith {
	hint "Ya tengo demasiado de eso.";
};

if (life_inv_heroinp < (parseNumber _can)) exitWith {hint "No tienes tanta heroina";};

[false,"heroinp",(parseNumber _can)] call life_fnc_handleInv;
droKavHer = droKavHer + (parseNumber _can);
publicVariable "droKavHer";

life_cash = life_cash + (_pHer * (parseNumber _can));

hint format ["Has ganado %1 \nAún me quedan %2.",(_pHer * (parseNumber _can)), droKavHer];