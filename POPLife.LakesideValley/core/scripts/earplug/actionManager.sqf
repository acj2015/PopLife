_unit0 = _this select 0;
_unit1 = _this select 1;
_act = _this select 2;
_unit0 removeAction _act;

wakOnAction = ["<t color='#ffff33'>Mettre casque Anti-Bruit</t>","core\scripts\earplug\actionManager.sqf", [], -90, false, true, "",' ((vehicle player) isKindOf "Air") || (typeOf (vehicle player) == "A3L_F350Black") || (typeOf (vehicle player) == "A3L_Dumptruck") || (typeOf (vehicle player) == "A3L_Bus") || (typeOf (vehicle player) == "B_Truck_01_box_F") || (typeOf (vehicle player) == "B_Truck_01_mover_F") || (typeOf (vehicle player) == "A3L_Towtruck") || (typeOf (vehicle player) == "O_Truck_02_box_F") || (typeOf (vehicle player) == "O_Truck_03_ammo_F") || (typeOf (vehicle player) == "A3L_MonsterTruck") || (typeOf (vehicle player) == "O_Truck_03_device_F") || (typeOf (vehicle player) == "DAR_LHS_16")'];

if (wakPlugs) then {
    wakPlugs = false;
    0.5 fadeSound 1;

	_unit1 addAction wakOnAction;
	
} else {
    wakPlugs = true;
    0.5 fadeSound 0.1;
    _unit1 addAction ["<t color='#ffff33'>Retirer casque Anti-Bruit</t>", "core\scripts\earplug\actionManager.sqf", [], -90, false, true, "", "_target == vehicle player"];
};