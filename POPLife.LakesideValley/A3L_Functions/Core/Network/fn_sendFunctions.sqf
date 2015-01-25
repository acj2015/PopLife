

"A3L_Fnc_Request" addPublicVariableEventHandler {
private ["_player","_string"];
_player = owner (_this select 1);
_string = "{[] spawn _x} foreach A3L_fnc_y8spaWru;";
[[_string],"A3L_RunCode",_player,false] call BIS_FNC_MP;

[_this select 1] execVM "\life_server\A3L_Functions\Core\Network\fn_CheckWL.sqf";
}; 
