#include <macro.h>
/*
	Filename: fn_neonMulti.sqf
	author: tenshi
*/
private["_vehicle","_lightArea","_light"];

_vehicle = _this select 0;

	_light = [0.5, 0.5, 5];	//Blue  
	
    _lightArea = createVehicle ["#lightpoint", (position _vehicle), [], 0, 'CAN_COLLIDE'];
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
	_lightArea setLightBrightness 0;			

    _lightArea lightAttachObject [_vehicle, [0,0,-0.8]];

while{ (alive _vehicle) } do  
{
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.05;	
	sleep 0.25;
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.1;	
	sleep 0.25;	
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.15;	
	sleep 0.25;		
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.2;	
	sleep 0.25;	
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.25;	
	sleep 0.25;
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.2;	
	sleep 0.25;
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.15;	
	sleep 0.25;	
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.1;	
	sleep 0.25;		
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.05;	
	sleep 0.25;	
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0;	
	sleep 0.25;	

	_light = [5, 5, 5];	//White	

    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.05;	
	sleep 0.25;
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.1;	
	sleep 0.25;	
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.15;	
	sleep 0.25;		
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.2;	
	sleep 0.25;	
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.25;	
	sleep 0.25;
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.2;	
	sleep 0.25;
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.15;	
	sleep 0.25;	
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.1;	
	sleep 0.25;		
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.05;	
	sleep 0.25;	
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0;	
	sleep 0.25;	

	_light = [5, 0.5, 0.5];	//Red
	
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.05;	
	sleep 0.25;
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.1;	
	sleep 0.25;	
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.15;	
	sleep 0.25;		
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.2;	
	sleep 0.25;	
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.25;	
	sleep 0.25;
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.2;	
	sleep 0.25;
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.15;	
	sleep 0.25;	
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.1;	
	sleep 0.25;		
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.05;	
	sleep 0.25;	
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0;	
	sleep 0.25;		
	
	_light = [2.45, 0.94, 3.12];	//Purple
	
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.05;	
	sleep 0.25;
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.1;	
	sleep 0.25;	
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.15;	
	sleep 0.25;		
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.2;	
	sleep 0.25;	
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.25;	
	sleep 0.25;
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.2;	
	sleep 0.25;
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.15;	
	sleep 0.25;	
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.1;	
	sleep 0.25;		
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.05;	
	sleep 0.25;	
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0;	
	sleep 0.25;		
	
	_light = [5, 5, 0];		//Yellow	

    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.05;	
	sleep 0.25;
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.1;	
	sleep 0.25;	
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.15;	
	sleep 0.25;		
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.2;	
	sleep 0.25;	
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.25;	
	sleep 0.25;
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.2;	
	sleep 0.25;
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.15;	
	sleep 0.25;	
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.1;	
	sleep 0.25;		
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.05;	
	sleep 0.25;	
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0;	
	sleep 0.25;		
	
	_light = [0.58, 4.8, 0];	// Green
	
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.05;	
	sleep 0.25;
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.1;	
	sleep 0.25;	
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.15;	
	sleep 0.25;		
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.2;	
	sleep 0.25;	
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.25;	
	sleep 0.25;
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.2;	
	sleep 0.25;
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.15;	
	sleep 0.25;	
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.1;	
	sleep 0.25;		
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0.05;	
	sleep 0.25;	
    _lightArea setLightColor _light;
    _lightArea setLightAmbient _light;
    _lightArea setLightBrightness 0;
	sleep 0.25;	
};

_lightArea setLightBrightness 0;	
deleteVehicle _lightArea;