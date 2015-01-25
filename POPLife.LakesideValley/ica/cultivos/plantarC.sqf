/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/


_cultivo = "plantacoca" createVehicle (getPos player);
_cultivo attachTo [player, [0,0.7,0.5]];

// plantarC = player addAction ["<t color=""#FFAD1F"" size='1.5' shadow='2'>" +"Plantar",'_target = cursorTarget;_unit = _this select 1;[ [_target, _unit], "FNC_PlantarC", _target, false] spawn BIS_fnc_MP;', "", 9,false,true,"",""];
plantarC = player addAction ["Plantar", "[] spawn life_fnc_plantarC"];
player setVariable ["restosCoc", (60 * 10), true];






/*

this addAction["Estudios superiores de fruteria (2000)",{if(life_cash > 2000) then {estudiosFru = true; life_atmcash = life_atmcash - 2000};},"",0,false,false,"",'isNil {estudiosFru}'];

this addAction["Estudios superiores de caza (2000)",{if(life_cash > 2000) then {estudiosCaz = true; life_atmcash = life_atmcash - 2000};},"",0,false,false,"",'isNil {estudiosCaz}'];

this addAction["Estudios superiores de pescaderia (2000)",{if(life_cash > 2000) then {estudiosPes = true; life_atmcash = life_atmcash - 2000};},"",0,false,false,"",'isNil {estudiosPes}'];

this addAction["Estudios superiores de combustible (2000)",{if(life_cash > 2000) then {estudiosCom = true; life_atmcash = life_atmcash - 2000};},"",0,false,false,"",'isNil {estudiosCom}'];

this addAction["Estudios superiores de mineria (9000)",{if(life_cash > 9000) then {estudiosMin = true; life_atmcash = life_atmcash - 9000};},"",0,false,false,"",'isNil {estudiosMin}'];

*/