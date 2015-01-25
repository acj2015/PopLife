//Server File Stealer//
//Created By Lystic//

if (side player == west) then {
tabletapp_array = [
["Player Menu","Player<br />menu","\A3L_Client2\tablet_new\icons\playermenu.paa","\A3L_Client2\tablet_new\icons\clicked\playermenu.paa",[""],"playerSettings"],
["Keys","Keys","\A3L_Client2\tablet_new\icons\keys.paa","\A3L_Client2\tablet_new\icons\clicked\keys.paa",[""],"Life_key_management"],
["Settings","Settings","\A3L_Client2\tablet_new\icons\settings.paa","\A3L_Client2\tablet_new\icons\clicked\settings.paa",[""],"SettingsMenu"],
["Synchronize","Synchronize","\A3L_Client2\tablet_new\icons\sync.paa","\A3L_Client2\tablet_new\icons\clicked\sync.paa",[""],"SyncMenu"],
["Messanger","Messanger","\A3L_Client2\tablet_new\icons\messanger.paa","\A3L_Client2\tablet_new\icons\clicked\messanger.paa",[""],"Life_cell_phone"],
["Wanted menu","Wanted<br />menu","\A3L_Client2\tablet_new\icons\wanted.paa","\A3L_Client2\tablet_new\icons\clicked\wanted.paa",[""],"life_wanted_menu"]
];
} else {
tabletapp_array = [
["Player Menu","Player<br />menu","\A3L_Client2\tablet_new\icons\playermenu.paa","\A3L_Client2\tablet_new\icons\clicked\playermenu.paa",[""],"playerSettings"],
["Keys","Keys","\A3L_Client2\tablet_new\icons\keys.paa","\A3L_Client2\tablet_new\icons\clicked\keys.paa",[""],"Life_key_management"],
["Settings","Settings","\A3L_Client2\tablet_new\icons\settings.paa","\A3L_Client2\tablet_new\icons\clicked\settings.paa",[""],"SettingsMenu"],
["Synchronize","Synchronize","\A3L_Client2\tablet_new\icons\sync.paa","\A3L_Client2\tablet_new\icons\clicked\sync.paa",[""],"SyncMenu"],
["Messanger","Messanger","\A3L_Client2\tablet_new\icons\messanger.paa","\A3L_Client2\tablet_new\icons\clicked\messanger.paa",[""],"Life_cell_phone"]
];
};

apploc_array = [
["app1",85444,85445,85700],
["app2",85446,85447,85701],
["app3",85448,85449,85702],
["app4",85450,85451,85703],
["app5",85452,85453,85704],
["app6",85454,85455,85705],
["app7",85456,85457,85706],
["app8",85458,85459,85707],
["app9",85460,85461,85708],
["app10",85462,85463,85709],
["app11",85464,85465,85710],
["app12",85466,85467,85711],
["app13",85468,85469,85712],
["app14",85470,85471,85713],
["app15",85472,85473,85714],
["app16",85474,85475,85715],
["app17",85476,85477,85716],
["app18",85478,85479,85717],
["app19",85480,85481,85718],
["app20",85482,85483,85719],
["app21",85484,85485,85720],
["app22",85486,85487,85721],
["app23",85488,85489,85722],
["app24",85490,85491,85723],
["app25",85492,85493,85724],
["app26",85494,85495,85725],
["app27",85496,85497,85726]
];

