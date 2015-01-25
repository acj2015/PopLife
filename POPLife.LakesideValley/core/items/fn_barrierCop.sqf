/*
	File: fn_barrierCop.sqf
	Author: Bryan "Tonic" Boardwine & [OSEF]tenshi
	Traductions/Corrections:	[OSEF]team	
	Copyright [OSEF] droits reservés. (fichier non libre de droit)
	
	Description:
	Creates a spike strip and preps it.
*/
private["_position","_spikeStrip"];
_spikeStrip = "RoadBarrier_F" createVehicle [0,0,0];
_spikeStrip attachTo[player,[0,5.5,0]];
_spikeStrip setDir 90;
_spikeStrip setVariable["item","spikeDeployed",true];

life_action_spikeStripDeploy = player addAction["Placer une barriere",{if(!isNull life_spikestrip) then {detach life_spikeStrip; life_spikeStrip = ObjNull;}; player removeAction life_action_spikeStripDeploy; life_action_spikeStripDeploy = nil;},"",999,false,false,"",'!isNull life_spikestrip'];
life_spikestrip = _spikeStrip;
waitUntil {isNull life_spikeStrip};
if(!isNil "life_action_spikeStripDeploy") then {player removeAction life_action_spikeStripDeploy;};
if(isNull _spikeStrip) exitWith {life_spikestrip = ObjNull;};
_spikeStrip setPos [(getPos _spikeStrip select 0),(getPos _spikeStrip select 1),0];
_spikeStrip setDamage 1;
life_action_spikeStripPickup = player addAction["Retirer la barriere",life_fnc_packupBarrier,"",0,false,false,"",
' _spikes = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0; !isNil "_spikes" && !isNil {(_spikes getVariable "item")}'];
[[_spikeStrip],"TON_fnc_spikeStrip",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.