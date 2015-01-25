/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/

if (!isNil {ocupado}) exitWith {hint "Estás ocupado";};

[] spawn {
	ocupado = true;
	sleep 20;
	ocupado = nil;
};


[] spawn {
	_t = 0;
	while {true} do {
		if (_t >= 25) exitWith {hint format ["Progreso %1",_t * 4]; [true,"uranio",1] call life_fnc_handleInv; hint "Has recogido uranio";};
		hint format ["Progreso %1%2",_t * 4, "%"];
		_t = _t + 1;
		sleep 1;
	};
};

[] spawn {
	_t = 0;
	while {true} do {
		if (_t >= 25) exitWith {player switchmove "";};
		player playActionNow "medicstartup";
		_t = _t + 2;
		sleep 2;
	};
};
