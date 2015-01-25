//Server File Stealer//
//Created By Lystic//

if (!isDedicated) then
{
[] spawn 
{
while {true} do 
{
waituntil {!isNil "nightclub"};
nightclub say3d "nightclub_music"; 
sleep 101; 
}; 
};

A3L_isDancing = false;
A3L_Fnc_Dance = 
{
if (!A3L_isDancing) then
{
A3L_isDancing = true;
if (!isNil "life_fnc_animsync") then 
{
[[player,"A3L_Dance"],"life_fnc_animsync",true,false] call BIS_fnc_MP;
} else
{
player switchmove "A3L_Dance";
};

[] spawn 
{
sleep 40;
[[player,""],"life_fnc_animsync",true,false] call BIS_fnc_MP;
A3L_isDancing = false;
};			
} else 
{
["You are already dancing!",30,"red"] call A3L_Msg_Fnc;
};
};
};