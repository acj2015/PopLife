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

player playActionNow "PutDown";
sleep 3;
player playActionNow "";
[true,"nitratodepotasio",1] call life_fnc_handleInv;
hint "Has recogido nitrato de potasio";