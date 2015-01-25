/*
	File: fn_lockpick.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for lock-picking.
*/
private["_curTarget","_distance","_isVehicle","_title","_progressBar","_cP","_titleText","_dice","_vehicle","_badDistance"];
_curTarget = cursorTarget;
life_interrupted = false;
if(life_action_inUse) exitWith {};
if(isNull _curTarget) exitWith {}; //Bad type
_distance = ((boundingBox _curTarget select 1) select 0) + 2;
if(player distance _curTarget > _distance) exitWith {}; //Too far
_isVehicle = if((_curTarget isKindOf "LandVehicle") OR (_curTarget isKindOf "Ship") OR (_curTarget isKindOf "Air")) then {true} else {false};
if(_isVehicle && _curTarget in life_vehicles) exitWith {hint localize "STR_ISTR_Lock_AlreadyHave"};

// Impossible vehicules to lockpick:
if((typeOf _curTarget) == "B_MRAP_01_F" || (typeOf _curTarget) == "O_MRAP_02_F" || (typeOf _curTarget) == "max_H3_black" || (typeOf _curTarget) == "GNT_C185" || (typeOf _curTarget) == "B_Heli_Light_01_F" || (typeOf _curTarget) == "O_Heli_Light_02_unarmed_F" || (typeOf _curTarget) == "A3L_Towtruck") exitWith {hint "Aucune chance de crocheter ce véhicule."};

//More error checks
if(!_isVehicle && !isPlayer _curTarget) exitWith {};
if(!_isVehicle && !(_curTarget getVariable["restrained",false])) exitWith {};

_title = format[localize "STR_ISTR_Lock_Process",if(!_isVehicle) then {"Handcuffs"} else {getText(configFile >> "CfgVehicles" >> (typeOf _curTarget) >> "displayName")}];
life_action_inUse = true; //Lock out other actions

//Setup the progress bar
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNamespace getVariable "life_progress";
_progressBar = _ui displayCtrl 38201;
_titleText = _ui displayCtrl 38202;
_titleText ctrlSetText format["%2 (1%1)...","%",_title];
_progressBar progressSetPosition 0.01;
_cP = 0.01;
//player setVariable ["lockpicking",true,true];
[[player,"lockpicksound"],"fnc_playsound",true,false,true] call BIS_fnc_MP;
while {true} do
{
	if(animationState player != "AinvPknlMstpsnonWnonDnon_medic_1" ) then {
	player action ["SwitchWeapon", player, player, 100];   //EDIT
	player playMove "AinvPknlMstpsnonWnonDnon_medic_1"; //Durée action 6.5 secondes
	player playActionNow "stop";
	player playMove "AinvPknlMstpsnonWnonDnon_medic_1";
	player playActionNow "stop";
	player playMove "AinvPknlMstpsnonWnonDnon_medic_1";
	};
	sleep 0.195; // 3 fois 6.5 secondes = 19,5secondes
	
	if(isNull _ui) then {
		5 cutRsc ["life_progress","PLAIN"];
		_ui = uiNamespace getVariable "life_progress";
		_progressBar = _ui displayCtrl 38201;
		_titleText = _ui displayCtrl 38202;
	};
	_cP = _cP + 0.01;
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
//player setVariable ["lockpicking",false,true];
if(!alive player OR life_istazed) exitWith {life_action_inUse = false;};
if((player getVariable["restrained",false])) exitWith {life_action_inUse = false;};
if(!isNil "_badDistance") exitWith {titleText[localize "STR_ISTR_Lock_TooFar","PLAIN"]; life_action_inUse = false;};
if(life_interrupted) exitWith {life_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; life_action_inUse = false;};
if(!([false,"lockpick",1] call life_fnc_handleInv)) exitWith {life_action_inUse = false;};

life_action_inUse = false;

if(!_isVehicle) then {
	_curTarget setVariable["restrained",false,true];
	_curTarget setVariable["Escorting",false,true];
	_curTarget setVariable["transporting",false,true];
//	player setVariable ["lockpicking",false,true];
} else {
	_dice = random(100);
	_vehicle = cursorTarget;
	if(_dice < 11) then {
		[[_curTarget,0],"life_fnc_lockVehicle",_curTarget,false] spawn life_fnc_MP;
		["Le crochetage a reussit.",20,"green"] call A3L_Fnc_Msg;
		[[getPlayerUID player,profileName,"487"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;		
//		player setVariable ["lockpicking",false,true];
		if(!(_vehicle in life_vehicles)) then {life_vehicles set[count life_vehicles,_vehicle];};
	} else {
		[[_vehicle,"CarAlarm"],"fnc_playsound",true,false,true] call BIS_fnc_MP;		
		["Le crochetage a echoue.",20,"red"] call A3L_Fnc_Msg;
//		player setVariable ["lockpicking",false,true];
	};
};