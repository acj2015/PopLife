
sleep 3;

player addAction ["<t color=""#FFBF00"" size='1' shadow='1'>" +"Picar",'[] spawn life_fnc_picarMena;', "", 9,false,true,"",'(!isNil {((nearestObjects [(getPos player), ["menahierro"], 4]) select 0)}) OR (!isNil {((nearestObjects [(getPos player), ["hierro"], 4]) select 0)})'];
player addAction ["<t color=""#FFBF00"" size='1' shadow='1'>" +"Picar",'[] spawn life_fnc_picarMena;', "", 9,false,true,"",'(!isNil {((nearestObjects [(getPos player), ["menacobre"], 4]) select 0)}) OR (!isNil {((nearestObjects [(getPos player), ["cobre"], 4]) select 0)})'];
player addAction ["<t color=""#FFBF00"" size='1' shadow='1'>" +"Picar",'[] spawn life_fnc_picarMena;', "", 9,false,true,"",'(!isNil {((nearestObjects [(getPos player), ["menaplata"], 4]) select 0)}) OR (!isNil {((nearestObjects [(getPos player), ["plata"], 4]) select 0)})'];
player addAction ["<t color=""#FFBF00"" size='1' shadow='1'>" +"Picar",'[] spawn life_fnc_picarMena;', "", 9,false,true,"",'(!isNil {((nearestObjects [(getPos player), ["menaoro"], 4]) select 0)}) OR (!isNil {((nearestObjects [(getPos player), ["oro"], 4]) select 0)})'];
player addAction ["<t color=""#FFBF00"" size='1' shadow='1'>" +"Picar",'[] spawn life_fnc_picarMena;', "", 9,false,true,"",'(!isNil {((nearestObjects [(getPos player), ["menadiamante"], 4]) select 0)}) OR (!isNil {((nearestObjects [(getPos player), ["diamante"], 4]) select 0)})'];
player addAction ["<t color=""#FFBF00"" size='1' shadow='1'>" +"Picar",'[] spawn life_fnc_picarMena;', "", 9,false,true,"",'(!isNil {((nearestObjects [(getPos player), ["menacarbon"], 4]) select 0)}) OR (!isNil {((nearestObjects [(getPos player), ["carbon"], 4]) select 0)})'];

player addAction ["<t color=""#FFBF00"" size='1' shadow='1'>" +"Capturar",'null = [_this select 0] execVM "ica\ranas\capturarRana.sqf"; deleteVehicle ((nearestObjects [(getPos player), ["rana"], 4]) select 0);', "", 9,false,true,"",'!isNil {((nearestObjects [(getPos player), ["rana"], 4]) select 0)}'];
player addAction ["<t color=""#FFBF00"" size='1' shadow='1'>" +"Despejar",'null = [_this select 0] execVM "ica\sucesos\despejar.sqf";', "", 9,false,true,"",'(!isNil {((nearestObjects [(getPos player), ["Land_Wreck_Car3_F"], 4]) select 0)}) OR (!isNil {((nearestObjects [(getPos player), ["Land_Wreck_Car2_F"], 4]) select 0)}) OR (!isNil {((nearestObjects [(getPos player), ["Land_Wreck_Truck_dropside_F"], 4]) select 0)}) OR (!isNil {((nearestObjects [(getPos player), ["Land_Wreck_Van_F"], 4]) select 0)}) '];

player addAction ["<t color=""#FFBF00"" size='1' shadow='1'>" +"Pssst",'null = [_this select 0] execVM "ica\sucesos\hablar.sqf";', "", 9,false,true,"",'(cursorTarget getVariable "detenible")'];

if (side player == independent) then {
	player addAction ["<t color=""#FFBF00"" size='1' shadow='1'>" +"TEC",'null = [] execVM "ica\tests\testEnf.sqf";', "", 9,false,true,"",'(cursorTarget isKindOf "Man") AND ((player distance cursorTarget) < 2)'];
};	


[] spawn {
	life_has_insurance = true;
	sleep 60;
	life_has_insurance = false;
};