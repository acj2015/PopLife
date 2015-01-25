[] spawn  {
	private["_fnc_food","_fnc_water"];
	_fnc_food = 
	{
		if(life_hunger < 2) then {player setDamage 1; hint localize "STR_NOTF_EatMSG_Death";}
		else
		{
		life_hunger = life_hunger - 10;
		[] call life_fnc_hudUpdate;
		if(life_hunger < 2) then {player setDamage 1; hint localize "STR_NOTF_EatMSG_Death";};
		switch(life_hunger) do {
			case 30: {hint localize "STR_NOTF_EatMSG_1";};
			case 20: {hint localize "STR_NOTF_EatMSG_2";};
			case 10: {hint localize "STR_NOTF_EatMSG_3";player setFatigue 1;};
			};
		};
	};
	
	_fnc_water = 
	{
		if(life_thirst < 2) then {player setDamage 1; hint localize "STR_NOTF_DrinkMSG_Death";}
		else
		{
			life_thirst = life_thirst - 10;
			[] call life_fnc_hudUpdate;
			if(life_thirst < 2) then {player setDamage 1; hint localize "STR_NOTF_DrinkMSG_Death";};
			switch(life_thirst) do 
			{
				case 30: {hint localize "STR_NOTF_DrinkMSG_1";};
				case 20: {hint localize "STR_NOTF_DrinkMSG_2"; player setFatigue 1;};
				case 10: {hint localize "STR_NOTF_DrinkMSG_3"; player setFatigue 1;};
			};
		};
	};
	
	while{true} do
	{
		sleep 600;
		[] call _fnc_water;
		sleep 250;
		[] call _fnc_food;
	};
};

[] spawn
{
	private["_bp","_load","_cfg"];
	while{true} do
	{
		waitUntil {backpack player != ""};
		_bp = backpack player;
		_cfg = getNumber(configFile >> "CfgVehicles" >> (backpack player) >> "maximumload");
		_load = round(_cfg / 8);
		life_maxWeight = life_maxWeightT + _load;
		if(playerSide == west) then {(unitBackpack player) setObjectTextureGlobal [0,""];}; // <---- Backpack invisible for COPS
		if(playerSide == civilian) then {(unitBackpack player) setObjectTextureGlobal [0,""];}; // <----- Backpack invisible for CIV
//		if(playerSide == independent) then {(unitBackpack player) setObjectTextureGlobal [0,""];}; // <----- Backpack invisible for MEDS		
		waitUntil {backpack player != _bp};
		if(backpack player == "") then 
		{
			life_maxWeight = life_maxWeightT;
		};
	};
};

[] spawn
{
	while {true} do
	{
		sleep 1.5;
		if(life_carryWeight > life_maxWeight && !isForcedWalk player) then {
			player forceWalk true;
			player setFatigue 1;
			hint localize "STR_NOTF_MaxWeight";
		} else {
			if(isForcedWalk player) then {
				player forceWalk false;
			};
		};
	};
};

//Intox Start
private["_obj"];
[] spawn  
{
	while{true} do
	{
		sleep 180;
		if(life_intox > 0) then 
		{
			if(life_intox <= 0.02) then {life_intox = 0.00;} else {life_intox = life_intox - 0.02;};
			[] call life_fnc_hudUpdate;
			switch(true) do {
				case (life_intox == 0.00): {hint "Usted es completamente sobrio.";};
				case (life_intox == 0.08): {hint "Ahora puede conducir legalmente.";};
			};
		};
	};
};

[] spawn  
{
	while{true} do
	{
		waitUntil {life_intox > 0.08};
		player setVariable["intoxicated",true,true];
		[[0,format["%1 seems intoxicated.",name player]],"life_fnc_broadcast",(position player) nearEntities [["Man"], 50],false] spawn life_fnc_MP;
		while{life_intox > 0.08} do 
		{
			"dynamicBlur" ppEffectEnable true;
			"dynamicBlur" ppEffectAdjust [round ((1+(life_intox-.1))^10)];
			"dynamicBlur" ppEffectCommit 1;
			sleep 5;
		};
		"dynamicBlur" ppEffectEnable false;
		player setVariable["intoxicated",false,true];
	};
};

