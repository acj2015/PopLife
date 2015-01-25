/*
The winner sound was recorded by Mike Koenig.
El sonido de ganador ha sido grabado por Mike Koenig.

Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/


_caller = _this select 0;   


if ((isNil {loteria}) OR (!isNil {cobrado})) exitWith {
	hint "Aún no ha salido el número ganador o alguien ya ha cobrado el premio.";
};

if (((_caller getVariable "numeroLoteria") == loteria) and (!isNil {loteria})) then {
	hint "¡¡Has ganado!!";
	playSound "ganador";
	
	nombreGanador = profileName;
	publicVariable "nombreGanador";

	[{systemChat format ["¡%1 ha ganado la lotería!",nombreGanador];},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
	
	cobrado = true;
	publicVariable "cobrado";
	
	life_cash = life_cash + round (300000 + (random 100000));
	
	loteria = nil;
	publicVariable "loteria";
	
	tiempoLoteria = 30 + tiempoLoteria;
	publicVariable "tiempoLoteria";
	
}; 

if !(isNil {loteria}) then {
	if !((_caller getVariable "numeroLoteria") == loteria) then {
		hint format ["Ohh, el número ganador es el %1 y tú tienes el %2.",loteria,(_caller getVariable "numeroLoteria")];
	};
};


// hint format ["%1", (player getVariable "numeroLoteria")];