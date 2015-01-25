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


_veh = nearestObject [(getMarkerPos "ZDForja"), "I_Truck_02_transport_F"];
if !(isNil {_veh getVariable "cargado"}) exitWith {hint "El camion ya esta cargado"};
if !(isNil {viajerealizado}) exitWith {hint "Debes de esperar 1h entre la descarga y la siguiente carga"};


if (_mat == "") exitWith {
	hint "Escribe un material.";
};
if (_mat != "") then {
	if ((parseNumber _can) < 0) exitWith {
		hint "Escribe un numero mayor que 0.";
	};
	if ((parseNumber _can) > 300) exitWith {
		hint "Escribe un numero menor que 300.";
	};
	if ((_veh distance (getMarkerPos "ZDForja")) > 4.4) exitWith {hint "No hay un camion en la zona de descarga.";};

	if (_mat == "Carbon") then {
		if ((parseNumber _can) > carFor) exitWith {hint "No hay suficientes recursos en la Forja."};
		if ((parseNumber _can) <= carFor) then {
		
			if (life_cash < _impCar) exitWith {hint "No tienes suficiente dinero para pagar el IVA"};
			if (life_cash >= _impCar) then {
						
				hint format ["Empaquetando %1 recursos de carbon con destino a la Fabrica...", (parseNumber _can)];
				sleep 3;
				hint "Recogiendo los trocitos que se han caido...";
				sleep 2;
				hint "Montando la mercancia en el camion...";
				sleep 3;
				if ((_veh distance (getMarkerPos "ZDForja")) > 4.4) exitWith {hint "No hay un camion (un un camion apropiado) en la zona de descarga.";};
				if !(isNil {_veh getVariable "cargado"}) exitWith {hint "El camion ya esta cargado"};
				hint "Todo listo, buen viaje hasta la Fabrica :)";
				
				carFor = carFor - (parseNumber _can);
				publicVariable "carFor";
				life_cash = life_cash - _impCar;
				
				_caja = "Land_Cargo20_brick_red_F" createVehicle (getMarkerPos "");
				
				[[_caja, ["<t color='#DF0101'>Eliminar magicamente</t>",'deleteVehicle (_this select 0)', "", 1,false,true,"","side player != CIVILIAN"]], "ICARUK_fnc_addAction", true, true] spawn BIS_fnc_MP; 
			
				_caja setVariable ["Fabrica", (parseNumber _can), true];	
				
				_caja attachTo [_veh, [0.1,-1.69,0.6]]; 
				_caja setdir 270;
				_veh setVariable ["cargado", 1, true];
			};	
		};
	};
	
	if (_mat == "Polvora") then {
		if ((parseNumber _can) > polFor) exitWith {hint "No hay suficientes recursos en la Forja."};
		if ((parseNumber _can) <= polFor) then {
		
			if (life_cash < _impPie) exitWith {hint "No tienes suficiente dinero para pagar el IVA"};
			if (life_cash >= _impPie) then {
										
			
				hint format ["Empaquetando %1 recursos de polvora con destino a la Fabrica...", (parseNumber _can)];
				sleep 3;
				hint "Recogiendo los trocitos que se han caido...";
				sleep 2;
				hint "Montando la mercancia en el camion...";
				sleep 3;
				if ((_veh distance (getMarkerPos "ZDForja")) > 4.4) exitWith {hint "No hay un camion (un un camion apropiado) en la zona de descarga.";};
				if !(isNil {_veh getVariable "cargado"}) exitWith {hint "El camion ya esta cargado"};
				hint "Todo listo, buen viaje hasta la Fabrica :)";
				
				polFor = polFor - (parseNumber _can);
				publicVariable "polFor";
				life_cash = life_cash - _impPie;
				
				_caja = "Land_Cargo20_light_green_F" createVehicle (getMarkerPos "");
				
				[[_caja, ["<t color='#DF0101'>Eliminar magicamente</t>",'deleteVehicle (_this select 0)', "", 1,false,true,"","side player != CIVILIAN"]], "ICARUK_fnc_addAction", true, true] spawn BIS_fnc_MP; 
			
				_caja setVariable ["Fabrica", (parseNumber _can), true];	
				
				_caja attachTo [_veh, [0.1,-1.69,0.6]]; 
				_caja setdir 270;
				_veh setVariable ["cargado", 1, true];
			};
		};
	};	
		
	if (_mat == "Hierro") then {
		if ((parseNumber _can) > hieFor) exitWith {hint "No hay suficientes recursos en la Forja."};
		if ((parseNumber _can) <= hieFor) then {
		
			if (life_cash < _impHie) exitWith {hint "No tienes suficiente dinero para pagar el IVA"};
			if (life_cash >= _impHie) then {
							
				hint format ["Empaquetando %1 recursos de hierro con destino a la Fabrica...", (parseNumber _can)];
				sleep 3;
				hint "Recogiendo los trocitos que se han caido...";
				sleep 2;
				hint "Montando la mercancia en el camion...";
				sleep 3;
				if ((_veh distance (getMarkerPos "ZDForja")) > 4.4) exitWith {hint "No hay un camion (un un camion apropiado) en la zona de descarga.";};
				if !(isNil {_veh getVariable "cargado"}) exitWith {hint "El camion ya esta cargado"};
				hint "Todo listo, buen viaje hasta la Fabrica :)";
				
				hieFor = hieFor - (parseNumber _can);
				publicVariable "hieFor";
				life_cash = life_cash - _impHie;
				
				_caja = "Land_Cargo20_white_F" createVehicle (getMarkerPos "");
				
				[[_caja, ["<t color='#DF0101'>Eliminar magicamente</t>",'deleteVehicle (_this select 0)', "", 1,false,true,"","side player != CIVILIAN"]], "ICARUK_fnc_addAction", true, true] spawn BIS_fnc_MP; 
			
				_caja setVariable ["Fabrica", (parseNumber _can), true];	
				
				_caja attachTo [_veh, [0.1,-1.69,0.6]]; 
				_caja setdir 270;
				_veh setVariable ["cargado", 1, true];
			};	
		};
	};
	
	if (_mat == "Cobre") then {
		if ((parseNumber _can) > cobFor) exitWith {hint "No hay suficientes recursos en la Forja."};
		if ((parseNumber _can) <= cobFor) then {
		
			if (life_cash < _impCob) exitWith {hint "No tienes suficiente dinero para pagar el IVA"};
			if (life_cash >= _impCob) then {
						
				hint format ["Empaquetando %1 recursos de cobre con destino a la Fabrica...", (parseNumber _can)];
				sleep 3;
				hint "Recogiendo los trocitos que se han caido...";
				sleep 2;
				hint "Montando la mercancia en el camion...";
				sleep 3;
				if ((_veh distance (getMarkerPos "ZDForja")) > 4.4) exitWith {hint "No hay un camion (un un camion apropiado) en la zona de descarga.";};
				if !(isNil {_veh getVariable "cargado"}) exitWith {hint "El camion ya esta cargado"};
				hint "Todo listo, buen viaje hasta la Fabrica :)";
				
				cobFor = cobFor - (parseNumber _can);
				publicVariable "cobFor";
				life_cash = life_cash - _impCob;
				
				_caja = "Land_Cargo20_sand_F" createVehicle (getMarkerPos "");
				
				[[_caja, ["<t color='#DF0101'>Eliminar magicamente</t>",'deleteVehicle (_this select 0)', "", 1,false,true,"","side player != CIVILIAN"]], "ICARUK_fnc_addAction", true, true] spawn BIS_fnc_MP; 
			
				_caja setVariable ["Fabrica", (parseNumber _can), true];	
				
				_caja attachTo [_veh, [0.1,-1.69,0.6]]; 
				_caja setdir 270;
				_veh setVariable ["cargado", 1, true];
			};	
		};
	};
	
	if (_mat == "Plata") then {
		if ((parseNumber _can) > plaFor) exitWith {hint "No hay suficientes recursos en la Forja."};
		if ((parseNumber _can) <= plaFor) then {
		
			if (life_cash < _impPla) exitWith {hint "No tienes suficiente dinero para pagar el IVA"};
			if (life_cash >= _impPla) then {
										
				hint format ["Empaquetando %1 recursos de plata con destino a la Fabrica...", (parseNumber _can)];
				sleep 3;
				hint "Recogiendo los trocitos que se han caido...";
				sleep 2;
				hint "Montando la mercancia en el camion...";
				sleep 3;
				if ((_veh distance (getMarkerPos "ZDForja")) > 4.4) exitWith {hint "No hay un camion (un un camion apropiado) en la zona de descarga.";};
				if !(isNil {_veh getVariable "cargado"}) exitWith {hint "El camion ya esta cargado"};
				hint "Todo listo, buen viaje hasta la Fabrica :)";
				
				plaFor = plaFor - (parseNumber _can);
				publicVariable "plaFor";
				life_cash = life_cash - _impPla;
				
				_caja = "Land_Cargo20_cyan_F" createVehicle (getMarkerPos "");
				
				[[_caja, ["<t color='#DF0101'>Eliminar magicamente</t>",'deleteVehicle (_this select 0)', "", 1,false,true,"","side player != CIVILIAN"]], "ICARUK_fnc_addAction", true, true] spawn BIS_fnc_MP; 
			
				_caja setVariable ["Fabrica", (parseNumber _can), true];	
				
				_caja attachTo [_veh, [0.1,-1.69,0.6]]; 
				_caja setdir 270;
				_veh setVariable ["cargado", 1, true];
			};
		};	
	};

	if (_mat == "Oro") then {
		if ((parseNumber _can) > oroFor) exitWith {hint "No hay suficientes recursos en la Forja."};
		if ((parseNumber _can) <= oroFor) then {
		
			if (life_cash < _impOro) exitWith {hint "No tienes suficiente dinero para pagar el IVA"};
			if (life_cash >= _impOro) then {
							
				hint format ["Empaquetando %1 recursos de oro con destino a la Fabrica...", (parseNumber _can)];
				sleep 3;
				hint "Recogiendo los trocitos que se han caido...";
				sleep 2;
				hint "Montando la mercancia en el camion...";
				sleep 3;
				if ((_veh distance (getMarkerPos "ZDForja")) > 4.4) exitWith {hint "No hay un camion (un un camion apropiado) en la zona de descarga.";};
				if !(isNil {_veh getVariable "cargado"}) exitWith {hint "El camion ya esta cargado"};
				hint "Todo listo, buen viaje hasta la Fabrica :)";
				
				oroFor = oroFor - (parseNumber _can);
				publicVariable "oroFor";
				life_cash = life_cash - _impOro;
				
				_caja = "Land_Cargo20_yellow_F" createVehicle (getMarkerPos "");
				
				[[_caja, ["<t color='#DF0101'>Eliminar magicamente</t>",'deleteVehicle (_this select 0)', "", 1,false,true,"","side player != CIVILIAN"]], "ICARUK_fnc_addAction", true, true] spawn BIS_fnc_MP; 
			
				_caja setVariable ["Fabrica", (parseNumber _can), true];	
				
				_caja attachTo [_veh, [0.1,-1.69,0.6]]; 
				_caja setdir 270;
				_veh setVariable ["cargado", 1, true];
			};	
		};
	};	
};