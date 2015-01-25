/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/

while {!isNil {tiempoLoteria}} do {
	
	if (tiempoLoteria == 60) then {
		[{systemChat "Quedan 30 minutos para que salga el número ganador.";},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
		waitUntil {tiempoLoteria != 60};
	};
	if (tiempoLoteria == 50) then {
		[{systemChat "Quedan 20 minutos para que salga el número ganador.";},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
		waitUntil {tiempoLoteria != 50};
	};
	if (tiempoLoteria == 40) then {
		[{systemChat "Quedan 10 minutos para que salga el número ganador.";},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
		waitUntil {tiempoLoteria != 40};
	};
	if (tiempoLoteria == 35) then {
		[{systemChat "Quedan 5 minutos para que salga el número ganador.";},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
		waitUntil {tiempoLoteria != 35};
	};
	if (tiempoLoteria == 32) then {
		[{systemChat "Quedan 2 minutos para que salga el número ganador.";},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
		waitUntil {tiempoLoteria != 32};
	};
	if (tiempoLoteria == 31) then {
		[{systemChat "Queda 1 minuto para que salga el número ganador.";},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
		waitUntil {tiempoLoteria != 31};
	};
	
	
	
	if (tiempoLoteria == 30) then {		// Se crea el número ganador en otro script
		waitUntil {!isNil {loteria}};
		[{systemchat format ["El numero ganador ha sido %1",loteria];},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
		[{systemChat "Quedan 30 minutos para sobrar el premio.";},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
		waitUntil {tiempoLoteria != 30};
	};
	
	
	if !(isNil {cobrado}) then {
		if (cobrado) then {		// Alguien ha ganado y se borran todas las variables y números de lotería de cada jugador
			player setVariable ["numeroLoteria", nil];

			nombreGanador = nil;
			publicVariable "nombreGanador";			
			
			cobrado = nil;
			publicVariable "cobrado";
		};
	};
	

	if (tiempoLoteria == 20) then {
		[{systemChat "Quedan 20 minutos para cobrar el premio.";},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
		waitUntil {tiempoLoteria != 20};
	};
	if (tiempoLoteria == 10) then {
	[{systemChat "Quedan 10 minutos para cobrar el premio.";},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
		waitUntil {tiempoLoteria != 10};
	};
	if (tiempoLoteria == 5) then {
		[{systemChat "Quedan 5 minutos para cobrar el premio.";},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
		waitUntil {tiempoLoteria != 5};
	};
	if (tiempoLoteria == 2) then {
		[{systemChat "Quedan 2 minutos para cobrar el premio.";},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
		waitUntil {tiempoLoteria != 2};
	};
	if (tiempoLoteria == 1) then {
		[{systemChat "Queda 1 minuto para cobrar el premio.";},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
		waitUntil {tiempoLoteria != 1};
	};
	if (tiempoLoteria == 0) then {
		player setVariable ["numeroLoteria", nil];
		[{systemChat "Nadie ha cobrado el premio, por lo tanto saldrá un nuevo número dentro de 5 minutos.";},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
		waitUntil {tiempoLoteria != 0};
	};
	
sleep 2;
};