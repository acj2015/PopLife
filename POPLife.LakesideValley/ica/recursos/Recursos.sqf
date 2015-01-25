/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/

waitUntil {!isNil {comMor}};

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
	_13 = 1;
	_14 = 1;
	_15 = 1;
	_16 = 1;
	_17 = 0;
	_18 = 0;
	_19 = 0;
	_20 = 0;

	// Resto si son > 0 
	// Sumo si son < 1000
	
	if (aliMem > 0) then {
		aliMem = aliMem - _1;
		publicVariable "aliMem";
	};
	if (medMem > 0) then {
		medMem = medMem - _2;
		publicVariable "medMem";
	};
	if (aguMem > 0) then {
		aguMem = aguMem - _3;
		publicVariable "aguMem";
	};
	if (comMem > 0) then {
		comMem = comMem - _4;
		publicVariable "comMem";
	};

	if (aliAer > 0) then {
		aliAer = aliAer - _5;
		publicVariable "aliAer";
	};
	if (medAer > 0) then {	
		medAer = medAer - _6;
		publicVariable "medAer";
	};
	if (aguAer > 0) then {	
		aguAer = aguAer - _7;
		publicVariable "aguAer";
	};
	if (comAer > 0) then {	
		comAer = comAer - _8;
		publicVariable "comAer";
	};	

	if (aliDia > 0) then {
		aliDia = aliDia - _9;
		publicVariable "aliDia";
	};
	if (medDia > 0) then {
		medDia = medDia - _10;
		publicVariable "medDia";
	};
	if (aguDia > 0) then {
		aguDia = aguDia - _11;
		publicVariable "aguDia";
	};
	if (comDia > 0) then {	
		comDia = comDia - _12;
		publicVariable "comDia";
	};
		
	if (aliMor > 0) then {
		aliMor = aliMor - _13;
		publicVariable "aliMor";
	};
	if (medMor > 0) then {
		medMor = medMor - _14;
		publicVariable "medMor";
	};
	if (aguMor > 0) then {	
		aguMor = aguMor - _15;
		publicVariable "aguMor";
	};
	if (comMor > 0) then {	
		comMor = comMor - _16;
		publicVariable "comMor";
	};
		
	if (aliJac < 1000) then {
		aliJac = aliJac + _17;
		publicVariable "aliJac";
	};
	if (aguJac < 1000) then {	
		aguJac = aguJac + _18;
		publicVariable "aguJac";
	};
	if (medJac < 1000) then {	
		medJac = medJac + _19;
		publicVariable "medJac";
	};
	if (comJac < 1000) then {	
		comJac = comJac + _20;
		publicVariable "comJac";
	};
	
	sleep 80;
};