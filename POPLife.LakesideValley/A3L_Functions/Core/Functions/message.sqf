//Server File Stealer//
//Created By Lystic//

tablet_inbox = [[name player,"",date,0,""]];

sms_getinbox = {
sleep 0.1;
_amountofsms = count tablet_inbox;
_display = findDisplay 3000;
_units = _display displayCtrl 1500;
lbClear _units;
_info = "NONE";
{
_arrnumber = _forEachIndex;
_sendplayer = _x select 0;
_message = _x select 1;
_info = _x select 4;

_units lbAdd _info;
} foreach tablet_inbox;
lbSetCurSel [1500, 0];
[_amountofsms] spawn fnc_smsmenuopen;
};

fnc_smsmenuopen = {
sleep 1;
amountofsms = _this select 0;
if(smsmenuisopen == 1) then {
amountofnewsms = count tablet_inbox;
if (amountofsms == amountofnewsms) then {
[amountofnewsms] spawn fnc_smsmenuopen;}
else {
[] spawn sms_getinbox;
};
};
}; 

fnc_smsselected = {
_selected = lbCurSel 1500;
_selectedinfo = tablet_inbox select _selected;
_thetext = _selectedinfo select 1;
_apptext2 = parseText format["%1", _thetext];
((uiNamespace getVariable "tabletmenu") displayCtrl 1801) ctrlSetStructuredText _apptext2;
};



clientsmssys = {
if(isServer) exitWith {};
private["_msg","_from", "_type"];
_compiled = _this select 0;
_msg = _this select 0;
_from = _this select 1;
_type = _this select 2;
if(_from == "") exitWith {};
switch (_type) do
{
case 0 :
{
private["_message"];
tablet_inbox = [_compiled] + tablet_inbox;
hint parseText format ["<t color='#FFCC00'><t size='2'><t align='center'>Nuevo Mensaje"];

};
case 1 :
{
if(side player != west) exitWith {};
tablet_inbox = [_compiled] + tablet_inbox;
hint parseText format ["<t color='#FFCC00'><t size='2'><t align='center'>Nuevo Mensaje"];
};
case 2 :
{
if((call life_adminlevel) < 1) exitWith {};
tablet_inbox = [_compiled] + tablet_inbox;
hint parseText format ["<t color='#FFCC00'><t size='2'><t align='center'>Nuevo Mensaje"];
};

case 3 :
{
private["_message"];
_message = format["!!!ADMIN MENSAJEE: %1",_msg];
_admin = format["Sent by admin: %1", _from];
hint parseText format ["<t color='#FF0000'><t size='2'><t align='center'>Admin Mensaje<br/><br/><t color='#33CC33'><t align='left'><t size='1'>To: <t color='#ffffff'>You<br/><t color='#33CC33'>De: <t color='#ffffff'>Admin<br/><br/><t color='#33CC33'>Mensaje:<br/><t color='#ffffff'>%1",_msg];		
systemChat _message;
if((call life_adminlevel) > 0) then {systemChat _admin;};
};

case 4 :
{
private["_message","_admin"];
tablet_inbox = [_compiled] + tablet_inbox;
hint parseText format ["<t color='#FFCC00'><t size='2'><t align='center'>Nuevo Mensaje"];
};

case 5: {
private["_message"];
tablet_inbox = [_compiled] + tablet_inbox;
hint parseText format ["<t color='#FFCC00'><t size='2'><t align='center'>Nuevo Mensaje"];

};
};
};

fnc_sms_textmsg = {
_msg = ctrlText 1800;
_hours = 0;
_mins = 0;
_ampm = "AM";
if ((date select 3) > 12) then {
_hours = (date select 3) -12;
_ampm = "PM";
} else {
_hours = (date select 3);
_ampm = "AM";
};

if ((date select 4) < 10) then {
_mins = format ["0%1",(date select 4)];
} else { _mins = (date select 4)};
_to = lbCurSel 1501;
if(_msg == "") exitWith {hint "Debe introducir un mensaje para enviar!";};
if(_to == -1) exitWith {hint "Debe seleccionar un jugador para enviar el texto!";};
if(_to == 0) then {
_datecomp = format ["911 - (%6) %1-%2-%3 | %4:%5 %7",(date select 2),(date select 1),(date select 0),_hours,_mins,name player,_ampm];
_compiled = [name player,_msg,date,5,_datecomp];
_to = "The EMS";
[[_compiled,name player,5],"clientsmssys",independent,false] spawn life_fnc_MP;
[] call life_fnc_cellphone;
} else { if (_to == 1) then {
_datecomp = format ["911 - (%6) %1-%2-%3 | %4:%5 %7",(date select 2),(date select 1),(date select 0),_hours,_mins,name player,_ampm];
_compiled = [name player,_msg,date,1,_datecomp];
_to = "The Police";
[[_compiled,name player,1],"clientsmssys",true,false] spawn life_fnc_MP;
[] call life_fnc_cellphone;
} else { if (_to == 2) then {
_datecomp = format ["((%1 send the admins a message))",name player];
_compiled = [name player,_msg,date,2,_datecomp];
_to = "The Admins";
[[_compiled,name player,2],"clientsmssys",true,false] spawn life_fnc_MP;
[] call life_fnc_cellphone;
} else { if (_to == 3 && ((call life_adminlevel) > 0)) then {
_datecomp = format ["((GLOBAL admin message from; %1))",name player];
_compiled = [name player,_msg,date,2,_datecomp];
_to = "EVERYONE";
[[_compiled,name player,4],"clientsmssys",true,false] spawn life_fnc_MP;
[] call life_fnc_cellphone;
} else {
_datecomp = format ["(%6) %1-%2-%3 | %4:%5 %7",(date select 2),(date select 1),(date select 0),_hours,_mins,name player,_ampm];
_compiled = [name player,_msg,date,0,_datecomp];
_to = call compile format["%1",(lbData[1501,(lbCurSel 1501)])];
[[_compiled,name player,0],"clientsmssys",_to,false] spawn life_fnc_MP;
[] call life_fnc_cellphone;
};};};
};};