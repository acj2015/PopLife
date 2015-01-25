/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/

waitUntil {!isNil {life_ATMCash}};
waitUntil {!isNil {comMor}};
waitUntil {player == player};


while {true} do {
	
	_mPyr = round ((aliMem + medMem + aguMem + comMem) / 4);
	_mAbd = round ((aliAer + medAer + aguAer + comAer) / 4);
	_mAth = round ((aliDia + medDia + aguDia + comDia) / 4);
	_mKal = round ((aliMor + medMor + aguMor + comMor) / 4);
	_mKav = round ((aliJac + medJac + aguJac + comJac) / 4);
	
	_recTotal = round (((_mPyr + _mAbd + _mAth + _mKal + _mKav) / 5) / 10);
	
	
	if (_recTotal <= 5) then {		// 5%
		life_ATMCash = life_ATMCash - (life_ATMCash * 0.0018);
		systemChat format ["Debido a que los suministros generales estan por debajo del 5%2, pagas %1€ de impuestos.", round (life_ATMCash * 0.0018),"%"];
	};
	if ((_recTotal > 5) AND (_recTotal <= 15)) then {	// 15%
		life_ATMCash = life_ATMCash - (life_ATMCash * 0.0013);
		systemChat format ["Debido a que los suministros generales estan por debajo del 15%2, pagas %1€ de impuestos.", round (life_ATMCash * 0.0013),"%"];
	};		
	if ((_recTotal > 15) AND (_recTotal <= 25)) then {	// 25%

		life_ATMCash = life_ATMCash - (life_ATMCash * 0.0011);
		systemChat format ["Debido a que los suministros generales estan por debajo del 25%2, pagas %1€ de impuestos.", round (life_ATMCash * 0.0011),"%"];
	};	
	if ((_recTotal > 25) AND (_recTotal <= 35)) then {	// 35%
		life_ATMCash = life_ATMCash - (life_ATMCash * 0.0009);
		systemChat format ["Debido a que los suministros generales estan por debajo del 35%2, pagas %1€ de impuestos.", round (life_ATMCash * 0.0009),"%"];
	};	
	if ((_recTotal > 35) AND (_recTotal <= 75)) then { 	// 36-74%
		
	};	
	if (_recTotal > 65) then {
		life_ATMCash = life_ATMCash + (life_ATMCash * 0.0012);
		systemChat format ["Debido a que los suministros generales estan por encima del 50%2, recibes %1€ de compensacion.", round (life_ATMCash * 0.0012),"%"];
	};	
	
	sleep 300;
};

/*
	0,14% cada 5 mins en las peores condiciones, si tienes 4 millones te quitan 4600 cada 5 minutos, 331200 en 6h		(*0.0014)
  +	0,16% cada 5 mins en las mejores condiciones, si tienes 4 millones te ganas 7400 cada 5 minutos, 532000 en 6h	(*0.0015)
													De 4000 a 2700 se tardarían 54 minutos (-120 cada 5 mins)
													54/5 = 10 pagas		7400 * 10 = 74000 en 54 minutos
													
													
	aliMem = 0; medMem = 0; aguMem = 0; comMem = 0; aliAer = 0; medAer = 0; aguAer = 0; comAer = 0; aliDia = 0; medDia = 0; aguDia = 0; comDia = 0; aliMor = 0; medMor = 0; aguMor = 0; comMor = 0;												
	aliMem = 1000; medMem = 1000; aguMem = 1000; comMem = 1000; aliAer = 1000; medAer = 1000; aguAer = 1000; comAer = 1000; aliDia = 1000; medDia = 1000; aguDia = 1000; comDia = 1000; aliMor = 1000; medMor = 1000; aguMor = 1000; comMor = 1000;												
													
*/
