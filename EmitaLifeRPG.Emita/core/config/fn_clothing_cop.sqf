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
ctrlSetText[3103,"Police Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["A3L_PDOFC",nil,350];
			_ret pushBack ["A3L_PDCPL",nil,350];
			_ret pushBack ["A3L_PDSGT",nil,350];
			_ret pushBack ["A3L_PDLT",nil,350];
			_ret pushBack ["A3L_PDCPT",nil,350];
			_ret pushBack ["A3L_PDASSTCHIEF",nil,350];
			_ret pushBack ["A3L_PDCHIEF",nil,350];
			_ret pushBack ["A3L_EC_SOCDT",nil,350];
			_ret pushBack ["A3L_EC_SOOFC",nil,350];
			_ret pushBack ["A3L_EC_SOCPL",nil,350];
			_ret pushBack ["A3L_EC_SOSGT",nil,350];
			_ret pushBack ["A3L_EC_SOLT",nil,350];
			_ret pushBack ["A3L_EC_SOMAJ",nil,350];
			_ret pushBack ["A3L_EC_SOCPT",nil,350];
			_ret pushBack ["A3L_EC_SODS",nil,350];
			_ret pushBack ["A3L_EC_SOSHERIFF",nil,350];
			_ret pushBack ["A3L_SWAT_Clothes",nil,350];
			_ret pushBack ["TRYK_U_denim_hood_blk",nil,350];
			_ret pushBack ["U_B_CombatUniform_mcam_tshirt",nil,350];
			_ret pushBack ["U_B_CombatUniform_mcam_tshirt",nil,350];
			_ret pushBack ["U_B_CombatUniform_mcam_tshirt",nil,350];
		};
	};
	
	//Hats
	case 1:
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["CG_sert_H2",nil,100];
			_ret pushBack ["TRYK_ESS_CAP",nil,100];
			_ret pushBack ["TRYK_H_PASGT_BLK",nil,100];
			_ret pushBack ["CG_sert_H2",nil,100];
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
			_ret pushBack ["TRYK_V_tacv1_P_BK",nil,1500];
			_ret pushBack ["TRYK_V_tacv1LC_P_BK",nil,1500];
			_ret pushBack ["TRYK_V_tacv1LP_BK",nil,1500];
			_ret pushBack ["TRYK_V_tacv1LC_SRF_OD",nil,1500];
			_ret pushBack ["TRYK_V_tacv1LC_SRF_BK",nil,1500];
			_ret pushBack ["TRYK_V_tacv1LSRF_BK",nil,1500];
			_ret pushBack ["TRYK_V_tacv1_SHERIFF_BK",nil,1500];
			_ret pushBack ["TRYK_V_tacv1LSRF_BK",nil,1500];
			_ret pushBack ["TRYK_V_tacv1LSRF_BK",nil,1500];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["cg_invisbp",nil,800],
			["B_AssaultPack_blk",nil,800],
			["A3L_Blackciv",nil,800],
			["B_AssaultPack_cbr",nil,800],
			["B_Carryall_cbr",nil,800]
		];
	};
};

_ret;