
if (isNil {accidentes}) then {
	accidentes = 0;
	publicVariable "accidentes";
};

while {true} do {
	if ((independent countSide playableUnits) >= 1) then {
		if (accidentes < 40) then {
			_pos = ["acc1", "acc2", "acc3", "acc4", "acc5", "acc6", "acc7", "acc8", "acc9", "acc10", "acc11", "acc12", "acc13", "acc14"] call BIS_fnc_selectRandom;
			_que = ["Land_Wreck_Car3_F", "Land_Wreck_Car2_F", "Land_Wreck_Truck_dropside_F", "Land_Wreck_Van_F"] call BIS_fnc_selectRandom;
			_a1 = _que createVehicle ([(getMarkerPos _pos select 0) + round (random 5), (getMarkerPos _pos select 1) + round (random 5), (getMarkerPos _pos select 2) +0.5]);
			_a1 setDir (round (random 359));
			
			accidentes = accidentes + 1;
			publicVariable "accidentes";
		};
	};
	
	sleep (60*20);
};

