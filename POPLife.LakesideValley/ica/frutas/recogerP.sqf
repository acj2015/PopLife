/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/

if (!isNil {ocupado}) exitWith {hint "Estás ocupado";};

[] spawn {
	ocupado = true;
	sleep 3;
	ocupado = nil;
};

_a = _this select 0;

player playActionNow "PutDown";
deleteVehicle _a;
sleep 2;
player playActionNow "";

if !(isNil {estudiosFru}) exitWith {
	[true,"platano",10] call life_fnc_handleInv;
	hint "Has recogido 10 platanos";
};

[true,"platano",5] call life_fnc_handleInv;
hint "Has recogido 5 platanos";



	