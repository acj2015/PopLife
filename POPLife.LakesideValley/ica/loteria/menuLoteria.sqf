/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/


createDialog "loteria_DIALOG";

_caller = _this select 0;

disableSerialization;
_ui = uiNamespace getVariable "loteria_dialog";

if (tiempoLoteria >= 30) then {
	(_ui displayCtrl 9000) ctrlSetText format ["%1 mins",tiempoloteria - 30];
};
if (tiempoLoteria < 30) then {
	_tiempo = tiempoLoteria;
	(_ui displayCtrl 9000) ctrlSetText format ["%1 mins",tiempoloteria];
};



if (isNil {_caller getVariable "numeroLoteria"}) then {
	_numero = "";
	(_ui displayCtrl 9001) ctrlSetText format ["%1",_numero];
} else {
	_numero = _caller getVariable "numeroLoteria";
	(_ui displayCtrl 9001) ctrlSetText format ["%1",_numero];
};
if (isNil {loteria}) then {
	_numeroGanador = "";
	(_ui displayCtrl 9002) ctrlSetText format ["%1",_numeroGanador];
} else {
	_numeroGanador = loteria;
	(_ui displayCtrl 9002) ctrlSetText format ["%1",_numeroGanador];
};












