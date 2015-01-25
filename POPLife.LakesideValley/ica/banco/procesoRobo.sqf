/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/

_caller = _this select 0;
_tiempo = (60 * 5);


while {true} do {
	_tiempo = _tiempo - 1;
	if (_tiempo <= 0) exitWith {
		if (isNil {cancelado}) then {	
			robo = 1;
			publicVariable "robo";
		};
		if (!isNil {cancelado}) then {
			if (cancelado == 1) exitWith {hint "El robo del alcalde ha sido interrumpido."};
			[] execVM "ica\banco\reset.sqf";
		};
	};
	sleep 1;
};

   