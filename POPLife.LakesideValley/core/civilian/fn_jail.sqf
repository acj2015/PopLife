/*
	File: fn_jail.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Starts the initial process of jailing.
*/
private["_bad","_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
hint format["%1", _unit];
if(isNull _unit) exitWith {}; //Dafuq?
if(_unit != player) exitWith {}; //Dafuq?
if(life_is_arrested) exitWith {}; //Dafuq i'm already arrested
_bad = [_this,1,false,[false]] call BIS_fnc_param;
player setVariable["restrained",false,true];
player setVariable["Escorting",false,true];
player setVariable["transporting",false,true];

titleText[localize "STR_Jail_Warn","PLAIN"];
hint localize "STR_Jail_LicenseNOTF";
player setPos (getMarkerPos "jail_marker");

if (uniform player == "A3L_Prisoner_Outfit") then 
{
	A3L_Fnc_OldUniform = "A3L_Shirt";
} 
else
{
	A3L_Fnc_OldUniform = Uniform player;
};

if(_bad) then
{
	waitUntil {alive player};
	sleep 1;
};

//Check to make sure they goto check
if(player distance (getMarkerPos "jail_marker") > 40) then
{
	player setPos (getMarkerPos "jail_marker");
};

[1] call life_fnc_removeLicenses;
if(life_inv_heroinu > 0) then {[false,"heroinu",life_inv_heroinu] call life_fnc_handleInv;};
if(life_inv_heroinp > 0) then {[false,"heroinp",life_inv_heroinp] call life_fnc_handleInv;};
if(life_inv_coke > 0) then {[false,"cocaine",life_inv_coke] call life_fnc_handleInv;};
if(life_inv_cokep > 0) then {[false,"cocainep",life_inv_cokep] call life_fnc_handleInv;};
if(life_inv_turtle > 0) then {[false,"turtle",life_inv_turtle] call life_fnc_handleInv;};
if(life_inv_cannabis > 0) then {[false,"cannabis",life_inv_cannabis] call life_fnc_handleInv;};
if(life_inv_marijuana > 0) then {[false,"marijuana",life_inv_marijuana] call life_fnc_handleInv;};
if(life_inv_multipass > 0) then {[false,"multipass",life_inv_multipass] call life_fnc_handleInv;};
if(life_inv_menottes > 0) then {[false,"menottes",life_inv_menottes] call life_fnc_handleInv;};
if(life_inv_uraniumu > 0) then {[false,"uraniumu",life_inv_uraniumu] call life_fnc_handleInv;};
if(life_inv_uraniump > 0) then {[false,"uraniump",life_inv_uraniump] call life_fnc_handleInv;};	
if(life_inv_blastingcharge > 0) then {[false,"blastingcharge",life_inv_blastingcharge] call life_fnc_handleInv;};	
life_is_arrested = true;

removeAllWeapons player;
{player removeMagazine _x} foreach (magazines player);

[[player,_bad],"life_fnc_jailSys",false,false] spawn life_fnc_MP;
[5] call SOCK_fnc_updatePartial;