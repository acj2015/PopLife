/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/


if (isNil {tiempoLoteria}) then {
	tiempoLoteria = 60;
	publicVariable "tiempoLoteria";
};

while {!isNil {tiempoLoteria}} do {
	
	if (tiempoLoteria == 31) then {
		loteria = round random 60;
		publicVariable "loteria";
	};

	if (tiempoLoteria == 0) then {
		loteria = nil;
		publicVariable "loteria";
		tiempoLoteria = 35;
		publicVariable "tiempoLoteria";
	};
	
	tiempoLoteria = tiempoLoteria - 1;
	publicVariable "tiempoLoteria";
	sleep 60;
};


