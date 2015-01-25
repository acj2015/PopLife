/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/

hint "Esto no deberia de salir porque hay un bug que pierdes dinero, si lees esto reportalo";

_rec = _this select 0;
_can = _this select 1;

_pmFru = round (((round ((1200 - fruKav) / 2)) + (round ((1200 - fruAbd) / 2)) + (round ((1200 - fruSof) / 2)) + (round ((1200 - fruCha) / 2))) / 4);
_impFru = round (((parsenumber _can) * _pmFru) * 0.2);

_pmCar = round (((round ((1200 - carKav) / 2)) + (round ((1200 - carAbd) / 2)) + (round ((1200 - carSof) / 2)) + (round ((1200 - carCha) / 2))) / 4);
_impCar = round (((parsenumber _can) * _pmCar) * 0.2);

_pmPes = round (((round ((1200 - pesKav) / 2)) + (round ((1200 - pesAbd) / 2)) + (round ((1200 - pesSof) / 2)) + (round ((1200 - pesCha) / 2))) / 4);
_impPes = round (((parsenumber _can) * _pmPes) * 0.2);

_pmCom = round (((round ((1200 - comJac) / 2)) + (round ((1200 - comAer) / 2)) + (round ((1200 - comSof) / 2)) + (round ((1200 - comCha) / 2))) / 4);
_imp = round (((parsenumber _can) * _pmCom) * 0.2);



