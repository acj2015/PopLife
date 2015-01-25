/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/


while {true} do {
	

	if (!isNil {player getVariable "mareo"}) then {
		if (vehicle player != player) then {	// Dentro de veh
			addCamShake [7, 25, 0.2];
			setCamShakeParams [0, 0.5, 2, 3.5, true];
			//titleText ["Estas mareado.", "PLAIN DOWN", 0.3];
		};
		if (vehicle player == player) then {	// A pata
			addCamShake [20, 20, 0.2];	// fuerza, dur, freq
			setCamShakeParams [0.05, 2.5, 2.5, 4, true]; // pos, ver, hor, lat, interpol
			//titleText ["Estas mareado.", "PLAIN DOWN", 0.3];
		};
	};
	
	if (!isNil {player getVariable "hipotermia"}) then {
		addCamShake [0.7, 20, 15];
		setCamShakeParams [0, 0.5, 0.5, 0.5, true];
		//titleText ["Tienes mucho frio.", "PLAIN DOWN", 0.3];
	};
		
	if (!isNil {player getVariable "tifus"}) then {           
       // titleText ["Tienes tifus, lo siento.", "PLAIN DOWN", 0.3];
		[] spawn {
			private ["_blur"];
			_blur = ppEffectCreate ["DynamicBlur", 10];
			_blur ppEffectEnable true;
			_blur ppEffectAdjust [1.1];
			_blur ppEffectCommit 2;
			sleep 2;
			_blur ppEffectAdjust [0.8];
			_blur ppEffectCommit 2;
			sleep 2;
			_blur ppEffectAdjust [0.6];
			_blur ppEffectCommit 2;
			sleep 2;
			_blur ppEffectAdjust [0.4];
			_blur ppEffectCommit 2;
			sleep 2;
			_blur ppEffectAdjust [0.1];
			_blur ppEffectCommit 2;
			sleep 2;
			ppEffectDestroy _blur;
		};

	};
	
	if (!isNil {player getVariable "tos"}) then { 
		if (side player != independent) then {
			if (vehicle player != player) then {	// Dentro de veh
				addCamShake [5, 4, 4];
				setCamShakeParams [0, 10, 1, 0.7, true];
				_tipo = ["tos1", "tos2", "tos3", "tos4"] call BIS_fnc_selectRandom;
				[player,_tipo] call life_fnc_globalSound;
			};
			if (vehicle player == player) then {};	// A pata
		};
	};
	
	if (!isNil {player getVariable "virusZ"}) then { 
		if (isNil {mordido}) then {
			execVM "ica\enfermedades\muerte.sqf";
			hint "Si no recibes tratamiento de esa mordedura, morirás en unos 30 minutos...";
			mordido = true;
		};
		[] spawn {
			cutText ["","BLACK OUT",8];
			sleep 8;
			cutText ["","BLACK IN",1];
		};
	};
	
	if (!isNil {player getVariable "cancer"}) then { 
        //titleText ["Tienes cancer, lo siento.", "PLAIN DOWN", 0.3];
		[] spawn {
			private ["_color"];
			_color = ppEffectCreate ["colorCorrections", 10];
			_color ppEffectEnable true; 
			_color ppEffectAdjust [0.4, 0.2, 0, [1,1,1,0], [1,1,1,0], [1,1,1,0]];  
			_color ppEffectCommit 4;
			sleep 16;
			_color ppEffectAdjust [1, 1, 0, [1,1,1,0], [1,1,1,1], [1,1,1,0]];
			_color ppEffectCommit 3;
			sleep 2;
			ppEffectDestroy _color;
		};
	};
	
sleep 20;
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
		suero salino
7 Tos
	random
		jarabe		


//	hint format ["%1", (player getVariable "enfermedad")];

*/