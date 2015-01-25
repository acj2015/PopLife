/*
	File: fn_kidnappingAction.sqf
	Author: tenshi
*/
private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _unit OR !isPlayer _unit) exitWith {};


[[_unit],"life_fnc_kidnapping",_unit,false] call life_fnc_MP;
