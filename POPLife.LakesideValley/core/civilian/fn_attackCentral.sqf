/*
	File: fn_attackCentral.sqf
	Author: tenshi
	Copyright [tenshi] droits reserves. (fichier non libre de droit)
	
	Description:
	Main functionality for robbing the federal reserve.
*/
private["_vault","_timer","_tooFar","_copNum","_nearby","_truckTooFar","_bomb1","_bomb2","_bomb3","_bomb4"];
_vault = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_tooFar = false;
_copNum = 0;
_truckTooFar = false;


//DISTANCE CONDITION
if(player distance _vault > 10) exitWith {[[_vault,-1],"TON_fnc_centralState",false,false] spawn life_fnc_MP; hint "Tu dois rester à 10m du generateur!"};	


//COPS CONNECTED CONDITION

_players = playableUnits;//call fnc_allunits;
_countplayers = count _players;
_i = 0;

for "_i" from 0 to _countplayers do
	{
		_selectedUnit = _players select _i;
		if (player != _selectedUnit) then 
		{
			if (side _selectedUnit == west) then{_copNum = _copNum + 1;};
		}
	};
if(_copNum < 5) exitWith {[[_vault,-1],"TON_fnc_centralState",false,false] spawn life_fnc_MP; hint "Il y a moins de 5 policiers connectes/vivants!"};


//TRUCK CONDITION
_nearby = nearestObjects[(vehicle player),["O_Truck_03_device_F"],50];



