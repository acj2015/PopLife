/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/

_prealiMem = round ((1200 - aliMem) / 2);
_premedMem = round ((1200 - medMem) / 2);
_preaguMem = round ((1200 - aguMem) / 2);
_precomMem = round ((1200 - comMem) / 2);

_prealiDia = round ((1200 - aliDia) / 2);
_premedDia = round ((1200 - medDia) / 2);
_preaguDia = round ((1200 - aguDia) / 2);
_precomDia = round ((1200 - comDia) / 2);

_prealiMor = round ((1200 - aliMor) / 2);
_premedMor = round ((1200 - medMor) / 2);
_preaguMor = round ((1200 - aguMor) / 2);
_precomMor = round ((1200 - comMor) / 2);

_prealiAer = round ((1200 - aliAer) / 2);
_premedAer = round ((1200 - medAer) / 2);
_preaguAer = round ((1200 - aguAer) / 2);
_precomAer = round ((1200 - comAer) / 2);


//////////
// Pyrgos
//////////
if ((player distance (getMarkerPos "ZDPyrgos")) < 30) then {
	_veh = nearestObject [(getMarkerPos "ZDPyrgos"), "I_Truck_02_transport_F"];
	
	_tipos = ["Land_Cargo20_light_green_F", "Land_Cargo20_red_F", "Land_Cargo20_blue_F", "Land_Cargo20_yellow_F"];
	_caja = (nearestObjects [(getMarkerPos "ZDPyrgos"), _tipos, 20]);
	
	if ((_veh distance (getMarkerPos "ZDPyrgos")) > 4.4) exitWith {hint "El camion esta demasiado lejos, o no hay camion";};
	if (((_caja select 0) distance (getMarkerPos "ZDPyrgos")) > 5.8) exitWith {hint "La caja esta demasiado lejos o no hay ninguna caja";};
	// if isNil {(_caja select 0) getVariable "Pyrgos"} exitWith {hint "La caja no va aqui";};
	
	_can = ((_caja select 0) getVariable "Pyrgos");

	////////// alimento
	if ((typeOf (_caja select 0)) == "Land_Cargo20_light_green_F") then {
		
		if (((_can) > 100) AND (((_can + aliMem) - 1000) >= 0)) then {
			_exceso = (_can + aliMem) - 1000;
			_dinTot = _prealiMem * (_exceso + 1);
			_extra = 15000 - (_exceso * 50);
			
			aliMem = 1000;
			publicVariable "aliMem";
			life_cash = life_cash + _dinToT + _extra;
			
			hint format ["Gracias por los %1 suministros de alimento, pero sobran %2. \n\nNo te vamos a pagar el exceso ni tampoco aceptamos devoluciones. \n\nAhora tenemos 1000/1000. \n\nTe corresponden %3 €. \n\nAdemas un extra de %4 €.",_can,_exceso,_dinTot,_extra];
	
			deleteVehicle (_caja select 0);
		};
		
		if (((_can + aliMem) - 1000) < 0) then {
			_dinTot = _prealiMem * _can;
			aliMem = aliMem + _can;
			publicVariable "aliMem";
			life_cash = life_cash + _dinToT;
			
			hint format ["Gracias por los %1 suministros de alimento \n\nAhora tenemos %2/1000. \n\nTe corresponden %3 €.",_can,aliMem,_dinTot];
			
			deleteVehicle (_caja select 0);
		};
	};
	
	////////// med
	if ((typeOf (_caja select 0)) == "Land_Cargo20_red_F") then {
		if (((_can + medMem) - 1000) >= 0) then {
			_exceso = (_can + medMem) - 1000;
			_dinTot = _premedMem * (_exceso + 1);
			_extra = 15000 - (_exceso * 50);
			medMem = 1000;
			publicVariable "medMem";
			life_cash = life_cash + _dinToT + _extra;
			
			hint format ["Gracias por los %1 suministros de carne, pero sobran %2. \n\nNo te vamos a pagar el exceso ni tampoco aceptamos devoluciones. \n\nAhora tenemos 1000/1000. \n\nTe corresponden %3 €. \n\nAdemas un extra de %4 €.",_can,_exceso,_dinTot,_extra];
			
			deleteVehicle (_caja select 0);
		};
		
		if (((_can + medMem) - 1000) < 0) then {
			_dinTot = _premedMem * _can;
			medMem = medMem + _can;
			publicVariable "medMem";
			life_cash = life_cash + _dinToT;
			
			hint format ["Gracias por los %1 suministros de carne \n\nAhora tenemos %2/1000. \n\nTe corresponden %3 €.",_can,medMem,_dinTot];
			
			deleteVehicle (_caja select 0);
		};
	};

	////////// agua
	if ((typeOf (_caja select 0)) == "Land_Cargo20_blue_F") then {
		if (((_can + aguMem) - 1000) >= 0) then {
			_exceso = (_can + aguMem) - 1000;
			_dinTot = _preaguMem * (_exceso + 1);
			_extra = 15000 - (_exceso * 50);
			aguMem = 1000;
			publicVariable "aguMem";
			life_cash = life_cash + _dinToT + _extra;
			hint format ["Gracias por los %1 suministros de medicinas, pero sobran %2. \n\nNo te vamos a pagar el exceso ni tampoco aceptamos devoluciones. \n\nAhora tenemos 1000/1000. \n\nTe corresponden %3 €. \n\nAdemas un extra de %4 €.",_can,_exceso,_dinTot,_extra];
						
			deleteVehicle (_caja select 0);
		};
		
		if (((_can + aguMem) - 1000) < 0) then {
			_dinTot = _preaguMem * _can;
			aguMem = aguMem + _can;
			publicVariable "aguMem";
			life_cash = life_cash + _dinToT;
			
			hint format ["Gracias por los %1 suministros de medicinas \n\nAhora tenemos %2/1000. \n\nTe corresponden %3 €.",_can,aguMem,_dinTot];
			
			deleteVehicle (_caja select 0);
		};
	};
	
	////////// COMBUSTIBLE
	if ((typeOf (_caja select 0)) == "Land_Cargo20_yellow_F") then {
		if (((_can + comMem) - 1000) >= 0) then {
			_exceso = (_can + comMem) - 1000;
			_dinTot = _precomMem * (_exceso + 1);
			_extra = 15000 - (_exceso * 50);
			comMem = 1000;
			publicVariable "comMem";
			life_cash = life_cash + _dinToT + _extra;
			hint format ["Gracias por los %1 suministros de combustible, pero sobran %2. \n\nNo te vamos a pagar el exceso ni tampoco aceptamos devoluciones. \n\nAhora tenemos 1000/1000. \n\nTe corresponden %3 €. \n\nAdemas un extra de %4 €.",_can,_exceso,_dinTot,_extra];
			
						deleteVehicle (_caja select 0);
		};
		
		if (((_can + comMem) - 1000) < 0) then {
			_dinTot = _precomMem * _can;
			comMem = comMem + _can;
			publicVariable "comMem";
			life_cash = life_cash + _dinToT;
			
			hint format ["Gracias por los %1 suministros de combustible \n\nAhora tenemos %2/1000. \n\nTe corresponden %3 €.",_can,comMem,_dinTot];
			
			deleteVehicle (_caja select 0);
		};
	};
	_veh setVariable ["cargado", nil, true];
};

