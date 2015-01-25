#include <macro.h>
/*
	Filename: fn_neonlightYellow.sqf
	author: tenshi
*/
private["_nearVehicles","_vehicle","_price","_lightArea","_lightRed","_lightBlue"];

if(vehicle player != player) then
{
	_vehicle = vehicle player;
}
	else
{
	_nearVehicles = nearestObjects[getPos player,["Car","Air","Ship"],10];
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
if(playerSide != civilian) exitWith {hint "Vous n etes pas civile"};
_price = 2000;
if(life_atmcash < _price) exitWith { hint format["Vous n avez pas assez d'argent en banque pour cette transaction, il faut $%1",_price]; };
hint format["Vous avez paye %1$ pour pimper ce vehicule.",_price];
life_atmcash = life_atmcash - _price;

	[[_vehicle],"life_fnc_neonYellow",true,false] call life_fnc_MP;