/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/


_mat = _this select 0;
_can = _this select 1;

_pmCar = round ((((1600 - carFor) / 2) + ((1600 - carFab) / 2)) / 2);
_impCar = round (((parsenumber _can) * _pmCar) * 0.26);
_pmPie = round ((((1600 - polFor) / 2) + ((1600 - polFab) / 2)) / 2);
_impPie = round (((parsenumber _can) * _pmPie) * 0.26);
_pmHie = round ((((1600 - HieFor) / 2) + ((1600 - HieFab) / 2)) / 2);
_impHie = round (((parsenumber _can) * _pmHie) * 0.26);
_pmCob = round ((((1600 - CobFor) / 2) + ((1600 - CobFab) / 2)) / 2);
_impCob = round (((parsenumber _can) * _pmCob) * 0.26);
_pmPla = round ((((1600 - PlaFor) / 2) + ((1600 - PlaFab) / 2)) / 2);
_impPla = round (((parsenumber _can) * _pmPla) * 0.26);
_pmOro = round ((((1600 - OroFor) / 2) + ((1600 - OroFab) / 2)) / 2);
_impOro = round (((parsenumber _can) * _pmOro) * 0.26);


_veh = nearestObject [(getMarkerPos "ZDFabrica"), "I_Truck_02_transport_F"];
if !(isNil {_veh getVariable "cargado"}) exitWith {hint "El camion ya esta cargado"};
if !(isNil {viajerealizado}) exitWith {hint "Debes de esperar 1h entre la descarga y la siguiente carga"};

