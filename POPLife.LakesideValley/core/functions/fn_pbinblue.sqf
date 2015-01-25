/*
	File: fn_pbinblue.sqf
	Author: tenshi
	Copyright [tenshi] droits reservés. (fichier non libre de droit)
*/

if (vehicle player != player) exitWith {};

if(life_atmcash < 12000) exitWith {hint format[localize "STR_GNOTF_NotEnoughMoney",[12000-life_atmcash] call life_fnc_numberText];};
life_atmcash = life_atmcash - 12000;

(vehicle player) setpos (getMarkerPos "paintballin");
player setVariable["lastPos",1];player setVariable["lastPos",[]];

player addWeapon "A3L_PaintballGun_blue";
player addItem "paintballs";

hint "!! EQUIPE BLEUE: Que le combat commence !!";