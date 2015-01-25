/*
	File: fn_removeItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Removes the selected item & amount to remove from the players
	virtual inventory.
*/
private["_data","_value","_obj","_pos","_ind"];
disableSerialization;
_data = lbData[2005,(lbCurSel 2005)];
_value = ctrlText 2010;
if(_data == "") exitWith {hint "No has seleccionado nada que eliminar.";};
if(!([_value] call TON_fnc_isnumber)) exitWith {hint "Introduce un numero valido."};
if(parseNumber(_value) <= 0) exitWith {hint "Necesitas introducir una cantidad valida a eliminar."};
_ind = [_data,life_illegal_items] call TON_fnc_index;
if(_ind != -1 && ([west,getPos player,100] call life_fnc_nearUnits)) exitWith {titleText["Este es un objeto ilegal y la policia estan cerca, no puede deshacerse de las pruebas","PLAIN"]};
if(player != vehicle player) exitWith {titleText["No puedes  eliminar un objeto si estas dentro de un vehiculo.","PLAIN"]};
if(!([false,_data,(parseNumber _value)] call life_fnc_handleInv)) exitWith {hint "No dispones de esa cantidad para eliminar"};
_type = [_data,0] call life_fnc_varHandle;
_type = [_type] call life_fnc_varToStr;
hint format["Has eliminado %1 de %2 del inventario.",(parseNumber _value), _type];
	
[] call life_fnc_p_updateMenu;