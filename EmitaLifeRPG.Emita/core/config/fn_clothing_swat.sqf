#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"SWAT Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{

		_ret = 
		[
            ["CG_SERT2","SWAT Black",1000],
            ["CG_SERT5","SWAT Brown",1000],
            ["CG_SERT7","SWAT Urban",1000],
            ["CG_SERT6","SWAT Sea",1000],
            ["CG_SERT3","SWAT Green",1000]
		];
	};
	
	//Hats
	case 1:
	{
		_ret = 
		[
            ["CG_sert_H2","SWAT Black",200],
            ["CG_sert_H5","SWAT Brown",200],
            ["CG_sert_H7","SWAT Urban",200],
            ["CG_sert_H6","SWAT Sea",200],
            ["CG_sert_H3","SWAT Green",200]
		];
    };  
	
	//Glasses
	case 2:
	{ 
	    _ret = 
		[
            ["TRYK_US_ESS_Glasses_BLK",nil,100],
            ["TRYK_US_ESS_Glasses",nil,100],
            ["TRYK_kio_balaclava_ear",nil,100],
            ["TRYK_kio_balaclava_BLK_ear",nil,100],
            ["Balaclava_Blk_humour",nil,100],
            ["Balaclava_Blk_Plain",nil,100],
            ["Balaclava_Blk_Warthog",nil,100]
	    ];
	};
	
	//Vest
	case 3:
	{

		_ret = 
		[
            ["kaelvest_sert2_Fix","SWAT Black",1000],
            ["kaelvest_sert5_Fix","SWAT Brown",1000],
            ["kaelvest_sert7_Fix","SWAT Urban",1000],
            ["kaelvest_sert6_Fix","SWAT Sea",1000],
            ["kaelvest_sert3_Fix","SWAT Green",1000]
		];
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["cg_invisbp",nil,800]
		];
	};
};

_ret;