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
sleep 3;
player playActionNow "";
[true,"rana",1] call life_fnc_handleInv;
hint "Has capturado 1 rana";
deleteVehicle _a;