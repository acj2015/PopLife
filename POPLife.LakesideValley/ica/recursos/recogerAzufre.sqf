/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/

[] spawn {
	tranqui = true;
	sleep 3;
	tranqui = nil;
};

player playActionNow "PutDown";
sleep 3;
player playActionNow "";
[true,"azufre",1] call life_fnc_handleInv;
hint "Has recogido azufre";