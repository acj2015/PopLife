/*
	ALAH SNACKBAR!
	Author: Tonic
	
*/
private["_test"];
if(vest player != "a3l_suicidevest") exitWith {};
_test = "Bo_Mk82" createVehicle [0,0,9999];
_test setPos (getPos player);
_test setVelocity [100,0,0];

if(alive player) then {player setDamage 1;};

[[0,format["%1 ha Explotado su chaleco suicida.",profileName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;