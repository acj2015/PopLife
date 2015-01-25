/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/

private ["_destino", "_cosa", "_can", "_veh", "_caja", "_destino", "_tipos", "_estoy", "_dinero"];

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



_estoy = _this select 0;
_tipos = ["Land_Cargo20_light_green_F", "Land_Cargo20_red_F", "Land_Cargo20_blue_F", "Land_Cargo20_yellow_F"];

if (_estoy == "ZDMemorial") then {
	_veh = nearestObject [(getMarkerPos _estoy), "I_Truck_02_transport_F"];
	_caja = (nearestObjects [(getMarkerPos _estoy), _tipos, 20]);
	_destino = "Memorial";
};
if (_estoy == "ZDDiablos") then {
	_veh = nearestObject [(getMarkerPos _estoy), "I_Truck_02_transport_F"];
	_caja = (nearestObjects [(getMarkerPos _estoy), _tipos, 20]);
	_destino = "Diablos";
};
if (_estoy == "ZDMorrison") then {
	_veh = nearestObject [(getMarkerPos _estoy), "I_Truck_02_transport_F"];
	_caja = (nearestObjects [(getMarkerPos _estoy), _tipos, 20]);
	_destino = "Morrison";
};
if (_estoy == "ZDAeropuerto") then {
	_veh = nearestObject [(getMarkerPos _estoy), "I_Truck_02_transport_F"];
	_caja = (nearestObjects [(getMarkerPos _estoy), _tipos, 20]);
	_destino = "Aeropuerto";
};


_cosa = (((_caja select 0) getVariable _destino) select 0);
_can = (((_caja select 0) getVariable _destino) select 1);


if ((_veh distance (getMarkerPos _estoy)) > 4.4) exitWith {hint "El camion esta demasiado lejos, o no hay camion";};
if (((_caja select 0) distance (getMarkerPos _estoy)) > 5.8) exitWith {hint "La caja esta demasiado lejos o no hay ninguna caja";};
if (isNil {_cosa}) exitWith {hint "Esta mercancia no va aqui";};


if (_cosa == "Alimento") then {

	switch _destino do {
		case "Memorial":	{
			_dinero = (_prealiMem * (parseNumber _can));
			life_cash = life_cash + _dinero;
			aliMem = aliMem + (parseNumber _can);
			publicVariable "aliMem";
		};
		case "Diablos":	{
			_dinero = (_prealiDia * (parseNumber _can));
			life_cash = life_cash + _dinero;
			aliDia = aliDia + (parseNumber _can);
			publicVariable "aliDia";
		};
		case "Morrison":	{
			_dinero = (_prealiMor * (parseNumber _can));
			life_cash = life_cash + _dinero;
			aliMor = aliMor + (parseNumber _can);
			publicVariable "aliMor";
		};
		case "Aeropuerto":	{
			_dinero = (_prealiAer * (parseNumber _can));
			life_cash = life_cash + _dinero;
			aliAer = aliAer + (parseNumber _can);
			publicVariable "aliAer";
		};
	};
};
if (_cosa == "Agua") then {
	switch _destino do {
		case "Memorial":	{
			_dinero = (_preaguMem * (parseNumber _can));
			life_cash = life_cash + _dinero;
			aguMem = aguMem + (parseNumber _can);
			publicVariable "aguMem";
		};
		case "Diablos":	{
			_dinero = (_preaguDia * (parseNumber _can));
			life_cash = life_cash + _dinero;
			aguDia = aguDia + (parseNumber _can);
			publicVariable "aguDia";
		};
		case "Morrison":	{
			_dinero = (_preaguMor * (parseNumber _can));
			life_cash = life_cash + _dinero;
			aguMor = aguMor + (parseNumber _can);
			publicVariable "aguMor";
		};
		case "Aeropuerto":	{
			_dinero = (_preaguAer * (parseNumber _can));
			life_cash = life_cash + _dinero;
			aguAer = aguAer + (parseNumber _can);
			publicVariable "aguAer";
		};
	};
};
if (_cosa == "Medicamentos") then {
	switch _destino do {
		case "Memorial":	{
			_dinero = (_premedMem * (parseNumber _can));
			life_cash = life_cash + _dinero;
			medMem = medMem + (parseNumber _can);
			publicVariable "medMem";
		};
		case "Diablos":	{
			_dinero = (_premedDia * (parseNumber _can));
			life_cash = life_cash + _dinero;
			medDia = medDia + (parseNumber _can);
			publicVariable "medDia";
		};
		case "Morrison":	{
			_dinero = (_premedMor * (parseNumber _can));
			life_cash = life_cash + _dinero;
			medMor = medMor + (parseNumber _can);
			publicVariable "medMor";
		};
		case "Aeropuerto":	{
			_dinero = (_premedAer * (parseNumber _can));
			life_cash = life_cash + _dinero;
			medAer = medAer + (parseNumber _can);
			publicVariable "medAer";
		};
	};
};
if (_cosa == "Combustible") then {
	switch _destino do {
		case "Memorial":	{
			_dinero = (_precomMem * (parseNumber _can));
			life_cash = life_cash + _dinero;
			comMem = comMem + (parseNumber _can);
			publicVariable "comMem";
		};
		case "Diablos":	{
			_dinero = (_precomDia * (parseNumber _can));
			life_cash = life_cash + _dinero;
			comDia = comDia + (parseNumber _can);
			publicVariable "comDia";
		};
		case "Morrison":	{
			_dinero = (_precomMor * (parseNumber _can));
			life_cash = life_cash + _dinero;
			comMor = comMor + (parseNumber _can);
			publicVariable "comMor";
		};
		case "Aeropuerto":	{
			_dinero = (_precomAer * (parseNumber _can));
			life_cash = life_cash + _dinero;
			comAer = comAer + (parseNumber _can);
			publicVariable "comAer";
		};
	};
};


hint format ["Recibes %1 E por entregar %2 de %3", _dinero, _can, _cosa];
deleteVehicle (_caja select 0);
_veh setVariable ["cargado", nil, true];


