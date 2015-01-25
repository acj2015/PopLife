/*
	File: fn_multipass.sqf
	Author: Bryan "Tonic" Boardwine & tenshi	
	
	Description:
	Main functionality for opening nuke truck.
*/
private["_curTarget","_distance","_isVehicle","_title","_progressBar","_cP","_titleText","_dice","_vehicle","_badDistance"];
_curTarget = cursorTarget;
life_interrupted = false;
if(life_action_inUse) exitWith {};
if(isNull _curTarget) exitWith {}; //Bad type
_distance = ((boundingBox _curTarget select 1) select 0) + 2;
if(player distance _curTarget > _distance) exitWith {}; //Too far
_isVehicle = if((typeOf _curTarget) == "O_Truck_03_device_F") then {true} else {false};
if(_isVehicle && _curTarget in life_vehicles) exitWith {hint "Les clefs du véhicules sont deja dans ton porte-clefs."};


//More error checks
if(!_isVehicle && !isPlayer _curTarget) exitWith {};
if(!_isVehicle && !(_curTarget getVariable["restrained",false])) exitWith {};

_title = format["Ouverture du %1",if(!_isVehicle) then {"Handcuffs"} else {getText(configFile >> "CfgVehicles" >> (typeOf _curTarget) >> "displayName")}];
life_action_inUse = true; //Lock out other actions

//POLICE MSG
	[[0,format["%1 VOLE LE CAMION D'AREVA, VITE !!!.",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
	[[1,format["%1 VOLE LE CAMION D'AREVA, VITE !!!.",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;	
	[[2,format["%1 VOLE LE CAMION D'AREVA, VITE !!!.",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
//Setup the progress bar
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNamespace getVariable "life_progress";
_progressBar = _ui displayCtrl 38201;
_titleText = _ui displayCtrl 38202;
_titleText ctrlSetText format["%2 (1%1)...","%",_title];
_progressBar progressSetPosition 0.01;
_cP = 0.01;

while {true} do
{
	if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
		[[player,"AinvPknlMstpSnonWnonDnon_medic_1"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
		player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
	};
	sleep 0.26;
	_cP = _cP + 0.0025;
	_progressBar progressSetPosition _cP;
	_titleText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_title];
	if(_cP >= 1 OR !alive player) exitWith {};
	if(life_istazed) exitWith {}; //Tazed
	if(life_interrupted) exitWith {};
	if((player getVariable["restrained",false])) exitWith {};
	if(player distance _curTarget > _distance) exitWith {_badDistance = true;};
};

//Kill the UI display and check for various states
5 cutText ["","PLAIN"];
player playActionNow "stop";
if(!alive player OR life_istazed) exitWith {life_action_inUse = false;};
if((player getVariable["restrained",false])) exitWith {life_action_inUse = false;};
if(!isNil "_badDistance") exitWith {titleText["Tu t'es barre ?!","PLAIN"]; life_action_inUse = false;};
if(life_interrupted) exitWith {life_interrupted = false; titleText["Action annulee","PLAIN"]; life_action_inUse = false;};


life_action_inUse = false;
_vehicle = cursorTarget;
if(!_isVehicle) then {
	_curTarget setVariable["restrained",false,true];
	_curTarget setVariable["Escorting",false,true];
	_curTarget setVariable["transporting",false,true];
} else {
		titleText["Le vehicule est maintenant ouvert.","PLAIN"];
		cursorTarget lock false;
		if(!(_vehicle in life_vehicles)) then {life_vehicles set[count life_vehicles,_vehicle];};
};