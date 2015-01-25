/*  File Original: fn_copInteractionMenu.sqf
    Author: TONIC
    File: fn_civInteractionMenu.sqf
    Author: Adriano
*/
#define Btn1 37450  //deslgemar
#define Btn2 37451
#define Btn4 37453  //escort e stop escort
#define Btn7 37456  //colocar no veiculo
#define Title 37401

private["_display","_curTarget","_Btn1","_Btn2","_Btn4","_Btn7"];
if(!dialog) then {
    createDialog "pInteraction_Menu";
};
disableSerialization;
_curTarget = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _curTarget) exitWith {closeDialog 0;}; //Bad target
if(!isPlayer _curTarget && side _curTarget == civilian) exitWith {closeDialog 0;}; //Bad side check?
_display = findDisplay 37400;
_Btn1 = _display displayCtrl Btn1;
_Btn2 = _display displayCtrl Btn2;
_Btn4 = _display displayCtrl Btn4;
_Btn7 = _display displayCtrl Btn7;
life_pInact_curTarget = _curTarget;

//Set Kidnapping Button
_Btn1 ctrlSetText "Kidnapping-On";
_Btn1 buttonSetAction "[life_pInact_curTarget] call life_fnc_kidnappingAction; closeDialog 0;";

//Set Kidnapping Button
_Btn2 ctrlSetText "Kidnapping-Off";
_Btn2 buttonSetAction "[life_pInact_curTarget] call life_fnc_kidnappingActionOff; closeDialog 0;";

//Set Escort Button
if((_curTarget getVariable["Escorting",false])) then {
    _Btn4 ctrlSetText localize "STR_pInAct_StopEscort";
    _Btn4 buttonSetAction "[life_pInact_curTarget] call life_fnc_stopEscorting; [life_pInact_curTarget] call life_fnc_civInteractionMenu;";
} else {
    _Btn4 ctrlSetText localize "STR_pInAct_Escort";
    _Btn4 buttonSetAction "[life_pInact_curTarget] call life_fnc_escortAction; closeDialog 0;";
};
//set put in vehicle
_Btn7 ctrlSetText localize "STR_pInAct_PutInCar";
_Btn7 buttonSetAction "[life_pInact_curTarget] call life_fnc_putInCar;";
//impede as funçoes de policiais
if(playerSide == civilian) then {
    _Btn3 ctrlShow false;
    _Btn5 ctrlShow False;
    _Btn6 ctrlShow False;
    };