//////////
// Abdera
//////////
if ((player distance (getMarkerPos "ZDAbdera")) < 30) then {
	_veh = nearestObject [(getMarkerPos "ZDAbdera"), "I_Truck_02_transport_F"];
	
	_tipos = ["Land_Cargo20_light_green_F", "Land_Cargo20_red_F", "Land_Cargo20_blue_F", "Land_Cargo20_yellow_F"];
	_caja = (nearestObjects [(getMarkerPos "ZDAbdera"), _tipos, 20]);
	
	if ((_veh distance (getMarkerPos "ZDAbdera")) > 4.4) exitWith {hint "El camion esta demasiado lejos, o no hay camion";};
	if (((_caja select 0) distance (getMarkerPos "ZDAbdera")) > 5.8) exitWith {hint "La caja esta demasiado lejos o no hay ninguna caja";};
	
	_can = ((_caja select 0) getVariable "Abdera");

	////////// alimento
	if ((typeOf (_caja select 0)) == "Land_Cargo20_light_green_F") then {
		if (((_can + aliAer) - 1000) >= 0) then {
			_exceso = (_can + aliAer) - 1000;
			_dinTot = _prealiAer * (_exceso + 1);
			_extra = 15000 - (_exceso * 50);
			aliAer = 1000;
			publicVariable "aliAer";
			life_cash = life_cash + _dinToT + _extra;
			hint format ["Gracias por los %1 suministros de alimento, pero sobran %2. \n\nNo te vamos a pagar el exceso ni tampoco aceptamos devoluciones. \n\nAhora tenemos 1000/1000. \n\nTe corresponden %3 €. \n\nAdemas un extra de %4 €.",_can,_exceso,_dinTot,_extra];
						
			deleteVehicle (_caja select 0);
		};
		
		if (((_can + aliAer) - 1000) < 0) then {
			_dinTot = _prealiAer * _can;
			aliAer = aliAer + _can;
			publicVariable "aliAer";
			life_cash = life_cash + _dinToT;
			
			hint format ["Gracias por los %1 suministros de alimento \n\nAhora tenemos %2/1000. \n\nTe corresponden %3 €.",_can,aliAer,_dinTot];
			
			deleteVehicle (_caja select 0);
		};
	};
	
	////////// med
	if ((typeOf (_caja select 0)) == "Land_Cargo20_red_F") then {
		if (((_can + medAer) - 1000) >= 0) then {
			_exceso = (_can + medAer) - 1000;
			_dinTot = _premedAer * (_exceso + 1);
			_extra = 15000 - (_exceso * 50);
			medAer = 1000;
			publicVariable "medAer";
			life_cash = life_cash + _dinToT + _extra;
			hint format ["Gracias por los %1 suministros de carne, pero sobran %2. \n\nNo te vamos a pagar el exceso ni tampoco aceptamos devoluciones. \n\nAhora tenemos 1000/1000. \n\nTe corresponden %3 €. \n\nAdemas un extra de %4 €.",_can,_exceso,_dinTot,_extra];
			
			deleteVehicle (_caja select 0);
		};
		
		if (((_can + medAer) - 1000) < 0) then {
			_dinTot = _premedAer * _can;
			medAer = medAer + _can;
			publicVariable "medAer";
			life_cash = life_cash + _dinToT;
			
			hint format ["Gracias por los %1 suministros de carne \n\nAhora tenemos %2/1000. \n\nTe corresponden %3 €.",_can,medAer,_dinTot];
			
			deleteVehicle (_caja select 0);
		};
	};
	
	////////// agua
	if ((typeOf (_caja select 0)) == "Land_Cargo20_blue_F") then {
		if (((_can + aguAer) - 1000) >= 0) then {
			_exceso = (_can + aguAer) - 1000;
			_dinTot = _preaguAer * (_exceso + 1);
			_extra = 15000 - (_exceso * 50);
			aguAer = 1000;
			publicVariable "aguAer";
			life_cash = life_cash + _dinToT + _extra;
			hint format ["Gracias por los %1 suministros de medicinas, pero sobran %2. \n\nNo te vamos a pagar el exceso ni tampoco aceptamos devoluciones. \n\nAhora tenemos 1000/1000. \n\nTe corresponden %3 €. \n\nAdemas un extra de %4 €.",_can,_exceso,_dinTot,_extra];
						
			deleteVehicle (_caja select 0);
		};
		
		if (((_can + aguAer) - 1000) < 0) then {
			_dinTot = _preaguAer * _can;
			aguAer = aguAer + _can;
			publicVariable "aguAer";
			life_cash = life_cash + _dinToT;
			
			hint format ["Gracias por los %1 suministros de medicinas \n\nAhora tenemos %2/1000. \n\nTe corresponden %3 €.",_can,aguAer,_dinTot];
			
			deleteVehicle (_caja select 0);
		};
	};
	
	////////// COMBUSTIBLE
	if ((typeOf (_caja select 0)) == "Land_Cargo20_yellow_F") then {
		if (((_can + comAer) - 1000) >= 0) then {
			_exceso = (_can + comAer) - 1000;
			_dinTot = _precomAer * (_exceso + 1);
			_extra = 15000 - (_exceso * 50);
			comAer = 1000;
			publicVariable "comAer";
			life_cash = life_cash + _dinToT + _extra;
			hint format ["Gracias por los %1 suministros de combustible, pero sobran %2. \n\nNo te vamos a pagar el exceso ni tampoco aceptamos devoluciones. \n\nAhora tenemos 1000/1000. \n\nTe corresponden %3 €. \n\nAdemas un extra de %4 €.",_can,_exceso,_dinTot,_extra];
			
						deleteVehicle (_caja select 0);
		};
		
		if (((_can + comAer) - 1000) < 0) then {
			_dinTot = _precomAer * _can;
			comAer = comAer + _can;
			publicVariable "comAer";
			life_cash = life_cash + _dinToT;
			
			hint format ["Gracias por los %1 suministros de combustible \n\nAhora tenemos %2/1000. \n\nTe corresponden %3 €.",_can,comAer,_dinTot];
			
			deleteVehicle (_caja select 0);
		};
	};
	_veh setVariable ["cargado", nil, true];
};

