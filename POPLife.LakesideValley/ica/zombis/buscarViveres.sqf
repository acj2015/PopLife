/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/

if ((player distance (getPos sacoZA1)) < 12) then {
	
	if (!isNil {(sacoZA1 getVariable "loteado")}) exitWith {hint "Alguien se te ha adelantado, este saco esta vacio...";};
	
	[] spawn {
		sacoZA1 setVariable ["loteado", true, true];
		sleep (60 * 30);
		sacoZA1 setVariable ["loteado", nil, true];
	};

	[] spawn {
		_t = 0;
		while {true} do {
			if (_t >= 25) exitWith {
				_prob = round (random 100);
				if (_prob < 25) then {
					_num = 1 + (round (random 3));
					hint format ["Progreso %1",_t * 4]; sleep 2; [true,"cajadecarne",_num] call life_fnc_handleInv; hint format ["¡Has encontrado %1 caja(s) de carne!", _num];
				};
				if ((_prob >= 25) AND (_prob < 50)) then {
					_num = 1 + (round (random 3));
					hint format ["Progreso %1",_t * 4]; sleep 2; [true,"polvora",_num] call life_fnc_handleInv; hint format ["¡Has encontrado %1  de polvora!", _num];
				};
				if ((_prob >= 50) AND (_prob < 75)) then {
					_num = 1 + (round (random 3));
					hint format ["Progreso %1",_t * 4]; sleep 2; [true,"hierro",_num] call life_fnc_handleInv; hint format ["¡Has encontrado %1  lingote(s) de hierro!", _num];
				};
				if (_prob >= 75) then {
					_num = 500 + (round (random 700));
					hint format ["Progreso %1",_t * 4]; sleep 2; life_cash = life_cash + _num; hint format ["¡Has encontrado %1€!", _num];
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


if ((player distance (getPos sacoZA2)) < 12) then {
	
	if (!isNil {(sacoZA2 getVariable "loteado")}) exitWith {hint "Alguien se te ha adelantado, este saco esta vacio...";};
	
	[] spawn {
		sacoZA2 setVariable ["loteado", true, true];
		sleep (60 * 30);
		sacoZA2 setVariable ["loteado", nil, true];
	};

	[] spawn {
		_t = 0;
		while {true} do {
			if (_t >= 25) exitWith {
				_prob = round (random 100);
				if (_prob < 25) then {
					_num = 1 + (round (random 3));
					hint format ["Progreso %1",_t * 4]; sleep 2; [true,"cajadecarne",_num] call life_fnc_handleInv; hint format ["¡Has encontrado %1 caja(s) de carne!", _num];
				};
				if ((_prob >= 25) AND (_prob < 50)) then {
					_num = 1 + (round (random 3));
					hint format ["Progreso %1",_t * 4]; sleep 2; [true,"polvora",_num] call life_fnc_handleInv; hint format ["¡Has encontrado %1  de polvora!", _num];
				};
				if ((_prob >= 50) AND (_prob < 75)) then {
					_num = 1 + (round (random 3));
					hint format ["Progreso %1",_t * 4]; sleep 2; [true,"hierro",_num] call life_fnc_handleInv; hint format ["¡Has encontrado %1  lingote(s) de hierro!", _num];
				};
				if (_prob >= 75) then {
					_num = 500 + (round (random 700));
					hint format ["Progreso %1",_t * 4]; sleep 2; life_cash = life_cash + _num; hint format ["¡Has encontrado %1€!", _num];
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


if ((player distance (getPos sacoZA3)) < 12) then {
	
	if (!isNil {(sacoZA3 getVariable "loteado")}) exitWith {hint "Alguien se te ha adelantado, este saco esta vacio...";};
	
	[] spawn {
		sacoZA3 setVariable ["loteado", true, true];
		sleep (60 * 30);
		sacoZA3 setVariable ["loteado", nil, true];
	};

	[] spawn {
		_t = 0;
		while {true} do {
			if (_t >= 25) exitWith {
				_prob = round (random 100);
				if (_prob < 25) then {
					_num = 1 + (round (random 3));
					hint format ["Progreso %1",_t * 4]; sleep 2; [true,"cajadecarne",_num] call life_fnc_handleInv; hint format ["¡Has encontrado %1 caja(s) de carne!", _num];
				};
				if ((_prob >= 25) AND (_prob < 50)) then {
					_num = 1 + (round (random 3));
					hint format ["Progreso %1",_t * 4]; sleep 2; [true,"polvora",_num] call life_fnc_handleInv; hint format ["¡Has encontrado %1  de polvora!", _num];
				};
				if ((_prob >= 50) AND (_prob < 75)) then {
					_num = 1 + (round (random 3));
					hint format ["Progreso %1",_t * 4]; sleep 2; [true,"hierro",_num] call life_fnc_handleInv; hint format ["¡Has encontrado %1  lingote(s) de hierro!", _num];
				};
				if (_prob >= 75) then {
					_num = 500 + (round (random 700));
					hint format ["Progreso %1",_t * 4]; sleep 2; life_cash = life_cash + _num; hint format ["¡Has encontrado %1€!", _num];
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


if ((player distance (getPos sacoZA4)) < 12) then {
	
	if (!isNil {(sacoZA4 getVariable "loteado")}) exitWith {hint "Alguien se te ha adelantado, este saco esta vacio...";};
	
	[] spawn {
		sacoZA4 setVariable ["loteado", true, true];
		sleep (60 * 30);
		sacoZA4 setVariable ["loteado", nil, true];
	};

	[] spawn {
		_t = 0;
		while {true} do {
			if (_t >= 25) exitWith {
				_prob = round (random 100);
				if (_prob < 25) then {
					_num = 1 + (round (random 3));
					hint format ["Progreso %1",_t * 4]; sleep 2; [true,"cajadecarne",_num] call life_fnc_handleInv; hint format ["¡Has encontrado %1 caja(s) de carne!", _num];
				};
				if ((_prob >= 25) AND (_prob < 50)) then {
					_num = 1 + (round (random 3));
					hint format ["Progreso %1",_t * 4]; sleep 2; [true,"polvora",_num] call life_fnc_handleInv; hint format ["¡Has encontrado %1  de polvora!", _num];
				};
				if ((_prob >= 50) AND (_prob < 75)) then {
					_num = 1 + (round (random 3));
					hint format ["Progreso %1",_t * 4]; sleep 2; [true,"hierro",_num] call life_fnc_handleInv; hint format ["¡Has encontrado %1  lingote(s) de hierro!", _num];
				};
				if (_prob >= 75) then {
					_num = 500 + (round (random 700));
					hint format ["Progreso %1",_t * 4]; sleep 2; life_cash = life_cash + _num; hint format ["¡Has encontrado %1€!", _num];
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
