/*
	File: fn_packupSpikes.sqf
	Author: Bryan "Tonic" Boardwine & [OSEF]tenshi
	Traductions/Corrections:	[OSEF]team	
	Copyright [OSEF] droits reservés. (fichier non libre de droit)
	
	Description:
	Packs up a deployed spike strip.
*/
private["_spikes"];
_spikes = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0;
if(isNil "_spikes") exitWith {};

if(([true,"barrierCop",1] call life_fnc_handleInv)) then
{
	titleText["Usted ha empacado la barrera del camino.","PLAIN"];
	player removeAction life_action_spikeStripPickup;
	life_action_spikeStripPickup = nil;
	deleteVehicle _spikes;
};