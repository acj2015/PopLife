/*
Script hecho por Icaruk, si quieres usarlo sólo tienes que pedirme permiso en adri-rk@hotmail.com.
Script done by Icaruk, if you want to use it, you just have to ask me permission on adri-rk@hotmail.com.
*/


porcentaje = 0;
publicVariable "porcentaje";

robo = nil;
publicVariable "robo";
desencriptando = nil;
publicVariable "desencriptando";

codigoDSC = nil;
publicVariable "codigoDSC";

codigoCambiante = nil;
publicVariable "codigoCambiante";

sleep 3600; // 1h

cajaFuerte setpos (getMarkerPos "cajaFuerteMRK");

codigoDSC = (round ((random 89999999999999999999) + 10000000000000000000)) call MTP_fnc_numberToString; // 19 nueves y 19 ceros
publicVariable "codigoDSC";

codigoCambiante = 0;
publicVariable "codigoCambiante";

codigoFinal = (round ((random 89999999999999999999) + 10000000000000000000)) call MTP_fnc_numberToString; // 19 nueves y 19 ceros
publicVariable "codigoFinal";	