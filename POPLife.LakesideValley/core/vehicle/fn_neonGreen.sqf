#include <macro.h>
/*
	Filename: fn_neonGreen.sqf
	author: tenshi
*/
private["_vehicle","_lightArea","_light"];

_vehicle = _this select 0;

	_light = [0.58, 4.8, 0]; // Green 
	
    _lightArea = createVehicle ["#lightpoint", (position _vehicle), [], 0, 'CAN_COLLIDE'];
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
	_lightArea setLightBrightness 0;			

    _lightArea lightAttachObject [_vehicle, [0,0,-0.8]];

while{ (alive _vehicle) } do  
{
		            _lightArea setLightBrightness 0.2;				
};

_lightArea setLightBrightness 0;	
deleteVehicle _lightArea;