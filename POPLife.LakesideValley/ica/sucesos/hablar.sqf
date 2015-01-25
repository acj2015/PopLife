
if ((player distance cursorTarget) > 2) exitWith {hint "Tienes que estar más cerca del NPC."};
if isNil {cursorTarget getVariable "detenible"} exitWith {};
_tio = cursorTarget;

if (side player == civilian) exitWith {
	
	if ((player distance _tio) > 2) exitWith {};	
	
	_droga = ["marijuana", "heroinp", "cocainep"] call BIS_fnc_selectRandom;
	
	_tio setVariable ["detenible", nil, true];
	titleText ["Por fin has llegado...", "PLAIN DOWN"];
	sleep 2;
	titleText ["Toma, esto es para ti...", "PLAIN DOWN"];
	deletevehicle _tio;
	[true,_droga,1 + (round (random 1))] call life_fnc_handleInv;
	
	gentuza = gentuza - 1;
	publicVariable "gentuza";
};

if (side player == west) exitWith {
	if ((player distance _tio) > 2) exitWith {};	
	
	_tio setVariable ["detenible", nil, true];
	titleText ["Caballero... está detenido.", "PLAIN DOWN"];
	sleep 2;
	titleText ["Has conseguido 4000 € por detener a un traficante.", "PLAIN DOWN"];
	deletevehicle _tio;
	life_cash = life_cash + 4000;
	
	gentuza = gentuza - 1;
	publicVariable "gentuza";
};


