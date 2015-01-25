/*
	File: fn_kidnapping.sqf
	Author: tenshi
	Copyright [tenshi] droits reserves. (fichier non libre de droit)
	
	Description:
	Main functionality for kidnapping action.
*/
private["_civ"];
_civ = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
if(isNull _civ) exitWith {};

titleText["Tu as été kidnappé, ils t ont mis un sac sur la tete","PLAIN"];
life_kidnapped = true;

while {life_kidnapped} do
{		
	if(!alive player) then {
		0 cutFadeOut 0;
		cutText["","PLAIN"];		
		life_kidnapped = false;		
	} else {
		cutText["","BLACK FADED"];
		0 cutFadeOut 99999999;	
	};
};