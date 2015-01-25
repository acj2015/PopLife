/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/

private ["_donde"];

createDialog "demanda_dialog";

disableSerialization;
_ui = uiNamespace getVariable "demanda_dialog";
_donde = _this select 0;

hint "
Peso de drogas: \n\n

Cannabis 2 \n
Heroina 4 \n
Cocaina 6 \n
";



if (_donde == "trafi") exitWith {

	while {!isNil {abierto}} do {
		
		_can = ctrlText 9279;	
		
		_pCan = 2500;
		_pHer = 4000;
		_pCoc = 6600;
		
		
		(_ui displayCtrl 9270) ctrlSetText format ["%1/60", droCan];
		(_ui displayCtrl 9271) ctrlSetText format ["%1/45", droHer];
		(_ui displayCtrl 9272) ctrlSetText format ["%1/30", droCoc];
		
		(_ui displayCtrl 9273) ctrlSetText format ["%1", _pCan];
		(_ui displayCtrl 9274) ctrlSetText format ["%1", _pHer];
		(_ui displayCtrl 9275) ctrlSetText format ["%1", _pCoc];
		
		
		if ((parseNumber _can) < 0) then {
			hint "Escribe un numero mayor que 0";
			(_ui displayCtrl 9279) ctrlSetText "0";
		};

	sleep 0.5;
	};
};

if (_donde == "calle") exitWith {

	while {!isNil {abierto}} do {
		
		_can = ctrlText 9279;	
		
		_pCan = 3300;
		_pHer = 5300;
		_pCoc = 8800;
		
		(_ui displayCtrl 9280) ctrlEnable false;
		(_ui displayCtrl 9281) ctrlEnable false;
		(_ui displayCtrl 9282) ctrlEnable false;
		buttonSetAction [9276, "_nil = [ctrlText 9279] execVM ""ica\demandaDroga\venderKavCan.sqf"""];
		buttonSetAction [9277, "_nil = [ctrlText 9279] execVM ""ica\demandaDroga\venderKavHer.sqf"""];
		buttonSetAction [9278, "_nil = [ctrlText 9279] execVM ""ica\demandaDroga\venderKavCoc.sqf"""];
				
		(_ui displayCtrl 9283) ctrlSetText "Marihuana";
		(_ui displayCtrl 9284) ctrlSetText "Heroina";
		(_ui displayCtrl 9285) ctrlSetText "Cocaina";

		(_ui displayCtrl 9270) ctrlSetText format ["%1/60", droKavCan];
		(_ui displayCtrl 9271) ctrlSetText format ["%1/45", droKavHer];
		(_ui displayCtrl 9272) ctrlSetText format ["%1/30", droKavCoc];
		
		(_ui displayCtrl 9273) ctrlSetText format ["%1", _pCan];
		(_ui displayCtrl 9274) ctrlSetText format ["%1", _pHer];
		(_ui displayCtrl 9275) ctrlSetText format ["%1", _pCoc];
		
				
		if ((parseNumber _can) < 0) then {
			hint "Escribe un numero mayor que 0";
			(_ui displayCtrl 9279) ctrlSetText "0";
		};

	sleep 0.5;
	};
};