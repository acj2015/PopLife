/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/


createDialog "topsecret_dialog";

_caller = _this select 0;


disableSerialization;
_ui = uiNamespace getVariable "topsecret_dialog";

(_ui displayCtrl 9020) ctrlSetText format ["%1",codigoDSC];
