/*
	File: fn_attackCentral.sqf
	Author: tenshi
	Copyright [tenshi] droits reservés. (fichier non libre de droit)
	
	Description:
	Main functionality for robbing the federal reserve.
*/
(vehicle player) setpos (getMarkerPos "paintballout");
player setVariable["lastPos",1];player setVariable["lastPos",[]];

player removeWeapon "A3L_PaintballGun_red";
player removeWeapon "A3L_PaintballGun_blue";
player removeWeapon "A3L_PaintballGun_pink";
player removeItemFromBackpack "A3L_PaintballGun_red";
player removeItemFromBackpack "A3L_PaintballGun_blue";
player removeItemFromBackpack "A3L_PaintballGun_pink";
player removeItemFromBackpack "paintballs";
player removeItemFromUniform "A3L_PaintballGun_red";
player removeItemFromUniform "A3L_PaintballGun_blue";
player removeItemFromUniform "A3L_PaintballGun_pink";
player removeItemFromUniform "paintballs";
player removeItemFromVest "A3L_PaintballGun_red";
player removeItemFromVest "A3L_PaintballGun_blue";
player removeItemFromVest "A3L_PaintballGun_pink";
player removeItemFromVest "paintballs";

{if(_x == "paintballs") then {player removeMagazine _x};} foreach (magazines player);

hint "Le combat est termine !";



titleText["Paintball retire.","PLAIN"];