//////////
// Athira
//////////
if ((player distance (getMarkerPos "ZDAthira")) < 30) then {
	_veh = nearestObject [(getMarkerPos "ZDAthira"), "I_Truck_02_transport_F"];
	
	_tipos = ["Land_Cargo20_light_green_F", "Land_Cargo20_red_F", "Land_Cargo20_blue_F", "Land_Cargo20_yellow_F"];
	_caja = (nearestObjects [(getMarkerPos "ZDAthira"), _tipos, 20]);
	
	if ((_veh distance (getMarkerPos "ZDAthira")) > 4.4) exitWith {hint "El camion esta demasiado lejos, o no hay camion";};
	if (((_caja select 0) distance (getMarkerPos "ZDAthira")) > 5.8) exitWith {hint "La caja esta demasiado lejos o no hay ninguna caja";};
	
	_can = ((_caja select 0) getVariable "Athira");

	////////// alimento
	if ((typeOf (_caja select 0)) == "Land_Cargo20_light_green_F") then {
		if (((_can + aliDia) - 1000) >= 0) then {
			_exceso = (_can + aliDia) - 1000;
			_dinTot = _prealiDia * (_exceso + 1);
			_extra = 15000 - (_exceso * 50);
			aliDia = 1000;
			publicVariable "aliDia";
			life_cash = life_cash + _dinToT + _extra;
			hint format ["Gracias por los %1 suministros de alimento, pero sobran %2. \n\nNo te vamos a pagar el exceso ni tampoco aceptamos devoluciones. \n\nAhora tenemos 1000/1000. \n\nTe corresponden %3 €. \n\nAdemas un extra de %4 €.",_can,_exceso,_dinTot,_extra];
						
			deleteVehicle (_caja select 0);
		};
		
		if (((_can + aliDia) - 1000) < 0) then {
			_dinTot = _prealiDia * _can;
			aliDia = aliDia + _can;
			publicVariable "aliDia";
			life_cash = life_cash + _dinToT;
			
			hint format ["Gracias por los %1 suministros de alimento \n\nAhora tenemos %2/1000. \n\nTe corresponden %3 €.",_can,aliDia,_dinTot];
			
			deleteVehicle (_caja select 0);
		};
	};
	
	////////// med
	if ((typeOf (_caja select 0)) == "Land_Cargo20_red_F") then {
		if (((_can + medDia) - 1000) >= 0) then {
			_exceso = (_can + medDia) - 1000;
			_dinTot = _premedDia * (_exceso + 1);
			_extra = 15000 - (_exceso * 50);
			medDia = 1000;
			publicVariable "medDia";
			life_cash = life_cash + _dinToT + _extra;
			hint format ["Gracias por los %1 suministros de carne, pero sobran %2. \n\nNo te vamos a pagar el exceso ni tampoco aceptamos devoluciones. \n\nAhora tenemos 1000/1000. \n\nTe corresponden %3 €. \n\nAdemas un extra de %4 €.",_can,_exceso,_dinTot,_extra];
						
			deleteVehicle (_caja select 0);
		};
		
		if (((_can + medDia) - 1000) < 0) then {
			_dinTot = _premedDia * _can;
			medDia = medDia + _can;
			publicVariable "medDia";
			life_cash = life_cash + _dinToT;
			
			hint format ["Gracias por los %1 suministros de carne \n\nAhora tenemos %2/1000. \n\nTe corresponden %3 €.",_can,medDia,_dinTot];
			
			deleteVehicle (_caja select 0);
		};
	};

	
	////////// agua
	if ((typeOf (_caja select 0)) == "Land_Cargo20_blue_F") then {
		if (((_can + aguDia) - 1000) >= 0) then {
			_exceso = (_can + aguDia) - 1000;
			_dinTot = _preaguDia * (_exceso + 1);
			_extra = 15000 - (_exceso * 50);
			aguDia = 1000;
			publicVariable "aguDia";
			life_cash = life_cash + _dinToT + _extra;
			hint format ["Gracias por los %1 suministros de medicinas, pero sobran %2. \n\nNo te vamos a pagar el exceso ni tampoco aceptamos devoluciones. \n\nAhora tenemos 1000/1000. \n\nTe corresponden %3 €. \n\nAdemas un extra de %4 €.",_can,_exceso,_dinTot,_extra];
						
			deleteVehicle (_caja select 0);
		};
		
		if (((_can + aguDia) - 1000) < 0) then {
			_dinTot = _preaguDia * _can;
			aguDia = aguDia + _can;
			publicVariable "aguDia";
			life_cash = life_cash + _dinToT;
			
			hint format ["Gracias por los %1 suministros de medicinas \n\nAhora tenemos %2/1000. \n\nTe corresponden %3 €.",_can,aguDia,_dinTot];
			
			deleteVehicle (_caja select 0);
		};
	};
	
	////////// COMBUSTIBLE
	if ((typeOf (_caja select 0)) == "Land_Cargo20_yellow_F") then {
		if (((_can + comDia) - 1000) >= 0) then {
			_exceso = (_can + comDia) - 1000;
			_dinTot = _precomDia * (_exceso + 1);
			_extra = 15000 - (_exceso * 50);
			comDia = 1000;
			publicVariable "comDia";
			life_cash = life_cash + _dinToT + _extra;
			hint format ["Gracias por los %1 suministros de combustible, pero sobran %2. \n\nNo te vamos a pagar el exceso ni tampoco aceptamos devoluciones. \n\nAhora tenemos 1000/1000. \n\nTe corresponden %3 €. \n\nAdemas un extra de %4 €.",_can,_exceso,_dinTot,_extra];
						
			deleteVehicle (_caja select 0);
		};
		
		if (((_can + comDia) - 1000) < 0) then {
			_dinTot = _precomDia * _can;
			comDia = comDia + _can;
			publicVariable "comDia";
			life_cash = life_cash + _dinToT;
			
			hint format ["Gracias por los %1 suministros de combustible \n\nAhora tenemos %2/1000. \n\nTe corresponden %3 €.",_can,comDia,_dinTot];
			
			deleteVehicle (_caja select 0);
		};
	};
	_veh setVariable ["cargado", nil, true];
};

