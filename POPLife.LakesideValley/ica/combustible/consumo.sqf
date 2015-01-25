/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/


while {true} do {

	if (vehicle player != player) then {
		if ((vehicle player) isKindOf "Land") then {
			if (isEngineOn vehicle player) then {
				if (driver (vehicle player) == player) then {
					
					if (speed vehicle player >= 20) then {
						if (speed vehicle player < 60) then {
							vehicle player setFuel ((fuel vehicle player) - 0.00019);
						};
					};
					if (speed vehicle player >= 60) then {
						if (speed vehicle player < 100) then {	
							vehicle player setFuel ((fuel vehicle player) - 0.00027);
						};
					};	
					if (speed vehicle player >= 100) then {
						if (speed vehicle player < 140) then {	
							vehicle player setFuel ((fuel vehicle player) - 0.00034);
						};
					};	
					if (speed vehicle player >= 140) then {
						vehicle player setFuel ((fuel vehicle player) - 0.00050);
					};
				};
			};
		};
	};
	
	sleep 1;
};