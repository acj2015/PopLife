/*
File: fn_cellphone2.sqf
Author: Timo
 
Description:
With no radio cant use Cellphone
*/

if("ItemRadio" in assignedItems player) then {
createDialog "Life_cell_phone";
}else{
hint parseText format ["<t size='1.40' font='puristaMedium' align='center' color='#0D82DF'>Pas de telephone cellulaire</t><br/><br/>
<t size='1.10 'font='puristaLight' align='left'>Tu dois avoir un telephone (Radio). Tu peux acheter un telephone cellulaire dans un magasin general.</t><br/>"];
};