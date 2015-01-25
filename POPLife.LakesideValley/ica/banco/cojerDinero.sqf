/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/


if (isNil {robo}) exitWith {hint "Que raro, la caja fuerte que guarda los ahorros de todos los ciudadanos de Lakeside esta cerrada...";};
if (!isNil {robo}) then {
	if (robo == 1) then {
		robo = 2;
		publicVariable "robo";

		//["ica\banco\manrobao.sqf","BIS_fnc_execVM",true,true] call BIS_fnc_MP;
		
		sleep 3;
		
		life_cash = life_cash + deposito;
		
		[] spawn {
			life_use_atm = false;
			sleep (60 * 5);
			life_use_atm = true;
		};
		
		sleep 5;
		hint format ["Has robado %1E del Alcalde", deposito];
		
		
		[] execVM "ica\banco\reset.sqf";
		
		deposito = 0;
		publicVariable "deposito";
		

	};
};


