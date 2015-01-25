/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/


_t = (60 * 30);

while {true} do {
	if (isNil {player getVariable "virusZ"}) exitWith {mordido = nil;};
	if (!isNil {player getVariable "virusZ"}) then { 
		_t = _t - 1;
		if !(alive player) then {
			player setDamage 1;
			sleep 1;
			_groupAlpha = createGroup EAST;
			_z = "o_g_survivor_F" createUnit [getPos player, _groupAlpha,'this setVariable ["Zombi", true, true]; null = [this] execVM "ica\zombis\shaun.sqf";', 0.6, "corporal"];
			
			mordido = nil;
			player setVariable ["virusZ", nil, true];
		};
		
		if (_t <= 0) then {
			if (isNil {player getVariable "virusZ"}) exitWith {mordido = nil;};
			player setDamage 1;
			sleep 1;
			_groupAlpha = createGroup EAST;
			_z = "o_g_survivor_F" createUnit [getPos player, _groupAlpha,'this setVariable ["Zombi", true, true]; null = [this] execVM "ica\zombis\shaun.sqf";', 0.6, "corporal"];
			
			mordido = nil;
			player setVariable ["virusZ", nil, true];
		};
	};
sleep 1;
};				


// player setvariable ["virusZ", true, true];