[] spawn  
{
	while{true} do
	{
		waitUntil {life_intox > 0.30};
		_obj = "Land_ClutterCutter_small_F" createVehicle (getPosATL player);
		_obj setPosATL (getPosATL player);
		[[player,"AinjPfalMstpSnonWnonDf_carried_fallwc"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
		player attachTo [_obj,[0,0,0]];
		[[0,format["%1 has passed out.",name player]],"life_fnc_broadcast",(position player) nearEntities [["Man"], 100],false] spawn life_fnc_MP;
		while{life_intox > 0.30} do 
		{
			hint "Su tasa de intoxicación es cerca de 0.30 que está cerca de la sobredosis! Si usted va por encima de 0.40 se cae en coma y muere.";
			sleep 60;
		};
		detach player;
		[[player,"amovppnemstpsraswrfldnon"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
	};
};


[] spawn  
{
	private["_walkDis","_myLastPos","_MaxWalk","_runHunger","_runDehydrate"];
	_walkDis = 0;
	_myLastPos = (getPos player select 0) + (getPos player select 1);
	_MaxWalk = 1200;
	while{true} do 
	{
		sleep 0.5;
		if(!alive player) then {_walkDis = 0;}
		else
		{
			_CurPos = (getPos player select 0) + (getPos player select 1);
			if((_CurPos != _myLastPos) && (vehicle player == player)) then
			{
				_walkDis = _walkDis + 1;
				if(_walkDis == _MaxWalk) then
				{
					_walkDis = 0;
					life_thirst = life_thirst - 5;
					life_hunger = life_hunger - 5;
					[] call life_fnc_hudUpdate;
				};
			};
			_myLastPos = (getPos player select 0) + (getPos player select 1);
		};
	};
};


[] spawn
{
	while {true} do
	{
		private["_damage"];
		sleep 1;
		
// RAD ZONE (URANIUM)		
		while {((player distance (getMarkerPos "Rad_Zone") < 135) && (player getVariable["Revive",TRUE]))} do 
		{
			if(uniform player == "U_C_Scientist" || uniform player == "U_I_HeliPilotCoveralls") then
			{
				titleText ["!!! Usted esta en una zona radiactiva !!!.","PLAIN"];
				player say3D "RadSound";				
				sleep 6;
			}else
			{
				titleText ["!!! ADVERTENCIA ESTAS EN UN ZONA RADIACTIVA !!! Usted probabilidades de morir si no esta protegido","PLAIN"];
				player say3D "RadSound";				
				_damage = damage player;
				_damage = _damage + 0.1;
				player setDamage (_damage);
				[] call life_fnc_hudUpdate;
				sleep 6;
			};
		};
		
// URANIUM TRANSPORT	
		while {( life_inv_uraniumu > 0 || life_inv_uraniump > 0 )} do 
		{
			if(uniform player == "U_C_Scientist" || uniform player == "U_I_HeliPilotCoveralls" || uniform player == "U_B_PilotCoveralls") then
			{
				titleText ["!!! Tu transportes des matieres radioactives !!! Mais ta combinaison te protege.","PLAIN"];
				sleep 10;
			}else
			{
				titleText ["!!! ATENCION MATERIALES RADIACTIVOS TRANSPORTADOS  !!! Usted probabilidades de morir si no esta protegido","PLAIN"];				
				_damage = damage player;
				_damage = _damage + 0.1;
				player setDamage (_damage);
				[] call life_fnc_hudUpdate;
				sleep 3;
			};
		};

// RAD ZONE (NUKE-SUCCESS)		
		while {((player distance (getMarkerPos "nuke_central") < 135) && (player getVariable["Revive",TRUE]) && (nuke_box getVariable["nukeExplo",true]))} do 
		{
			if(uniform player == "U_C_Scientist" || uniform player == "U_I_HeliPilotCoveralls" || uniform player == "U_B_PilotCoveralls") then
			{
			titleText ["!!! La central ha explotado recientemente, usted esta en una zona radiactiva !!!.","PLAIN"];
				player say3D "RadSound";				
				sleep 6;
			}else
			{
				titleText ["/!\ATENCION: LA CENTRAL EXPLOTO RECIENTEMENTE ESTA EN UNA ZONA RADIACTIVA !!!/!\","PLAIN"];
				player say3D "RadSound";				
				_damage = damage player;
				_damage = _damage + 0.1;
				player setDamage (_damage);
				[] call life_fnc_hudUpdate;
				sleep 6;
			};
		};		
		
// SECU GAZ (BANK-SUCCESS)		
		while {((player distance (getMarkerPos "fed_reserve") < 14) && (player getVariable["Revive",TRUE]) && (stash1 getVariable["secugaz",true]))} do 
		{
			titleText ["/!\ATENCION: EL SISTEMA DE SEGURIDAD DEL BANCO ESTA ACTIVADO !!! Tu risques de mourir a cause du gaz asphyxiant./!\","PLAIN"];				
			_damage = damage player;
			_damage = _damage + 0.1;
			player setDamage (_damage);
			[] call life_fnc_hudUpdate;
			sleep 6;
		};
		
		
	};
};