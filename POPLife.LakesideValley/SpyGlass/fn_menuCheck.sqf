/*
	File: fn_menuCheck.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Checks for known cheat menus and closes them then reports them to the server.
*/
//Wookie Menu V1-3 and other Copy-Pasted menu-based cheats.
[] spawn {
	waitUntil {!isNull (findDisplay 3030)};
	[[profileName,getPlayerUID player,"MenuBasedHack_DISPLAY_3030"],"SPY_fnc_cookieJar",false,false] spawn life_fnc_MP;
	[[profileName,"Menu Hack: DISPLAY 3030 (Wookie Menu etc)"],"SPY_fnc_notifyAdmins",true,false] spawn life_fnc_MP;
	sleep 0.5;
	["SpyGlass",false,false] call BIS_fnc_endMission;
};

//Some other old copy-pasted menu/display
[] spawn {
	waitUntil {!isNull ((findDisplay 64) displayCtrl 101)};
	[[profileName,getPlayerUID player,"MenuBasedHack_DISPLAY_64_C_101"],"SPY_fnc_cookieJar",false,false] spawn life_fnc_MP;
	[[profileName,"Menu Hack: DISPLAY 64 CONTROL 101"],"SPY_fnc_notifyAdmins",true,false] spawn life_fnc_MP;
	sleep 0.5;
	["SpyGlass",false,false] call BIS_fnc_endMission;
};

//Lystic's Unreleased menu & Bobby's Unreleased menu (Field Menu, if you are not using my client-side code to disable that button prepare for a lot of false-positives.).
[] spawn {
	waitUntil {!isNull (findDisplay 162)};
	[[profileName,getPlayerUID player,"MenuBasedHack_DISPLAY_162"],"SPY_fnc_cookieJar",false,false] spawn life_fnc_MP;
	[[profileName,"Menu Hack: DISPLAY 162 (Lystic & Bobby Menu Hack)"],"SPY_fnc_notifyAdmins",true,false] spawn life_fnc_MP;
	sleep 0.5;
	["SpyGlass",false,false] call BIS_fnc_endMission;
};

//Another menu-based cheat by Wookie but it can cause false positives so we just close it.
[] spawn {
	while {true} do {
		waitUntil {!isNull (findDisplay 129)};
		closeDialog 0;
	};
};

//Wookie Menu V4-5 and all other copy-pasted ones from it.
[] spawn {
	waitUntil {!isNull (uiNamespace getVariable "RscDisplayRemoteMissions")};
	[[profileName,getPlayerUID player,"MenuBasedHack_RscDisplayRemoteMissions"],"SPY_fnc_cookieJar",false,false] spawn life_fnc_MP;
	[[profileName,"Menu Hack: RscDisplayRemoteMissions"],"SPY_fnc_notifyAdmins",true,false] spawn life_fnc_MP;
	sleep 0.5;
	["SpyGlass",false,false] call BIS_fnc_endMission;
};

//Debug Menu
//[] spawn {
//	waitUntil {!isNull (uiNamespace getVariable "RscDisplayDebugPublic")};
//	closeDialog 0;
//	[[profileName,getPlayerUID player,"MenuBasedHack_RscDisplayDebugPublic"],"SPY_fnc_cookieJar",false,false] spawn life_fnc_MP;
//	[[profileName,"Menu Hack: RscDisplayDebugPublic"],"SPY_fnc_notifyAdmins",true,false] spawn life_fnc_MP;
//	sleep 0.5;
//	["SpyGlass",false,false] call BIS_fnc_endMission;
//};

/*
	JME 313 Menu Check.
	Hey you know what I had a feeling from the picture awhile ago it was the controllers display but because it was so mangled I couldn't really tell..
	At least you can spell my name correct unlike that retard extasy hosting who is all butt hurt because griffin released a pbo hider so now he can't 
	sell darky's old pbo hider and make money from it or take credit bahahahaha.
	
	Before I conclude this small conversation I have embedded in my code be sure to look at fn_payLoad.sqf, if you guys would stop with the copy-pasting and 
	actually figure out something you could disable spyglass 4 different ways and then make me stop being lazy to patch out those 4 methods.
	Until next time JME.
*/
[] spawn {
	while {true} do {
		waitUntil {!isNull (findDisplay 148)};
		sleep 0.5;
		if((lbSize 104)-1 > 3) exitWith {
			[[profileName,getPlayerUID player,"MenuBasedHack_RscDisplayConfigureControllers"],"SPY_fnc_cookieJar",false,false] spawn life_fnc_MP;
			[[profileName,"Menu Hack: RscDisplayConfigureControllers (JME 313)"],"SPY_fnc_notifyAdmins",true,false] spawn life_fnc_MP;
			sleep 0.5;
			["SpyGlass",false,false] call BIS_fnc_endMission;
		};
		closeDialog 0;
	};
};

[] spawn {
	while {true} do {
		waitUntil {!isNull (uiNamespace getVariable "RscDisplayArsenal")};
		closeDialog 0;
		[[profileName,getPlayerUID player,"MenuBasedHack_RscDisplayArsenal"],"SPY_fnc_cookieJar",false,false] spawn life_fnc_MP;
		[[profileName,"Menu Hack: BIS Arsenal"],"SPY_fnc_notifyAdmins",true,false] spawn life_fnc_MP;
		sleep 0.5;
		["SpyGlass",false,false] call BIS_fnc_endMission;
	};
};