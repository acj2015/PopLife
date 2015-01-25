/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/


createDialog "repostar_dialog";



disableSerialization;
_ui = uiNamespace getVariable "repostar_dialog";

_veh = ((nearestObjects [player, ["Car"], 15]) select 0);
if (isNil {_veh}) exitWith {hint "No hay ningun vehiculo cerca"; closeDialog 0};

while {!isNil {abierto}} do {
	
	
	_com = parseNumber ctrlText 9251; 		// entrada combustible
	
	if (_com > 100) then {
		(_ui displayCtrl 9251) ctrlSetText "100";
	};
	if (_com < 0) then {
		(_ui displayCtrl 9251) ctrlSetText "0";
	};
	
	(_ui displayCtrl 9250) ctrlSetText format ["Combustible actual: %1%2", round ((fuel _veh) * 100), "%"];
	
	if (player distance (getMarkerPos "gasolineraJackson") < 20) then {
		(_ui displayCtrl 9252) ctrlSetText format ["Suministros de combustible: %1", comJac];
		(_ui displayCtrl 9253) ctrlSetText format ["Precio: %1", round (((1200 - comJac) / 65) * _com)];
	};
	if (player distance (getMarkerPos "gasolineraAeropuerto") < 20) then {
		(_ui displayCtrl 9252) ctrlSetText format ["Suministros de combustible: %1", comAer];
		(_ui displayCtrl 9253) ctrlSetText format ["Precio: %1", round (((1200 - comAer) / 65) * _com)];
	};
	if (player distance (getMarkerPos "gasolineraDiablos") < 1200) then {
		(_ui displayCtrl 9252) ctrlSetText format ["Suministros de combustible: %1", comDia];
		(_ui displayCtrl 9253) ctrlSetText format ["Precio: %1", round (((1200 - comDia) / 65) * _com)];
	};
	if (player distance (getMarkerPos "gasolineraMemorial") < 20) then {
		(_ui displayCtrl 9252) ctrlSetText format ["Suministros de combustible: %1", comMem];
		(_ui displayCtrl 9253) ctrlSetText format ["Precio: %1", round (((1200 - comMem) / 65) * _com)];
	};
	if (player distance (getMarkerPos "gasolineraMorrison") < 20) then {
		(_ui displayCtrl 9252) ctrlSetText format ["Suministros de combustible: %1", comMor];
		(_ui displayCtrl 9253) ctrlSetText format ["Precio: %1", round (((1200 - comMor) / 65) * _com)];
	};

sleep 1;
};
