/*
	File: fn_heldScientist.sqf
	Author: tenshi
	Traductions/Corrections:	tenshi	
	Copyright [tenshi] droits reserves. (fichier non libre de droit)
*/
private ["_scientist","_newItem","_hasLicense","_itemName","_copNum","_nuke_truck"];
_scientist = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_copNum = 0;

if(life_action_in_use) exitWith {};

//Error check
if(isNull _scientist OR (player distance _scientist > 5)) exitWith {hint "Tu dois rester à moins de 5mètres du scientifique"};

titleText[format["Tu dois rester a 5m de ta victime."],"PLAIN"];


//COPS CONNECTED CONDITION
_players = playableUnits;//call fnc_allunits;
_countplayers = count _players;
_i = 0;
for "_i" from 0 to _countplayers do
	{
		_selectedUnit = _players select _i;
		if (player != _selectedUnit) then 
		{
			if (side _selectedUnit == west) then{_copNum = _copNum + 1;};
		}
	};
if(_copNum < 5) exitWith {[[_vault,-1],"TON_fnc_centralState",false,false] spawn life_fnc_MP; hint "Il y a moins de 5 policiers connectes!"};


//Setup vars.
_newItem = "multipass";

_itemName = [([_newItem,0] call life_fnc_varHandle)] call life_fnc_varToStr;

life_is_processing = true;


	// Show progress during 180 sec
	["Sequestrer un scientifique peu commode..", 180] call life_fnc_showProgress;
	
	if(player distance _scientist > 5) exitWith {hint "Tu dois rester a 5m de ta victime."; 5 cutText ["","PLAIN"]; life_is_processing = false;};
    
	if(!([true,_newItem,1] call life_fnc_handleInv)) exitWith {
		life_is_processing = false;
	};

    titleText[format["Tu as recupere le MultiPass"],"PLAIN"];

	_nuke_truck = "O_Truck_03_device_F" createVehicle (getMarkerPos "nuke_truck_spawn");
	_nuke_truck setDir (markerDir "nuke_truck_spawn");
	_nuke_truck setvehiclelock "LOCKED";
	_nuke_truck lock 2;
	
	life_is_processing = false;
	
	_nuke_scientUni = "Box_NATO_Ammo_F" createVehicle (getMarkerPos "nuke_scient_box");
	_nuke_scientUni setDir (markerDir "nuke_scient_box");
	clearWeaponCargoGlobal _nuke_scientUni;      
	clearMagazineCargoGlobal _nuke_scientUni;     
	clearItemCargoGlobal _nuke_scientUni;     
	clearBackpackCargoGlobal _nuke_scientUni;
	sleep 0.1;
	_nuke_scientUni addItemCargoGlobal ["U_B_PilotCoveralls",8];