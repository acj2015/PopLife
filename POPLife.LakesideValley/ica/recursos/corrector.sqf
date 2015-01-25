
waitUntil {!isNil {comJac}};

while {true} do {

	if (aliMor < 0) then {
		aliMor = 0;
		publicVariable "aliMor";
	};
	if (medMor < 0) then {
		medMor = 0;
		publicVariable "medMor";
	};
	if (aguMor < 0) then {	
		aguMor = 0;
		publicVariable "aguMor";
	};
	if (comMor < 0) then {	
		comMor = 0;
		publicVariable "comMor";
	};
		
	if (aliJac > 1000) then {
		aliJac = 1000;
		publicVariable "aliJac";
	};
	if (aguJac > 1000) then {	
		aguJac = 1000;
		publicVariable "aguJac";
	};
	if (medJac > 1000) then {	
		medJac = 1000;
		publicVariable "medJac";
	};
	if (comJac > 1000) then {	
		comJac = 1000;
		publicVariable "comJac";
	};
	
sleep 2;	
};
