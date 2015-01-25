

titleText ["Checking whitelist status...", "BLACK"];
waituntil {!isNil "A3L_isWL"};

if (!(A3L_isWL)) exitwith {
player setvariable ["notwhitelisted",true,true];
};

titleText ["Whitelist confirmed!","BLACK IN"];