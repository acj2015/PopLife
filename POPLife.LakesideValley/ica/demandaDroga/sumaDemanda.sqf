waitUntil {!isNil {droKavCoc}};

while {true} do {
	
	_dM = 1 + round (random 3);
	if (droCan > 0) then {
		droCan = droCan - _dM;
		publicVariable "droCan";
	};
	
	_dH = 1 + round (random 2);
	if (droHer > 0) then {
		droHer = droHer - _dH;
		publicVariable "droHer";
	};
	
	_dCo = 1 + round (random 1);
	if (droCoc > 0) then {
		droCoc = droCoc - _dCo;
		publicVariable "droCoc";
	};
	
sleep (60 * 5);
};