waitUntil {!isNil {droKavCoc}};

while {true} do {
	
	_dM = 1 + round (random 3);
	if (droKavCan > 0) then {
		droKavCan = droKavCan - _dM;
		publicVariable "droKavCan";
	};
	
	_dH = 1 + round (random 2);
	if (droKavHer > 0) then {
		droKavHer = droKavHer - _dH;
		publicVariable "droKavHer";
	};
	
	_dCo = 1 + round (random 1);
	if (droKavCoc > 0) then {
		droKavCoc = droKavCoc - _dCo;
		publicVariable "droKavCoc";
	};
	
sleep (60 * 5);
};