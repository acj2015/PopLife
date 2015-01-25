
[] spawn {
	while {true} do {
		if (!isNil {player getVariable "restosMar"}) then {
			player setVariable ["restosMar", (player getVariable "restosMar") - 10, true];		
		};
	sleep 10;
	};
};

[] spawn {
	while {true} do {
		if (!isNil {player getVariable "restosHer"}) then {
			player setVariable ["restosHer", (player getVariable "restosHer") - 10, true];		
		};
	sleep 10;
	};
};

[] spawn {
	while {true} do {
		if (!isNil {player getVariable "restosCoc"}) then {
			player setVariable ["restosCoc", (player getVariable "restosCoc") - 10, true];		
		};
	sleep 10;
	};
};