//////////
// Kalithea
//////////
if ((player distance (getMarkerPos "ZDKalithea")) < 30) then {
	_veh = nearestObject [(getMarkerPos "ZDKalithea"), "I_Truck_02_transport_F"];
	
	_tipos = ["Land_Cargo20_light_green_F", "Land_Cargo20_red_F", "Land_Cargo20_blue_F", "Land_Cargo20_yellow_F"];
	_caja = (nearestObjects [(getMarkerPos "ZDKalithea"), _tipos, 20]);
	
	if ((_veh distance (getMarkerPos "ZDKalithea")) > 4.4) exitWith {hint "El camion esta demasiado lejos, o no hay camion";};
	if (((_caja select 0) distance (getMarkerPos "ZDKalithea")) > 5.8) exitWith {hint "La caja esta demasiado lejos o no hay ninguna caja";};
	
	_can = ((_caja select 0) getVariable "Kalithea");

	////////// alimento
	if ((typeOf (_caja select 0)) == "Land_Cargo20_light_green_F") then {
		if (((_can + aliMor) - 1000) >= 0) then {
			_exceso = (_can + aliMor) - 1000;
			_dinTot = _prealiMor * (_exceso + 1);
			_extra = 15000 - (_exceso * 50);
			aliMor = 1000;
			publicVariable "aliMor";
			life_cash = life_cash + _dinToT + _extra;
			hint format ["Gracias por los %1 suministros de alimento, pero sobran %2. \n\nNo te vamos a pagar el exceso ni tampoco aceptamos devoluciones. \n\nAhora tenemos 1000/1000. \n\nTe corresponden %3 €. \n\nAdemas un extra de %4 €.",_can,_exceso,_dinTot,_extra];
						
			deleteVehicle (_caja select 0);
		};
		
		if (((_can + aliMor) - 1000) < 0) then {
			_dinTot = _prealiMor * _can;
			aliMor = aliMor + _can;
			publicVariable "aliMor";
			life_cash = life_cash + _dinToT;
			
			hint format ["Gracias por los %1 suministros de alimento \n\nAhora tenemos %2/1000. \n\nTe corresponden %3 €.",_can,aliMor,_dinTot];
			
			deleteVehicle (_caja select 0);
		};
	};
	
	////////// med
	if ((typeOf (_caja select 0)) == "Land_Cargo20_red_F") then {
		if (((_can + medMor) - 1000) >= 0) then {
			_exceso = (_can + medMor) - 1000;
			_dinTot = _premedMor * (_exceso + 1);
			_extra = 15000 - (_exceso * 50);
			medMor = 1000;
			publicVariable "medMor";
			life_cash = life_cash + _dinToT + _extra;
			hint format ["Gracias por los %1 suministros de carne, pero sobran %2. \n\nNo te vamos a pagar el exceso ni tampoco aceptamos devoluciones. \n\nAhora tenemos 1000/1000. \n\nTe corresponden %3 €. \n\nAdemas un extra de %4 €.",_can,_exceso,_dinTot,_extra];
			
						deleteVehicle (_caja select 0);
		};
		
		if (((_can + medMor) - 1000) < 0) then {
			_dinTot = _premedMor * _can;
			medMor = medMor + _can;
			publicVariable "medMor";
			life_cash = life_cash + _dinToT;
			
			hint format ["Gracias por los %1 suministros de carne \n\nAhora tenemos %2/1000. \n\nTe corresponden %3 €.",_can,medMor,_dinTot];
			
			deleteVehicle (_caja select 0);
		};
	};
	
	////////// agua
	if ((typeOf (_caja select 0)) == "Land_Cargo20_blue_F") then {
		if (((_can + aguMor) - 1000) >= 0) then {
			_exceso = (_can + aguMor) - 1000;
			_dinTot = _preaguMor * (_exceso + 1);
			_extra = 15000 - (_exceso * 50);
			aguMor = 1000;
			publicVariable "aguMor";
			life_cash = life_cash + _dinToT + _extra;
			hint format ["Gracias por los %1 suministros de medicinas, pero sobran %2. \n\nNo te vamos a pagar el exceso ni tampoco aceptamos devoluciones. \n\nAhora tenemos 1000/1000. \n\nTe corresponden %3 €. \n\nAdemas un extra de %4 €.",_can,_exceso,_dinTot,_extra];
						
			deleteVehicle (_caja select 0);
		};
		
		if (((_can + aguMor) - 1000) < 0) then {
			_dinTot = _preaguMor * _can;
			aguMor = aguMor + _can;
			publicVariable "aguMor";
			life_cash = life_cash + _dinToT;
			
			hint format ["Gracias por los %1 suministros de medicinas \n\nAhora tenemos %2/1000. \n\nTe corresponden %3 €.",_can,aguMor,_dinTot];
			
			deleteVehicle (_caja select 0);
		};
	};
	
	////////// COMBUSTIBLE
	if ((typeOf (_caja select 0)) == "Land_Cargo20_yellow_F") then {
	
		if (((_can + comMor) - 1000) >= 0) then {
			_exceso = (_can + comMor) - 1000;
			_dinTot = _precomMor * (_exceso + 1);
			_extra = 15000 - (_exceso * 50);
			comMor = 1000;
			publicVariable "comMor";
			life_cash = life_cash + _dinToT + _extra;
			hint format ["Gracias por los %1 suministros de combustible, pero sobran %2. \n\nNo te vamos a pagar el exceso ni tampoco aceptamos devoluciones. \n\nAhora tenemos 1000/1000. \n\nTe corresponden %3 €. \n\nAdemas un extra de %4 €.",_can,_exceso,_dinTot,_extra];
						
			deleteVehicle (_caja select 0);
		};
		
		if (((_can + comMor) - 1000) < 0) then {
			_dinTot = _precomMor * _can;
			comMor = comMor + _can;
			publicVariable "comMor";
			life_cash = life_cash + _dinToT;
			
			hint format ["Gracias por los %1 suministros de combustible \n\nAhora tenemos %2/1000. \n\nTe corresponden %3 €.",_can,comMor,_dinTot];
			
			deleteVehicle (_caja select 0);
		};
	};	
	_veh setVariable ["cargado", nil, true];
};


