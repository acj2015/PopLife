//Server File Stealer//
//Created By Lystic//

A3L_Fnc_NearestSound = {
private ["_players","_receivedfrom","_soundtoplay","_vehicles"];

_receivedfrom = _this select 0;
_soundtoplay = _this select 1;

_players = nearestObjects [_receivedfrom, ["man"], 10];
_vehicles = nearestObjects [_receivedfrom, ["Car","Truck","Ship","Motorcycle"], 10];

{
_players = _players + (crew _x);
} foreach _vehicles;

[[_receivedfrom,_soundtoplay],"life_fnc_say3d",_players,false,false] call BIS_fnc_MP;

};