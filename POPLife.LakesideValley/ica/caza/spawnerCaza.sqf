/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/




while {true} do {

_radioDeComprobacion = 300;
_radioDeSpawn = 70;
_umbral = 20;
_animal = ["Rabbit_F","Sheep_random_F"];


_conejos = (count ((getMarkerPos "spwnCaza") nearEntities ["Rabbit_F", _radioDeComprobacion]));
_ovejas = (count ((getMarkerPos "spwnCaza") nearEntities ["Sheep_random_F", _radioDeComprobacion]));

	// if ((count ((getMarkerPos "spwnCaza") nearEntities [_animal, _radioDeComprobacion])) <= _umbral) then {
	if (_ovejas < _umbral) then {
		
		_posicion = ["spwnCaza"] call BIS_fnc_selectRandom;
		_x = round ((random (_radioDeSpawn * 2)) - _radioDeSpawn);
		_y = round ((random (_radioDeSpawn * 2)) - _radioDeSpawn);
		_pos = ([(getMarkerPos "spwnCaza" select 0) + _x, (getMarkerPos "spwnCaza" select 1) + _y, (getMarkerPos "spwnCaza" select 2) +0.5]);
		
		//_entidad = _zombi createVehicle ([(getMarkerPos "origenZombi" select 0) + _x, (getMarkerPos "origenZombi" select 1) + _y, (getMarkerPos "origenZombi" select 2) +0.5]);
		_groupAlpha = createGroup RESISTANCE;

		// _ani = _groupAlpha createUnit ["Sheep_random_F", _pos, [], 0, "NONE"];
		// _ani addEventHandler ["Killed", {[_this] execVM "ica\caza\carne2.sqf";}];
		
		_ani = _groupAlpha createUnit ["Rabbit_F", _pos, [], 0, "NONE"];
		_ani addEventHandler ["Killed", {[_this] execVM "ica\caza\carne.sqf";}];
	};
	
sleep 50;
};

	
	
	
	
	