///////////////////////////////////////////////////////////////////////////////////////////


//////////
// Fabrica
//////////
if ((player distance (getMarkerPos "ZDFabrica")) < 30) then {
	_veh = nearestObject [(getMarkerPos "ZDFabrica"), "I_Truck_02_transport_F"];
	
	_tipos = ["Land_Cargo20_brick_red_F", "Land_Cargo20_light_green_F", "Land_Cargo20_white_F", "Land_Cargo20_sand_F", "Land_Cargo20_cyan_F", "Land_Cargo20_yellow_F"];
	_caja = (nearestObjects [(getMarkerPos "ZDFabrica"), _tipos, 20]);
	
	if ((_veh distance (getMarkerPos "ZDFabrica")) > 4.4) exitWith {hint "El camion esta demasiado lejos, o no hay camion";};
	if (((_caja select 0) distance (getMarkerPos "ZDFabrica")) > 5.8) exitWith {hint "La caja esta demasiado lejos o no hay ninguna caja";};
	if isNil {(_caja select 0) getVariable "Fabrica"} exitWith {hint "La caja no va aqui";};
	
	_can = ((_caja select 0) getVariable "Fabrica");
	
	
	////////// CARBON
	if ((typeOf (_caja select 0)) == "Land_Cargo20_brick_red_F") then {
		if (((_can + carFab) - 1000) >= 0) then {
			_exceso = (_can + carFab) - 1000;
			_dinTot = ((1600 - carFab) / 2) * _exceso;
			_extra = 15000 - (_exceso * 50);
			life_cash = life_cash + _dinToT + _extra;
			
			hint format ["Gracias por los %1 suministros de carbon, pero sobran %2. \n\nNo te vamos a pagar el exceso ni tampoco aceptamos devoluciones. \n\nAhora tenemos 1000/1000. \n\nTe corresponden %3 €. \n\nAdemas un extra de %4 €.",_can,_exceso,_dinTot,_extra];
			
			carFab = 1000;
			publicVariable "carFab";
			deleteVehicle (_caja select 0);
		};
		
		if (((_can + carFab) - 1000) < 0) then {
			_dinTot = ((1600 - carFab) / 2) * _can;
			carFab = carFab + _can;
			publicVariable "carFab";
			hint format ["Gracias por los %1 suministros de carbon \n\nAhora tenemos %2/1000. \n\nTe corresponden %3 €.",_can,carFab,_dinTot];
			
			life_cash = life_cash + _dinToT;
			deleteVehicle (_caja select 0);
		};
	};
	
	////////// Polvora
	if ((typeOf (_caja select 0)) == "Land_Cargo20_light_green_F") then {
		if (((_can + polFab) - 1000) >= 0) then {
			_exceso = (_can + polFab) - 1000;
			_dinTot = ((1600 - polFab) / 2) * _exceso;
			_extra = 15000 - (_exceso * 50);
			life_cash = life_cash + _dinToT + _extra;
			
			hint format ["Gracias por los %1 suministros de Polvora, pero sobran %2. \n\nNo te vamos a pagar el exceso ni tampoco aceptamos devoluciones. \n\nAhora tenemos 1000/1000. \n\nTe corresponden %3 €. \n\nAdemas un extra de %4 €.",_can,_exceso,_dinTot,_extra];
			
			polFab = 1000;
			publicVariable "polFab";
			deleteVehicle (_caja select 0);
		};
		
		if (((_can + polFab) - 1000) < 0) then {
			_dinTot = ((1600 - polFab) / 2) * _can;
			polFab = polFab + _can;
			publicVariable "polFab";
			hint format ["Gracias por los %1 suministros de Polvora \n\nAhora tenemos %2/1000. \n\nTe corresponden %3 €.",_can,polFab,_dinTot];
			
			life_cash = life_cash + _dinToT;
			deleteVehicle (_caja select 0);
		};
	};
	
	////////// HIERRO
	if ((typeOf (_caja select 0)) == "Land_Cargo20_white_F") then {
		if (((_can + hieFab) - 1000) >= 0) then {
			_exceso = (_can + hieFab) - 1000;
			_dinTot = ((1600 - hieFab) / 2) * _exceso;
			_extra = 15000 - (_exceso * 50);
			life_cash = life_cash + _dinToT + _extra;
			
			hint format ["Gracias por los %1 suministros de hierro, pero sobran %2. \n\nNo te vamos a pagar el exceso ni tampoco aceptamos devoluciones. \n\nAhora tenemos 1000/1000. \n\nTe corresponden %3 €. \n\nAdemas un extra de %4 €.",_can,_exceso,_dinTot,_extra];
			
			hieFab = 1000;
			publicVariable "hieFab";
			deleteVehicle (_caja select 0);
		};
		
		if (((_can + hieFab) - 1000) < 0) then {
			_dinTot = ((1600 - hieFab) / 2) * _can;
			hieFab = hieFab + _can;
			publicVariable "hieFab";
			hint format ["Gracias por los %1 suministros de hierro \n\nAhora tenemos %2/1000. \n\nTe corresponden %3 €.",_can,hieFab,_dinTot];
			
			life_cash = life_cash + _dinToT;
			deleteVehicle (_caja select 0);
		};
	};
	
	////////// COBRE
	if ((typeOf (_caja select 0)) == "Land_Cargo20_sand_F") then {
		if (((_can + cobFab) - 1000) >= 0) then {
			_exceso = (_can + cobFab) - 1000;
			_dinTot = ((1600 - cobFab) / 2) * _exceso;
			_extra = 15000 - (_exceso * 50);
			life_cash = life_cash + _dinToT + _extra;
			
			hint format ["Gracias por los %1 suministros de cobre, pero sobran %2. \n\nNo te vamos a pagar el exceso ni tampoco aceptamos devoluciones. \n\nAhora tenemos 1000/1000. \n\nTe corresponden %3 €. \n\nAdemas un extra de %4 €.",_can,_exceso,_dinTot,_extra];
			
			cobFab = 1000;
			publicVariable "cobFab";
			deleteVehicle (_caja select 0);
		};
		
		if (((_can + cobFab) - 1000) < 0) then {
			_dinTot = ((1600 - cobFab) / 2) * _can;
			cobFab = cobFab + _can;
			publicVariable "cobFab";
			hint format ["Gracias por los %1 suministros de cobre \n\nAhora tenemos %2/1000. \n\nTe corresponden %3 €.",_can,cobFab,_dinTot];
			
			life_cash = life_cash + _dinToT;
			deleteVehicle (_caja select 0);
		};
	};
	
	////////// PLATA
	if ((typeOf (_caja select 0)) == "Land_Cargo20_cyan_F") then {
		if (((_can + plaFab) - 1000) >= 0) then {
			_exceso = (_can + plaFab) - 1000;
			_dinTot = ((1600 - plaFab) / 2) * _exceso;
			_extra = 15000 - (_exceso * 50);
			life_cash = life_cash + _dinToT + _extra;
			
			hint format ["Gracias por los %1 suministros de plata, pero sobran %2. \n\nNo te vamos a pagar el exceso ni tampoco aceptamos devoluciones. \n\nAhora tenemos 1000/1000. \n\nTe corresponden %3 €. \n\nAdemas un extra de %4 €.",_can,_exceso,_dinTot,_extra];
			
			plaFab = 1000;
			publicVariable "plaFab";
			deleteVehicle (_caja select 0);
		};
		
		if (((_can + plaFab) - 1000) < 0) then {
			_dinTot = ((1600 - plaFab) / 2) * _can;
			plaFab = plaFab + _can;
			publicVariable "plaFab";
			hint format ["Gracias por los %1 suministros de plata \n\nAhora tenemos %2/1000. \n\nTe corresponden %3 €.",_can,plaFab,_dinTot];
			
			life_cash = life_cash + _dinToT;
			deleteVehicle (_caja select 0);
		};
	};
	
	////////// ORO
	if ((typeOf (_caja select 0)) == "Land_Cargo20_yellow_F") then {
		if (((_can + oroFab) - 1000) >= 0) then {
			_exceso = (_can + oroFab) - 1000;
			_dinTot = ((1600 - oroFab) / 2) * _exceso;
			_extra = 15000 - (_exceso * 50);
			life_cash = life_cash + _dinToT + _extra;
			
			hint format ["Gracias por los %1 suministros de oro, pero sobran %2. \n\nNo te vamos a pagar el exceso ni tampoco aceptamos devoluciones. \n\nAhora tenemos 1000/1000. \n\nTe corresponden %3 €. \n\nAdemas un extra de %4 €.",_can,_exceso,_dinTot,_extra];
			
			oroFab = 1000;
			publicVariable "oroFab";
			deleteVehicle (_caja select 0);
		};
		
		if (((_can + oroFab) - 1000) < 0) then {
			_dinTot = ((1600 - oroFab) / 2) * _can;
			oroFab = oroFab + _can;
			publicVariable "oroFab";
			hint format ["Gracias por los %1 suministros de oro \n\nAhora tenemos %2/1000. \n\nTe corresponden %3 €.",_can,oroFab,_dinTot];
			
			life_cash = life_cash + _dinToT;
			deleteVehicle (_caja select 0);
		};
	};
	_veh setVariable ["cargado", nil, true];
	[] spawn {
		viajerealizado = true;
		sleep (60 * 60);
		viajerealizado = nil;
	};
};


