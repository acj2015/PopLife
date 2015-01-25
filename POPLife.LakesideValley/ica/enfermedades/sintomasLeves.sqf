/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/

waitUntil {!isNil {(profileNamespace getVariable "hearb")}};
waitUntil {!isNil {(profileNamespace getVariable "fois")}};


while {true} do {

	if (!alive player) then {
		player setVariable ["mareo", nil, true];
		player setVariable ["hipotermia", nil, true];
		player setVariable ["tifus", nil, true];
		player setVariable ["virusZ", nil, true];
		player setVariable ["cancer", nil, true];
	};

	// (100 - umbral) / 100 = damage

	if (damage player <= 0.74) then {		// Aqui puedes andar
		player setVariable ["fractura", nil, true];
	};
	if (damage player > 0.74) then {		// Aqui te rompes cuando llegas al mínimo establecido en _vida
		player setVariable ["fractura", true, true];
	};
	
	if (!isNil {player getVariable "fractura"}) then {	
		if (stance player == "STAND") then {
			player playAction "PlayerStand";
			sleep 1;
		};
		
		if (stance player == "CROUCH") then {
			player playAction "PlayerCrouch";
			sleep 1;
		};
		
		if (stance player != "PRONE") then {		// Aqui te tiras al suelo si estás roto.
			player playAction "PlayerProne";  //"AidlPpneMstpSnonWnonDnon_AI";
			titleText ["Te has roto las piernas... si, las dos.", "PLAIN", 0.3];
		};
	};

	/*
	if (((profileNamespace getVariable "hearb") <= 15) OR ((profileNamespace getVariable "fois") <= 15))  then {	// Debilidad
		
		player setFatigue 1;
		player forceWalk true;
		titleText ["Estas muy debil.", "PLAIN", 0.5];
		
		if ((profileNamespace getVariable "hearb") >= 30) then {
			profileNamespace setVariable ["hearb", 30];
		};
		
		if ((profileNamespace getVariable "fois") >= 30) then {
			profileNamespace setVariable ["fois", 30];
		};
	};
	*/

sleep 1;
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


//	hint format ["%1", (player getVariable "enfermedad")];

