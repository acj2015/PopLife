/*
	File: fn_initCiv.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Initializes the civilian.
*/
private["_spawnPos","_value","_action","_pName"];
// civ_spawn_1 = nearestObjects[getMarkerPos  "civ_spawn_1", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
// civ_spawn_2 = nearestObjects[getMarkerPos  "civ_spawn_2", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
// civ_spawn_3 = nearestObjects[getMarkerPos  "civ_spawn_3", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
// civ_spawn_4 = nearestObjects[getMarkerPos  "civ_spawn_4", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
// waitUntil {!(isNull (findDisplay 46))};


player removeWeapon "A3L_PaintballGun_red";
player removeWeapon "A3L_PaintballGun_blue";
player removeWeapon "A3L_PaintballGun_pink";
{if(_x == "paintballs") then {player removeMagazine _x};} foreach (magazines player);

/*******Age Verification*********/
          /*by Crow*/

_value = parseNumber(ctrlText 9922);
if(_value < 0) exitWith {};
if(_value > 999999) exitWith {};

_action = [
	format [localize "STR_ANOTF_Age",[_value] call life_fnc_numberText],
	localize "STR_Global_18",
	localize "STR_Global_18y",
	localize "STR_Global_18n"
] call BIS_fnc_guiMessage;

if(_action) then {

	/*Spawn Menu*/
	if(life_is_arrested) then
	{
	life_is_arrested = false;
	[player,true] spawn life_fnc_jail;
	}
	else
	{
	[] call life_fnc_spawnMenu;
	waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
	waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
	[] execVM "msgbienvenueCiv.sqf";
	};
	player addRating 9999999;
	[] call life_fnc_zoneCreator;	

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