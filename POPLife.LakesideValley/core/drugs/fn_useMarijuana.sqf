/*
	File: fn_useWeed
	Author: Vampire+Kuchiha crafted by: tenshi	
	
	Description:
	Main functionality for using weed.
*/

//Close inventory
closeDialog 0;

//Little hint then wait a litle before starting drugs effects
hint "La marijuana c'est mal, voyeeezzz !";
[[0,format["%1 s'allume un joint.",name player]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;

//Activate ppEffects we need
"chromAberration" ppEffectEnable true;
"radialBlur" ppEffectEnable true;
enableCamShake true;

// Vampire code for smokeeffect

if (vehicle player != player) then {
	if ((typeOf (vehicle player)) in ["B_G_Quadbike_01_F","B_Quadbike_01_F","C_Quadbike_01_F","I_Quadbike_01_F","O_Quadbike_01_F"]) then {
		_smoke = "SmokeShell" createVehicle position player;
		_smoke attachTo [(vehicle player),[0,-0.2,0.1]];
		_smoke1 = "SmokeShell" createVehicle position player;
		_smoke1 attachTo [(vehicle player),[0,-0.2,0.1]];
	} else {
		_smoke = "SmokeShell" createVehicle position player;
		_smoke attachTo [(vehicle player),[-0.3,-0.08,-0.3]];
		_smoke1 = "SmokeShell" createVehicle position player;
		_smoke1 attachTo [(vehicle player),[-0.3,-0.08,-0.3]];
	};
} else {
	_smoke = "SmokeShell" createVehicle position player;
	_smoke attachTo [player,[0,0,0.1],"pelvis"];
	_smoke1 = "SmokeShell" createVehicle position player;
	_smoke1 attachTo [player,[0,0,0.1],"pelvis"];
};


//Let's go for 55secs of effetcs
for "_i" from 0 to 54 do
{
    "chromAberration" ppEffectAdjust [random 0.25,random 0.25,true];
    "chromAberration" ppEffectCommit 1;   
    "radialBlur" ppEffectAdjust  [random 0.02,random 0.02,0.15,0.15];
    "radialBlur" ppEffectCommit 1;
    addcamShake[random 3, 1, random 3];
    sleep 1;
};

//Stop effects
"chromAberration" ppEffectAdjust [0,0,true];
"chromAberration" ppEffectCommit 5;
"radialBlur" ppEffectAdjust  [0,0,0,0];
"radialBlur" ppEffectCommit 5;
sleep 6;

//Deactivate ppEffects
"chromAberration" ppEffectEnable false;
"radialBlur" ppEffectEnable false;
resetCamShake;