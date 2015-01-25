/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/

while {true} do {
	
	// Militar
	_arma = ["RH_ttracker", "RH_muzi", "RH_cz75"] call BIS_fnc_SelectRandom;
	cajaMili1 addWeaponCargoGlobal [_arma, 1];
	_arma = ["RH_ttracker", "RH_muzi", "RH_cz75"] call BIS_fnc_SelectRandom;
	cajaMili2 addWeaponCargoGlobal [_arma, 1];
	_arma = ["RH_ttracker", "RH_muzi", "RH_cz75"] call BIS_fnc_SelectRandom;
	cajaMili3 addWeaponCargoGlobal [_arma, 1];
	
	_muni = ["RH_6Rnd_45ACP_Mag","RH_30Rnd_9x19_UZI","RH_16Rnd_9x19_CZ"] call BIS_fnc_SelectRandom;
	camMuni addMagazineCargoGlobal [_muni, 1+(random 3)];
	_muni = ["RH_6Rnd_45ACP_Mag","RH_30Rnd_9x19_UZI","RH_16Rnd_9x19_CZ"] call BIS_fnc_SelectRandom;
	camMuni addMagazineCargoGlobal [_muni, 1+(random 3)];
	_muni = ["RH_6Rnd_45ACP_Mag","RH_30Rnd_9x19_UZI","RH_16Rnd_9x19_CZ"] call BIS_fnc_SelectRandom;
	camMuni addMagazineCargoGlobal [_muni, 1+(random 3)];
	_muni = ["RH_6Rnd_45ACP_Mag","RH_30Rnd_9x19_UZI","RH_16Rnd_9x19_CZ"] call BIS_fnc_SelectRandom;
	camMuni addMagazineCargoGlobal [_muni, 1+(random 3)];
		
	clearWeaponCargoGlobal cajaMili1; 
	clearMagazineCargoGlobal cajaMili1;
	clearWeaponCargoGlobal cajaMili2; 
	clearMagazineCargoGlobal cajaMili2;
	clearWeaponCargoGlobal cajaMili3; 
	clearMagazineCargoGlobal cajaMili3;
	
	clearMagazineCargoGlobal camMuni;

	sleep (60*60);	
	
};