/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Bruce's Outback Outfits"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[

		    ["A3L_Poop2day",nil,1100],
		    ["A3L_CivShirtNikeDoIt2",nil,1100],
	    	["A3L_CivShirtObey",nil,1100],
	     	["BlGyBr_uni",nil,1100],
	    	["checkered_uni",nil,1100],
	    	["A3LCivPoloGreenBlack",nil,1100],
	    	["MotherTrucker_uni",nil,1100],
	    	["RdGyBr_uni",nil,1100],
	    	["sohoku_uni",nil,1100],
	    	["A3LCivPoloUS",nil,1100],
	    	["WhGyBr_uni",nil,1100],
	    	["A3L_Priest_Uniform",nil,1100],
	    	["A3L_CivShirtSalt",nil,1100],
	    	["A3L_Suit_Uniform",nil,10000],
	    	["A3L_Suitpink",nil,10000],
	    	["A3L_CivShirtSuperman",nil,1100],
	    	["A3L_whitesuit",nil,10000],
	    	["A3L_Worker_Outfit",nil,1100],
	    	["KAEL_SUITS_BR_F25",nil,10000],
	    	["KAEL_SUITS_BR_F16",nil,10000],
	    	["KAEL_SUITS_BR_F15",nil,10000],
	    	["UVF_Soldier_Outfit_2",nil,1100],
	    	["IRA_Soldier_Outfit_2",nil,1100],
	    	["KAEL_SUITS_BR_F13",nil,10000],
	    	["RastaCiv",nil,1100],
	    	["SFG",nil,1100],
	    	["UVF_Soldier_Outfit_7",nil,1100],
	    	["IRA_Soldier_Outfit_9",nil,1100],
	    	["TRYK_C_AOR2_T",nil,10000],
	    	["TRYK_U_B_PCUHsW3nh",nil,10000],
	    	["TRYK_U_B_PCUHsW3",nil,10000],
	     	["TRYK_U_B_BLKBLK_R_CombatUniform",nil,10000],
		    ["TRYK_U_B_BLKOCP_R_CombatUniformTshirt",nil,10000],
		    ["TRYK_U_B_BLKTANR_CombatUniformTshirt",nil,10000],
		    ["TRYK_U_B_GRTANR_CombatUniformTshirt",nil,10000],
	     	["TRYK_U_B_fleece",nil,10000],
		    ["TRYK_U_B_MARPAT_Wood",nil,10000],
		    ["TRYK_U_B_OD_OD_R_CombatUniform",nil,10000],
		    ["TRYK_U_Bts_PCUs",nil,10000],
	    	["TRYK_U_B_PCUHs",nil,10000],
	     	["TRYK_shirts_DENIM_BK_Sleeve",nil,1100],
		    ["TRYK_shirts_DENIM_BL_Sleeve",nil,1100],
		    ["TRYK_shirts_DENIM_R_Sleeve",nil,1100],
		    ["TRYK_shirts_BLK_PAD_RED2",nil,1100],
	    	["TRYK_U_pad_hood_Cl_blk",nil,1100],
	     	["TRYK_hoodie_Wood",nil,1100],
		    ["KAEL_SUITS_BR_F",nil,10000],
		    ["A3L_Farmer_Outfit",nil,10000]
	    ];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Capbw_pmc",250], 
			["A3L_gangster_hat",1000],
			["A3L_Legoman",1000],
			["A3L_Mask",nil,1000],
			["H_Booniehat_mcamo",nil,135],
			["cowboyhat",500],
			["A3L_crown",1000],
			["A3L_longhairblack",525],
			["A3L_longhairblond",525],
			["Masque_Aubrey",nil,1250],
			["Masque_Chains",nil,1250],
			["Masque_Dallas",nil,1250],
			["Masque_forceAlpha",nil,1250],
			["Masque_Hockey",nil,1250],
			["Masque_Hoxton",nil,1250],
			["Masque_Religieuse",nil,1250],
			["H_Cap_grn",nil,150],
			["H_Cap_grn_BI",nil,150],
			["H_Cap_oli",nil,150],
			["H_Cap_red",nil,150],
			["A3L_mexicanhat",nil,150],
			["ALE_H_NewEra_Lakers",nil,325],
			["ALE_H_NewEra_Cyan",nil,325],
			["ALE_H_NewEra_Black",nil,325],
			["ALE_H_NewEra_Superman",nil,325],
			["A3L_sombrero",nil,250],
			["TRYK_Kio_Balaclava",nil,1500],
			["TRYK_H_Bandana_H",nil,550],
			["TRYK_R_CAP_BLK",nil,450],
			["TRYK_R_CAP_TAN",nil,450],
			["TRYK_R_CAP_OD_US",nil,450],
			["TRYK_H_woolhat",nil,150],
			["A3L_russianhat",nil,350],
			["tiara",nil,250]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Aviator",nil,100],
			["G_Bandanna_beast",nil,150],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["G_Bandanna_aviator",nil,150],
			["G_Bandanna_blk",nil,150],
			["G_Bandanna_khk",nil,150],
			["G_Bandanna_oli",nil,150],
			["SFG_Tac_smallBeardB",nil,500],
			["SFG_Tac_smallBeardD",nil,500],
			["SFG_Tac_smallBeardG",nil,500],
			["SFG_Tac_smallBeardO",nil,500],
			["SFG_Tac_BeardB",nil,500],
			["SFG_Tac_BeardD",nil,500],
			["SFG_Tac_BeardG",nil,500],
			["SFG_Tac_BeardO",nil,500],
			["SFG_Tac_chinlessbB",nil,500],
			["SFG_Tac_chinlessbD",nil,500],
			["SFG_Tac_chinlessbG",nil,500],
			["SFG_Tac_chinlessbO",nil,500],
			["SFG_Tac_moustacheB",nil,500],
			["SFG_Tac_moustacheD",nil,500],
			["SFG_Tac_moustacheG",nil,500],
			["SFG_Tac_moustacheO",nil,500],
			["SFG_Tac_ChopsB",nil,500],
			["SFG_Tac_ChopsD",nil,500],
			["SFG_Tac_ChopsG",nil,500],
			["SFG_Tac_ChopsO",nil,500],
			["A3L_FatHead",nil,500]
		];
	};
	
	//Vest
	case 3:
	{
		[
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_Kitbag_cbr",nil,4500],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_khk",nil,5000],
			["A3L_Digiciv",nil,5000],
			["A3L_Hashciv",nil,5000],
			["TRYK_B_Coyotebackpack_BLK",nil,5000],
			["A3L_Pinkciv",nil,5000]
	    ];
	};
};