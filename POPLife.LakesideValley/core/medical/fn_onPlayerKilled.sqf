/*
	File: fn_onPlayerKilled.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	When the player dies collect various information about that player
	and pull up the death dialog / camera functionality.
*/
private["_unit","_killer", "_tmpCash"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_killer = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
disableSerialization;
_tmpCash = life_cash;
life_deadPosition = (getPos player);
life_cash = 0;
[6] call SOCK_fnc_updatePartial;
[7] call SOCK_fnc_updatePartial;

[] spawn
{
	while {(vehicle player) != player} do
	{
		player action ["Eject", (vehicle player)];
	};
};

//Set some vars
_unit setVariable["Revive",FALSE,TRUE]; //Set the corpse to a revivable state.
_unit setVariable["name",profileName,TRUE]; //Set my name so they can say my name.
_unit setVariable["restrained",FALSE,TRUE];
_unit setVariable["Escorting",FALSE,TRUE];
_unit setVariable["transporting",FALSE,TRUE]; //Why the fuck do I have this? Is it used?
_unit setVariable["steam64id",(getPlayerUID player),true]; //Set the UID.

//Setup our camera view
life_deathCamera  = "CAMERA" camCreate (getPosATL _unit);
showCinemaBorder true;
life_deathCamera cameraEffect ["Internal","Back"];
createDialog "DeathScreen";
life_deathCamera camSetTarget _unit;
life_deathCamera camSetRelPos [0,3.5,4.5];
life_deathCamera camSetFOV .5;
life_deathCamera camSetFocus [50,0];
life_deathCamera camCommit 0;

(findDisplay 7300) displaySetEventHandler ["KeyDown","if((_this select 1) == 1) then {true}"]; //Block the ESC menu

_unit spawn
{
	private["_maxTime","_RespawnBtn","_Timer","_medics"];
	disableSerialization;
	_RespawnBtn = ((findDisplay 7300) displayCtrl 7302);
	_Timer = ((findDisplay 7300) displayCtrl 7301);
	
	_medics = [independent] call life_fnc_playerCount;
	
	_maxTime = time + (life_respawn_timer * 60);
	if (_medics > 1) then 
	{
		_maxtime = time + (10 * 60);
	};
	
	_RespawnBtn ctrlEnable false;
	waitUntil {_Timer ctrlSetText format[localize "STR_Medic_Respawn",[(_maxTime - time),"MM:SS.MS"] call BIS_fnc_secondsToString]; 
	round(_maxTime - time) <= 0 OR isNull _this};
	_RespawnBtn ctrlEnable true;
	_Timer ctrlSetText localize "STR_Medic_Respawn_2";
};

[] spawn life_fnc_deathScreen;

//Create a thread to follow with some what precision view of the corpse.
[_unit] spawn
{
	private["_unit"];
	_unit = _this select 0;
	waitUntil {if(speed _unit == 0) exitWith {true}; life_deathCamera camSetTarget _unit; life_deathCamera camSetRelPos [0,3.5,4.5]; life_deathCamera camCommit 0;};
};

//Make the killer wanted
if(!isNull _killer && {_killer != _unit} && {side _killer != west} && {alive _killer}) then 
{
	if(vehicle _killer isKindOf "LandVehicle") then 
	{
		[[getPlayerUID _killer,_killer getVariable["realname",name _killer],"187V"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
	}
	else 
	{
		[[getPlayerUID _killer,_killer getVariable["realname",name _killer],"187"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
	};
};

if (!isNull _killer) then
{
	life_killer = _killer;
};

//Killed by cop stuff...
if(side _killer == west && playerSide != west) then 
{
	life_copRecieve = _killer;
	if(!life_use_atm && {_tmpCash > 0}) then 
	{
		[format[localize "STR_Cop_RobberDead",[_tmpCash] call life_fnc_numberText],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		_tmpCash = 0;
	};
};

if(!isNull _killer && {_killer != _unit}) then 
{
	life_removeWanted = true;
};

life_cash = _tmpCash;
_handle = [_unit] spawn life_fnc_dropItems;
waitUntil {scriptDone _handle};
life_cash = 0;

life_hunger = 100;
life_thirst = 100;
life_carryWeight = 0;

[] call life_fnc_hudUpdate; //Get our HUD updated.
[[player,life_sidechat,playerSide],"TON_fnc_managesc",false,false] spawn life_fnc_MP;

[0] call SOCK_fnc_updatePartial;
[3] call SOCK_fnc_updatePartial;