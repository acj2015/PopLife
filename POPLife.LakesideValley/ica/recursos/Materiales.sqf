/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/

waitUntil {!isNil {oroFab}};

while {true} do {
	
	_1 = 1;
	_2 = 1;
	_3 = 1;
	_4 = 1;
	_5 = 1;
	_6 = 1;
	_7 = 1;
	_8 = 1;
	_9 = 1;
	_10 = 1;
	_11 = 1;
	_12 = 1;


	// Resto si son > 0 
	
	if (carFor > 0) then {
		carFor = carFor - _1;
		publicVariable "carFor";
	};
	if (carFab > 0) then {
		carFab = carFab - _2;
		publicVariable "carFab";
	};
	
	if (polFor > 0) then {
		polFor = polFor - _3;
		publicVariable "polFor";
	};
	if (polFab > 0) then {
		polFab = polFab - _4;
		publicVariable "polFab";
	};

	if (hieFor > 0) then {
		hieFor = hieFor - _5;
		publicVariable "hieFor";
	};
	if (hieFab > 0) then {	
		hieFab = hieFab - _6;
		publicVariable "carAbd";
	};
	
	if (cobFor > 0) then {	
		cobFor = cobFor - _7;
		publicVariable "cobFor";
	};
	if (cobFab > 0) then {	
		cobFab = cobFab - _8;
		publicVariable "cobFab";
	};	

	if (plaFor > 0) then {
		plaFor = plaFor - _9;
		publicVariable "plaFor";
	};
	if (plaFab > 0) then {
		plaFab = plaFab - _10;
		publicVariable "plaFab";
	};
	
	if (oroFor > 0) then {
		oroFor = oroFor - _11;
		publicVariable "oroFor";
	};
	if (oroFab > 0) then {	
		oroFab = oroFab - _12;
		publicVariable "oroFab";
	};

	sleep 70;
};