/*
Base script by BlueBaer.
Fixed by Icaruk, added to be able to lose a zombie.
*/

private ["_zombie", "_grp", "_sleepTime", "_lockedTarget", "_playersInRange", "_closeHumans", "_hasContact"];
_zombie = _this select 0;
//_zombie setVariable ["Zombi", true, true];
sleep 1;
_zombie disableAI "FSM";
_zombie disableAI "AUTOTARGET";
_zombie disableAI "TARGET";
_zombie setBehaviour "CARELESS";
_zombie enableFatigue false;
_zombie setVariable ["BIS_noCoreConversations", true];
_grp = group _zombie;
_grp setCombatMode "CARELESS";
_grp setSpeedMode "FULL";

fncNextSound = compile preprocessFile "ica\zombis\fnc_nextSound.sqf";
fncContact = compile preprocessFile "ica\zombis\fnc_contact.sqf";

_zombie addEventHandler ["hit",{[_this select 0, "hurt"] call fncNextSound;}];

_sleepTime = 7;
//When the target is the zombie itself, it is idle
_lockedTarget = _zombie;

/*
player addEventHandler ["Fired", {
	if ((player distance (getMarkerPos "ZQ")) < 2300) then {
		{_x doMove getPosASL player} forEach (player nearEntities ["man",600]);};
}];
*/


while {alive _zombie} do {
	if (_lockedTarget == _zombie) then {
		//Idle mode
		_playersInRange = false;
		_closeHumans = _zombie nearEntities [["man"],350];
		{
			if (isNil {_x getVariable "Zombi"}) then {
				_playersInRange = true;
				_hasContact = [_zombie, _x] call fncContact;
				if (_hasContact) then {
					_lockedTarget = _x;
				};
			};
		} foreach _closeHumans;

		//_sleepTime will be overwritten later again in case player was spotted
		//Lower sleep time if a player is within 200m, longer sleep time if not to save processing power
		//A player will take longer than 15 seconds to travel 100m on foot, and zombies see players from 100m max.
		//Values can be adjusted accordingly to improve performance.
		if (_playersInRange) then {_sleepTime = 2} else {_sleepTime = 15};
	};

	if (_lockedTarget != _zombie) then {
		_zombie doMove getPosASL _lockedTarget;
		if (_zombie distance _lockedTarget < 1 && alive _lockedTarget) then {
			_zombie switchMove "AwopPercMstpSgthWnonDnon_end";
			_lockedTarget setDamage (damage _lockedTarget + (0.25 + (random 0.09)));
			_lockedTarget setVariable ["virusZ", true, true];
			[_zombie, "punch"] call fncNextSound;
		};
		if ((_zombie distance _lockedTarget) > 400) then {
			_lockedTarget = _zombie
		};
		if (!alive _lockedTarget) then {
				_lockedTarget = _zombie;
		};
		_sleepTime = 1;
	};

	sleep _sleepTime;
};