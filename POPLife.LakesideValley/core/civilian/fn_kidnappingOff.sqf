/*
	File: fn_kidnappingOff.sqf
	Author: tenshi
	Copyright [tenshi] droits reserves. (fichier non libre de droit)
	
	Description:
	Main functionality for kidnapping action.
*/
private["_civ"];
_civ = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
if(isNull _civ) exitWith {};

titleText["Ils vont t enlever le sac que tu as sur la tete dans 3 secondes.","PLAIN"];
sleep 3;
life_kidnapped = false;

0 cutFadeOut 0;
cutText["","PLAIN"];