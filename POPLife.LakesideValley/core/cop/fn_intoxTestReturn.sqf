/*
	File: fn_intoxTestReturn.sqf
	@Deo	
	Description:
	Returns the Intox Results.
*/
private["_civ","_intox"];
_civ = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
_intox = [_this,1,0,[0]] call BIS_fnc_param;
if(isnull _civ) exitWith {};

if(_intox > 0.08) then 
{
	hint format["%1's Nivel Toxic: %2\nEsta persona esta por encima del límite legal permitido para conducir!",name _civ,_intox];
} 
else 
{
	hint format["%1's Nivel Toxic: %2",name _civ,_intox];
};

if (_intox > 0.20) then 
{
	[[getPlayerUID _civ,name _civ,"647"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
};