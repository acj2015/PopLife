
hint format ["Realizando test de drogas a %1...", name cursortarget];
sleep 3;
[false,"testdrogas",1] call life_fnc_handleInv;

_fallo = round (random 99);

if (_fallo < 9) exitWith {
	titleText ["El test ha finalizado.", "PLAIN DOWN"];
	[true,"testdroinv",1] call life_fnc_handleInv;	
};

if (!isNil{cursorTarget getVariable "restosMar"}) then {
	titleText ["El test ha finalizado.", "PLAIN DOWN"];
	[true,"testdroposmar",1] call life_fnc_handleInv;	
};

if (!isNil{cursorTarget getVariable "restosHer"}) then {
	titleText ["El test ha finalizado.", "PLAIN DOWN"];
	[true,"testdroposher",1] call life_fnc_handleInv;	
};

if (!isNil{cursorTarget getVariable "restosCoc"}) then {
	titleText ["El test ha finalizado.", "PLAIN DOWN"];
	[true,"testdroposcoc",1] call life_fnc_handleInv;	
};

if ((isNil{cursorTarget getVariable "restosMar"}) AND (isNil{cursorTarget getVariable "restosHer"}) AND (isNil{cursorTarget getVariable "restosCoc"})) then {
	titleText ["El test ha finalizado.", "PLAIN DOWN"];
	[true,"testdroneg",1] call life_fnc_handleInv;
};