/*
	File: fn_restrain.sqf
	Author: Bryan "Tonic" Boardwine & tenshi
	
	
	Description:
	Retrains the client.
*/
private["_civ","_player"];
_civ = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
if(isNull _civ) exitWith {};

//Monitor excessive restrainment
[] spawn
{
	private["_time"];
	while {true} do
	{
		_time = time;
		waitUntil {(time - _time) > (60 * 60)};
		
		if(!(player getVariable["restrained",FALSE])) exitWith {};
		if(!([west,getPos player,30] call life_fnc_nearUnits) && (player getVariable["restrained",FALSE]) && vehicle player == player) exitWith {
			player setVariable["restrained",FALSE,TRUE];
			titleText ["Tu as été demenotté automatiquement, due à une expiration de la rétention","PLAIN"];
		};
	};
};
if((player getVariable["surrender",FALSE])) then { player setVariable["surrender",FALSE,TRUE]; player switchMove ""; };
titleText[format["Tu as été menotté par %1",name _civ],"PLAIN"];
				
while {player getVariable "restrained"} do
{
	if(vehicle player == player) then {
		player playMove "AmovPercMstpSnonWnonDnon_Ease";
	};

	_state = vehicle player;
	waitUntil {animationState player != "AmovPercMstpSnonWnonDnon_Ease" || !(player getvariable "restrained") || vehicle player != _state};

	if(!alive player) exitWith
	{
		player setVariable ["restrained",false,true];
	};	
	
	if(!alive _civ) exitWith {
		player setVariable ["Escorting",false,true];
	};	
	
	if(vehicle player != player) then
	{
		//disableUserInput true;
		if(driver (vehicle player) == player) then {player action["eject",vehicle player];};
	};

};

//disableUserInput false;
		
if(alive player) then
{
	titleText["Tu as été demenotté, press V pour t enlever les menottes.","PLAIN"];
};