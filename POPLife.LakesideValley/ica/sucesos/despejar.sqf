
_cosas = ["Land_Wreck_Car3_F", "Land_Wreck_Car2_F" ,"Land_Wreck_Truck_dropside_F", "Land_Wreck_Van_F"];

if (side player == civilian) exitWith {hint "Avisa a emergencias para que despejen la carretera";};
if (side player == west) exitWith {hint "Avisa a emergencias para que despejen la carretera";};
if (!isNil {ocupado}) exitWith {hint "Estás ocupado"};
[] spawn {
	ocupado = true;
	sleep 2;
	ocupado = nil;
};

player playmove "AinvPknlMstpSlayWrflDnon";
sleep 1;
deletevehicle ((nearestObjects [(getPos player), _cosas, 4]) select 0);
life_cash = life_cash + 1000;
titleText ["Has conseguido 1000 € por despejar las carreteras.", "PLAIN DOWN"];

accidentes = accidentes - 1;
publicVariable "accidentes";
