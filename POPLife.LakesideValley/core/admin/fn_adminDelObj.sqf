#include <macro.h>
/*
	File: fn_adminkey.sqf
    Author: tenshi	
*/
private["_curTarget","_vehicle","_nearVehicles"];
_curTarget = cursorTarget;
_vehicle = cursorTarget;

if(__GETC__(life_adminlevel) < 3) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};

deleteVehicle _curTarget;
cutText[format["%1 OBJET EFFACE",_curTarget],"PLAIN DOWN"];
