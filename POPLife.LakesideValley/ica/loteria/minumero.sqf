/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/

_caller = _this select 0;
_respuesta = (_caller getVariable "numeroLoteria");

if (isNil {memoria}) then {
	memoria = false;
};

if (memoria) then {
	hint "¿En serio? ¿Ya se te ha olvidado?";
};

if (isNil {_respuesta}) then {
	hint "No tienes número, deberías comprar uno.";
};


if (!(memoria) AND !(isNil {_respuesta})) then {
	

	hint format ["Tu número de lotería es el %1", _respuesta];

	[] spawn {
		memoria = true;
		sleep 10;
		memoria = false;
	};
};


