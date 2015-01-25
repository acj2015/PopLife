

hint format ["Realizando test de enfermedades a %1...", name cursortarget];
player playmove "AinvPknlMstpSnonWrflDr_medic4";
sleep 9;
[false,"testenf",1] call life_fnc_handleInv;


if (!isNil{cursorTarget getVariable "tos"}) then {
	hint format ["%1 está contagiado con una tos contagiosa severa convulsiva.", name cursortarget];	
};

if (isNil{cursorTarget getVariable "tos"}) then {
	hint format ["%1 no tiene enfermedades contagiosas.", name cursortarget];		
};
