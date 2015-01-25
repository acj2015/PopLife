
_entrada = _this select 0;
publicVariable "codigoFinal";

if ((west countSide playableUnits) < 3) exitWith {hint "Tienen que estar al menos 3 policías conectados."};
if (_entrada != codigoFinal) then {hint "Acceso denegado";};
if ((_entrada == codigoFinal) AND (isNil {robo})) then {hint "Acceso permitido"; robo = 0; publicVariable "robo"; null = [] execVM "ica\banco\procesoRobo.sqf";};
