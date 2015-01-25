/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/

private ["_destino", "_cosa", "_can", "_veh", "_caja"];

_destino = _this select 0;
_cosa = _this select 1;
_can = _this select 2;
_veh = nearestObject [(getMarkerPos "ZDJackson"), "I_Truck_02_transport_F"];

_prealiMem = round ((1200 - aliMem) / 2.765); // 4,1 km --- 434
_premedMem = round ((1200 - medMem) / 2.765);
_preaguMem = round ((1200 - aguMem) / 2.765);
_precomMem = round ((1200 - comMem) / 2.765);

_prealiDia = round ((1200 - aliDia) / 2.2); // 5,1 km --- 540 / 5,1 = 106 €/km
_premedDia = round ((1200 - medDia) / 2.2);
_preaguDia = round ((1200 - aguDia) / 2.2);
_precomDia = round ((1200 - comDia) / 2.2);

_prealiMor = round ((1200 - aliMor) / 2.46); // 4,6 km --- 488
_premedMor = round ((1200 - medMor) / 2.46);
_preaguMor = round ((1200 - aguMor) / 2.46);
_precomMor = round ((1200 - comMor) / 2.46);

_prealiAer = round ((1200 - aliAer) / 4.1); // 2,5 km --- 265
_premedAer = round ((1200 - medAer) / 4.1);
_preaguAer = round ((1200 - aguAer) / 4.1);
_precomAer = round ((1200 - comAer) / 4.1);

_IVAali = round (((_preAliMem + _preAliDia + _preAliMor + _preAliAer) / 4) * 0.3);
_IVAagu = round (((_preaguMem + _preaguDia + _preaguMor + _preaguAer) / 4) * 0.3);
_IVAmed = round (((_premedMem + _premedDia + _premedMor + _premedAer) / 4) * 0.3);
_IVAcom = round (((_precomMem + _precomDia + _precomMor + _precomAer) / 4) * 0.3);


if (_cosa == "Alimento") then {
	if !(aliJac > 250) exitWith {hint "Tiene que haber al menos 250 de alimento en Jackson."; fuera = true};
	if ((parseNumber _can) > 150) exitWith {hint "Sólo puedes transportar 150 suministros a la vez"; fuera = true;};
	if !(life_cash >= ((parseNumber _can) * _IVAali)) exitWith {hint "No tienes suficiente dinero para pagar el IVA"; fuera = true};
	life_cash = life_cash - ((parseNumber _can) * _IVAali);
	
	_caja = "Land_Cargo20_light_green_F" createVehicle (getMarkerPos "");
	aliJac = aliJac - (parseNumber _can);
};
if (_cosa == "Medicamentos") then {
	if !(medJac > 250) exitWith {hint "Tiene que haber al menos 250 de medicamentos en Jackson."; fuera = true;};
	if ((parseNumber _can) > 150) exitWith {hint "Sólo puedes transportar 150 suministros a la vez"; fuera = true;};
	if !(life_cash >= ((parseNumber _can) * _IVAmed)) exitWith {hint "No tienes suficiente dinero para pagar el IVA"; fuera = true};
	life_cash = life_cash - ((parseNumber _can) * _IVAmed);
	
	_caja = "Land_Cargo20_red_F" createVehicle (getMarkerPos "");
	medJac = medJac - (parseNumber _can);
};
if (_cosa == "Agua") then {
	if !(aguJac > 250) exitWith {hint "Tiene que haber al menos 250 de agua en Jackson."; fuera = true;};
	if ((parseNumber _can) > 150) exitWith {hint "Sólo puedes transportar 150 suministros a la vez"; fuera = true;};
	if !(life_cash >= ((parseNumber _can) * _IVAagu)) exitWith {hint "No tienes suficiente dinero para pagar el IVA"; fuera = true};
	life_cash = life_cash - ((parseNumber _can) * _IVAagu);
	
	_caja = "Land_Cargo20_blue_F" createVehicle (getMarkerPos "");
	aguJac = aguJac - (parseNumber _can);
};
if (_cosa == "Combustible") then {
	if !(comJac > 250) exitWith {hint "Tiene que haber al menos 250 de combustible en Jackson."; fuera = true;};
	if ((parseNumber _can) > 150) exitWith {hint "Sólo puedes transportar 150 suministros a la vez"; fuera = true;};
	if !(life_cash >= ((parseNumber _can) * _IVAcom)) exitWith {hint "No tienes suficiente dinero para pagar el IVA"; fuera = true};
	life_cash = life_cash - ((parseNumber _can) * _IVAcom);
	
	_caja = "Land_Cargo20_yellow_F" createVehicle (getMarkerPos "");
	comJac = comJac - (parseNumber _can);
};

if (!isNil {fuera}) exitWith {fuera = nil};


hint format ["Empaquetando %1 suministros de alimento con destino a %2...", _can, _destino];
sleep 1;
hint "Montando la mercancia en el camion...";
sleep 1;
if ((_veh distance (getMarkerPos "ZDJackson")) > 4.4) exitWith {hint "No hay un camion (un un camion apropiado) en la zona de descarga.";};
if !(isNil {_veh getVariable "cargado"}) exitWith {hint "El camion ya esta cargado"};
hint format ["Todo listo, buen viaje hasta %1 :)", _destino];


waitUntil {!isNull _caja};

switch _destino do {
	case "Memorial": {
		_caja addAction["Mirar etiqueta",{hint "Destino: Memorial."},"",0,false,false,"",""];
	};
	case "Aeropuerto": {
		_caja addAction["Mirar etiqueta",{hint "Destino: Aeropuerto."},"",0,false,false,"",""];
	};
	case "Diablos": {
		_caja addAction["Mirar etiqueta",{hint "Destino: Diablos."},"",0,false,false,"",""];
	};
	case "Morrison": {
		_caja addAction["Mirar etiqueta",{hint "Destino: Morrison."},"",0,false,false,"",""]; 
	};
};

// [[_caja, ["<t color='#DF0101'>Eliminar magicamente</t>",'deleteVehicle (_this select 0)', "", 1,false,true,"","side player != CIVILIAN"]], "ICARUK_fnc_addAction", true, true] spawn BIS_fnc_MP; 
_caja setVariable [_destino, [_cosa, _can], true];

_caja attachTo [_veh, [0.1,-1.69,0.6]]; 
_caja setdir 270;
[[_caja, ["<t color='#DF0101'>Eliminar magicamente</t>",'deleteVehicle (_this select 0)', "", 1,false,true,"","side player != CIVILIAN"]], "ICARUK_fnc_addAction", true, true] spawn BIS_fnc_MP; 
_veh setVariable ["cargado", true, true];

/*
Kavala - jackson
Athira - Diablos
Kalithea - Morrison
Pyrgos - Memorial
Abdera - Aeropuerto
*/

