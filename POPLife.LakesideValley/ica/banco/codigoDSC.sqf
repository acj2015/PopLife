
_entrada = _this select 0;
publicVariable "codigoDSC";

if ({side _x == west} count playableUnits < 3) exitWith {hint "Tienen que estar al menos 3 policias conectados, si no, no es divertido."};
if (_entrada != codigoDSC) then {hint "Acceso denegado";};
if (_entrada == codigoDSC) then {hint "Acceso permitido"; [[[1,2],"¡¡¡ ESTAN INTENTANDO ACCEDER AL SISTEMA DEL ALCALDE !!!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP; desencriptando = 1; publicVariable "desencriptando"; null = [player] execVM "ica\banco\desencriptando.sqf";};
