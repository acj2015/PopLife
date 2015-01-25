#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg-<DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Lakeside Police Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
    {
        _ret set[count _ret,["cadet_uni","Cadet Uniform",150]];
		_ret set[count _ret,["A3L_Police_Uniform","Police Uniform",500]];
		_ret set[count _ret,["A3L_Sheriff_Uniform","Sheriff Uniform",500]];
		_ret set[count _ret,["U_I_HeliPilotCoveralls","Combinaison",10000]];
		
        if(__GETC__(life_coplevel) > 1) then
        {
      
		   _ret set[count _ret,["fto_uni","Field Training Uniform",150]];
			_ret set[count _ret,["doj_uni","DoJ Uniform",150]];
			_ret set[count _ret,["FBI_uni","FBI Uniform",150]];
			_ret set[count _ret,["police_uni3","Chief Uniform",150]];
			_ret set[count _ret,["police_uni2","Sergeant Uniform",150]];
			_ret set[count _ret,["police_uni1","Officer Uniform",150]];
			_ret set[count _ret,["sheriff_uni1","Sheriff Uniform 1",150]];
			_ret set[count _ret,["sheriff_uni2","Sheriff Uniform 2",150]];			
        };
		
        if(__GETC__(life_coplevel) > 6) then
        {
            _ret set[count _ret,["swat_uni1","Uniforme SWAT",150]];
            _ret set[count _ret,["U_B_GhillieSuit","Guilli",150]];			
        };
		
    };
	
	//Hats
	case 1:
	{
		
		_ret set[count _ret,["A3L_sargehat",nil,50]];
		_ret set[count _ret,["H_Beret_blk_POLICE",nil,50]];
		_ret set[count _ret,["H_Beret_02",nil,50]];
		_ret set[count _ret,["H_Cap_press",nil,50]];		
		if(__GETC__(life_coplevel) > 2) then
		{
            _ret set[count _ret,["gign_helm","Casque lourd",150]];			
		};
		if(__GETC__(life_coplevel) > 5) then
        {
            _ret set[count _ret,["NVGoggles_mas_mask","Cagoule",150]];
        };
		
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			
			_ret set[count _ret,["A3L_policevest2","Black Police Vest (WF)",200]];
			_ret set[count _ret,["A3L_policevest1","Black Police Vest (YF) ",200]];
			_ret set[count _ret,["A3L_deptjvest1","DoJ Vest",200]];
			_ret set[count _ret,["A3L_fbivest1","FBI Vest",200]];
			_ret set[count _ret,["A3L_sheriffvest3","Sheriff Vest (Green)",200]];
			_ret set[count _ret,["A3L_sheriffvest2","Sheriff Vest (Grey)",200]];
			_ret set[count _ret,["A3L_sheriffvest1","Sheriff Vest (Tan)",200]];
			_ret set[count _ret,["A3L_rangervest1","Ranger Vest",200]];
			_ret set[count _ret,["V_Press_F","Press Vest",200]];					
		};

        if(__GETC__(life_coplevel) > 5) then
        {
            _ret set[count _ret,["rpima_BlackVest","Veste lourde",150]];
	        _ret set[count _ret,["SWATvest1","Veste SWAT",150]];		
        };
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Parachute",nil,100],						
			["B_FieldPack_blk",nil,800],
			["B_AssaultPack_blk",nil,800],
			["B_TacticalPack_blk",nil,1000]
		];
	};
};

_ret;