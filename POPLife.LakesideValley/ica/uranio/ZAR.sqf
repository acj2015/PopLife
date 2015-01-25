sleep 10;

while {true} do {
	
	if (vehicle player distance (getMarkerPos "ZATerroristasTexto") > 500) then {
		aviso = nil;
	};
	
	if (vehicle player distance (getMarkerPos "ZATerroristasTexto") < 500) then {
		if (vehicle player isKindOf "Air") then {
			hint "Estas entrando en una zona aerea restringida, abandona la zona en 10 segundos o seras derribado.";
			titleText ["Estas entrando en una zona aerea restringida, abandona la zona en 10 segundos o seras derribado.", "PLAIN"];
			if (isNil {aviso}) then {
				aviso = 0;
			};
			aviso = aviso + 1;
		};
		
		if !(isNil {aviso}) then {
			if (aviso == 7) then {
				(vehicle player) call bis_fnc_neutralizeUnit;
			};
		};
	};
	
	////////////
	
	if (vehicle player distance (getMarkerPos "nuke_central_1") > 700) then {
		aviso2 = nil;
	};
	
	if (vehicle player distance (getMarkerPos "nuke_central_1") < 700) then {
		if (vehicle player isKindOf "Air") then {
			hint "Estas entrando en una zona aerea restringida, abandona la zona en 10 segundos o seras derribado.";
			titleText ["Estas entrando en una zona aerea restringida, abandona la zona en 10 segundos o seras derribado.", "PLAIN"];
			if (isNil {aviso2}) then {
				aviso2 = 0;
			};
			aviso2 = aviso2 + 1;
		};
		
		if !(isNil {aviso2}) then {
			if (aviso2 == 7) then {
				(vehicle player) call bis_fnc_neutralizeUnit;
			};
		};
	};
	
	////////////
	
	if (vehicle player distance (getMarkerPos "ZQ") > 700) then {
		aviso3 = nil;
	};
	
	if (vehicle player distance (getMarkerPos "ZQ") < 700) then {
		if (vehicle player isKindOf "Air") then {
			hint "Estas entrando en una zona aerea restringida, abandona la zona en 10 segundos o seras derribado.";
			titleText ["Estas entrando en una zona aerea restringida, abandona la zona en 10 segundos o seras derribado.", "PLAIN"];
			if (isNil {aviso3}) then {
				aviso3 = 0;
			};
			aviso3 = aviso3 + 1;
		};
		
		if !(isNil {aviso3}) then {
			if (aviso3 == 7) then {
				(vehicle player) call bis_fnc_neutralizeUnit;
			};
		};
	};
	
	sleep 2;
};
