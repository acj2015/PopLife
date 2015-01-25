/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/


_ani = (_this select 0) select 0;
_carne = "carne" createVehicle (getPos _ani);
[[_carne, ["<t color=""#FFBF00"" size='1' shadow='1'>" +"Recoger",'null = [_this select 0] execVM "ica\caza\recogerCarne.sqf";', "", 7,false,true,"",""]], "ICARUK_fnc_addAction", true, true] spawn BIS_fnc_MP; 
_carne = "carne" createVehicle (getPos _ani);
[[_carne, ["<t color=""#FFBF00"" size='1' shadow='1'>" +"Recoger",'null = [_this select 0] execVM "ica\caza\recogerCarne.sqf";', "", 7,false,true,"",""]], "ICARUK_fnc_addAction", true, true] spawn BIS_fnc_MP; 

