/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/


createDialog "trans_dialog";


disableSerialization;
_ui = uiNamespace getVariable "trans_dialog";

while {!isNil {abierto}} do {



	(_ui displayCtrl 9032) ctrlSetText format ["%1%2",round(((aliMem + medMem + aguMem + comMem) / 4) / 10),"%"]; 		// Media Kav
	(_ui displayCtrl 9033) ctrlSetText format ["%1%2",round(((aliAer + medAer + aguAer + comAer) / 4) / 10),"%"];	// Media Abd
	(_ui displayCtrl 9034) ctrlSetText format ["%1%2",round(((aliDia + medDia + aguDia + comDia) / 4) / 10),"%"];		// Media Sof
	(_ui displayCtrl 9035) ctrlSetText format ["%1%2",round(((aliMor + medMor + aguMor + comMor) / 4) / 10),"%"];		// Media Cha
	(_ui displayCtrl 9076) ctrlSetText format ["%1%2",round(((aliJac + medJac + aguJac + comJac) / 4) / 10),"%"];		// Media Ted


	(_ui displayCtrl 9036) ctrlSetText format ["%1 Km", round ((player distance (getMarkerPos "ZDMemorial")) / 1000)]; // Distancias
	(_ui displayCtrl 9037) ctrlSetText format ["%1 Km", round ((player distance (getMarkerPos "ZDAeropuerto")) / 1000)];
	(_ui displayCtrl 9038) ctrlSetText format ["%1 Km", round ((player distance (getMarkerPos "ZDDiablos")) / 1000)];
	(_ui displayCtrl 9039) ctrlSetText format ["%1 Km", round ((player distance (getMarkerPos "ZDMorrison")) / 1000)];

	(_ui displayCtrl 9040) ctrlSetText format ["%1 / 1000", aliMem]; // Memorial
	(_ui displayCtrl 9041) ctrlSetText format ["%1 / 1000", medMem];
	(_ui displayCtrl 9042) ctrlSetText format ["%1 / 1000", aguMem];
	(_ui displayCtrl 9043) ctrlSetText format ["%1 / 1000", comMem];

	(_ui displayCtrl 9044) ctrlSetText format ["%1 E/u", round ((1200 - aliMem) / 2.765) ];
	(_ui displayCtrl 9045) ctrlSetText format ["%1 E/u", round ((1200 - medMem) / 2.765) ];
	(_ui displayCtrl 9046) ctrlSetText format ["%1 E/u", round ((1200 - aguMem) / 2.765) ];
	(_ui displayCtrl 9047) ctrlSetText format ["%1 E/u", round ((1200 - comMem) / 2.765) ];

	(_ui displayCtrl 9048) ctrlSetText format ["%1 / 1000", aliAer]; // Aeropuerto
	(_ui displayCtrl 9049) ctrlSetText format ["%1 / 1000", medAer];
	(_ui displayCtrl 9050) ctrlSetText format ["%1 / 1000", aguAer];
	(_ui displayCtrl 9051) ctrlSetText format ["%1 / 1000", comAer];

	(_ui displayCtrl 9052) ctrlSetText format ["%1 E/u", round ((1200 - aliAer) / 4.1) ];
	(_ui displayCtrl 9053) ctrlSetText format ["%1 E/u", round ((1200 - medAer) / 4.1) ];
	(_ui displayCtrl 9054) ctrlSetText format ["%1 E/u", round ((1200 - aguAer) / 4.1) ];
	(_ui displayCtrl 9055) ctrlSetText format ["%1 E/u", round ((1200 - comAer) / 4.1) ];

	(_ui displayCtrl 9056) ctrlSetText format ["%1 / 1000", aliDia]; // Diablos
	(_ui displayCtrl 9057) ctrlSetText format ["%1 / 1000", medDia];
	(_ui displayCtrl 9058) ctrlSetText format ["%1 / 1000", aguDia];
	(_ui displayCtrl 9059) ctrlSetText format ["%1 / 1000", comDia];

	(_ui displayCtrl 9060) ctrlSetText format ["%1 E/u", round ((1200 - aliDia) / 2.2) ];
	(_ui displayCtrl 9061) ctrlSetText format ["%1 E/u", round ((1200 - medDia) / 2.2) ];
	(_ui displayCtrl 9062) ctrlSetText format ["%1 E/u", round ((1200 - aguDia) / 2.2) ];
	(_ui displayCtrl 9063) ctrlSetText format ["%1 E/u", round ((1200 - comDia) / 2.2) ];

	(_ui displayCtrl 9064) ctrlSetText format ["%1 / 1000", aliMor]; // Morrison
	(_ui displayCtrl 9065) ctrlSetText format ["%1 / 1000", medMor];
	(_ui displayCtrl 9066) ctrlSetText format ["%1 / 1000", aguMor];
	(_ui displayCtrl 9067) ctrlSetText format ["%1 / 1000", comMor];

	(_ui displayCtrl 9068) ctrlSetText format ["%1 E/u", round ((1200 - aliMor) / 2) ];
	(_ui displayCtrl 9069) ctrlSetText format ["%1 E/u", round ((1200 - medMor) / 2) ];
	(_ui displayCtrl 9070) ctrlSetText format ["%1 E/u", round ((1200 - aguMor) / 2) ];
	(_ui displayCtrl 9071) ctrlSetText format ["%1 E/u", round ((1200 - comMor) / 2) ];

	(_ui displayCtrl 9072) ctrlSetText format ["%1 / 1000", aliJac]; // Kavala
	(_ui displayCtrl 9073) ctrlSetText format ["%1 / 1000", medJac];
	(_ui displayCtrl 9074) ctrlSetText format ["%1 / 1000", aguJac];
	(_ui displayCtrl 9075) ctrlSetText format ["%1 / 1000", comJac];
	
		_mKav = round (((aliMem + medMem + aguMem + comMem) / 4) / 10); // Media Kav
		_mAbd = round (((aliAer + medAer + aguAer + comAer) / 4) / 10);	// Media Abd
		_mSof = round (((aliDia + medDia + aguDia + comDia) / 4) / 10);	// Media Sof
		_mCha = round (((aliMor + medMor + aguMor + comMor) / 4) / 10);	// Media Cha
	
		_recTotal = round ((_mKav + _mAbd + _mSof + _mCha) / 4);
		
	(_ui displayCtrl 9082) ctrlSetText format ["Recursos totales %1%2", _recTotal,"%"];	// % recursos totales
	
	

	_rec = ctrlText 9081; 	// entrada recurso
	_can = ctrlText 9030;		// entrada cantidad
	
	if ((parseNumber _can) > 150) then {		// limito la entrada a 0-300
		(_ui displayCtrl 9030) ctrlSetText format ["%1", 150];
	};
	if ((parseNumber _can) < 0) then {
		(_ui displayCtrl 9030) ctrlSetText format ["%1", 0];
	};
	
	
	if (_rec == "Alimento") then {
		_pmali = round (((round ((1200 - aliMem) / 2)) + (round ((1200 - aliAer) / 2)) + (round ((1200 - aliDia) / 2)) + (round ((1200 - aliMor) / 2))) / 4);
		_imp = round (((parsenumber _can) * _pmali) * 0.3);
		
		(_ui displayCtrl 9077) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9078) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9079) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9080) ctrlSetText format ["%1",_imp];
	};

	if (_rec == "Medicamentos") then {
		_pmCar = round (((round ((1200 - medMem) / 2)) + (round ((1200 - medAer) / 2)) + (round ((1200 - medDia) / 2)) + (round ((1200 - medMor) / 2))) / 4);
		_imp = round (((parsenumber _can) * _pmCar) * 0.3);
		
		(_ui displayCtrl 9077) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9078) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9079) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9080) ctrlSetText format ["%1",_imp];
	};
	if (_rec == "Agua") then {
		_pmPes = round (((round ((1200 - aguMem) / 2)) + (round ((1200 - aguAer) / 2)) + (round ((1200 - aguDia) / 2)) + (round ((1200 - aguMor) / 2))) / 4);
		_imp = round (((parsenumber _can) * _pmPes) * 0.3);
	
		(_ui displayCtrl 9077) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9078) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9079) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9080) ctrlSetText format ["%1",_imp];
	};
	if (_rec == "Combustible") then {
		_pmCom = round (((round ((1200 - comMem) / 2)) + (round ((1200 - comAer) / 2)) + (round ((1200 - comDia) / 2)) + (round ((1200 - comMor) / 2))) / 4);
		_imp = round (((parsenumber _can) * _pmCom) * 0.3);
		
		(_ui displayCtrl 9077) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9078) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9079) ctrlSetText format ["%1",_imp];
		(_ui displayCtrl 9080) ctrlSetText format ["%1",_imp];
	};
	if (_rec == "Comvustible") then {
		hint "Aprende a escribir, combustible es con B.";
	};
	if (_rec == "Convustible") then {
		hint "Oh dios... combustible es con M y con B.";
	};
	if (_rec == "icaruk") then {
		hint "Has descubierto la palabra secreta, recibes 3.650.240 €";
		sleep 3;
		hint "Es mentira, pero sigues molando :D";
		sleep 3;
	};

sleep 1;
};
