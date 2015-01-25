/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/


disableSerialization;
_itm = _this select 0;
_ui = uiNamespace getVariable "crafteo_dialog";
(_ui displayCtrl 9212) ctrlEnable false;


if (_itm == "Polvora") then {
	if !(life_inv_nitratodepotasio >= 1) exitWith {hint "No tienes los ingredientes suficientes."};
	if !(life_inv_azufre >= 1) exitWith {hint "No tienes los ingredientes suficientes."};
	if !(life_inv_carbon >= 1) exitWith {hint "No tienes los ingredientes suficientes."};
	
	hint "Recopilando ingredientes...";
	[false,"nitratodepotasio",1] call life_fnc_handleInv;
	[false,"azufre",1] call life_fnc_handleInv;
	[false,"carbon",1] call life_fnc_handleInv;
	sleep 1;
	hint "Mezclando...";
	[true,"polvora",2] call life_fnc_handleInv;
	sleep 1;
	hint "Vaya, esta vez no ha explotado nada... aqui esta tu item";
};

/////////////////////// 5.7mm
if (_itm == "Cargador 5.7 20rnd") then { // FNP57
	if (carFor <= 10) exitWith {hint "No hay suficiente carbon en la forja para crear algo, tiene que haber un minimo de 10.";};
	if !(life_inv_polvora >= 3) exitWith {hint "No tienes los ingredientes suficientes."};
	if !(life_inv_hierro >= 2) exitWith {hint "No tienes los ingredientes suficientes."};
	
	hint "Recopilando ingredientes...";
	[false,"polvora",3] call life_fnc_handleInv;
	[false,"hierro",2] call life_fnc_handleInv;
	sleep 2;
	hint "Mezclando...";
	player addMagazine "RH_20Rnd_57x28_FN";
	sleep 3;
	hint "Vaya, esta vez no ha explotado nada... aqui esta tu item";
	carFor = carFor - 20;
	publicVariable "carFor";
};

