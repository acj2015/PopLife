/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/


_com = parseNumber (_this select 0);
if (_com < 0) exitWith {hint "Escribe un numero mayor que 0";};
if (_com > 100) exitWith {hint "Escribe un numero menor que 100";};


if (player distance (getMarkerPos "gasolineraJackson") < 700) exitWith {
	if (isNil {((nearestObjects [(getMarkerPos "gasolineraJackson"), ["Car"], 15]) select 0)}) exitWith {
		hint "No hay ningun vehiculo cerca";
		closeDialog 0;
	};
	_veh = ((nearestObjects [(getMarkerPos "gasolineraJackson"), ["Car"], 15]) select 0);
	if !(_veh isKindOf "Land") exitWith {hint "No hay ningún vehículo adecuado";};
	if (isNil {_veh}) exitWith {hint "No hay ningún vehículo cerca";};
	
	_precio = round (((1200 - comJac) / 170) * _com);
	if !(life_ATMcash >= _precio) exitWith {hint "No tienes suficiente dinero";};
	if !(comJac >= _com) exitWith {hint "No hay tanto combustible en esta gasolinera";};
	hint "Repostando...";
	sleep (_com / 8);
	if ((_veh distance (getMarkerPos "gasolineraJackson")) > 10) exitWith {hint "El vehiculo esta demasiado lejos";};
	life_ATMcash = life_ATMcash - _precio;
	comJac = round (comJac - (_com / 2));
	publicVariable "comJac";
	_veh setFuel ((fuel _veh) + (_com / 100));
	hint "Todo listo, buen viaje :D";
};

if (player distance (getMarkerPos "gasolineraAeropuerto") < 700) exitWith {
	if (isNil {((nearestObjects [(getMarkerPos "gasolineraAeropuerto"), ["Car"], 15]) select 0)}) exitWith {
		hint "No hay ningun vehiculo cerca";
		closeDialog 0;
	};
	_veh = ((nearestObjects [(getMarkerPos "gasolineraAeropuerto"), ["Car"], 15]) select 0);
	if !(_veh isKindOf "Land") exitWith {hint "No hay ningún vehículo adecuado";};
	if (isNil {_veh}) exitWith {hint "No hay ningún vehículo cerca";};

	_precio = round (((1200 - comAer) / 170) * _com);
	if !(life_ATMcash >= _precio) exitWith {hint "No tienes suficiente dinero";};
	if !(comAer >= _com) exitWith {hint "No hay tanto combustible en esta gasolinera";};
	hint "Repostando...";
	sleep (_com / 8);
	if ((_veh distance (getMarkerPos "gasolineraAeropuerto")) > 10) exitWith {hint "El vehiculo esta demasiado lejos";};
	life_ATMcash = life_ATMcash - _precio;
	comAer = round (comAer - (_com / 2));
	publicVariable "comAer";
	_veh setFuel ((fuel _veh) + (_com / 100));
	hint "Todo listo, buen viaje :D";
};

if (player distance (getMarkerPos "gasolineraDiablos") < 700) exitWith {
	if (isNil {((nearestObjects [(getMarkerPos "gasolineraDiablos"), ["Car"], 15]) select 0)}) exitWith {
		hint "No hay ningun vehiculo cerca";
		closeDialog 0;
	};
	_veh = ((nearestObjects [(getMarkerPos "gasolineraDiablos"), ["Car"], 15]) select 0);
	if !(_veh isKindOf "Land") exitWith {hint "No hay ningún vehículo adecuado";};
	if (isNil {_veh}) exitWith {hint "No hay ningún vehículo cerca";};
	
	_precio = round (((1200 - comDia) / 170) * _com);
	if !(life_ATMcash >= _precio) exitWith {hint "No tienes suficiente dinero";};
	if !(comDia >= _com) exitWith {hint "No hay tanto combustible en esta gasolinera";};
	hint "Repostando...";
	sleep (_com / 8);
	if ((_veh distance (getMarkerPos "gasolineraDiablos")) > 10) exitWith {hint "El vehiculo esta demasiado lejos";};
	life_ATMcash = life_ATMcash - _precio;
	comDia = round (comDia - (_com / 2));
	publicVariable "comDia";
	_veh setFuel ((fuel _veh) + (_com / 100));
	hint "Todo listo, buen viaje :D";
};

if (player distance (getMarkerPos "gasolineraMemorial") < 700) exitWith {
	if (isNil {((nearestObjects [(getMarkerPos "gasolineramemorial"), ["Car"], 15]) select 0)}) exitWith {
		hint "No hay ningun vehiculo cerca";
		closeDialog 0;
	};
	_veh = ((nearestObjects [(getMarkerPos "gasolineraMemorial"), ["Car"], 15]) select 0);
	if !(_veh isKindOf "Land") exitWith {hint "No hay ningún vehículo adecuado";};
	if (isNil {_veh}) exitWith {hint "No hay ningún vehículo cerca";};
	
	_precio = round (((1200 - comMem) / 170) * _com);
	if !(life_ATMcash >= _precio) exitWith {hint "No tienes suficiente dinero";};
	if !(comMem >= _com) exitWith {hint "No hay tanto combustible en esta gasolinera";};
	hint "Repostando...";
	sleep (_com / 8);
	if ((_veh distance (getMarkerPos "gasolineraMemorial")) > 10) exitWith {hint "El vehiculo esta demasiado lejos";};
	life_ATMcash = life_ATMcash - _precio;
	comMem = round (comMem - (_com / 2));
	publicVariable "comMem";
	_veh setFuel ((fuel _veh) + (_com / 100));
	hint "Todo listo, buen viaje :D";
};

if (player distance (getMarkerPos "gasolineraMorrison") < 700) exitWith {
	if (isNil {((nearestObjects [(getMarkerPos "gasolineraMorrison"), ["Car"], 15]) select 0)}) exitWith {
		hint "No hay ningun vehiculo cerca";
		closeDialog 0;
	};
	_veh = ((nearestObjects [(getMarkerPos "gasolineraMorrison"), ["Car"], 15]) select 0);
	if !(_veh isKindOf "Land") exitWith {hint "No hay ningún vehículo adecuado";};
	if (isNil {_veh}) exitWith {hint "No hay ningún vehículo cerca";};
	
	_precio = round (((1200 - comMor) / 170) * _com);
	if !(life_ATMcash >= _precio) exitWith {hint "No tienes suficiente dinero";};
	if !(comMor >= _com) exitWith {hint "No hay tanto combustible en esta gasolinera";};
	hint "Repostando...";
	sleep (_com / 8);
	if ((_veh distance (getMarkerPos "gasolineraMorrison")) > 10) exitWith {hint "El vehiculo esta demasiado lejos";};
	life_ATMcash = life_ATMcash - _precio;
	comMor = round (comMor - (_com / 2));
	publicVariable "comMor";
	_veh setFuel ((fuel _veh) + (_com / 100));
	hint "Todo listo, buen viaje :D";
};
