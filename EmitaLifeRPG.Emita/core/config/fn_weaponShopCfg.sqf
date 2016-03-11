#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Altis Cop Shop", //Copweaponshop
					[
						["RH_sbr9",nil,1800],
						["CUP_17Rnd_9x19_glock17",nil,50],
						["AG_MP9",nil,1800],
						["30Rnd_45ACP_Mag_SMG_01",nil,50],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["hgun_P07_F",nil,7500],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["muzzle_snds_L",nil,650],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["tf_anprc152_2",nil,100]
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["tf_anprc152_2",nil,100],
						["B_FieldPack_ocamo",nil,3000]
					]
				];
			};
		};
	};

	case "rifle_vault":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 2): {"You are not at a patrol officer rank!"};
			default
			{
				["Assault Rifle Vault", //PatrolWeaponShop
					[
						["hlc_rifle_augsr_b",nil,5000],
						["hlc_30Rnd_556x45_B_AUG",nil,100],
						["RH_M4sbr_b",nil,4000],
						["RH_30Rnd_556x45_M855A1",nil,100],
						["RH_M4_moe_b",nil,4500],
						["RH_30Rnd_556x45_M855A1",nil,100],
						["RH_m4",nil,5000],
						["RH_30Rnd_556x45_M855A1",nil,100],
						["RH_M16A6",nil,5000],
						["RH_30Rnd_68x43_FMJ",nil,100],
						["SMG_02_ACO_F",nil,30000],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
						["muzzle_snds_H",nil,2750],
						["30Rnd_65x39_caseless_mag",nil,130],
						["30Rnd_9x21_Mag",nil,250]
					]
				];
			};
		};
	};

	case "swat_shop":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 3): {"You are not SERT or DA!"};
			default
			{
				["SWAT Shop", //Sergeant Weapon Shop
					[
						["RH_M4sbr_b",nil,4000],
						["RH_30Rnd_556x45_M855A1",nil,100],
						["RH_M4_moe_b",nil,4500],
						["RH_30Rnd_556x45_M855A1",nil,100],
						["RH_m4",nil,5000],
						["RH_30Rnd_556x45_M855A1",nil,100],
						["RH_M16A6",nil,5000],
						["RH_30Rnd_68x43_FMJ",nil,100],
						["SMG_02_ACO_F",nil,30000],
						["HandGrenade_Stone","Flashbang",700],
						["MineDetector",nil,1000],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
						["muzzle_snds_H",nil,2750],
						["30Rnd_65x39_caseless_mag",nil,130],
						["30Rnd_9x21_Mag",nil,250]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["CUP_arifle_AK47",nil,200000],
						["CUP_30Rnd_762x39_AK47_M",nil,1500],
						["A3L_AKS74",nil,220000],
						["A3L_AK47sMag",nil,1500],
						["CUP_arifle_AKS_Gold",nil,250000],
						["CUP_30Rnd_762x39_AK47_M",nil,1500],
						["CUP_arifle_Sa58RIS1_des",nil,250000],
						["CUP_30Rnd_Sa58_M_TracerG",nil,1500],
						["CUP_optic_Kobra",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["30Rnd_9x21_Mag",nil,200],
						["tf_fadak",nil,125],
						["30Rnd_556x45_Stanag",nil,300]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["RH_m9",nil,35000],
						["RH_m9c",nil,35000],
						["RH_15Rnd_9x19_M9",nil,500],
						["RH_deagle",nil,55000],
						["RH_Deagleg",nil,55000],
						["RH_Deaglem",nil,55000],
						["RH_Deagles",nil,55000],
						["RH_7Rnd_50_AE",nil,1000],
						["RH_kimber",nil,45000],
						["RH_kimber_nw",nil,45000],
						["RH_7Rnd_45cal_m1911",nil,800],
						["RH_bull",nil,55000],
						["RH_bullb",nil,55000],
						["RH_6Rnd_454_Mag",nil,1500],
						["CUP_hgun_Compact",nil,45000],
						["CUP_18Rnd_9x19_Compact",nil,800],
						["CUP_hgun_Phantom",nil,45000],
						["CUP_18Rnd_9x19_Phantom",nil,800],
						["CUP_hgun_Duty",nil,45000],
						["16Rnd_9x21_Mag",nil,800]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["CUP_arifle_AK47",nil,260000],
						["CUP_30Rnd_762x39_AK47_M",nil,500],
						["CUP_arifle_AK74M",nil,260000],
						["CUP_30Rnd_545x39_AK_M",nil,500],
						["A3L_AK47sgold",nil,350000],
						["A3L_AK47sMag",nil,700],
						["A3L_AKS74",nil,270000],
						["A3L_AK47sMag",nil,500],
						["CUP_arifle_Sa58RIS2",nil,300000],
						["CUP_30Rnd_Sa58_M",nil,5000],
						["CUP_optic_PSO_1",nil,1000],
						["CUP_optic_Kobra",nil,100]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300],
				["tf_fadak",nil,300]
			]
		];
	};

    case "fbi_wep":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 5): {"You are not FBI"};
			default
			{
				["FBIWeaponShop", //FBIWeaponShop
					[   
						["tf_anprc152_2",nil,100],
						["Laserdesignator",nil,100],
						["hlc_rifle_awmagnum_BL",nil,15000],
						["hlc_5rnd_300WM_FMJ_AWM",nil,500],
						["RH_leu_mk4",nil,200],
						["CUP_srifle_AS50",nil,15000],
						["CUP_5Rnd_127x99_as50_M",nil,1000],
						["FHQ_acc_ANPEQ15_black",nil,1000],
						["RH_pas13cl",nil,100],
						["CUP_srifle_M110",nil,10000],
						["CUP_20Rnd_762x51_B_M110",nil,600],
						["CUP_muzzle_snds_M110",nil,1000],
						["FHQ_acc_ANPEQ15",nil,100],
						["RH_anpvs10",nil,1000],
						["CUP_bipod_VLTOR_Modpod",nil,100],
						["CUP_arifle_Mk16_CQC_SFG",nil,10000],
						["CUP_arifle_Mk16_STD_FG",nil,10000],
						["CUP_arifle_Mk16_SV",nil,10000],
						["CUP_arifle_Mk20",nil,10000],
						["CUP_30Rnd_556x45_Stanag",nil,650],
						["CUP_20Rnd_762x51_B_SCAR",nil,650],
						["RH_SR25EC",nil,8000],
						["RH_20Rnd_762x51_M80A1",nil,500],
						["RH_m110sd",nil,350],
						["FHQ_acc_ANPEQ15_black",nil,350],
						["RH_SFM952V",nil,350],
						["RH_eothhs1",nil,350],
						["CUP_arifle_CZ805_B",nil,7000],
						["CUP_20Rnd_762x51_CZ805B",nil,450],
						["muzzle_snds_H",nil,250],
						["RH_peq15b",nil,250],
						["FHQ_optic_AC12136",nil,250],
						["RH_Hk416",nil,7500],
						["RH_30Rnd_556x45_M855A1",nil,500],
						["RH_peq15b",nil,250],
						["RH_qdss_nt4",nil,200],
						["FHQ_optic_AC11704",nil,2500]
					]
				];
			};
		};
	};

	case "bloods":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are a cop!"};
			case (__GETC__(life_donatorlevel) < 1): {"You are not blood!"};
			default
			{
				["BloodsWeaponShop", //BloodsWeaponShop
					[						
						["CUP_arifle_AK47",nil,60000],
						["CUP_30Rnd_762x39_AK47_M",nil,500],
						["CUP_arifle_AK74M",nil,70000],
						["CUP_30Rnd_545x39_AK_M",nil,500],
						["A3L_AK47sgold",nil,100000],
						["A3L_AK47sMag",nil,700],
						["A3L_AKS74",nil,80000],
						["A3L_AK47sMag",nil,500],
						["CUP_arifle_Sa58RIS2",nil,70000],
						["CUP_30Rnd_Sa58_M",nil,5000],
						["CUP_optic_PSO_1",nil,1000],
						["CUP_optic_Kobra",nil,100]
					]
				];
			};
		};
	};

	case "crips":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are a cop!"};
			case (__GETC__(life_donatorlevel) < 2): {"You are not at a crip!"};
			default
			{
				["CripsWeaponShop", //CripsWeaponShop
					[
						["CUP_arifle_AK47",nil,60000],
						["CUP_30Rnd_762x39_AK47_M",nil,500],
						["CUP_arifle_AK74M",nil,70000],
						["CUP_30Rnd_545x39_AK_M",nil,500],
						["A3L_AK47sgold",nil,100000],
						["A3L_AK47sMag",nil,700],
						["A3L_AKS74",nil,80000],
						["A3L_AK47sMag",nil,500],
						["CUP_arifle_Sa58RIS2",nil,70000],
						["CUP_30Rnd_Sa58_M",nil,5000],
						["CUP_optic_PSO_1",nil,1000],
						["CUP_optic_Kobra",nil,100]
					]
				];
			};
		};
	};
};