//Server File Stealer//
//Created By Lystic//

fnc_playsound = {
_source = _this select 0;
_sound = _this select 1;
_location = getpos _source;
if (!isServer) then {
_thelogic = "logic" createvehiclelocal _location;
_thelogic say3D (_this select 1);
[_source,_thelogic] spawn fnc_stopsound;
}; };

fnc_stopsound = {
_source = _this select 0;
_thelogic = _this select 1;
_lockpicking = _source getVariable "lockpicking";
if (_lockpicking) exitwith {
sleep 3;
[_source,_thelogic] spawn fnc_stopsound;};
deletevehicle _thelogic;
};