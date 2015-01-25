/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/


while {true} do {
	
	_ciudades = ["ciudadKavala", "ciudadTedera", "ciudadathira", "ciudadpyrgos", "ciudadtilos", "ciudadSofia"] call BIS_fnc_SelectRandom;
	terremoto = true;
	publicVariable "terremoto";
	epicentro setpos (getMarkerPos _ciudades);
	[[[player], "ica\terremoto\terremoto.sqf"],"BIS_fnc_execVM", false, true] call BIS_fnc_MP;
	sleep (60 + (round (random 120)));

	terremoto = nil;
	publicVariable "terremoto";
	epicentro setpos (getMarkerPos "lejos");
	sleep (60 * 30)	;
};


	
	
	