/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/


_cultivo = "Land_MB_Hemp" createVehicle (getPos player);
_cultivo attachTo [player, [0,0.7,0.5]];

// plantarM = player addAction ["<t color=""#FFAD1F"" size='1.5' shadow='2'>" +"Plantar",'_target = cursorTarget;_unit = _this select 1;[ [_target, _unit], '[] spawn life_fnc_plantarM;', _target, false] spawn BIS_fnc_MP;', "", 9,false,true,"",""];
plantarM = player addAction ["Plantar", "[] spawn life_fnc_plantarM"];
player setVariable ["restosMar", (60 * 10), true];