/////////////////////// 9mm
if (_itm == "Cargador 9mm 14rnd") then { // sw659
	if (carFor <= 7) exitWith {hint "No hay suficiente carbon en la forja para crear algo, tiene que haber un minimo de 7.";};
	if !(life_inv_polvora >= 1) exitWith {hint "No tienes los ingredientes suficientes."};
	if !(life_inv_hierro >= 2) exitWith {hint "No tienes los ingredientes suficientes."};
	
	hint "Recopilando ingredientes...";
	[false,"polvora",1] call life_fnc_handleInv;
	[false,"hierro",2] call life_fnc_handleInv;
	sleep 2;
	hint "Mezclando...";
	player addMagazine "RH_14Rnd_9x19_sw";
	sleep 3;
	hint "Vaya, esta vez no ha explotado nada... aqui esta tu item";
	carFor = carFor - 14;
	publicVariable "carFor";
};
if (_itm == "Cargador 9mm 15rnd") then { // M9 y M1911
	if (carFor <= 7) exitWith {hint "No hay suficiente carbon en la forja para crear algo, tiene que haber un minimo de 7.";};
	if !(life_inv_polvora >= 1) exitWith {hint "No tienes los ingredientes suficientes."};
	if !(life_inv_hierro >= 2) exitWith {hint "No tienes los ingredientes suficientes."};
	
	hint "Recopilando ingredientes...";
	[false,"polvora",1] call life_fnc_handleInv;
	[false,"hierro",2] call life_fnc_handleInv;
	sleep 2;
	hint "Mezclando...";
	player addMagazine "RH_15Rnd_9x19_M9";
	sleep 3;
	hint "Vaya, esta vez no ha explotado nada... aqui esta tu item";
	carFor = carFor - 15;
	publicVariable "carFor";
};
if (_itm == "Cargador 9mm 16rnd") then {
	if (carFor <= 8) exitWith {hint "No hay suficiente carbon en la forja para crear algo, tiene que haber un minimo de 8.";};
	if !(life_inv_polvora >= 1) exitWith {hint "No tienes los ingredientes suficientes."};
	if !(life_inv_hierro >= 2) exitWith {hint "No tienes los ingredientes suficientes."};
	
	hint "Recopilando ingredientes...";
	[false,"polvora",1] call life_fnc_handleInv;
	[false,"hierro",2] call life_fnc_handleInv;
	sleep 2;
	hint "Mezclando...";
	player addMagazine "16Rnd_9x21_Mag";
	sleep 2;
	hint "Vaya, esta vez no ha explotado nada... aqui esta tu item";
	carFor = carFor - 16;
	publicVariable "carFor";
};
if (_itm == "Cargador 9mm 17rnd") then { // G18 y G19
	if (carFor <= 8) exitWith {hint "No hay suficiente carbon en la forja para crear algo, tiene que haber un minimo de 8.";};
	if !(life_inv_polvora >= 1) exitWith {hint "No tienes los ingredientes suficientes."};
	if !(life_inv_hierro >= 3) exitWith {hint "No tienes los ingredientes suficientes."};
	
	hint "Recopilando ingredientes...";
	[false,"polvora",1] call life_fnc_handleInv;
	[false,"hierro",3] call life_fnc_handleInv;
	sleep 2;
	hint "Mezclando...";
	player addMagazine "RH_17Rnd_9x19_g17";
	sleep 3;
	hint "Vaya, esta vez no ha explotado nada... aqui esta tu item";
	carFor = carFor - 17;
	publicVariable "carFor";
};
if (_itm == "Cargador 9mm 18rnd") then { // G18gsh
	if (carFor <= 9) exitWith {hint "No hay suficiente carbon en la forja para crear algo, tiene que haber un minimo de 9.";};
	if !(life_inv_polvora >= 1) exitWith {hint "No tienes los ingredientes suficientes."};
	if !(life_inv_hierro >= 3) exitWith {hint "No tienes los ingredientes suficientes."};
	
	hint "Recopilando ingredientes...";
	[false,"polvora",1] call life_fnc_handleInv;
	[false,"hierro",3] call life_fnc_handleInv;
	sleep 2;
	hint "Mezclando...";
	player addMagazine "RH_18Rnd_9x19_gsh";
	sleep 3;
	hint "Vaya, esta vez no ha explotado nada... aqui esta tu item";
	carFor = carFor - 18;
	publicVariable "carFor";
};
if (_itm == "Cargador 9mm 30rnd") then {
	if (carFor <= 15) exitWith {hint "No hay suficiente carbon en la forja para crear algo, tiene que haber un minimo de 15.";};
	if !(life_inv_polvora >= 2) exitWith {hint "No tienes los ingredientes suficientes."};
	if !(life_inv_hierro >= 3) exitWith {hint "No tienes los ingredientes suficientes."};
	
	hint "Recopilando ingredientes...";
	[false,"polvora",2] call life_fnc_handleInv;
	[false,"hierro",3] call life_fnc_handleInv;
	sleep 2;
	hint "Mezclando...";
	player addMagazine "30Rnd_9x21_Mag";
	sleep 3;
	hint "Vaya, esta vez no ha explotado nada... aqui esta tu item";
	carFor = carFor - 30;
	publicVariable "carFor";
};

/////////////////////// .32
if (_itm == "Cargador .32 20rnd") then { // VZ61
	if (carFor <= 10) exitWith {hint "No hay suficiente carbon en la forja para crear algo, tiene que haber un minimo de 10.";};
	if !(life_inv_polvora >= 2) exitWith {hint "No tienes los ingredientes suficientes."};
	if !(life_inv_hierro >= 4) exitWith {hint "No tienes los ingredientes suficientes."};
	
	hint "Recopilando ingredientes...";
	[false,"polvora",2] call life_fnc_handleInv;
	[false,"hierro",4] call life_fnc_handleInv;
	sleep 2;
	hint "Mezclando...";
	player addMagazine "RH_20Rnd_32cal_vz61";
	sleep 2;
	hint "Vaya, esta vez no ha explotado nada... aqui esta tu item";
	carFor = carFor - 32;
	publicVariable "carFor";
};

