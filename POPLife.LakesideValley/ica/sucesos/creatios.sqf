
if (isNil {gentuza}) then {
	gentuza = 0;
	publicVariable "gentuza";
};

while {true} do {
	if ((west countSide playableUnits) >= 1) then {
		if (gentuza < 8) then {
			_pos = ["det", "det2", "det3", "det4", "det5", "det6", "det7", "det8"] call BIS_fnc_selectRandom;

						
			_groupAlpha = createGroup RESISTANCE;
			_tio = _groupAlpha createUnit ["C_man_1", (getMarkerPos _pos), [], 0, "NONE"];
			_tio setDir (round (random 359));
			_tio setVariable ["detenible", true, true];
			
			gentuza = gentuza + 1;
			publicVariable "gentuza";
		};
	};
	sleep (60*20);
};

