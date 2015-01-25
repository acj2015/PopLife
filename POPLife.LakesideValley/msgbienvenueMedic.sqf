/*
	File: welcomecredits.sqf
	Description:
	Creates an intro on the bottom-right hand corner of the screen and add camera effect to spawn.
*/

private [ "_camera", "_welcomeMessage", "_camDistance" ];
_welcomeMessage = format["Bievenidos a POP LIFE",format["%1", name player]];
_camDistance = 40;
waitUntil { alive player };
//waituntil {!isnull (finddisplay 46)};
showCinemaBorder true;
camUseNVG false;
playsound "IntroMedic";
_camera = "camera" camCreate [(position player select 0)-2, position player select 1,(position player select 2)+_camDistance];
_camera cameraEffect ["internal","back"];
 
_camera camSetFOV 2.000;
_camera camCommit 0;
waitUntil {camCommitted _camera};
["Bienvenidos a POP LIFE","CENTER_UP",2] call arjay_dynamicText;
 
_camera camSetTarget vehicle player;
_camera camSetRelPos [0,0,2];
_camera camCommit 8;
 
cutText [_welcomeMessage, "PLAIN DOWN"];
 
waitUntil {camCommitted _camera};
 
_camera cameraEffect ["terminate","back"];
camDestroy _camera;
sleep 1;


_onScreenTime = 5;

sleep 3; //Wait in seconds before the credits start after player is in-game
//player say "Intro";
 
_role1 = "Bienvenido a";
_role1names = ["Pop Life"];       //Add your texts here!
_role2 = "Web";
_role2names = ["www.Plataoplomo.wft"];
_role3 = "teamSpeak";
_role3names = ["ts.plataoplomo.wtf"];
_role4 = "Roleo!";
_role4names = ["Sigue el Rol o seras Baneado."];
_role5 = "bugs";
_role5names = ["Reporta todos los Bugs y seras Premiado"];
_role6 = "Servidor";
_role6names = ["El servidor esta en Beta."];
_role7 = "RServidor";
_role7names = ["Hay mas de 50 Vehiculos nuevos"];
{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.60' color='#00e2f7' align='center'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.80' color='#FFFFFF' align='center'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 1.0,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names],
[_role7, _role7names]
];