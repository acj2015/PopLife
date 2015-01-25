/*
Thing spawner by Icaruk.
Spawneador de cosas por Icaruk.
*/
waitUntil {!isNil {electricidad}};

while {true} do {

	if ((count ((getMarkerPos "Zasentamiento") nearEntities ["o_g_survivor_F", 700])) <= 20) then {
		
		_x = round ((random (30 * 2)) - 30);
		_y = round ((random (30 * 2)) - 30);
		_dir = round (random 360);
		
		_groupAlpha = createGroup EAST;
		"o_g_survivor_F" createUnit [([(getMarkerPos "Zasentamiento" select 0) + _x, (getMarkerPos "Zasentamiento" select 1) + _y, (getMarkerPos "Zasentamiento" select 2) +0.5]), _groupAlpha,'this setVariable ["Zombi", true, true]; null = [this] execVM "ica\zombis\shaun.sqf"; this setDir _dir;', 0.6, "corporal"];
		
	};

	if ((count ((getMarkerPos "Zmilitar") nearEntities ["o_g_survivor_F", 700])) <= 40) then {
		
		_x = round ((random (40 * 2)) - 40);
		_y = round ((random (40 * 2)) - 40);
		_dir = round (random 360);
		
		_groupAlpha = createGroup EAST;
		"o_g_survivor_F" createUnit [([(getMarkerPos "Zmilitar" select 0) + _x, (getMarkerPos "Zmilitar" select 1) + _y, (getMarkerPos "Zmilitar" select 2) +0.5]), _groupAlpha,'this setVariable ["Zombi", true, true]; null = [this] execVM "ica\zombis\shaun.sqf"; this setDir _dir;', 0.6, "corporal"];
		
	};
	
	if ((count ((getMarkerPos "Zcamion") nearEntities ["o_g_survivor_F", 700])) <= 40) then {
		
		_x = round ((random (30 * 2)) - 30);
		_y = round ((random (30 * 2)) - 30);
		_dir = round (random 360);
		
		_groupAlpha = createGroup EAST;
		"o_g_survivor_F" createUnit [([(getMarkerPos "Zcamion" select 0) + _x, (getMarkerPos "Zcamion" select 1) + _y, (getMarkerPos "Zcamion" select 2) +0.5]), _groupAlpha,'this setVariable ["Zombi", true, true]; null = [this] execVM "ica\zombis\shaun.sqf"; this setDir _dir;', 0.6, "corporal"];
	
	};
	
	if ((count ((getMarkerPos "Zhospital") nearEntities ["o_g_survivor_F", 700])) <= 30) then {
		
		_x = round ((random (40 * 2)) - 40);
		_y = round ((random (40 * 2)) - 40);
		_dir = round (random 360);
		
		_groupAlpha = createGroup EAST;
		"o_g_survivor_F" createUnit [([(getMarkerPos "Zhospital" select 0) + _x, (getMarkerPos "Zhospital" select 1) + _y, (getMarkerPos "Zhospital" select 2) +0.5]), _groupAlpha,'this setVariable ["Zombi", true, true]; null = [this] execVM "ica\zombis\shaun.sqf"; this setDir _dir;', 0.6, "corporal"];
	
	};
	
	if (electricidad < 10) then {
		if (((date select 3) >= 17) OR ((date select 3) <= 7)) then {
			if ((count ((getMarkerPos "civ_car_1") nearEntities ["o_g_survivor_F", 200])) <= 20) then {
				
				_x = round ((random (40 * 2)) - 40);
				_y = round ((random (40 * 2)) - 40);
				_dir = round (random 360);
				
				_groupAlpha = createGroup EAST;
				"o_g_survivor_F" createUnit [([(getMarkerPos "civ_car_1" select 0) + _x, (getMarkerPos "civ_car_1" select 1) + _y, (getMarkerPos "civ_car_1" select 2) +0.5]), _groupAlpha,'this setVariable ["Zombi", true, true]; null = [this] execVM "ica\zombis\shaun.sqf"; this setDir _dir;', 0.6, "corporal"];
		
			};
		};
	};
	
sleep 50;
};



/*	
	_groupAlpha = createGroup EAST;
	"o_g_survivor_F" createUnit [(getpos player), _groupAlpha,'this setVariable ["Zombi", true, true]; null = [this] execVM "ica\zombis\shaun.sqf";', 0.6, "corporal"];

*/	
	
	
	
	
	