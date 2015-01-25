/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/

waitUntil {!isNil {deposito}};

while {true} do {
	deposito = deposito + 500;
	publicVariable "deposito";
	sleep (60*5);
};
