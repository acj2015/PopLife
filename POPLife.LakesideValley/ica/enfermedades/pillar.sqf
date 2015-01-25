/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/

waitUntil {!isNil {life_inv_marijuana}};


while {true} do {

	if ((independent countSide playableUnits) >= 1) then {
		if (alive player) then {
			if ((life_inv_marijuana >= 1) OR (life_inv_cannabis >= 1) OR (life_inv_coke >= 1) OR (life_inv_cokep >= 1) OR (life_inv_heroinu >= 1) OR (life_inv_heroinp >= 1)) then {
				if ((round (random 100)) < 2) then {
					player setVariable ["mareo", true, true];
					// titleText ["Estás mareado", "PLAIN"];
				};
			};
			
			if (underwater player) then { 
				if ((round (random 100)) < 5) then {
					player setVariable ["hipotermia", true, true];
					// titleText ["Tienes mucho frío", "PLAIN"];
				};
			};

			if ((life_inv_rana >= 1) OR (life_inv_lsd >= 1) OR (life_inv_ancasr >= 1)) then {
				if ((round (random 100)) < 3) then {
					player setVariable ["tifus", true, true];
					// titleText ["Según los análisis de los médicos usted ha contraído tifus", "PLAIN"];
				};
			};
			
			if ((round (random 100)) < 0.5) then {
				player setVariable ["tos", true, false];
				[player] execVM "ica\enfermedades\contagio.sqf";
			};
		};
	};
	
sleep 60;	
};





/*
1 Fractura
	<20 vida
		medkit
2 Mareo
	tener drogas
		antiemetico
3 Hipotermia
	nadar
		manta
4 Tifus
	tener ranas
		vacuna
5 Cancer
	central nuclear
		quimioterapia
6 Debilidad
	comida o bebida baja
		testDrogas salino
7 Tos
	random
		jarabe

//	hint format ["%1", (player getVariable "enfermedad")];

*/