//////////
// Forja
//////////
if ((player distance (getMarkerPos "ZDForja")) < 30) then {
	_veh = nearestObject [(getMarkerPos "ZDForja"), "I_Truck_02_transport_F"];
	
	_tipos = ["Land_Cargo20_brick_red_F", "Land_Cargo20_light_green_F", "Land_Cargo20_white_F", "Land_Cargo20_sand_F", "Land_Cargo20_cyan_F", "Land_Cargo20_yellow_F"];
	_caja = (nearestObjects [(getMarkerPos "ZDForja"), _tipos, 20]);
	
	if ((_veh distance (getMarkerPos "ZDForja")) > 4.4) exitWith {hint "El camion esta demasiado lejos, o no hay camion";};
	if (((_caja select 0) distance (getMarkerPos "ZDForja")) > 5.8) exitWith {hint "La caja esta demasiado lejos o no hay ninguna caja";};
	if isNil {(_caja select 0) getVariable "Forja"} exitWith {hint "La caja no va aqui";};
	
	_can = ((_caja select 0) getVariable "Forja");
	

	////////// CARBON
	if ((typeOf (_caja select 0)) == "Land_Cargo20_brick_red_F") then {
		if (((_can + carFor) - 1000) >= 0) then {
			_exceso = (_can + carFor) - 1000;
			_dinTot = ((1600 - carFor) / 2) * _exceso;
			_extra = 15000 - (_exceso * 50);
			life_cash = life_cash + _dinToT + _extra;
			
			hint format ["Gracias por los %1 suministros de carbon, pero sobran %2. \n\nNo te vamos a pagar el exceso ni tampoco aceptamos devoluciones. \n\nAhora tenemos 1000/1000. \n\nTe corresponden %3 €. \n\nAdemas un extra de %4 €.",_can,_exceso,_dinTot,_extra];
			
			carFor = 1000;
			publicVariable "carFor";
			deleteVehicle (_caja select 0);
		};
		
		if (((_can + carFor) - 1000) < 0) then {
			_dinTot = ((1600 - carFor) / 2) * _can;
			carFor = carFor + _can;
			publicVariable "carFor";
			hint format ["Gracias por los %1 suministros de carbon \n\nAhora tenemos %2/1000. \n\nTe corresponden %3 €.",_can,carFor,_dinTot];
			
			life_cash = life_cash + _dinToT;
			deleteVehicle (_caja select 0);
		};
	};
	
	////////// Polvora
	if ((typeOf (_caja select 0)) == "Land_Cargo20_light_green_F") then {
		if (((_can + polFor) - 1000) >= 0) then {
			_exceso = (_can + polFor) - 1000;
			_dinTot = ((1600 - polFor) / 2) * _exceso;
			_extra = 15000 - (_exceso * 50);
			life_cash = life_cash + _dinToT + _extra;
			
			hint format ["Gracias por los %1 suministros de Polvora, pero sobran %2. \n\nNo te vamos a pagar el exceso ni tampoco aceptamos devoluciones. \n\nAhora tenemos 1000/1000. \n\nTe corresponden %3 €. \n\nAdemas un extra de %4 €.",_can,_exceso,_dinTot,_extra];
			
			polFor = 1000;
			publicVariable "polFor";
			deleteVehicle (_caja select 0);
		};
		
		if (((_can + polFor) - 1000) < 0) then {
			_dinTot = ((1600 - polFor) / 2) * _can;
			polFor = polFor + _can;
			publicVariable "polFor";
			hint format ["Gracias por los %1 suministros de Polvora \n\nAhora tenemos %2/1000. \n\nTe corresponden %3 €.",_can,polFor,_dinTot];
			
			life_cash = life_cash + _dinToT;
			deleteVehicle (_caja select 0);
		};
	};
	
	////////// HIERRO
	if ((typeOf (_caja select 0)) == "Land_Cargo20_white_F") then {
		if (((_can + hieFor) - 1000) >= 0) then {
			_exceso = (_can + hieFor) - 1000;
			_dinTot = ((1600 - hieFor) / 2) * _exceso;
			_extra = 15000 - (_exceso * 50);
			life_cash = life_cash + _dinToT + _extra;
			
			hint format ["Gracias por los %1 suministros de hierro, pero sobran %2. \n\nNo te vamos a pagar el exceso ni tampoco aceptamos devoluciones. \n\nAhora tenemos 1000/1000. \n\nTe corresponden %3 €. \n\nAdemas un extra de %4 €.",_can,_exceso,_dinTot,_extra];
			
			hieFor = 1000;
			publicVariable "hieFor";
			deleteVehicle (_caja select 0);
		};
		
		if (((_can + hieFor) - 1000) < 0) then {
			_dinTot = ((1600 - hieFor) / 2) * _can;
			hieFor = hieFor + _can;
			publicVariable "hieFor";
			hint format ["Gracias por los %1 suministros de hierro \n\nAhora tenemos %2/1000. \n\nTe corresponden %3 €.",_can,hieFor,_dinTot];
			
			life_cash = life_cash + _dinToT;
			deleteVehicle (_caja select 0);
		};
	};
	
	////////// COBRE
	if ((typeOf (_caja select 0)) == "Land_Cargo20_sand_F") then {
		if (((_can + cobFor) - 1000) >= 0) then {
			_exceso = (_can + cobFor) - 1000;
			_dinTot = ((1600 - cobFor) / 2) * _exceso;
			_extra = 15000 - (_exceso * 50);
			life_cash = life_cash + _dinToT + _extra;
			
			hint format ["Gracias por los %1 suministros de cobre, pero sobran %2. \n\nNo te vamos a pagar el exceso ni tampoco aceptamos devoluciones. \n\nAhora tenemos 1000/1000. \n\nTe corresponden %3 €. \n\nAdemas un extra de %4 €.",_can,_exceso,_dinTot,_extra];
			
			cobFor = 1000;
			publicVariable "cobFor";
			deleteVehicle (_caja select 0);
		};
		
		if (((_can + cobFor) - 1000) < 0) then {
			_dinTot = ((1600 - cobFor) / 2) * _can;
			cobFor = cobFor + _can;
			publicVariable "cobFor";
			hint format ["Gracias por los %1 suministros de cobre \n\nAhora tenemos %2/1000. \n\nTe corresponden %3 €.",_can,cobFor,_dinTot];
			
			life_cash = life_cash + _dinToT;
			deleteVehicle (_caja select 0);
		};
	};
	
	////////// PLATA
	if ((typeOf (_caja select 0)) == "Land_Cargo20_cyan_F") then {
		if (((_can + plaFor) - 1000) >= 0) then {
			_exceso = (_can + plaFor) - 1000;
			_dinTot = ((1600 - plaFor) / 2) * _exceso;
			_extra = 15000 - (_exceso * 50);
			life_cash = life_cash + _dinToT + _extra;
			
			hint format ["Gracias por los %1 suministros de plata, pero sobran %2. \n\nNo te vamos a pagar el exceso ni tampoco aceptamos devoluciones. \n\nAhora tenemos 1000/1000. \n\nTe corresponden %3 €. \n\nAdemas un extra de %4 €.",_can,_exceso,_dinTot,_extra];
			
			plaFor = 1000;
			publicVariable "plaFor";
			deleteVehicle (_caja select 0);
		};
		
		if (((_can + plaFor) - 1000) < 0) then {
			_dinTot = ((1600 - plaFor) / 2) * _can;
			plaFor = plaFor + _can;
			publicVariable "plaFor";
			hint format ["Gracias por los %1 suministros de plata \n\nAhora tenemos %2/1000. \n\nTe corresponden %3 €.",_can,plaFor,_dinTot];
			
			life_cash = life_cash + _dinToT;
			deleteVehicle (_caja select 0);
		};
	};

	////////// ORO
	if ((typeOf (_caja select 0)) == "Land_Cargo20_yellow_F") then {
		if (((_can + oroFor) - 1000) >= 0) then {
			_exceso = (_can + oroFor) - 1000;
			_dinTot = ((1600 - oroFor) / 2) * _exceso;
			_extra = 15000 - (_exceso * 50);
			life_cash = life_cash + _dinToT + _extra;
			
			hint format ["Gracias por los %1 suministros de oro, pero sobran %2. \n\nNo te vamos a pagar el exceso ni tampoco aceptamos devoluciones. \n\nAhora tenemos 1000/1000. \n\nTe corresponden %3 €. \n\nAdemas un extra de %4 €.",_can,_exceso,_dinTot,_extra];
			
			oroFor = 1000;
			publicVariable "oroFor";
			deleteVehicle (_caja select 0);
		};
		
		if (((_can + oroFor) - 1000) < 0) then {
			_dinTot = ((1600 - oroFor) / 2) * _can;
			oroFor = oroFor + _can;
			publicVariable "oroFor";
			hint format ["Gracias por los %1 suministros de oro \n\nAhora tenemos %2/1000. \n\nTe corresponden %3 €.",_can,oroFor,_dinTot];
			
			life_cash = life_cash + _dinToT;
			deleteVehicle (_caja select 0);
		};
	};
	_veh setVariable ["cargado", nil, true];
	[] spawn {
		viajerealizado = true;
		sleep (60 * 60);
		viajerealizado = nil;
	};
};