#include <macro.h>
/*
Filename: fn_insurance.sqf
Author: Kevin Webb
Description: Simple way of insuring the vehicle. Will be modified in the future.
*/
private["_nearVehicles","_vehicle","_price"];
if(vehicle player != player) then
{
	_vehicle = vehicle player;
}
	else
{
	_nearVehicles = nearestObjects[getPos player,["Car","Air","Ship"],65];
	if(count _nearVehicles > 0) then
	{
		{
			if(!isNil "_vehicle") exitWith {}; //Kill the loop.
			_vehData = _x getVariable["vehicle_info_owners",[]];
			if(count _vehData  > 0) then
			{
				_vehOwner = (_vehData select 0) select 0;
				if((getPlayerUID player) == _vehOwner) exitWith
				{
					_vehicle = _x;
				};
			};
		} foreach _nearVehicles;
	};
};

if(isNil "_vehicle") exitWith {hint "Soyez sur que votre vehicule soit plus proche";};
if(isNull _vehicle) exitWith {};
if(_vehicle getVariable["isInsured",false]) exitWith { hint "Ce vehicule est deja assure."; };
if(!(_vehicle in life_vehicles)) exitWith {hint "Ce vehicule ne semble pas etre le votre."; };
_price = switch(typeOf _vehicle) do
{
//
//CIV_TRUCK
//
case "A3L_Dumptruck": {35000};
case "A3L_Bus": {30000};
case "A3L_Towtruck": {7500};
case "B_Truck_01_box_F": {70000};
case "B_Truck_01_mover_F": {80000};
//
//REB_CAR/AIR
//
case "B_Heli_Light_01_F": {100000};
case "ivory_b206": {110000};
case "O_Heli_Light_02_unarmed_F": {150000};
//
//COP_AIR
//
case "B_Heli_Transport_01_F": {100000};
case "IVORY_BELL512": {100000};
case "ivory_b206_rescue": {100000};
case "IVORY_BELL512_RESCUE": {100000};	
//
//CIV_SHIP
//
case "C_Rubberboat": {3500};
case "C_Boat_Civil_01_F": {17000};
//
default { -1};
};
if(_price == -1) exitWith { hint "Vous ne pouvez pas assurer ce type de vehicule"; };
if(life_atmcash < _price) exitWith { hint format["Vous n avez pas assez d'argent en banque pour cette transaction, il faut $%1",_price]; };
hint format["Vous avez paye %1$ pour assurer ce vehicule. S'il est detruit, il sera replace dans votre garage.",_price];
life_atmcash = life_atmcash - _price;
closeDialog 0;
_vehicle setVariable["isInsured",true,true];
[[_vehicle],"TON_fnc_vehicleInsurance",false,false] spawn life_fnc_MP;