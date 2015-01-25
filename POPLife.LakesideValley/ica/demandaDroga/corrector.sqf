waitUntil {!isNil {droKavCoc}};

while {true} do {
	if (droCan > 60) then {
		droCan = 60;
		publicVariable "droCan";
	};
	if (droHer > 45) then {
		droHer = 45;
		publicVariable "droHer";
	};
	if (droCoc > 30) then {
		droCoc = 30;
		publicVariable "droCoc";
	};
	//////
	if (droCan < 0) then {
		droCan = 0;
		publicVariable "droCan";
	};
	if (droHer < 0) then {
		droHer = 0;
		publicVariable "droHer";
	};
	if (droCoc < 0) then {
		droCoc = 0;
		publicVariable "droCoc";
	};
	//////
	if (droKavCan > 60) then {
		droKavCan = 60;
		publicVariable "droKavCan";
	};
	if (droKavHer > 45) then {
		droKavHer = 45;
		publicVariable "droKavHer";
	};
	if (droKavCoc > 30) then {
		droKavCoc = 30;
		publicVariable "droKavCoc";
	};
	//////
	if (droKavCan < 0) then {
		droKavCan = 0;
		publicVariable "droKavCan";
	};
	if (droKavHer < 0) then {
		droKavHer = 0;
		publicVariable "droKavHer";
	};
	if (droKavCoc < 0) then {
		droKavCoc = 0;
		publicVariable "droKavCoc";
	};
	
sleep 3;
};