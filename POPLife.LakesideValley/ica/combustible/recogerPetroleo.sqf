/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/

if (!isNil {ocupado}) exitWith {hint "Estás ocupado";};

[] spawn {
	ocupado = true;
	sleep 1;
	ocupado = nil;
};

player playActionNow "PutDown";
sleep 2;
player playActionNow "";

if !(isNil {estudiosCom}) exitWith {
	[true,"bp",2] call life_fnc_handleInv;
	hint "Has recogido 2 de petroleo";
};

[true,"bp",1] call life_fnc_handleInv;
hint "Has recogido petroleo";