// MESSAGES:
[[0,"/!\ LA CENTRALE NUCLEAIRE EST ATTAQUEE /!\"],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
[[1,"/!\ LA CENTRALE NUCLEAIRE EST ATTAQUEE /!\"],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
[[2,"/!\ LA CENTRALE NUCLEAIRE EST ATTAQUEE /!\"],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
[[4,"/!\ LA CENTRALE NUCLEAIRE EST ATTAQUEE /!\"],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;

sleep 1;


// TIMER
_timer = time + (35 * 60); // (35 min)
_countstate = 35;
	
while {true} do
{
	//Timer display
	_countDown = if(round(_timer - time) > 60) then {format["%1 min",round(round(_timer - time) / 60)]} else {format["%1 s",round(_timer - time)]};	
	_countDown2 = if(round(_timer - time) > 60) then {round(round(_timer - time) / 60)} else {round(_timer - time)};

	hintSilent format["Tu dois rester a 10m\n\nTemps restant:\n %1\n\nDistance: %2m",_countDown,round(player distance _vault)];

	if(player distance _vault > 10) exitWith {_tooFar = true;};
	if(count (_nearby) < 1) exitWith {_truckTooFar = true;};
	if((round(_timer - time)) < 1) exitWith {};
	if(!alive player) exitWith {};
	if(life_istazed) exitWith {};
	
	_msg = format["EXPLOSION DE LA CENTRALE NUCLEAIRE DANS: %1",_countDown];

	if(_countDown2 == 35 && _countstate == 35) then {[[0,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; [[1,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; [[2,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; [[4,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; _countstate = 30;}; 	 
	if(_countDown2 == 30 && _countstate == 30) then {[[0,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; [[1,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; [[2,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; [[4,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; _countstate = 25;}; 
	if(_countDown2 == 25 && _countstate == 25) then {[[0,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; [[1,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; [[2,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; [[4,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; _countstate = 20;}; 
	if(_countDown2 == 20 && _countstate == 20) then {[[0,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; [[1,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; [[2,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; [[4,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; _countstate = 15;}; 
	if(_countDown2 == 15 && _countstate == 15) then {[[0,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; [[1,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; [[2,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; [[4,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; _countstate = 10;}; 
	if(_countDown2 == 10 && _countstate == 10) then {[[0,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; [[1,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; [[2,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; [[4,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; _countstate = 5;};
	if(_countDown2 == 5 && _countstate == 5) then {[[0,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; [[1,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; [[2,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; [[4,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; _countstate = 4;};
	if(_countDown2 == 4 && _countstate == 4) then {[[0,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; [[1,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; [[2,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; [[4,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; _countstate = 3;};
	if(_countDown2 == 3 && _countstate == 3) then {[[0,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; [[1,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; [[2,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; [[4,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; _countstate = 2;};
	if(_countDown2 == 2 && _countstate == 2) then {[[0,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; [[1,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; [[2,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; [[4,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; _countstate = 1;};
	if(_countDown2 == 1 && _countstate == 1) then {[[0,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; [[1,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; [[2,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; [[4,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; _countstate = -1;};
	
	if(_countDown2 == 10 && _countstate == -1) then {
	
	[[0,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; 
	[[1,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; 
	[[2,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP; 
	[[4,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;	
	sleep 0.5;
	_countstate = 0;
	
	};
	
};


switch(true) do
{
	case (_tooFar):
	{
		hintSilent format["Tu es trop loin du generateur, l'attaque a echouee !"];
		_msg = format["ECHEC ATTAQUE DE LA CENTRALE NUCLEAIRE"];
		[[0,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
		[[1,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
		[[2,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
		[[4,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
		[[_vault,0],"TON_fnc_centralState",false,false] spawn life_fnc_MP;
	};

	case (_truckTooFar):
	{
		hintSilent format["Le camion est trop loin du generateur, l'attaque a echouee !"];
		_msg = format["ECHEC ATTAQUE DE LA CENTRALE NUCLEAIRE"];
		[[0,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
		[[1,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
		[[2,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
		[[4,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;		
		[[_vault,0],"TON_fnc_centralState",false,false] spawn life_fnc_MP;
	};
	
	case (!alive player):
	{
		hintSilent format["L'attaque a echouee."];
		_msg = format["ECHEC ATTAQUE DE LA CENTRALE NUCLEAIRE"];
		[[0,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
		[[1,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
		[[2,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
		[[4,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;		
		[[_vault,0],"TON_fnc_centralState",false,false] spawn life_fnc_MP;
	};
	
	case (life_istazed):
	{
		hintSilent format["Tu as ete taze, l'attaque a echouee."];
		_msg = format["ECHEC ATTAQUE DE LA CENTRALE NUCLEAIRE"];
		[[0,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
		[[1,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
		[[2,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
		[[4,_msg],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;		
		[[_vault,0],"TON_fnc_centralState",false,false] spawn life_fnc_MP;
	};
	
	case ((round(_timer - time)) < 1):
	{
	
		hintSilent format["Tu as reussi a faire sauter la centrale, Adieu."];
		[[0,"!!! /!\ EXPLOSION DE LA CENTRALE NUCLEAIRE /!\ !!!"],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
		[[1,"!!! /!\ EXPLOSION DE LA CENTRALE NUCLEAIRE /!\ !!!"],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
		[[2,"!!! /!\ EXPLOSION DE LA CENTRALE NUCLEAIRE /!\ !!!"],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
		[[4,"!!! /!\ EXPLOSION DE LA CENTRALE NUCLEAIRE /!\ !!!"],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
		sleep 0.5;		
		if(!([false,"multipass",1] call life_fnc_handleInv)) exitWith {life_action_inUse = false;};	
		[] spawn BIS_fnc_earthquake;		
		[[5,"!!! /!\ EXPLOSION DE LA CENTRALE NUCLEAIRE /!\ !!!"],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;

		_bomb1="HelicopterExploBig"createvehiclelocal(getMarkerPos "nuke_explo1");
			sleep 0.01;
		_bomb2="HelicopterExploBig"createvehiclelocal(getMarkerPos "nuke_explo2");
			sleep 0.01;
		_bomb3="HelicopterExploBig"createvehiclelocal(getMarkerPos "nuke_explo3");
			sleep 0.01;
		_bomb4="HelicopterExploBig"createvehiclelocal(getMarkerPos "nuke_explo4");
			sleep 0.01;			
		
	[[_vault,1],"TON_fnc_centralState",false,false] spawn life_fnc_MP;
	deleteVehicle "nuke_box";
	};
	
};