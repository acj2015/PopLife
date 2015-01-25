/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/


createDialog "mat_dialog";


disableSerialization;
_ui = uiNamespace getVariable "mat_dialog";

while {!isNil {abierto}} do {

	(_ui displayCtrl 9089) ctrlEnable false; // Boton forja
	(_ui displayCtrl 9090) ctrlEnable false;	// Boton fabrica
	
	if ((player distance (getMarkerPos "ZDForja")) < 30) then {
		(_ui displayCtrl 9090) ctrlEnable true;	// Boton fabrica
	};
	if ((player distance (getMarkerPos "ZDFabrica")) < 30) then {
		(_ui displayCtrl 9089) ctrlEnable true; // Boton forja
	};
	

	(_ui displayCtrl 9108) ctrlSetText format ["%1%2",round (((carFor + polFor + hieFor + cobFor + plaFor + oroFor) / 6) / 10),"%"]; // Media Forja
	(_ui displayCtrl 9109) ctrlSetText format ["%1%2",round (((carFab + polFab + hieFab + cobFab + plaFab + oroFab) / 6) / 10),"%"];	// Media Fabrica
	
	
	(_ui displayCtrl 9091) ctrlSetText format ["%1 / 1000", carFor]; // Forja
	(_ui displayCtrl 9093) ctrlSetText format ["%1 / 1000", polFor];
	(_ui displayCtrl 9095) ctrlSetText format ["%1 / 1000", hieFor];
	(_ui displayCtrl 9097) ctrlSetText format ["%1 / 1000", cobFor];
	(_ui displayCtrl 9099) ctrlSetText format ["%1 / 1000", plaFor];
	(_ui displayCtrl 9101) ctrlSetText format ["%1 / 1000", oroFor];
	
	(_ui displayCtrl 9092) ctrlSetText format ["%1 / 1000", carFab]; // Fabrica
	(_ui displayCtrl 9094) ctrlSetText format ["%1 / 1000", polFab];
	(_ui displayCtrl 9096) ctrlSetText format ["%1 / 1000", hieFab];
	(_ui displayCtrl 9098) ctrlSetText format ["%1 / 1000", cobFab];
	(_ui displayCtrl 9100) ctrlSetText format ["%1 / 1000", plaFab];
	(_ui displayCtrl 9102) ctrlSetText format ["%1 / 1000", oroFab];

	(_ui displayCtrl 9112) ctrlSetText format ["%1 E/u", round ((1600 - carFor) / 2) ]; // Precios Forja
	(_ui displayCtrl 9114) ctrlSetText format ["%1 E/u", round ((1600 - polFor) / 2) ];
	(_ui displayCtrl 9116) ctrlSetText format ["%1 E/u", round ((1600 - hieFor) / 2) ];
	(_ui displayCtrl 9118) ctrlSetText format ["%1 E/u", round ((1600 - cobFor) / 2) ];
	(_ui displayCtrl 9120) ctrlSetText format ["%1 E/u", round ((1600 - plaFor) / 2) ];
	(_ui displayCtrl 9122) ctrlSetText format ["%1 E/u", round ((1600 - oroFor) / 2) ];

	
	(_ui displayCtrl 9111) ctrlSetText format ["%1 E/u", round ((1600 - carFab) / 2) ]; // Precios Fabrica
	(_ui displayCtrl 9113) ctrlSetText format ["%1 E/u", round ((1600 - polFab) / 2) ];
	(_ui displayCtrl 9115) ctrlSetText format ["%1 E/u", round ((1600 - hieFab) / 2) ];
	(_ui displayCtrl 9117) ctrlSetText format ["%1 E/u", round ((1600 - cobFab) / 2) ];
	(_ui displayCtrl 9119) ctrlSetText format ["%1 E/u", round ((1600 - plaFab) / 2) ];
	(_ui displayCtrl 9121) ctrlSetText format ["%1 E/u", round ((1600 - oroFab) / 2) ];

	
	
		_mFor = round (((carFor + polFor + hieFor + cobFor + plaFor + oroFor) / 6) / 10); // Media forja
		_mFab = round (((carFab + polFab + hieFab + cobFab + plaFab + oroFab) / 6) / 10);	// Media fabrica

	
		_matTotal = round ((_mFor + _mFab) / 2);
		
	(_ui displayCtrl 9200) ctrlSetText format ["Recursos totales %1%2", _matTotal,"%"];	// % recursos totales
	
	

	_mat = ctrlText 9087; 	// entrada material
	_can = ctrlText 9088;		// entrada cantidad
	
	if ((parseNumber _can) > 300) then {		// limito la entrada a 0-300
		(_ui displayCtrl 9088) ctrlSetText format ["%1", 300];
	};
	if ((parseNumber _can) < 0) then {
		(_ui displayCtrl 9088) ctrlSetText format ["%1", 0];
	};
	
	
	if (_mat == "Carbon") then {
		_pm = round (round ((((1600 - carFor) / 2)) + (round ((1600 - carFab) / 2))) / 2);
		_imp = round (((parsenumber _can) * _pm) * 0.26);
		
		(_ui displayCtrl 9201) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9103) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9104) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9105) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9106) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9107) ctrlSetText format ["%1",_imp];

	};

	if (_mat == "Polvora") then {
		_pm = round (round ((((1600 - polFor) / 2)) + (round ((1600 - polFab) / 2))) / 2);
		_imp = round (((parsenumber _can) * _pm) * 0.26);
		
		(_ui displayCtrl 9201) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9103) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9104) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9105) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9106) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9107) ctrlSetText format ["%1",_imp];

	};
	
	if (_mat == "Hierro") then {
		_pm = round (round ((((1600 - hieFor) / 2)) + (round ((1600 - hieFab) / 2))) / 2);
		_imp = round (((parsenumber _can) * _pm) * 0.26);
		
		(_ui displayCtrl 9201) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9103) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9104) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9105) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9106) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9107) ctrlSetText format ["%1",_imp];

	};
	
	if (_mat == "Cobre") then {
		_pm = round (round ((((1600 - cobFor) / 2)) + (round ((1600 - cobFab) / 2))) / 2);
		_imp = round (((parsenumber _can) * _pm) * 0.26);
		
		(_ui displayCtrl 9201) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9103) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9104) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9105) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9106) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9107) ctrlSetText format ["%1",_imp];

	};
	
	if (_mat == "Plata") then {
		_pm = round (round ((((1600 - plaFor) / 2)) + (round ((1600 - plaFab) / 2))) / 2);
		_imp = round (((parsenumber _can) * _pm) * 0.26);
		
		(_ui displayCtrl 9201) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9103) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9104) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9105) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9106) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9107) ctrlSetText format ["%1",_imp];

	};
	
	if (_mat == "Oro") then {
		_pm = round (round ((((1600 - oroFor) / 2)) + (round ((1600 - oroFab) / 2))) / 2);
		_imp = round (((parsenumber _can) * _pm) * 0.26);
		
		(_ui displayCtrl 9201) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9103) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9104) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9105) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9106) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9107) ctrlSetText format ["%1",_imp];

	};
	
	if (_mat == "ierro") then {
		hint "Aprende a escribir, hierro es con H.";
	};
	if (_mat == "Horo") then {
		hint "Oh dios... oro es sin H.";
	};
	if (_mat == "icaruk") then {
		hint "Has descubierto la palabra secreta, recibes 1.650.240 €";
		sleep 3;
		hint "Es mentira, pero sigues molando :D";
		sleep 3;
	};

sleep 1;
};
