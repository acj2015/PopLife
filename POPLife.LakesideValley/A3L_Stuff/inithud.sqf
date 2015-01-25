while {true} do {
sleep 0.01;
_playerhealth = getdammage player;
_playerstamina = getfatigue player;
_playerhunger = life_hunger;
_playerthirst = life_thirst;
 
_healthcolor = "#00FF4C";
_hungercolor = "#00FF4C";
_thirstcolor = "#00FF4C";
_staminacolor = "#00FF4C";
_magcolor = "#FFFFFF";
_ammocolor = "#FFFFFF";
_hungertext = parseText format[""];
_thirsttext = parseText format[""];
_healthtext = parseText format[""];
_zeroingtext = parseText format[""];
_staminatext = parseText format[""];
_ammotext = parseText format[""];
_amountmagtext = parseText format[""];
_weaponname = parseText format[""];
_hudinfo = weaponState player; // ["arifle_MX_ACO_pointer_F","arifle_MX_ACO_pointer_F","Single","30Rnd_65x39_caseless_mag",30]
_curweapon = _hudinfo select 0;
_curmagazine = _hudinfo select 4;
_className = _hudinfo select 3;
_gunmodeold = _hudinfo select 2;
_gunmode = "";
if ((_gunmodeold == "single") or (_gunmodeold == "FullAuto")) then {
_gunmode = _gunmodeold;
if (_gunmodeold == "single") then {_gunmode = "Single"};
if (_gunmodeold == "FullAuto") then {_gunmode = "Automatic"};
};
 
_magforpic = "";
if (_curweapon != "") then {
_magforpic = (getArray (configFile >> "CfgWeapons" >> _curweapon >> "magazines")) select 0;
};
_picture = "";
_picture = getText (configFile >> "CfgMagazines" >> _magforpic >> "picture");
_nameofPlayer = name player;
_noweaponsarray = ["","","","",0];
_nothing = _noweaponsarray select 0;
if (_nothing == _curweapon) then {
} else {
 
_zeroing = currentZeroing player;
 
_magazineClass = currentMagazine player;
_weaponname = getText (configFile >> "CfgWeapons" >> _curweapon >> "displayName");
_maxammo = getNumber(configFile >> "CfgMagazines" >> _magazineClass >> "count") ;
_prcentammo = 0;
if (_curmagazine == 0) then {
_prcentammo = 0;
} else {
_prcentammo = (_curmagazine / _maxammo) * 100;
};
 
_amountmag = {_x == (currentmagazine player)} count magazines player;
if (_amountmag == 0) then {
        _amountmagtext = parseText format["No tengo cargadores"];
                _magcolor = "#FFFFFF";
    } else {
    if (_amountmag == 1) then {
        _amountmagtext = parseText format["Me quedan %1 cargadores.", _amountmag];
                _magcolor = "#FFFFFF";
    } else {
    if (_amountmag > 1) then {
        _amountmagtext = parseText format["Me quedan %1 cargadores.", _amountmag];
                _magcolor = "#FFFFFF";
};};};
       
if (_prcentammo == 0) then {
        _ammotext = parseText format["Creo que no tengo municion."];
                _ammocolor = "#FFFFFF";
    } else {
    if (_prcentammo < 20) then {
        _ammotext = parseText format["Creo que está casi vacio."];
                _ammocolor = "#FFFFFF";
    } else {
    if (_prcentammo < 40) then {
        _ammotext = parseText format["Quizas deberias comprobar la municion."];
                _ammocolor = "#FFFFFF";
    } else {
    if (_prcentammo < 60) then {
        _ammotext = parseText format["El cargador esta casi vacio."];
                _ammocolor = "#FFFFFF";
    } else {
    if (_prcentammo < 80) then {
        _ammotext = parseText format["Tengo suficiente municion."];
                _ammocolor = "#FFFFFF";
    } else {
    if (_prcentammo < 100) then {
        _ammotext = parseText format["Todavia tengo un monton de balas."];
                _ammocolor = "#FFFFFF";
    } else {
    if (_prcentammo == 100) then {
        _ammotext = parseText format["El cargador esta completo."];
                _ammocolor = "#FFFFFF";
};};};};};};};
 
if (_zeroing == 0) then {
                _zeroingtext = parseText format[""];
        } else {
                _zeroingtext = parseText format["Punto Cero: %1M", _zeroing];
};
 
 
};  
 
if (_playerhealth < 0.10) then {
                _healthcolor = "#00FF4C";
                _healthtext = parseText format["Muy saludable"];
        } else {
        if (_playerhealth < 0.20) then {
                _healthcolor = "#1AFF00";
                _healthtext = parseText format["Algo herido"];
        } else {
        if (_playerhealth < 0.30) then {
                _healthcolor = "#7BFF00";
                _healthtext = parseText format["Ligeramente herido"];
        } else {
        if (_playerhealth < 0.40) then {
                _healthcolor = "#BFFF00";
                _healthtext = parseText format["No te sientes bien"];
        } else {
        if (_playerhealth < 0.50) then {
                _healthcolor = "#EAFF00";
                _healthtext = parseText format["Empiezas a notar dolor"];
        } else {
        if (_playerhealth < 0.60) then {
                _healthcolor = "#FFBF00";
                _healthtext = parseText format["Sientes dolor"];
        } else {
        if (_playerhealth < 0.70) then {
                _healthcolor = "#FF8400";
                _healthtext = parseText format["Algo debes tener roto"];
        } else {
        if (_playerhealth < 0.80) then {
                _healthcolor = "#FF4000";
                _healthtext = parseText format["Heridas graves"];
        } else {
        if (_playerhealth < 0.90) then {
                _healthcolor = "#FF0000";
                _healthtext = parseText format["Heridas muy graves"];
        } else {
        if (_playerhealth == 1) then {
                _healthcolor = "#590000";
                _healthtext = parseText format["Muerto</t>"];
};};};};};};};};};};
 
if (_playerhunger > 90) then {
                _hungercolor = "#00FF4C";
                _hungertext = parseText format["No tienes hambre"];
        } else {
        if (_playerhunger > 80) then {
                _hungercolor = "#1AFF00";
                _hungertext = parseText format["Nada de hambre"];
        } else {
        if (_playerhunger > 70) then {
                _hungercolor = "#7BFF00";
                _hungertext = parseText format["Te vendria bien algunas galletas"];
        } else {
        if (_playerhunger > 60) then {
                _hungercolor = "#BFFF00";
                _hungertext = parseText format["Puede ser que necesites algo pronto"];
        } else {
        if (_playerhunger > 50) then {
                _hungercolor = "#EAFF00";
                _hungertext = parseText format["Sientes el estomago algo vacio"];
        } else {
        if (_playerhunger > 40) then {
                _hungercolor = "#FFBF00";
                _hungertext = parseText format["Deberias comer pronto"];
        } else {
        if (_playerhunger > 30) then {
                _hungercolor = "#FF8400";
                _hungertext = parseText format["Tu estomago esta vacio"];
        } else {
        if (_playerhunger > 20) then {
                _hungercolor = "#FF4000";
                _hungertext = parseText format["Necesitas comer ya"];
        } else {
        if (_playerhunger > 10) then {
                _hungercolor = "#FF0000";
                _hungertext = parseText format["Te mueres de hambre"];
        } else {
        if (_playerhunger == 0) then {
                _hungercolor = "#590000";
                _hungertext = parseText format["Muerto</t>"];
};};};};};};};};};};
 
if (_playerthirst > 80) then {
                _thirstcolor = "#1AFF00";
                _thirsttext = parseText format["Hidratado"];
        } else {
        if (_playerthirst > 70) then {
                _thirstcolor = "#7BFF00";
                _thirsttext = parseText format["Te vendria bien un vaso de agua"];
        } else {
        if (_playerthirst > 60) then {
                _thirstcolor = "#BFFF00";
                _thirsttext = parseText format["Deberias beber algo pronto"];
        } else {
        if (_playerthirst > 50) then {
                _thirstcolor = "#EAFF00";
                _thirsttext = parseText format["Tu garganta esta algo seca"];
        } else {
        if (_playerthirst > 40) then {
                _thirstcolor = "#FFBF00";
                _thirsttext = parseText format["Deberias beber algo pronto"];
        } else {
        if (_playerthirst > 30) then {
                _thirstcolor = "#FF8400";
                _thirsttext = parseText format["Tu garganta esta seca"];
        } else {
        if (_playerthirst > 20) then {
                _thirstcolor = "#FF4000";
                _thirsttext = parseText format["Deberias beber ahora mismo"];
        } else {
        if (_playerthirst > 10) then {
                _thirstcolor = "#FF0000";
                _thirsttext = parseText format["Deshidratado"];
        } else {
        if (_playerthirst == 0) then {
                _thirstcolor = "#590000";
                _thirsttext = parseText format["Muerto</t>"];
};};};};};};};};};
 
if (_playerstamina < 0.10) then {
                _staminacolor = "#00FF4C";
                _staminatext = parseText format["Energizado"];
        } else {
        if (_playerstamina < 0.20) then {
                _staminacolor = "#1AFF00";
                _staminatext = parseText format["Podria correr siempre"];
        } else {
        if (_playerstamina < 0.30) then {
                _staminacolor = "#BFFF00";
                _staminatext = parseText format["Esmpiezas a sentirte cansado"];
        } else {
        if (_playerstamina < 0.40) then {
                _staminacolor = "#EAFF00";
                _staminatext = parseText format["Necesitas un respiro"];
        } else {
        if (_playerstamina < 0.50) then {
                _staminacolor = "#FF8400";
                _staminatext = parseText format["Necesitas parar a descansar"];
        } else {
        if (_playerstamina < 0.60) then {
                _staminacolor = "#FF4000";
                _staminatext = parseText format["Estas empezando a agotarte"];
        } else {
        if (_playerstamina > 0.59) then {
                _staminacolor = "#590000";
                _staminatext = parseText format["Estas agotado"];
};};};};};};};
 
 
_playerstatustext = parseText format ["<t font='EtelkaNarrowMediumPro' size='1' align='right'><t color='%1'>%2</t> | <t color='%3'>%4</t> | <t color='%5'>%6</t> | <t color='%7'>%8</t></t>", _healthcolor, _healthtext, _staminacolor, _staminatext, _hungercolor, _hungertext, _thirstcolor, _thirsttext];
_playernametext = parseText format ["<t font='EtelkaNarrowMediumPro' color='#FFFFFF' size='1.3' align='right'>%1</t>", _nameofplayer];
// _zeroinghudtext = parseText format ["<t font='EtelkaNarrowMediumPro' color='#949494' size='1' align='left'>%1</t>", _zeroingtext];
_ammohudtext = parseText format ["<t font='EtelkaNarrowMediumPro' color='%1' size='0.9' align='left'>%2</t>",_ammocolor, _ammotext];
_maghudtext = parseText format ["<t font='EtelkaNarrowMediumPro' color='%1' size='1' align='left'>%2</t>", _magcolor, _amountmagtext];
_gunmodetext = parseText format ["<t font='EtelkaNarrowMediumPro' color='#FFFFFF' size='1' align='center'>%1</t>", _gunmode];
 
_weapontexthud = parseText format ["<t font='EtelkaNarrowMediumPro' color='#FFFFFF' size='1' align='left'>%1</t>", _weaponname];
((uiNamespace getVariable "a3lhud") displayCtrl 41652) ctrlSetStructuredText _playerstatustext;
((uiNamespace getVariable "a3lhud") displayCtrl 16418) ctrlSetText _picture;
((uiNamespace getVariable "a3lhud") displayCtrl 62362) ctrlSetStructuredText _playernametext;
// ((uiNamespace getVariable "a3lhud") displayCtrl 16423) ctrlSetStructuredText _zeroinghudtext;
((uiNamespace getVariable "a3lhud") displayCtrl 16422) ctrlSetStructuredText _ammohudtext;
((uiNamespace getVariable "a3lhud") displayCtrl 16419) ctrlSetStructuredText _gunmodetext;
((uiNamespace getVariable "a3lhud") displayCtrl 16421) ctrlSetStructuredText _maghudtext;
((uiNamespace getVariable "a3lhud") displayCtrl 16420) ctrlSetStructuredText _weapontexthud;
 
};