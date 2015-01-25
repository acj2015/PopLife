/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/


_rec = _this select 0;
_can = _this select 1;

_pmali = round (((round ((1200 - aliMem) / 2)) + (round ((1200 - aliAer) / 2)) + (round ((1200 - aliDia) / 2)) + (round ((1200 - aliMor) / 2))) / 4);
_impali = round (((parsenumber _can) * _pmali) * 0.15);

_pmCar = round (((round ((1200 - medMem) / 2)) + (round ((1200 - medAer) / 2)) + (round ((1200 - medDia) / 2)) + (round ((1200 - medMor) / 2))) / 4);
_impCar = round (((parsenumber _can) * _pmCar) * 0.15);

_pmPes = round (((round ((1200 - aguMem) / 2)) + (round ((1200 - aguAer) / 2)) + (round ((1200 - aguDia) / 2)) + (round ((1200 - aguMor) / 2))) / 4);
_impPes = round (((parsenumber _can) * _pmPes) * 0.15);

_pmCom = round (((round ((1200 - comMem) / 2)) + (round ((1200 - comAer) / 2)) + (round ((1200 - comDia) / 2)) + (round ((1200 - comMor) / 2))) / 4);
_imp = round (((parsenumber _can) * _pmCom) * 0.15);



_veh = nearestObject [(getMarkerPos "ZDKavala"), "I_Truck_02_transport_F"];
if !(isNil {_veh getVariable "cargado"}) exitWith {hint "El camion ya esta cargado"};

	if (_rec == "alimento") then {
		if ((parseNumber _can) < 0) exitWith {
			hint "Escribe un numero mayor que 0.";
		};
		if ((parseNumber _can) > 150) exitWith {
			hint "Escribe un numero menor que 150.";
		};
		if ((parseNumber _can) > aliJac) exitWith {
			hint "No hay suficientes suministros en Kavala";
		};
		
		if !(aliJac > 250) exitWith {hint "El almacen de alimento de Kavala tiene que estar como minimo al 25%"};
		
		_veh = nearestObject [(getMarkerPos "ZDKavala"), "I_Truck_02_transport_F"];
		if ((_veh distance (getMarkerPos "ZDKavala")) > 4.4) exitWith {hint "No hay un camion en la zona de descarga.";};
		
		if ((parseNumber _can) <= aliJac) then {
					
			_veh = nearestObject [(getMarkerPos "ZDKavala"), "I_Truck_02_transport_F"];

			if (life_cash < _impali) exitWith {hint "No tienes suficiente dinero para pagar el IVA"};
			if (life_cash >= _impali) then {
							
				hint format ["Empaquetando %1 suministros de alimento con destino a Pyrgos...", (parseNumber _can)];
				sleep 4;
				hint "Montando la mercancia en el camion...";
				sleep 4;
				if ((_veh distance (getMarkerPos "ZDKavala")) > 4.4) exitWith {hint "No hay un camion (un un camion apropiado) en la zona de descarga.";};
				if !(isNil {_veh getVariable "cargado"}) exitWith {hint "El camion ya esta cargado"};
				hint "Todo listo, buen viaje hasta Pyrgos :)";
				
				aliJac = aliJac - (parseNumber _can);
				publicVariable "aliJac";
				life_cash = life_cash - _impali;
				
				_caja = "Land_Cargo20_light_green_F" createVehicle (getMarkerPos "");
				
				[[_caja, ["<t color='#DF0101'>Eliminar magicamente</t>",'deleteVehicle (_this select 0)', "", 1,false,true,"","side player != CIVILIAN"]], "ICARUK_fnc_addAction", true, true] spawn BIS_fnc_MP; 
				_caja addAction["Mirar etiqueta",{hint "Destino: Pyrgos."},"",0,false,false,"",""];
			
				_caja setVariable ["Pyrgos", (parseNumber _can), true];	
				
				_caja attachTo [_veh, [0.1,-1.69,0.6]]; 
				_caja setdir 270;
				_veh setVariable ["cargado", 1, true];
			};
		};
	};
	
	if (_rec == "Agua") then {
		if ((parseNumber _can) < 0) exitWith {
			hint "Escribe un numero mayor que 0.";
		};
		if ((parseNumber _can) > 150) exitWith {
			hint "Escribe un numero menor que 150.";
		};
		if ((parseNumber _can) > aguJac) exitWith {
			hint "No hay suficientes suministros en Kavala";
		};
		
		if !(aguJac > 250) exitWith {hint "El almacen de carne de Kavala tiene que estar como minimo al 25%"};
		
		_veh = nearestObject [(getMarkerPos "ZDKavala"), "I_Truck_02_transport_F"];
		if ((_veh distance (getMarkerPos "ZDKavala")) > 4.4) exitWith {hint "No hay un camion en la zona de descarga.";};
		
		if ((parseNumber _can) <= aguJac) then {
					
			_veh = nearestObject [(getMarkerPos "ZDKavala"), "I_Truck_02_transport_F"];
			
			if (life_cash < _impali) exitWith {hint "No tienes suficiente dinero para pagar el IVA"};
			if (life_cash >= _impali) then {
								
				hint format ["Empaquetando %1 suministros de carne con destino a Pyrgos...", (parseNumber _can)];
				sleep 4;
				hint "Montando la mercancia en el camion...";
				sleep 4;
				if ((_veh distance (getMarkerPos "ZDKavala")) > 4.4) exitWith {hint "No hay un camion (un un camion apropiado) en la zona de descarga.";};
				if !(isNil {_veh getVariable "cargado"}) exitWith {hint "El camion ya esta cargado"};
				hint "Todo listo, buen viaje hasta Pyrgos :)";
				
				aguJac = aguJac - (parseNumber _can);
				publicVariable "aguJac";
				life_cash = life_cash - _impali;
				
				_caja = "Land_Cargo20_red_F" createVehicle (getMarkerPos "");
				
				[[_caja, ["<t color='#DF0101'>Eliminar magicamente</t>",'deleteVehicle (_this select 0)', "", 1,false,true,"","side player != CIVILIAN"]], "ICARUK_fnc_addAction", true, true] spawn BIS_fnc_MP; 
				_caja addAction["Mirar etiqueta",{hint "Destino: Pyrgos."},"",0,false,false,"",""];
				
				_caja setVariable ["Pyrgos", (parseNumber _can), true];	
				
				_caja attachTo [_veh, [0.1,-1.69,0.6]]; 
				_caja setdir 270;
				_veh setVariable ["cargado", 1, true];
			};	
		};
	};
	
	if (_rec == "medicamentos") then {
		if ((parseNumber _can) < 0) exitWith {
			hint "Escribe un numero mayor que 0.";
		};
		if ((parseNumber _can) > 150) exitWith {
			hint "Escribe un numero menor que 150.";
		};
		if ((parseNumber _can) > medJac) exitWith {
			hint "No hay suficientes suministros en Kavala";
		};
		
		if !(medJac > 250) exitWith {hint "El almacen de medicinas de Kavala tiene que estar como minimo al 25%"};
		
		_veh = nearestObject [(getMarkerPos "ZDKavala"), "I_Truck_02_transport_F"];
		if ((_veh distance (getMarkerPos "ZDKavala")) > 4.4) exitWith {hint "No hay un camion en la zona de descarga.";};
		
		if ((parseNumber _can) <= medJac) then {
					
			_veh = nearestObject [(getMarkerPos "ZDKavala"), "I_Truck_02_transport_F"];
			
			if (life_cash < _impali) exitWith {hint "No tienes suficiente dinero para pagar el IVA"};
			if (life_cash >= _impali) then {
								
				hint format ["Empaquetando %1 suministros de medicinas con destino a Pyrgos...", (parseNumber _can)];
				sleep 4;
				hint "Montando la mercancia en el camion...";
				sleep 4;
				if ((_veh distance (getMarkerPos "ZDKavala")) > 4.4) exitWith {hint "No hay un camion (un un camion apropiado) en la zona de descarga.";};
				if !(isNil {_veh getVariable "cargado"}) exitWith {hint "El camion ya esta cargado"};
				hint "Todo listo, buen viaje hasta Pyrgos :)";
				
				medJac = medJac - (parseNumber _can);
				publicVariable "medJac";
				life_cash = life_cash - _impali;
				
				_caja = "Land_Cargo20_blue_F" createVehicle (getMarkerPos "");
				
				[[_caja, ["<t color='#DF0101'>Eliminar magicamente</t>",'deleteVehicle (_this select 0)', "", 1,false,true,"","side player != CIVILIAN"]], "ICARUK_fnc_addAction", true, true] spawn BIS_fnc_MP; 
				_caja addAction["Mirar etiqueta",{hint "Destino: Pyrgos."},"",0,false,false,"",""];
				
			
				_caja setVariable ["Pyrgos", (parseNumber _can), true];		
				
				_caja attachTo [_veh, [0.1,-1.69,0.6]]; 
				_caja setdir 270;
				_veh setVariable ["cargado", 1, true];
			};
		};
	};
	
	if (_rec == "Combustible") then {
		if ((parseNumber _can) < 0) exitWith {
			hint "Escribe un numero mayor que 0.";
		};
		if ((parseNumber _can) > 150) exitWith {
			hint "Escribe un numero menor que 150.";
		};
		if ((parseNumber _can) > comJac) exitWith {
			hint "No hay suficientes suministros en Kavala";
		};
		
		if !(comJac > 250) exitWith {hint "El almacen de combustible de Kavala tiene que estar como minimo al 25%"};
		
		_veh = nearestObject [(getMarkerPos "ZDKavala"), "I_Truck_02_transport_F"];
		if ((_veh distance (getMarkerPos "ZDKavala")) > 4.4) exitWith {hint "No hay un camion en la zona de descarga.";};
		
		if ((parseNumber _can) <= comJac) then {
		
			_veh = nearestObject [(getMarkerPos "ZDKavala"), "I_Truck_02_transport_F"];
			
			if (life_cash < _impali) exitWith {hint "No tienes suficiente dinero para pagar el IVA"};
			if (life_cash >= _impali) then {
								
				hint format ["Empaquetando %1 suministros de combustible con destino a Pyrgos...", (parseNumber _can)];
				sleep 4;
				hint "Montando la mercancia en el camion...";
				sleep 4;
				if ((_veh distance (getMarkerPos "ZDKavala")) > 4.4) exitWith {hint "No hay un camion (un un camion apropiado) en la zona de descarga.";};
				if !(isNil {_veh getVariable "cargado"}) exitWith {hint "El camion ya esta cargado"};
				hint "Todo listo, buen viaje hasta Pyrgos :)";
				
				comJac = comJac - (parseNumber _can);
				publicVariable "comJac";
				life_cash = life_cash - _impali;
				
				_caja = "Land_Cargo20_yellow_F" createVehicle (getMarkerPos "");
				
				[[_caja, ["<t color='#DF0101'>Eliminar magicamente</t>",'deleteVehicle (_this select 0)', "", 1,false,true,"","side player != CIVILIAN"]], "ICARUK_fnc_addAction", true, true] spawn BIS_fnc_MP; 
				_caja addAction["Mirar etiqueta",{hint "Destino: Pyrgos."},"",0,false,false,"",""];
			
				_caja setVariable ["Pyrgos", (parseNumber _can), true];	
				
				_caja attachTo [_veh, [0.1,-1.69,0.6]]; 
				_caja setdir 270;
				_veh setVariable ["cargado", 1, true];
			};	
		};
	};

