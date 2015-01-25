/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/

while {true} do {

	if ((count nearestObjects [(getMarkerPos "pantanoMRK"), ["rana"], 100]) <= 40) then {
	
		_x = round ((random 50) - 25); 
		_y = round ((random 50) - 25);

		_obj = "rana" createVehicle ([(getMarkerPos "pantanoMRK" select 0) + _x, (getMarkerPos "pantanoMRK" select 1) + _y, (getMarkerPos "pantanoMRK" select 2) +0.5]);
		[_obj] execVM "ica\ranas\salto.sqf";
		//[[_obj, ["<t color=""#FFBF00"" size='1' shadow='1'>" +"Capturar",'null = [_this select 0] execVM "ica\ranas\capturarRana.sqf";', "", 9,false,true,"",""]], "ICARUK_fnc_addAction", true, true] spawn BIS_fnc_MP; 
		
	};
	
	sleep 50;
};

	
	


	
	
	