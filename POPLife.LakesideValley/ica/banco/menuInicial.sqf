/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/

publicVariable "porcentaje";

if (porcentaje == 0) then {
	createDialog "introDSC_dialog";
};

if (porcentaje > 0) then {
	null = [player] execVM "ica\banco\desencriptandoMenu.sqf";
	[[[1,2],"¡¡¡ ESTAN INTENTANDO ACCEDER AL SISTEMA DEL ALCALDE !!!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
};
