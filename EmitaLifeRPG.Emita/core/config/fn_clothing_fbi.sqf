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
ctrlSetText[3103,"FBI Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{

		if(__GETC__(life_coplevel) > 6) then
		{
			_ret pushBack ["TRYK_U_pad_hood_odBK",nil,250];
			_ret pushBack ["TRYK_U_B_BLK",nil,250];
			_ret pushBack ["TRYK_U_B_3CD_BLK_BDUTshirt2",nil,250];
			_ret pushBack ["TRYK_U_B_MTP_BLK_CombatUniform",nil,250];
			_ret pushBack ["TRYK_U_B_PCUGs_gry",nil,250];
			_ret pushBack ["TRYK_U_B_PCUGs_OD",nil,250];
			_ret pushBack ["TRYK_U_B_wh_blk_Rollup_CombatUniform",nil,250];
			_ret pushBack ["TRYK_shirts_DENIM_BL",nil,250];
			_ret pushBack ["TRYK_shirts_DENIM_R",nil,250];
			_ret pushBack ["KAEL_SUITS_BR_F15",nil,250];
		};
	};
	
	//Hats
	case 1:
	{
		if(__GETC__(life_coplevel) > 6) then
		{
			_ret pushBack ["TRYK_ESS_CAP",nil,120];
			_ret pushBack ["TRYK_H_PASGT_BLK",nil,100];
			_ret pushBack ["KAEL_SUITS_BR_F15",nil,100];
			_ret pushBack ["H_Watchcap_blk",nil,100];
        };
    };  
	
	//Glasses
	case 2:
	{ 
	    _ret = 
		[
            ["TRYK_US_ESS_Glasses_BLK",nil,55],
			["TRYK_US_ESS_Glasses",nil,55]
		];
	};
	
	//Vest
	case 3:
	{

		if(__GETC__(life_coplevel) > 6) then
		{
			_ret pushBack ["TRYK_V_ArmorVest_HRT2_B",nil,500];
			_ret pushBack ["TRYK_V_ArmorVest_HRT_B",nil,500];
			_ret pushBack ["TRYK_V_ArmorVest_HRT2_OD",nil,500];
			_ret pushBack ["TRYK_V_ArmorVest_HRT_OD",nil,500];
			_ret pushBack ["TRYK_V_tacv1LC_FBI_BK",nil,500];
			_ret pushBack ["TRYK_V_tacv1LC_FBI2_BK",nil,500];
			_ret pushBack ["TRYK_V_tacv1_FBI_BK",nil,500];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["TRYK_B_tube_blk",nil,3500],
			["TRYK_B_Medbag_BK",nil,2500],
			["SERT_Carryblack",nil,2500],
			["SERT_Carrydigi",nil,2500],
			["SERT_Carrygreen",nil,2500]
		];
	};
};

_ret;