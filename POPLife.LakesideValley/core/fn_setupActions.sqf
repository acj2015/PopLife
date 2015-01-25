/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
	case civilian:
	{
		//Drop fishing net
		life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		//Suicide alahsnackbar
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Activar Chaleco Bomba</t>",life_fnc_suicideBomb,"",0,false,false,"",' vest player == "A3L_SuicideVest" && alive player && playerSide == civilian && !life_istazed && !(player getVariable "restrained") && !(player getVariable "Escorting") && !(player getVariable "transporting")']];
		//Uranium process on ZamacLab
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Tratamiento de residuos de uranio</t>",life_fnc_processUranium,"uranium",0,false,false,"""",' life_inv_uraniumu > 0 && !life_is_processing && !life_action_inUse && cursorTarget isKindOf "O_Truck_02_box_F" && (player distance cursorTarget < 4) && (cursorTarget in life_vehicles) && alive player && playerSide == civilian && !life_istazed && !(player getVariable "restrained") && !(player getVariable "Escorting") && !(player getVariable "transporting")']];
		//Uranium license on ZamacLab
		life_actions = life_actions + [player addAction["Licencia de Fisico Nuclear $25,000",life_fnc_buyLicense,"uranium",0,false,false,"""",' !license_civ_uranium && cursorTarget isKindOf "O_Truck_02_box_F" && (player distance cursorTarget < 4) && alive player && playerSide == civilian && !life_istazed && !(player getVariable "restrained") && !(player getVariable "Escorting") && !(player getVariable "transporting")']];
		//Service Truck_RepairFct
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Reparar el vehiculo mas cercano</t>",life_fnc_serviceTruck,"",99,false,false,"",' (typeOf (vehicle player) == "A3L_Towtruck") && ((vehicle player animationPhase "HideServices") == 0) && ((vehicle player) in life_vehicles) &&(speed vehicle player) < 1 ']];
		//Service Truck_ImpoundFct
		life_actions = life_actions + [player addAction["<t color='#0000FF'>Coloque el vehiculo confiscado</t>",life_fnc_impoundAction,"",0,false,false,"",' (typeOf (vehicle player) == "A3L_Towtruck") && ((vehicle player animationPhase "HideServices") == 0) && ((vehicle player) in life_vehicles) && (speed vehicle player) < 1 ']];		
		//Chopper Earplug
		life_actions = life_actions + [player addAction["<t color='#ffff33'>Colocar Tapones</t>","core\scripts\earplug\actionManager.sqf", [], -90, false, true, "",' ((vehicle player) isKindOf "Air") || (typeOf (vehicle player) == "A3L_F350Black") || (typeOf (vehicle player) == "A3L_Dumptruck") || (typeOf (vehicle player) == "A3L_Bus") || (typeOf (vehicle player) == "B_Truck_01_box_F") || (typeOf (vehicle player) == "B_Truck_01_mover_F") || (typeOf (vehicle player) == "A3L_Towtruck") || (typeOf (vehicle player) == "O_Truck_02_box_F") || (typeOf (vehicle player) == "O_Truck_03_ammo_F") || (typeOf (vehicle player) == "A3L_MonsterTruck") || (typeOf (vehicle player) == "O_Truck_03_device_F") || (typeOf (vehicle player) == "DAR_LHS_16")']];
	};

	case independent:
	{
		//Chopper Earplug
		life_actions = life_actions + [player addAction["<t color='#ffff33'>Colocar Tapones</t>","core\scripts\earplug\actionManager.sqf", [], -90, false, true, "",' ((vehicle player) isKindOf "Air") || (typeOf (vehicle player) == "A3L_F350Black") || (typeOf (vehicle player) == "A3L_Dumptruck") || (typeOf (vehicle player) == "A3L_Bus") || (typeOf (vehicle player) == "B_Truck_01_box_F") || (typeOf (vehicle player) == "B_Truck_01_mover_F") || (typeOf (vehicle player) == "A3L_Towtruck") || (typeOf (vehicle player) == "O_Truck_02_box_F") || (typeOf (vehicle player) == "O_Truck_03_ammo_F") || (typeOf (vehicle player) == "A3L_MonsterTruck") || (typeOf (vehicle player) == "O_Truck_03_device_F") || (typeOf (vehicle player) == "DAR_LHS_16")']];
	};
	
	case west:
	{
	//Chopper Earplug
		life_actions = life_actions + [player addAction["<t color='#ffff33'>Colocar Tapones</t>","core\scripts\earplug\actionManager.sqf", [], -90, false, true, "",' ((vehicle player) isKindOf "Air") || (typeOf (vehicle player) == "A3L_F350Black") || (typeOf (vehicle player) == "A3L_Dumptruck") || (typeOf (vehicle player) == "A3L_Bus") || (typeOf (vehicle player) == "B_Truck_01_box_F") || (typeOf (vehicle player) == "B_Truck_01_mover_F") || (typeOf (vehicle player) == "A3L_Towtruck") || (typeOf (vehicle player) == "O_Truck_02_box_F") || (typeOf (vehicle player) == "O_Truck_03_ammo_F") || (typeOf (vehicle player) == "A3L_MonsterTruck") || (typeOf (vehicle player) == "O_Truck_03_device_F") || (typeOf (vehicle player) == "DAR_LHS_16")']];
		
	//Defuse C4 Vest
		//life_actions = life_actions + [player addAction["<t color='#FF0000'>Desactivar Explosivos</t>",life_fnc_defuseBomb,"",0,false,false,"",' vest cursorTarget == "A3L_SuicideVest" && player distance cursorTarget < 2.5 ']];	
	
	// Heli Fast Rope
		life_actions = life_actions + [player addAction["Fast Rope",life_fnc_fastRope,"",99,false,false,"", ' (vehicle player) != player && !isNull (vehicle player) && (vehicle player) isKindOf "Air" && driver (vehicle player) != player && (getPos player) select 2 <= 100 && (getPos player) select 2 >= 15 && speed vehicle player < 30 && !(player getVariable["transporting",false]) ']];
		
	//Reprendre la barriere
		life_actions = life_actions + [player addAction["<t color='#FFFF33'>Cojer Barrera</t>",life_fnc_packupBarrier,"",140,false,false,"",' _barriere = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0; !isNil "_barriere" && !isNil {(_barriere getVariable "item")}']];

	//Reprendre la herse
		life_actions = life_actions + [player addAction["<t color='#FFFF33'>Cojer instrumentos</t>",life_fnc_packupSpikes,"",140,false,false,"",' _spikes = nearestObjects[getPos player,["Land_Razorwire_F"],8] select 0; !isNil "_spikes" && !isNil {(_spikes getVariable "item")}']];		
	
	};
};