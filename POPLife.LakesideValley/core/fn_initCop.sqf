#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Cop Initialization file.
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
	player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

if(!(str(player) in ["cop_1","cop_2","cop_3","cop_4"])) then {
	if((__GETC__(life_coplevel) == 0) && (__GETC__(life_adminlevel) == 0)) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};


player setVariable["rank",(__GETC__(life_coplevel)),true];
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
[] execVM "msgbienvenueCop.sqf";

} else {

	/*AGE VERIFICATION, NotifyAdmin by Crow*/
	_pName = player;
	if(isServer && !hasInterface) exitWith {}; //NO SERVER DO NOT EXECUTE IT!
	#include <macro.h>
	if(__GETC__(life_adminlevel) < 1) exitWith {};
	hint parseText format["<t align='center'><t color='#FF0000'><t size='3'>Age Verification</t></t><br/> Detection Age Verification </t><br/><br/>Pseudo: %1<br/>",_pName];
	/*FIN DE MISSION*/
	["Age",false,false] call BIS_fnc_endMission;

};