if (_mat == "") exitWith {
	hint "Escribe un material.";
};
if (_mat != "") then {
	if ((parseNumber _can) < 0) exitWith {
		hint "Escribe un numero mayor que 0.";
	};
	if ((parseNumber _can) > 150) exitWith {
		hint "Escribe un numero menor que 150.";
	};
	if ((_veh distance (getMarkerPos "ZDFabrica")) > 4.4) exitWith {hint "No hay un camion en la zona de descarga.";};

	if (_mat == "Carbon") then {
		if ((parseNumber _can) > carFab) exitWith {hint "No hay suficientes recursos en la Fabrica."};
		if ((parseNumber _can) <= carFab) then {
		
			if (life_cash < _impCar) exitWith {hint "No tienes suficiente dinero para pagar el IVA"};
			if (life_cash >= _impCar) then {
							
				hint format ["Empaquetando %1 recursos de carbon con destino a la Forja...", (parseNumber _can)];
				sleep 3;
				hint "Recogiendo los trocitos que se han caido...";
				sleep 2;
				hint "Montando la mercancia en el camion...";
				sleep 3;
				if ((_veh distance (getMarkerPos "ZDFabrica")) > 4.4) exitWith {hint "No hay un camion (un un camion apropiado) en la zona de descarga.";};
				if !(isNil {_veh getVariable "cargado"}) exitWith {hint "El camion ya esta cargado"};
				hint "Todo listo, buen viaje hasta la Forja :)";
				
				carFab = carFab - (parseNumber _can);
				publicVariable "carFab";
				life_cash = life_cash - _impCar;
				
				_caja = "Land_Cargo20_brick_red_F" createVehicle (getMarkerPos "");
				
				[[_caja, ["<t color='#DF0101'>Eliminar magicamente</t>",'deleteVehicle (_this select 0)', "", 1,false,true,"","side player != CIVILIAN"]], "ICARUK_fnc_addAction", true, true] spawn BIS_fnc_MP; 
			
				_caja setVariable ["Forja", (parseNumber _can), true];	
				
				_caja attachTo [_veh, [0.1,-1.69,0.6]]; 
				_caja setdir 270;
				_veh setVariable ["cargado", 1, true];
			};
		};	
	
	};
	
	if (_mat == "Polvora") then {
		if ((parseNumber _can) > polFab) exitWith {hint "No hay suficientes recursos en la Fabrica."};
		if ((parseNumber _can) <= polFab) then {
		
			if (life_cash < _impPie) exitWith {hint "No tienes suficiente dinero para pagar el IVA"};
			if (life_cash >= _impPie) then {
							
				hint format ["Empaquetando %1 recursos de polvora con destino a la Forja...", (parseNumber _can)];
				sleep 3;
				hint "Recogiendo los trocitos que se han caido...";
				sleep 2;
				hint "Montando la mercancia en el camion...";
				sleep 3;
				if ((_veh distance (getMarkerPos "ZDFabrica")) > 4.4) exitWith {hint "No hay un camion (un un camion apropiado) en la zona de descarga.";};
				if !(isNil {_veh getVariable "cargado"}) exitWith {hint "El camion ya esta cargado"};
				hint "Todo listo, buen viaje hasta la Forja :)";
				
				polFab = polFab - (parseNumber _can);
				publicVariable "polFab";
				life_cash = life_cash - _impPie;
				
				_caja = "Land_Cargo20_light_green_F" createVehicle (getMarkerPos "");
				
				[[_caja, ["<t color='#DF0101'>Eliminar magicamente</t>",'deleteVehicle (_this select 0)', "", 1,false,true,"","side player != CIVILIAN"]], "ICARUK_fnc_addAction", true, true] spawn BIS_fnc_MP; 
			
				_caja setVariable ["Forja", (parseNumber _can), true];	
				
				_caja attachTo [_veh, [0.1,-1.69,0.6]]; 
				_caja setdir 270;
				_veh setVariable ["cargado", 1, true];
			};
		};
	};	
		
	if (_mat == "Hierro") then {
		if ((parseNumber _can) > hieFab) exitWith {hint "No hay suficientes recursos en la Fabrica."};
		if ((parseNumber _can) <= hieFab) then {
		
			if (life_cash < _impHie) exitWith {hint "No tienes suficiente dinero para pagar el IVA"};
			if (life_cash >= _impHie) then {
						
				hint format ["Empaquetando %1 recursos de hierro con destino a la Forja...", (parseNumber _can)];
				sleep 3;
				hint "Recogiendo los trocitos que se han caido...";
				sleep 2;
				hint "Montando la mercancia en el camion...";
				sleep 3;
				if ((_veh distance (getMarkerPos "ZDFabrica")) > 4.4) exitWith {hint "No hay un camion (un un camion apropiado) en la zona de descarga.";};
				if !(isNil {_veh getVariable "cargado"}) exitWith {hint "El camion ya esta cargado"};
				hint "Todo listo, buen viaje hasta la Forja :)";
				
				hieFab = hieFab - (parseNumber _can);
				publicVariable "hieFab";
				life_cash = life_cash - _impHie;
				
				_caja = "Land_Cargo20_white_F" createVehicle (getMarkerPos "");
				
				[[_caja, ["<t color='#DF0101'>Eliminar magicamente</t>",'deleteVehicle (_this select 0)', "", 1,false,true,"","side player != CIVILIAN"]], "ICARUK_fnc_addAction", true, true] spawn BIS_fnc_MP; 
			
				_caja setVariable ["Forja", (parseNumber _can), true];	
				
				_caja attachTo [_veh, [0.1,-1.69,0.6]]; 
				_caja setdir 270;
				_veh setVariable ["cargado", 1, true];
			};
		};	
	};
	
	if (_mat == "Cobre") then {
		if ((parseNumber _can) > cobFab) exitWith {hint "No hay suficientes recursos en la Fabrica."};
		if ((parseNumber _can) <= cobFab) then {
		
			if (life_cash < _impCob) exitWith {hint "No tienes suficiente dinero para pagar el IVA"};
			if (life_cash >= _impCob) then {
						
				hint format ["Empaquetando %1 recursos de cobre con destino a la Forja...", (parseNumber _can)];
				sleep 3;
				hint "Recogiendo los trocitos que se han caido...";
				sleep 2;
				hint "Montando la mercancia en el camion...";
				sleep 3;
				if ((_veh distance (getMarkerPos "ZDFabrica")) > 4.4) exitWith {hint "No hay un camion (un un camion apropiado) en la zona de descarga.";};
				if !(isNil {_veh getVariable "cargado"}) exitWith {hint "El camion ya esta cargado"};
				hint "Todo listo, buen viaje hasta la Forja :)";
				
				cobFab = cobFab - (parseNumber _can);
				publicVariable "cobFab";
				life_cash = life_cash - _impCob;
				
				_caja = "Land_Cargo20_sand_F" createVehicle (getMarkerPos "");
				
				[[_caja, ["<t color='#DF0101'>Eliminar magicamente</t>",'deleteVehicle (_this select 0)', "", 1,false,true,"","side player != CIVILIAN"]], "ICARUK_fnc_addAction", true, true] spawn BIS_fnc_MP; 
			
				_caja setVariable ["Forja", (parseNumber _can), true];	
				
				_caja attachTo [_veh, [0.1,-1.69,0.6]]; 
				_caja setdir 270;
				_veh setVariable ["cargado", 1, true];
			};	
		};
	};
	
	if (_mat == "Plata") then {
		if ((parseNumber _can) > plaFab) exitWith {hint "No hay suficientes recursos en la Fabrica."};
		if ((parseNumber _can) <= plaFab) then {
		
			if (life_cash < _impPla) exitWith {hint "No tienes suficiente dinero para pagar el IVA"};
			if (life_cash >= _impPla) then {
							
				hint format ["Empaquetando %1 recursos de plata con destino a la Forja...", (parseNumber _can)];
				sleep 3;
				hint "Recogiendo los trocitos que se han caido...";
				sleep 2;
				hint "Montando la mercancia en el camion...";
				sleep 3;
				if ((_veh distance (getMarkerPos "ZDFabrica")) > 4.4) exitWith {hint "No hay un camion (un un camion apropiado) en la zona de descarga.";};
				if !(isNil {_veh getVariable "cargado"}) exitWith {hint "El camion ya esta cargado"};
				hint "Todo listo, buen viaje hasta la Forja :)";
				
				plaFab = plaFab - (parseNumber _can);
				publicVariable "plaFab";
				life_cash = life_cash - _impPla;
				
				_caja = "Land_Cargo20_cyan_F" createVehicle (getMarkerPos "");
				
				[[_caja, ["<t color='#DF0101'>Eliminar magicamente</t>",'deleteVehicle (_this select 0)', "", 1,false,true,"","side player != CIVILIAN"]], "ICARUK_fnc_addAction", true, true] spawn BIS_fnc_MP; 
			
				_caja setVariable ["Forja", (parseNumber _can), true];	
				
				_caja attachTo [_veh, [0.1,-1.69,0.6]]; 
				_caja setdir 270;
				_veh setVariable ["cargado", 1, true];
			};	
		};
	};

	if (_mat == "Oro") then {
		if ((parseNumber _can) > oroFab) exitWith {hint "No hay suficientes recursos en la Fabrica."};
		if ((parseNumber _can) <= oroFab) then {
		
			if (life_cash < _impOro) exitWith {hint "No tienes suficiente dinero para pagar el IVA"};
			if (life_cash >= _impOro) then {
						
				hint format ["Empaquetando %1 recursos de oro con destino a la Forja...", (parseNumber _can)];
				sleep 3;
				hint "Recogiendo los trocitos que se han caido...";
				sleep 2;
				hint "Montando la mercancia en el camion...";
				sleep 3;
				if ((_veh distance (getMarkerPos "ZDFabrica")) > 4.4) exitWith {hint "No hay un camion (un un camion apropiado) en la zona de descarga.";};
				if !(isNil {_veh getVariable "cargado"}) exitWith {hint "El camion ya esta cargado"};
				hint "Todo listo, buen viaje hasta la Forja :)";
				
				oroFab = oroFab - (parseNumber _can);
				publicVariable "oroFab";
				life_cash = life_cash - _impOro;
				
				_caja = "Land_Cargo20_yellow_F" createVehicle (getMarkerPos "");
				
				[[_caja, ["<t color='#DF0101'>Eliminar magicamente</t>",'deleteVehicle (_this select 0)', "", 1,false,true,"","side player != CIVILIAN"]], "ICARUK_fnc_addAction", true, true] spawn BIS_fnc_MP; 
			
				_caja setVariable ["Forja", (parseNumber _can), true];	
				
				_caja attachTo [_veh, [0.1,-1.69,0.6]]; 
				_caja setdir 270;
				_veh setVariable ["cargado", 1, true];
			};	
		};
	};	
};