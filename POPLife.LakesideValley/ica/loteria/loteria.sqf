/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/


_caller = _this select 0;

if (isNil {espera}) then {
	espera = false;
};

if (espera) then {
	hint "Tienes que esperar 1 minuto antes de cambiar tu número.";
};

if !(espera) then {
	
	if !(life_cash >= 3000) exitWith {hint "No tienes suficiente dinero"};
	
	_num = round random 60;
	
	_caller setVariable ["numeroLoteria", _num, false];
	hint format ["Tu número de lotería es %1.",_num];
		
	[] spawn {
		espera = true;
		sleep 60;
		espera = false;
	};
	
	life_cash = life_cash - 3000;
};



/*
Acciones del NPC

Abrir menu:
	this addAction ["Loterícaruk",'null = [player] execVM "menuloteria.sqf";', "", 9,false,true,"",""];
Cobrar (ya se hace desde el menu);
	this addAction ["Cobrar",'null = [player] execVM "cobrar.sqf";', "", 9,false,true,"",""];
Preguntar número (ya se hace desde el menu);
	this addAction ["¿Cuál es mi número?",'null = [player] execVM "minumero.sqf";', "", 9,false,true,"",""];
*/