/////////////////////// .357
if (_itm == "Cargador .357 6rnd") then { // MP412
	if (carFor <= 3) exitWith {hint "No hay suficiente carbon en la forja para crear algo, tiene que haber un minimo de 3.";};
	if !(life_inv_polvora >= 3) exitWith {hint "No tienes los ingredientes suficientes."};
	if !(life_inv_hierro >= 1) exitWith {hint "No tienes los ingredientes suficientes."};
	
	hint "Recopilando ingredientes...";
	[false,"polvora",3] call life_fnc_handleInv;
	[false,"hierro",1] call life_fnc_handleInv;
	sleep 2;
	hint "Mezclando...";
	player addMagazine "RH_6Rnd_357_Mag";
	sleep 2;
	hint "Vaya, esta vez no ha explotado nada... aqui esta tu item";
	carFor = carFor - 6;
	publicVariable "carFor";
};

/////////////////////// .44
if (_itm == "Cargador .44 6rnd") then { // Mateba
	if (carFor <= 3) exitWith {hint "No hay suficiente carbon en la forja para crear algo, tiene que haber un minimo de 3.";};
	if !(life_inv_polvora >= 2) exitWith {hint "No tienes los ingredientes suficientes."};
	if !(life_inv_hierro >= 1) exitWith {hint "No tienes los ingredientes suficientes."};
	
	hint "Recopilando ingredientes...";
	[false,"polvora",2] call life_fnc_handleInv;
	[false,"hierro",1] call life_fnc_handleInv;
	sleep 2;
	hint "Mezclando...";
	player addMagazine "RH_6Rnd_44_Mag";
	sleep 2;
	hint "Vaya, esta vez no ha explotado nada... aqui esta tu item";
	carFor = carFor - 6;
	publicVariable "carFor";
};

/////////////////////// .45
if (_itm == "Cargador .45 6rnd") then {
	if (carFor <= 3) exitWith {hint "No hay suficiente carbon en la forja para crear algo, tiene que haber un minimo de 3.";};
	if !(life_inv_polvora >= 2) exitWith {hint "No tienes los ingredientes suficientes."};
	if !(life_inv_hierro >= 1) exitWith {hint "No tienes los ingredientes suficientes."};
	
	hint "Recopilando ingredientes...";
	[false,"polvora",2] call life_fnc_handleInv;
	[false,"hierro",1] call life_fnc_handleInv;
	sleep 2;
	hint "Mezclando...";
	player addMagazine "6Rnd_45ACP_Cylinder";
	sleep 2;
	hint "Vaya, esta vez no ha explotado nada... aqui esta tu item";
	carFor = carFor - 6;
	publicVariable "carFor";
};
if (_itm == "Cargador .45 7rnd") then { // Kimber NW
	if (carFor <= 3) exitWith {hint "No hay suficiente carbon en la forja para crear algo, tiene que haber un minimo de 3.";};
	if !(life_inv_polvora >= 3) exitWith {hint "No tienes los ingredientes suficientes."};
	if !(life_inv_hierro >= 1) exitWith {hint "No tienes los ingredientes suficientes."};
	
	hint "Recopilando ingredientes...";
	[false,"polvora",3] call life_fnc_handleInv;
	[false,"hierro",1] call life_fnc_handleInv;
	sleep 2;
	hint "Mezclando...";
	player addMagazine "RH_7Rnd_45cal_m1911";
	sleep 2;
	hint "Vaya, esta vez no ha explotado nada... aqui esta tu item";
	carFor = carFor - 7;
	publicVariable "carFor";
};
if (_itm == "Cargador .45 9rnd") then {
	if (carFor <= 4) exitWith {hint "No hay suficiente carbon en la forja para crear algo, tiene que haber un minimo de 4.";};
	if !(life_inv_polvora >= 2) exitWith {hint "No tienes los ingredientes suficientes."};
	if !(life_inv_hierro >= 1) exitWith {hint "No tienes los ingredientes suficientes."};
	
	hint "Recopilando ingredientes...";
	[false,"polvora",2] call life_fnc_handleInv;
	[false,"hierro",1] call life_fnc_handleInv;
	sleep 2;
	hint "Mezclando...";
	player addMagazine "9Rnd_45ACP_Mag";
	sleep 2;
	hint "Vaya, esta vez no ha explotado nada... aqui esta tu item";
	carFor = carFor - 9;
	publicVariable "carFor";
};
if (_itm == "Cargador .45 15rnd") then { // Python
	if (carFor <= 7) exitWith {hint "No hay suficiente carbon en la forja para crear algo, tiene que haber un minimo de 7.";};
	if !(life_inv_polvora >= 2) exitWith {hint "No tienes los ingredientes suficientes."};
	if !(life_inv_hierro >= 2) exitWith {hint "No tienes los ingredientes suficientes."};
	
	hint "Recopilando ingredientes...";
	[false,"polvora",2] call life_fnc_handleInv;
	[false,"hierro",2] call life_fnc_handleInv;
	sleep 2;
	hint "Mezclando...";
	player addMagazine "RH_15Rnd_45cal_fnp";
	sleep 2;
	hint "Vaya, esta vez no ha explotado nada... aqui esta tu item";
	carFor = carFor - 15;
	publicVariable "carFor";
};
if (_itm == "Cargador .45 30rnd") then {
	if (carFor <= 15) exitWith {hint "No hay suficiente carbon en la forja para crear algo, tiene que haber un minimo de 15.";};
	if !(life_inv_polvora >= 3) exitWith {hint "No tienes los ingredientes suficientes."};
	if !(life_inv_hierro >= 3) exitWith {hint "No tienes los ingredientes suficientes."};
	
	hint "Recopilando ingredientes...";
	[false,"polvora",3] call life_fnc_handleInv;
	[false,"hierro",3] call life_fnc_handleInv;
	sleep 2;
	hint "Mezclando...";
	player addMagazine "30Rnd_45ACP_Mag_SMG_01";
	sleep 3;
	hint "Vaya, esta vez no ha explotado nada... aqui esta tu item";
	carFor = carFor - 30;
	publicVariable "carFor";
};

