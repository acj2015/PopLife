
_can = _this select 0;
_pHer = 4000;


if ((parseNumber _can) < 0) exitWith {
	hint "Escribe un numero mayor que 0.";
};

if ((parseNumber _can) > (45 - droHer)) exitWith {
	hint "Ya tengo demasiado de eso.";
};

if (life_inv_heroinu < (parseNumber _can)) exitWith {hint "No tienes tanta heroina";};

[false,"heroinu",(parseNumber _can)] call life_fnc_handleInv;
droHer = droHer + (parseNumber _can);
publicVariable "droHer";

life_cash = life_cash + (_pHer * (parseNumber _can));

hint format ["Has ganado %1 \nAún me quedan  %2.",(_pHer * (parseNumber _can)), droHer];