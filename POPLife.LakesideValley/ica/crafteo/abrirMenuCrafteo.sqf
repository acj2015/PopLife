/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/


createDialog "crafteo_dialog";


disableSerialization;
_ui = uiNamespace getVariable "crafteo_dialog";

hint format ["
Formato: \n
''Cargador''  calibre  tamaño \n\n

Ejemplo: \n
Cargador 5.56 30rnd \n\n

Calibres disponibles: \n
5.7mm \n
9mm \n
.32 \n
.357 \n
.44 \n
.45 \n
.50 \n
5.56 \n
6.5 \n
7.62\n\n

Tamaños disponibles: \n
6rnd \n
7rnd \n
8rnd \n
9rnd \n
10rnd \n
14rnd \n
15rnd \n
16rnd \n
17rnd \n
18 rnd \n
20rnd \n
30rnd \n
"];


while {!isNil {abierto}} do {
	
	
	_itm = ctrlText 9210; 		// entrada item deseado
	_req = (_ui displayCtrl 9211);	// listbox items requeridos
	lbClear _req;
	
	
	
	
									// 9mm	
	if (_itm == "Polvora") then {
		_req lbAdd "Nitrato de potasio x1";
		_req lbAdd "Azufre x1";
		_req lbAdd "Carbon x1";
	};
	if (_itm == "Cargador 9mm 16rnd") then {
		_req lbAdd "Polvora x1";
		_req lbAdd "Hierro x2";
	};
	if (_itm == "Cargador 9mm 30rnd") then {
		_req lbAdd "Polvora x2";
		_req lbAdd "Hierro x3";
	};	
									// .45	
	if (_itm == "Cargador .45 6rnd") then {
		_req lbAdd "Polvora x2";
		_req lbAdd "Hierro x1";
	};
	if (_itm == "Cargador .45 9rnd") then {
		_req lbAdd "Polvora x2";
		_req lbAdd "Hierro x2";
	};	
	if (_itm == "Cargador .45 30rnd") then {
		_req lbAdd "Polvora x3";
		_req lbAdd "Hierro x3";
	};
									// 5.56	
	if (_itm == "Cargador 5.56 30rnd") then {
		_req lbAdd "Polvora x4";
		_req lbAdd "Hierro x2";
		_req lbAdd "Cobre x2";
	};
	if (_itm == "Cargador 5.56 20rnd") then {
		_req lbAdd "Polvora x3";
		_req lbAdd "Hierro x1";
		_req lbAdd "Cobre x1";
	};
									// 6.5	
	if (_itm == "Cargador 6.5 30rnd") then {
		_req lbAdd "Polvora x8";
		_req lbAdd "Hierro x3";
		_req lbAdd "Cobre x3";
	};
									// 7.62
	if (_itm == "Cargador 7.62 10rnd") then {
		_req lbAdd "Polvora x 10";
		_req lbAdd "Hierro x3";
		_req lbAdd "Cobre x3";
	};

	
	
	
	if (_itm == "Dinero") then {
		_req lbAdd "Sueños x1";
		_req lbAdd "Esperanzas x1";
	};
	if (_itm == "Icaruk") then {
		_req lbAdd "Dios x1";
		_req lbAdd "Polvo de estrellas x1";
		_req lbAdd "Backflip x1";
		_req lbAdd "Algo de rap x1";
	};

sleep 1;
};
