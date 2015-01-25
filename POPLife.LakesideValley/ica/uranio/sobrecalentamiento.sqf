
[] spawn {	
	while {true} do {
		
		if !(isNil {caliente1}) then {
			sleep (60*90);
			caliente1 = nil;
			publicVariable "caliente1";
		};
		sleep 1;
	};
};

[] spawn {	
	while {true} do {
		
		if !(isNil {caliente2}) then {
			sleep (60*90);
			caliente2 = nil;
			publicVariable "caliente2";
		};
		sleep 1;
	};
};