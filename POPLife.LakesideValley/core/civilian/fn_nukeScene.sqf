/*
	Author: alleskapot
	
	Description: Sends AAN News to the player

*/
private["_display","_message","_name"];
disableSerialization;
_message = _this select 0;
_name = _this select 1;

execVM "core\scripts\dust.sqf";
execVM "core\scripts\electricalStorm.sqf";
execVM "core\scripts\nuke.sqf";
[parseText format["<t size='1.3'>%1</t>",_message]] spawn BIS_fnc_AAN;

sleep 10;

_display = uinamespace getvariable "BIS_AAN";
_display closeDisplay 0;