/////////////////////// 5.56
if (_itm == "Cargador 5.56 20rnd") then {
	if (carFor <= 10) exitWith {hint "No hay suficiente carbon en la forja para crear algo, tiene que haber un minimo de 10.";};
	if !(life_inv_polvora >= 3) exitWith {hint "No tienes los ingredientes suficientes."};
	if !(life_inv_hierro >= 1) exitWith {hint "No tienes los ingredientes suficientes."};
	if !(life_inv_cobre >= 1) exitWith {hint "No tienes los ingredientes suficientes."};
	
	hint "Recopilando ingredientes...";
	[false,"polvora",3] call life_fnc_handleInv;
	[false,"hierro",1] call life_fnc_handleInv;
	[false,"cobre",1] call life_fnc_handleInv;
	sleep 3;
	hint "Mezclando...";
	player addMagazine "20Rnd_556x45_UW_mag";
	sleep 3;
	hint "Vaya, esta vez no ha explotado nada... aqui esta tu item";
	carFor = carFor - 20;
	publicVariable "carFor";
};
if (_itm == "Cargador 5.56 30rnd") then {
	if (carFor <= 15) exitWith {hint "No hay suficiente carbon en la forja para crear algo, tiene que haber un minimo de 15.";};
	if !(life_inv_polvora >= 4) exitWith {hint "No tienes los ingredientes suficientes."};
	if !(life_inv_hierro >= 2) exitWith {hint "No tienes los ingredientes suficientes."};
	if !(life_inv_cobre >= 2) exitWith {hint "No tienes los ingredientes suficientes."};
	
	hint "Recopilando ingredientes...";
	[false,"polvora",4] call life_fnc_handleInv;
	[false,"hierro",2] call life_fnc_handleInv;
	[false,"cobre",2] call life_fnc_handleInv;
	sleep 3;
	hint "Mezclando...";
	player addMagazine "30Rnd_556x45_Stanag";
	sleep 3;
	hint "Vaya, esta vez no ha explotado nada... aqui esta tu item";
	carFor = carFor - 30;
	publicVariable "carFor";
};

