/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/


if ((player distance (getPos cajaZH1)) < 12) then {
	
	if (!isNil {(cajaZH1 getVariable "loteado")}) exitWith {hint "Alguien se te ha adelantado, la caja esta vacia...";};
	
	[] spawn {
		cajaZH1 setVariable ["loteado", true, true];
		sleep (60 * 35);
		cajaZH1 setVariable ["loteado", nil, true];
	};

	[] spawn {
		_t = 0;
		while {true} do {
			if (_t >= 25) exitWith {
				_num = round (random 3);
				if (_num == 0) then {
					hint "No has encontrado nada...";
				};
				if (_num > 0) then {
					hint format ["Progreso %1",_t * 4]; sleep 2; [true,"curazombie",_num] call life_fnc_handleInv; hint format ["¡Has encontrado %1 vacuna(s) Z!", _num];
				};
			};

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
};


if ((player distance (getPos cajaZH2)) < 12) then {
	
	if (!isNil {(cajaZH2 getVariable "loteado")}) exitWith {hint "Alguien se te ha adelantado, la caja esta vacia...";};
	
	[] spawn {
		cajaZH2 setVariable ["loteado", true, true];
		sleep (60 * 35);
		cajaZH2 setVariable ["loteado", nil, true];
	};

	[] spawn {
		_t = 0;
		while {true} do {
			if (_t >= 25) exitWith {
				_num = round (random 3);
				if (_num == 0) then {
					hint "No has encontrado nada...";
				};
				if (_num > 0) then {
					hint format ["Progreso %1",_t * 4]; sleep 2; [true,"curazombie",_num] call life_fnc_handleInv; hint format ["¡Has encontrado %1 vacuna(s) Z!", _num];
				};
			};

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
};


if ((player distance (getPos cajaZH3)) < 12) then {
	
	if (!isNil {(cajaZH3 getVariable "loteado")}) exitWith {hint "Alguien se te ha adelantado, la caja esta vacia...";};
	
	[] spawn {
		cajaZH3 setVariable ["loteado", true, true];
		sleep (60 * 35);
		cajaZH3 setVariable ["loteado", nil, true];
	};

	[] spawn {
		_t = 0;
		while {true} do {
			if (_t >= 25) exitWith {
				_num = round (random 3);
				if (_num == 0) then {
					hint "No has encontrado nada...";
				};
				if (_num > 0) then {
					hint format ["Progreso %1",_t * 4]; sleep 2; [true,"curazombie",_num] call life_fnc_handleInv; hint format ["¡Has encontrado %1 vacuna(s) Z!", _num];
				};
			};

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
};