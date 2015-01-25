/*
	File: fn_heldScientist.sqf
	Author: tenshi
	
*/
private["_vault","_unit"];
//_vault = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_vault = nuke_scientist;
_unit = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;

if(isNull _vault OR isNull _unit) exitWith {hintSilent format["BAD DATA"];}; //Bad data passed

[[_vault,_unit],"TON_fnc_heldScientist",false,false] spawn life_fnc_MP;