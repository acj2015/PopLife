/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/


if (!isNil {tranqui}) exitWith {};

[] spawn {
	tranqui = true;
	sleep 12;
	tranqui = nil;
};

if !(life_inv_apple => 5) exitWith {hint "No tienes 5 frutas";};
if !(life_inv_platano => 5) exitWith {hint "No tienes 5 frutas";};

if (life_inv_apple => 5) exitWith {
	player playActionNow "PutDown";
	sleep 2;
	player playActionNow "";
	[false,"apple",5] call life_fnc_handleInv;
	hint "Nom nom nom...";
	sleep 3;
	hint "Nom nom nom nom...";
	sleep 2;
	_rnd = ["2", "4"] call BIS_fnc_SelectRandom;
	[true,"carne",_rnd] call life_fnc_handleInv;
	hint format ["Has recibido (magicamente) %1 trozos de carne.", _rnd];
};

if (life_inv_platano => 5) exitWith {
	player playActionNow "PutDown";
	sleep 2;
	player playActionNow "";
	[false,"platano",5] call life_fnc_handleInv;
	hint "Nom nom nom...";
	sleep 3;
	hint "Nom nom nom nom...";
	sleep 2;
	_rnd = ["2", "4"] call BIS_fnc_SelectRandom;
	[true,"carne",_rnd] call life_fnc_handleInv;
	hint format ["Has recibido (magicamente) %1 trozos de carne.", _rnd];
};