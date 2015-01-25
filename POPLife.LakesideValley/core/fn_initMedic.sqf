#include <macro.h>
/*
	File: fn_initMedic.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Initializes the medic..
*/


private["_spawnPos","_value","_action","_pName","_end"];

_value = parseNumber(ctrlText 9922);
if(_value < 0) exitWith {};
if(_value > 999999) exitWith {};

player removeWeapon "A3L_PaintballGun_red";
player removeWeapon "A3L_PaintballGun_blue";
player removeWeapon "A3L_PaintballGun_pink";
{if(_x == "paintballs") then {player removeMagazine _x};} foreach (magazines player);

_action = [
	format [localize "STR_ANOTF_Age",[_value] call life_fnc_numberText],
	localize "STR_Global_18",
	localize "STR_Global_18y",
	localize "STR_Global_18n"
] call BIS_fnc_guiMessage;

if(_action) then {

	/*Spawn Menu*/
player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};

if((__GETC__(life_medicLevel)) < 1) exitWith {
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
	sleep 35;
};

[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
[] execVM "msgbienvenueMedic.sqf";

} else {

	/*AGE VERIFICATION, NotifyAdmin by Crow*/
	_pName = player;
	if(isServer && !hasInterface) exitWith {}; //NO SERVER DO NOT EXECUTE IT!
	#include <macro.h>
	if(__GETC__(life_adminlevel) < 1) exitWith {};
	hint parseText format["<t align='center'><t color='#FF0000'><t size='3'>Verificacion de edad</t></t><br/> Detección de Verificacion de edad </t><br/><br/>Pseudo: %1<br/>",_pName];
	/*FIN DE MISSION*/
	["Age",false,false] call BIS_fnc_endMission;

};

