/*
	File: fn_cmdMenucheck.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Checks to see which commandingMenu is currently active,
	if a non white-listed menu is active it will close it and report it
	to the server and active admins.
*/
private["_validMenus","_lastMenu"];
_validMenus = [
	"RscMainMenu","RscMoveHigh","#WATCH","#WATCH0","RscWatchDir","RscWatchMoveDir","#GETIN","#RscStatus","RscCallSupport","#ACTION",
	"RscCombatMode","RscFormations","RscTeam","RscSelectTeam","RscReply","#User:BIS_Menu_GroupCommunication","#CUSTOM_RADIO",
	"RscRadio","RscGroupRootMenu","RscMenuReply","RscMenuStatus","","RscMenuEngage","#User:BIS_fnc_addCommMenuItem_menu","RscMenuMove","RscMenuFormations",
	"#USER:alsmenu","#USER:alsToolsMenu","#USER:dalsToolsMenu","#USER:salsToolsMenu","#USER:alsADMPL","#USER:alsADMMM","#USER:alsSADMPL","#USER:alsSADMMM","#USER:dalsADMPL","#USER:dalsADMMM","#USER:_pmenu",
	"#GET_IN","#WATCH76"
];

_lastMenu = "";
while {true} do
{
	waitUntil {commandingMenu != _lastMenu};
	_lastMenu = commandingMenu;
	
	if(!(commandingMenu in _validMenus)) then {
		[[profileName,getPlayerUID player,_lastMenu],"SPY_fnc_observe",false,false] call life_fnc_MP;
		[[[0,1],format["%1 a ete vu par SPY-GLASS, il essaye d executer:\n\n %2\n\n et ce menu n est pas connu du systeme. PLEASE NOTE il ne cheat peut etre pas mais SPY-GLASS a trouve pertinent de le relever",profileName,
		_lastMenu]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		showCommandingMenu "";
	};
};