_veh = nearestObject [(getMarkerPos "ZDTedera"), "I_Truck_02_transport_F"];
if !(isNil {_veh getVariable "cargado"}) exitWith {hint "El camion ya esta cargado"};

	if (_rec == "Fruta") then {
		if ((parseNumber _can) < 0) exitWith {
			hint "Escribe un numero mayor que 0.";
		};
		if ((parseNumber _can) > 300) exitWith {
			hint "Escribe un numero menor que 300.";
		};
		if ((parseNumber _can) > fruTed) exitWith {
			hint "No hay suficientes recursos en Tedera";
		};
		
		_veh = nearestObject [(getMarkerPos "ZDTedera"), "I_Truck_02_transport_F"];
		if ((_veh distance (getMarkerPos "ZDTedera")) > 4.4) exitWith {hint "No hay un camion en la zona de descarga.";};
		
		if ((parseNumber _can) <= fruTed) then {
					
			_veh = nearestObject [(getMarkerPos "ZDTedera"), "I_Truck_02_transport_F"];

			if (life_cash < _impFru) exitWith {hint "No tienes suficiente dinero para pagar el IVA"};
			if (life_cash >= _impFru) then {
				life_cash = life_cash - _impFru;
			
				hint format ["Empaquetando %1 recursos de fruta con destino a Kavala...", (parseNumber _can)];
				sleep 4;
				hint "Montando la mercancia en el camion...";
				sleep 4;
				if ((_veh distance (getMarkerPos "ZDTedera")) > 4.4) exitWith {hint "No hay un camion (un un camion apropiado) en la zona de descarga.";};
				if !(isNil {_veh getVariable "cargado"}) exitWith {hint "El camion ya esta cargado"};
				hint "Todo listo, buen viaje hasta Kavala :)";
				
				fruTed = fruTed - (parseNumber _can);
				
				_caja = "Land_Cargo20_light_green_F" createVehicle (getMarkerPos "");
				
				[[_caja, ["<t color='#DF0101'>Eliminar magicamente</t>",'deleteVehicle (_this select 0)', "", 1,false,true,"","side player != CIVILIAN"]], "ICARUK_fnc_addAction", true, true] spawn BIS_fnc_MP; 
			
				_caja setVariable ["Kavala", (parseNumber _can), true];	
				
				_caja attachTo [_veh, [0.1,-1.69,0.6]]; 
				_caja setdir 270;
				_veh setVariable ["cargado", 1, true];
			};
		};
	};
	
	if (_rec == "Carne") then {
		if ((parseNumber _can) < 0) exitWith {
			hint "Escribe un numero mayor que 0.";
		};
		if ((parseNumber _can) > 300) exitWith {
			hint "Escribe un numero menor que 300.";
		};
		if ((parseNumber _can) > carTed) exitWith {
			hint "No hay suficientes recursos en Tedera";
		};
		
		_veh = nearestObject [(getMarkerPos "ZDTedera"), "I_Truck_02_transport_F"];
		if ((_veh distance (getMarkerPos "ZDTedera")) > 4.4) exitWith {hint "No hay un camion en la zona de descarga.";};
		
		if ((parseNumber _can) <= carTed) then {
					
			_veh = nearestObject [(getMarkerPos "ZDTedera"), "I_Truck_02_transport_F"];
			
			if (life_cash < _impFru) exitWith {hint "No tienes suficiente dinero para pagar el IVA"};
			if (life_cash >= _impFru) then {
				life_cash = life_cash - _impFru;
				
				hint format ["Empaquetando %1 recursos de carne con destino a Kavala...", (parseNumber _can)];
				sleep 4;
				hint "Montando la mercancia en el camion...";
				sleep 4;
				if ((_veh distance (getMarkerPos "ZDTedera")) > 4.4) exitWith {hint "No hay un camion (un un camion apropiado) en la zona de descarga.";};
				if !(isNil {_veh getVariable "cargado"}) exitWith {hint "El camion ya esta cargado"};
				hint "Todo listo, buen viaje hasta Kavala :)";
				
				carTed = carTed - (parseNumber _can);
				
				_caja = "Land_Cargo20_red_F" createVehicle (getMarkerPos "");
				
				[[_caja, ["<t color='#DF0101'>Eliminar magicamente</t>",'deleteVehicle (_this select 0)', "", 1,false,true,"","side player != CIVILIAN"]], "ICARUK_fnc_addAction", true, true] spawn BIS_fnc_MP; 
			
				_caja setVariable ["Kavala", (parseNumber _can), true];	
				
				_caja attachTo [_veh, [0.1,-1.69,0.6]]; 
				_caja setdir 270;
				_veh setVariable ["cargado", 1, true];
			};	
		};
	};
	
	if (_rec == "Pescado") then {
		if ((parseNumber _can) < 0) exitWith {
			hint "Escribe un numero mayor que 0.";
		};
		if ((parseNumber _can) > 300) exitWith {
			hint "Escribe un numero menor que 300.";
		};
		if ((parseNumber _can) > pesTed) exitWith {
			hint "No hay suficientes recursos en Tedera";
		};
		
		_veh = nearestObject [(getMarkerPos "ZDTedera"), "I_Truck_02_transport_F"];
		if ((_veh distance (getMarkerPos "ZDTedera")) > 4.4) exitWith {hint "No hay un camion en la zona de descarga.";};
		
		if ((parseNumber _can) <= pesTed) then {
					
			_veh = nearestObject [(getMarkerPos "ZDTedera"), "I_Truck_02_transport_F"];
			
			if (life_cash < _impFru) exitWith {hint "No tienes suficiente dinero para pagar el IVA"};
			if (life_cash >= _impFru) then {
				life_cash = life_cash - _impFru;
				
				hint format ["Empaquetando %1 recursos de pescado con destino a Kavala...", (parseNumber _can)];
				sleep 4;
				hint "Montando la mercancia en el camion...";
				sleep 4;
				if ((_veh distance (getMarkerPos "ZDTedera")) > 4.4) exitWith {hint "No hay un camion (un un camion apropiado) en la zona de descarga.";};
				if !(isNil {_veh getVariable "cargado"}) exitWith {hint "El camion ya esta cargado"};
				hint "Todo listo, buen viaje hasta Kavala :)";
				
				pesTed = pesTed - (parseNumber _can);
				
				_caja = "Land_Cargo20_blue_F" createVehicle (getMarkerPos "");
				
				[[_caja, ["<t color='#DF0101'>Eliminar magicamente</t>",'deleteVehicle (_this select 0)', "", 1,false,true,"","side player != CIVILIAN"]], "ICARUK_fnc_addAction", true, true] spawn BIS_fnc_MP; 
			
				_caja setVariable ["Kavala", (parseNumber _can), true];		
				
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
		if ((parseNumber _can) > 300) exitWith {
			hint "Escribe un numero menor que 300.";
		};
		if ((parseNumber _can) > comTed) exitWith {
			hint "No hay suficientes recursos en Tedera";
		};
		
		_veh = nearestObject [(getMarkerPos "ZDTedera"), "I_Truck_02_transport_F"];
		if ((_veh distance (getMarkerPos "ZDTedera")) > 4.4) exitWith {hint "No hay un camion en la zona de descarga.";};
		
		if ((parseNumber _can) <= comTed) then {
		
			_veh = nearestObject [(getMarkerPos "ZDTedera"), "I_Truck_02_transport_F"];
			
			if (life_cash < _impFru) exitWith {hint "No tienes suficiente dinero para pagar el IVA"};
			if (life_cash >= _impFru) then {
				life_cash = life_cash - _impFru;
				
				hint format ["Empaquetando %1 recursos de combustible con destino a Kavala...", (parseNumber _can)];
				sleep 4;
				hint "Montando la mercancia en el camion...";
				sleep 4;
				if ((_veh distance (getMarkerPos "ZDTedera")) > 4.4) exitWith {hint "No hay un camion (un un camion apropiado) en la zona de descarga.";};
				if !(isNil {_veh getVariable "cargado"}) exitWith {hint "El camion ya esta cargado"};
				hint "Todo listo, buen viaje hasta Kavala :)";
				
				comTed = comTed - (parseNumber _can);
				
				_caja = "Land_Cargo20_yellow_F" createVehicle (getMarkerPos "");
				
				[[_caja, ["<t color='#DF0101'>Eliminar magicamente</t>",'deleteVehicle (_this select 0)', "", 1,false,true,"","side player != CIVILIAN"]], "ICARUK_fnc_addAction", true, true] spawn BIS_fnc_MP; 
			
				_caja setVariable ["Kavala", (parseNumber _can), true];	
				
				_caja attachTo [_veh, [0.1,-1.69,0.6]]; 
				_caja setdir 270;
				_veh setVariable ["cargado", 1, true];
			};	
		};
	};
