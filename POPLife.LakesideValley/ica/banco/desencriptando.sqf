/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/


[] spawn {
	while {true} do {	
		
		if (isNil {desencriptando}) exitWith {};
		
		if ((!isNil {desencriptando}) AND (desencriptando == 1)) then {
			porcentaje = porcentaje + 1;
			publicVariable "porcentaje";
		};
		
		if (porcentaje >= 100) then {
			porcentaje = 100;
			publicVariable "porcentaje";
			desencriptando = nil;
			publicVariable "desencriptando";
			codigoCambiante = codigoFinal;
			publicVariable "codigoCambiante";
		};
	sleep 3;
	};
};

[] spawn {
	while {true} do {	
		if (isNil {desencriptando}) exitWith {};
		if ((!isNil {desencriptando}) AND (desencriptando == 1)) then {
			
			if (porcentaje != 100) then {
				codigoCambiante = (round ((random 89999999999999999999) + 10000000000000000000)) call MTP_fnc_numberToString;
				publicVariable "codigoCambiante";
			};
			
		};
	sleep 0.2;
	};
};