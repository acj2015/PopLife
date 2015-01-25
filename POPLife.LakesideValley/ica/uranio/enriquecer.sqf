/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/

if (!isNil {tranqui}) exitWith {hint "Espera un poco"};
if ((west countSide playableUnits) < 2) exitWith {hint "Tienen que estar al menos 2 policías conectados."};
if !((life_inv_uranio) >= 1) exitWith {hint "No tienes uranio para enriquecer"};
if !(isNil {caliente1}) exitWith {hint "Este reactor tardará 1h 30m en enfriarse"};
if !(electricidad >= 40) exitWith {hint "Este proceso requiere extraer energía de otras fuentes, y ahora no hay al menos 40 de energia en el generador de Jackson"};


[] spawn {
	tranqui = true;
	sleep 30;
	tranqui = nil;
};


[[[1,2],"La central nuclear tiene un consumo demasiado alto"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;

[] spawn {
	_t = 0;
	while {true} do {
		if (_t >= 25) exitWith {
			hint format ["Progreso %1",_t * 4];
			if !((life_inv_uranio) >= 1) exitWith {hint "No tienes uranio para enriquecer"};
			if !(electricidad >= 40) exitWith {hint "Este proceso requiere extraer energía de otras fuentes, y ahora no hay al menos 40 de energia en el generador de Jackson"};
			
			electricidad = electricidad - 40;
			publicVariable "electricidad";
			[false,"uranio",1] call life_fnc_handleInv;
			[true,"plutonio",1] call life_fnc_handleInv;
			sleep 2;
			hint "Has enriquecido uranio, obteniendo plutonio";
			caliente1 = true;
			publicVariable "caliente1";
		};

		_t = _t + 1;
		hint format ["Progreso %1",_t * 4];
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