fnc_opentablet = {
createdialog "tabletmenu";
[] spawn fnc_tabletmenuopen;
[] spawn tablet_loadapp;
_curdate = date;
_year = _curdate select 0;
_month = _curdate select 1;
_day = _curdate select 2;
_hour = _curdate select 3;
_minute = _curdate select 4;
_monthtext = 0;
_daytext = 0;
if(_month == 1) then {_monthtext = "January";};
if(_month == 2) then {_monthtext = "February";};
if(_month == 3) then {_monthtext = "March";};
if(_month == 4) then {_monthtext = "April";};
if(_month == 5) then {_monthtext = "May";};
if(_month == 6) then {_monthtext = "June";};
if(_month == 7) then {_monthtext = "July";};
if(_month == 8) then {_monthtext = "August";};
if(_month == 9) then {_monthtext = "September";};
if(_month == 10) then {_monthtext = "October";};
if(_month == 11) then {_monthtext = "November";};
if(_month == 12) then {_monthtext = "December";};
if(_day == 1) then {_daytext =  parseText format["%1st", _day];} else {
if(_day == 2) then {_daytext =  parseText format["%1nd", _day];} else {
if(_day == 3) then {_daytext =  parseText format["%1rd", _day];} else {
if(_day >= 4) then {_daytext =  parseText format["%1th", _day];};};};};

if(_minute >= 0 && _minute <= 9) then {_minute = parseText format["0%1", _minute];};
_timeofdate = parseText format["<t font='EtelkaNarrowMediumPro' color='#707070' align='right' size='1'>%1:%2</t>", _hour,_minute];
((uiNamespace getVariable "tabletmenu") displayCtrl 49284) ctrlSetStructuredText _timeofdate;
_countyname = parseText format["<t font='EtelkaNarrowMediumPro' color='#FFFFFF' align='left' size='1.8'>Lakeside Valley</t>"];
_dateandyear = parseText format["<t font='EtelkaNarrowMediumPro' color='#FFFFFF' align='left' size='0.6'>%1 of %2 - %3</t>",_daytext,_monthtext,_year];
((uiNamespace getVariable "tabletmenu") displayCtrl 55210) ctrlSetStructuredText _countyname; 
((uiNamespace getVariable "tabletmenu") displayCtrl 55214) ctrlSetStructuredText _dateandyear;


_windDir = 0;
_weather = "NO SIGNAL";
if(windDir >= 340 && windDir <= 360 || windDir >= 0 && windDir <= 20) then {_windDir = "North";};
if(windDir >= 20 && windDir <= 60) then {_windDir = "North East";};
if(windDir >= 60 && windDir <= 110) then {_windDir = "East";};
if(windDir >= 110 && windDir <= 160) then {_windDir = "South East";};
if(windDir >= 160 && windDir <= 200) then {_windDir = "South";};
if(windDir >= 200 && windDir <= 250) then {_windDir = "South West";};
if(windDir >= 250 && windDir <= 290) then {_windDir = "West";};
if(windDir >= 290 && windDir <= 340) then {_windDir = "North West";};

if(rain < 0.05) then {
if(overcast >= 0 && overcast < 0.4) then {_weather = "Clear";} else {
if(overcast >= 0.4 && overcast < 0.6) then {_weather = "Cloudy";} else {
if(overcast >= 0.6 && overcast <= 1) then {_weather = "Fog";};};};
} else {
if(overcast >= 0 && overcast < 0.6) then {_weather = "Rain";} else {
if(overcast >= 0.6 && overcast <= 1) then {_weather = "Storm";};};};

_weathertype = parseText format["<t font='EtelkaNarrowMediumPro' color='#FFFFFF' align='left' size='1.5'>%1</t>",_weather];

_weatherinfo = parseText format["<t font='EtelkaNarrowMediumPro' color='#FFFFFF' align='left' size='0.6'>Wind is coming from the %1.</t>",_windDir];
_graden = parseText format["<t font='EtelkaNarrowMediumPro' color='#FFFFFF' align='left'><t size='2.5'>6 °F</t></t>"];
((uiNamespace getVariable "tabletmenu") displayCtrl 55211) ctrlSetStructuredText _weatherinfo;
((uiNamespace getVariable "tabletmenu") displayCtrl 55212) ctrlSetStructuredText _weathertype;
((uiNamespace getVariable "tabletmenu") displayCtrl 55213) ctrlSetStructuredText _graden; 


{
_arrnumber = _forEachIndex;
_appname = _x select 0;
_apptext = _x select 1;
_apppic = _x select 2;

_apploc = apploc_array select _arrnumber;
_locnumber = _apploc select 0;
_piclocation = _apploc select 1;
_buttonlocation = _apploc select 3;
_textlocation = _apploc select 2;

_apptext2 = parseText format["<t font='EtelkaNarrowMediumPro' color='#FFFFFF' size='0.6' align='center'>%1</t>", _apptext];
((uiNamespace getVariable "tabletmenu") displayCtrl _piclocation) ctrlSetText _apppic;
((uiNamespace getVariable "tabletmenu") displayCtrl _textlocation) ctrlSetStructuredText _apptext2;

} foreach tabletapp_array;
};

fnc_tabletmenuopen = {
sleep 1;
if(tabletmenuisopen == 1) then {
_curdate = date;
_minute = _curdate select 4;
_hour = _curdate select 3;
if(_minute >= 0 && _minute <= 9) then {_minute = parseText format["0%1", _minute];};
_timeofdate = parseText format["<t font='EtelkaNarrowMediumPro' size='1' color='#707070' align='right'>%1:%2</t>", _hour,_minute];
((uiNamespace getVariable "tabletmenu") displayCtrl 49284) ctrlSetStructuredText _timeofdate; 
sleep 0.05;
[] spawn fnc_tabletmenuopen;
} else {};
};

fnc_tabletbuttonenter = {
_appnumber = _this select 0;
_onmouse = _this select 1;
_amountofapps = count tabletapp_array;
if (_amountofapps >= (_appnumber + 1)) then {
_currentapp = tabletapp_array select _appnumber;
_curapploc = apploc_array select _appnumber;
_piclocation = _curapploc select 1;
if (_onmouse == 1) then {
_selectedpic = _currentapp select 3;
((uiNamespace getVariable "tabletmenu") displayCtrl _piclocation) ctrlSetText _selectedpic;
} else {
_selectedpic = _currentapp select 2;
((uiNamespace getVariable "tabletmenu") displayCtrl _piclocation) ctrlSetText _selectedpic;
};};};

fnc_tabletbuttonclick = {
_selectedapp = _this select 0;
_currentapp = tabletapp_array select _selectedapp;
_dialogcode = _currentapp select 5;
createdialog _dialogcode;
};


hint "loaded!";