/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/

_caller = _this select 0;

while {true} do {
	if (isNil {_caller getVariable "tos"}) exitWith {};
	if (side _caller == independent) exitWith {_caller setVariable ["tos", nil, true];};
	if (!isNil {_caller getVariable "tos"}) then {
		if ((round (random 100)) < 33) then {
			{_x setVariable ["tos", true, true];} forEach nearestObjects [_caller, ["Man"], 3];
		};
	};
	
sleep 20;
};


//	player setVariable ["enfermedad", 7, false];
//	hint format ["%1", (_caller getVariable "enfermedad")];