/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/

while {true} do {

	if ((count nearestObjects [(getMarkerPos "mrkHierro"), ["menahierro"], 100]) <= 20) then {
	
		_mena = ["menahierro"];

		_x = round ((random 60) - 30); 
		_y = round ((random 60) - 30);

		_obj = "menahierro" createVehicle ([(getMarkerPos "mrkHierro" select 0) + _x, (getMarkerPos "mrkHierro" select 1) + _y, (getMarkerPos "mrkHierro" select 2) +0.5]);
		// [[_obj, ["<t color=""#FFBF00"" size='1' shadow='1'>" +"Picar",'[] spawn life_fnc_picarMena;', "", 7,false,true,"","isNil {tranqui}"]], "ICARUK_fnc_addAction", true, true] spawn BIS_fnc_MP; 
	};
		
	if ((count nearestObjects [(getMarkerPos "mrkCobre"), ["menacobre"], 100]) <= 20) then {
	
		_mena = ["menacobre"];

		_x = round ((random 60) - 30); 
		_y = round ((random 60) - 30);

		_obj = "menacobre" createVehicle ([(getMarkerPos "mrkCobre" select 0) + _x, (getMarkerPos "mrkCobre" select 1) + _y, (getMarkerPos "mrkCobre" select 2) +0.5]);
		//[[_obj, ["<t color=""#FFBF00"" size='1' shadow='1'>" +"Picar",'[] spawn life_fnc_picarMena;', "", 7,false,true,"","isNil {tranqui}"]], "ICARUK_fnc_addAction", true, true] spawn BIS_fnc_MP; 
	};
	/*
	if ((count nearestObjects [(getMarkerPos "mrkPlata"), ["menaplata"], 100]) <= 20) then {
	
		_mena = ["menaplata"];

		_x = round ((random 60) - 30); 
		_y = round ((random 60) - 30);

		_obj = "menaplata" createVehicle ([(getMarkerPos "mrkPlata" select 0) + _x, (getMarkerPos "mrkPlata" select 1) + _y, (getMarkerPos "mrkPlata" select 2) +0.5]);
		//[[_obj, ["<t color=""#FFBF00"" size='1' shadow='1'>" +"Picar",'[] spawn life_fnc_picarMena;', "", 7,false,true,"","isNil {tranqui}"]], "ICARUK_fnc_addAction", true, true] spawn BIS_fnc_MP; 
	};
	*/
	/*
	if ((count nearestObjects [(getMarkerPos "mrkOro"), ["menaoro"], 100]) <= 20) then {
	
		_mena = ["menaoro"];

		_x = round ((random 60) - 30); 
		_y = round ((random 60) - 30);

		_obj = "menaoro" createVehicle ([(getMarkerPos "mrkOro" select 0) + _x, (getMarkerPos "mrkOro" select 1) + _y, (getMarkerPos "mrkOro" select 2) +0.5]);
		//[[_obj, ["<t color=""#FFBF00"" size='1' shadow='1'>" +"Picar",'[] spawn life_fnc_picarMena;', "", 7,false,true,"","isNil {tranqui}"]], "ICARUK_fnc_addAction", true, true] spawn BIS_fnc_MP; 
	};
	*/
	if ((count nearestObjects [(getMarkerPos "mrkCarbon"), ["menacarbon"], 100]) <= 20) then {
	
		_mena = ["menacarbon"];

		_x = round ((random 60) - 30); 
		_y = round ((random 60) - 30);

		_obj = "menacarbon" createVehicle ([(getMarkerPos "mrkCarbon" select 0) + _x, (getMarkerPos "mrkCarbon" select 1) + _y, (getMarkerPos "mrkCarbon" select 2) +0.5]);
		//[[_obj, ["<t color=""#FFBF00"" size='1' shadow='1'>" +"Picar",'[] spawn life_fnc_picarMena;', "", 7,false,true,"","isNil {tranqui}"]], "ICARUK_fnc_addAction", true, true] spawn BIS_fnc_MP; 
	};
	/*
	if ((count nearestObjects [(getMarkerPos "mrkDiamante"), ["menadiamante"], 100]) <= 5) then {
	
		_mena = ["menadiamante"];

		_x = round ((random 60) - 30); 
		_y = round ((random 60) - 30);

		_obj = "menadiamante" createVehicle ([(getMarkerPos "mrkDiamante" select 0) + _x, (getMarkerPos "mrkDiamante" select 1) + _y, (getMarkerPos "mrkDiamante" select 2) +0.5]);
		//[[_obj, ["<t color=""#FFBF00"" size='1' shadow='1'>" +"Picar",'[] spawn life_fnc_picarMena;', "", 7,false,true,"","isNil {tranqui}"]], "ICARUK_fnc_addAction", true, true] spawn BIS_fnc_MP; 
	};
	*/
	sleep 40;
};

	
	
	
	
	