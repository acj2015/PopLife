/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/


createDialog "desencriptando_dialog";

_caller = _this select 0;


disableSerialization;
_ui = uiNamespace getVariable "desencriptando_dialog";

while {!isNil{abierto}} do {
	(_ui displayCtrl 9021) ctrlSetText format ["Desencriptando... %1%",porcentaje];
	(_ui displayCtrl 9022) ctrlSetText format ["%1",codigoCambiante];
	
	sleep 0.2;
};