/////////////////////// 6.5
if (_itm == "Cargador 6.5 30rnd") then {
	if (carFor <= 15) exitWith {hint "No hay suficiente carbon en la forja para crear algo, tiene que haber un minimo de 15.";};
	if !(life_inv_polvora >= 8) exitWith {hint "No tienes los ingredientes suficientes."};
	if !(life_inv_hierro >= 3) exitWith {hint "No tienes los ingredientes suficientes."};
	if !(life_inv_cobre >= 3) exitWith {hint "No tienes los ingredientes suficientes."};
	
	hint "Recopilando ingredientes...";
	[false,"polvora",8] call life_fnc_handleInv;
	[false,"hierro",3] call life_fnc_handleInv;
	[false,"cobre",3] call life_fnc_handleInv;
	sleep 4;
	hint "Mezclando...";
	player addMagazine "30Rnd_65x39_caseless_green";
	sleep 4;
	hint "Vaya, esta vez no ha explotado nada... aqui esta tu item";
	carFor = carFor - 40;
	publicVariable "carFor";
};

/////////////////////// 7.62
if (_itm == "Cargador 7.62 8rnd") then {
	if (carFor <= 4) exitWith {hint "No hay suficiente carbon en la forja para crear algo, tiene que haber un minimo de 4.";};
	if !(life_inv_polvora >= 10) exitWith {hint "No tienes los ingredientes suficientes."};
	if !(life_inv_hierro >= 3) exitWith {hint "No tienes los ingredientes suficientes."};
	
	hint "Recopilando ingredientes...";
	[false,"polvora",10] call life_fnc_handleInv;
	[false,"hierro",3] call life_fnc_handleInv;
	sleep 5;
	hint "Mezclando...";
	player addMagazine "RH_8Rnd_762_tt33";
	sleep 5;
	hint "Vaya, esta vez no ha explotado nada... aqui esta tu item";
	carFor = carFor - 45;
	publicVariable "carFor";
};
if (_itm == "Cargador 7.62 10rnd") then {
	if (carFor <= 5) exitWith {hint "No hay suficiente carbon en la forja para crear algo, tiene que haber un minimo de 5.";};
	if !(life_inv_polvora >= 10) exitWith {hint "No tienes los ingredientes suficientes."};
	if !(life_inv_hierro >= 3) exitWith {hint "No tienes los ingredientes suficientes."};
	if !(life_inv_cobre >= 3) exitWith {hint "No tienes los ingredientes suficientes."};	
	
	hint "Recopilando ingredientes...";
	[false,"polvora",10] call life_fnc_handleInv;
	[false,"hierro",3] call life_fnc_handleInv;
	[false,"cobre",3] call life_fnc_handleInv;
	sleep 5;
	hint "Mezclando...";
	player addMagazine "10Rnd_762x51_Mag";
	sleep 5;
	hint "Vaya, esta vez no ha explotado nada... aqui esta tu item";
	carFor = carFor - 50;
	publicVariable "carFor";
};

/////////////////////// .50
if (_itm == "Cargador .50 7rnd") then { // Desert eagle
	if (carFor <= 3) exitWith {hint "No hay suficiente carbon en la forja para crear algo, tiene que haber un minimo de 3.";};
	if !(life_inv_polvora >= 12) exitWith {hint "No tienes los ingredientes suficientes."};
	if !(life_inv_hierro >= 3) exitWith {hint "No tienes los ingredientes suficientes."};
	
	hint "Recopilando ingredientes...";
	[false,"polvora",12] call life_fnc_handleInv;
	[false,"hierro",3] call life_fnc_handleInv;
	sleep 2;
	hint "Mezclando...";
	player addMagazine "RH_7Rnd_50_AE";
	sleep 3;
	hint "Vaya, esta vez no ha explotado nada... aqui esta tu item";
	carFor = carFor - 50;
	publicVariable "carFor";
};


publicVariable "carFor";

(_ui displayCtrl 9212) ctrlEnable true;

