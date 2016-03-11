#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		_return = [
			["C_Offroad_01_F",10000],
			["I_Truck_02_medical_F",25000],
			["O_Truck_03_medical_F",45000],
			["B_Truck_01_medical_F",60000]
		];
	};
	
	case "med_air_hs": {
		_return = [
			["B_Heli_Light_01_F",50000],
			["O_Heli_Light_02_unarmed_F",75000]
		];
	};
	
	case "civ_car":
	{
		_return = 
		[
			["Tal_Maserati_Black",45000],
			["Tal_Maserati_Blue",45000],
			["Tal_Maserati_Green",45000],
			["Tal_Maserati_Grey",45000],
			["Tal_Maserati_LightBlue",45000],
			["Tal_Maserati_Lime",45000],
			["Tal_Maserati_Orange",45000],
			["Tal_Maserati_Pink",45000],
			["Tal_Maserati_Purple",45000],
			["Tal_Maserati_Red",45000],
			["Tal_Maserati_White",45000],
			["Tal_Maserati_Yellow",45000],
			["A3L_JeepGreenBlack",40000],
			["A3L_JeepGreenTan",40000],
			["A3L_JeepGrayBlack",40000],
			["A3L_JeepGrayTan",40000],
			["A3L_JeepTanTan",40000],
			["A3L_JeepRedBlack",40000],
			["A3L_JeepRedTan",40000],
			["A3L_JeepTanBlack",40000],
			["A3L_JeepWhiteBlack",40000],
			["A3L_Jeep",40000],
			["A3L_GMC_Van_Black",50000],
			["A3L_GMC_Van_DarkBlue",50000],
			["A3L_GMC_Van_Grey",40000],
			["A3L_GMC_Van_Orange",40000],
			["A3L_GMC_Van_Pink",40000],
			["A3L_GMC_Van_Purple",40000],
			["A3L_GMC_Van_Red",40000],
			["AM_Escalade_Black",70000],
			["AM_Escalade_Blue",70000],
			["AM_Escalade_Green",70000],
			["AM_Escalade_Orange",70000],
			["AM_Escalade_Pink",70000],
			["AM_Escalade_Purple",70000],
			["AM_Escalade_Red",70000],
			["AM_Escalade_Silver",70000],
			["AM_Escalade_Taxi",70000],
			["AM_Escalade_White",70000],
			["AM_Escalade_Yellow",70000],
			["S_Rangerover_Black",60000],
			["S_Rangerover_Blue",60000],
			["S_Rangerover_Green",60000],
			["S_Rangerover_Grey",60000],
			["S_Rangerover_Orange",60000],
			["S_Rangerover_Purple",60000],
			["S_Rangerover_Red",60000],
			["S_Rangerover_White",60000],
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000]
		];
	};
	
    case "dodge_shop":
	{
		_return = [
			["Quiet_1969charger_blanche_f",100000],
			["Mrshounka_a3_dodge15_civ",150000],
			["Quiet_dodge_15_noir_f",150000],
			["Quiet_dodge_15_bleu_f",150000],
			["Quiet_dodge_15_rouge_f",150000],
			["Quiet_dodge_15_blanche_f",150000]
		];
	};

    case "lambo_shop":
	{
		_return = [
			["CG_Lamborghini_Aventador_Black",300000],
			["CG_Lamborghini_Aventador_Blue",300000],
			["CG_Lamborghini_Aventador_Green",300000],
			["CG_Lamborghini_Aventador_Orange",300000],
			["CG_Lamborghini_Aventador_Purple",300000],
			["CG_Lamborghini_Aventador_Red",300000],
			["CG_Lamborghini_Aventador_White",300000],
			["ivory_lp560",350000],
			["mrshounka_huracan_c",450000],
			["Mrshounka_veneno_c",650000]
		];
	};

	case "chevy_shop":
	{
		_return = [
			["shounka_avalanche",200000],
			["shounka_avalanche_noir",200000],
			["shounka_avalanche_bleufonce",200000],
			["shounka_avalanche_rouge",200000],
			["shounka_avalanche_jaune",200000],
			["shounka_avalanche_rose",200000],
			["shounka_avalanche_grise",200000],
			["shounka_avalanche_violet",200000],
			["shounka_avalanche_orange",200000]
		];
	};

	case "porsche_shop":
	{
		_return = [
			["Mrshounka_cayenne_p_civ",120000],
			["Mrshounka_cayenne_p_noir",120000],
			["Mrshounka_cayenne_p_bleufonce",120000],
			["Mrshounka_cayenne_p_grise",120000],
			["Mrshounka_cayenne_p_orange",120000],
			["Mrshounka_cayenne_p_rouge",120000],
			["Mrshounka_cayenne_p_rose",120000],
			["Mrshounka_cayenne_p_violet",120000],
			["Mrshounka_cayenne_p_jaune",120000],
			["shounka_porsche911",200000]
		];
	};

	case "lykan_shop":
	{
		_return = [
			["Mrshounka_lykan_c",2800000],
			["Mrshounka_lykan_c_noir",2800000],
			["Mrshounka_lykan_c_bleufonce",2800000],
			["Mrshounka_lykan_c_rouge",2800000],
			["Mrshounka_lykan_c_jaune",2800000],
			["Mrshounka_lykan_c_rose",2800000],
			["Mrshounka_lykan_c_grise",2800000],
			["Mrshounka_lykan_c_violet",2800000],
			["Mrshounka_lykan_c_orange",2800000]
		];
	};

	case "veyron_shop":
	{
		_return = [
			["A3L_Veyron",2800000],
			["A3L_Veyron_black",2800000],
			["A3L_Veyron_red",2800000],
			["A3L_Veyron_white",2800000],
			["A3L_Veyron_orange",2800000],
			["A3L_Veyron_darkred",2800000],
			["A3L_Veyron_silver",2800000],
			["A3L_Veyron_darkblue",2800000],
			["A3L_Veyron_green",2800000],
			["A3L_Veyron_darkblue",2800000],
			["A3L_Veyron_grey",2800000],
			["A3L_Veyron_pink",2800000],
			["A3L_Veyron_burgundy",2800000],
			["A3L_Veyron_purple",2800000]
		];
	};

	case "mclaren_shop":
	{
		_return = [
			["S_McLarenP1_Black",3300000],
			["S_McLarenP1_Blue",3300000],
			["S_McLarenP1_Orange",3300000],
			["S_McLarenP1_Silver",3300000],
			["S_McLarenP1_White",3300000],
			["S_McLarenP1_Yellow",3300000]
		];
	};

	case "audi_shop":
	{
		_return = [
			["Quiet_v2_r8plus_noir_f",1800000],
			["Quiet_v2_r8plus_bleu_f",1800000],
			["Quiet_v2_r8plus_chrome_f",1800000],
			["Quiet_v2_r8plus_rouge_f",1800000],
			["Quiet_v2_r8plus_blanche_f",1800000],
			["shounka_a3_audiq7_noir",800000],
			["shounka_a3_audiq7_bleu",800000],
			["shounka_a3_audiq7_rouge",800000],
			["shounka_a3_audiq7_jaune",800000],
			["shounka_a3_audiq7_rose",800000],
			["shounka_a3_audiq7_grise",800000],
			["shounka_a3_audiq7_violet",800000],
			["shounka_a3_audiq7_orange",800000],
			["A3L_Audi_RS4_White",800000],
			["A3L_Audi_RS4_Black",800000],
			["A3L_Audi_RS4_DarkBlue",800000],
			["A3L_Audi_RS4_Red",800000],
			["A3L_Audi_RS4_Yellow",800000],
			["A3L_Audi_RS4_Pink",800000],
			["A3L_Audi_RS4_Grey",800000],
			["A3L_Audi_RS4_Purple",800000],
			["A3L_Audi_RS4_orange",800000]
		];
	};

	case "ford_shop":
	{
		_return = [
			["A3L_Ford_Raptor_White",180000],
			["A3L_Ford_Raptor_Black",180000],
			["A3L_Ford_Raptor_DarkBlue",180000],
			["A3L_Ford_Raptor_Red",180000],
			["A3L_Ford_Raptor_Yellow",180000],
			["A3L_Ford_Raptor_Pink",180000],
			["A3L_Ford_Raptor_Grey",180000],
			["A3L_Ford_Raptor_Purple",180000],
			["A3L_Ford_Raptor_Orange",180000],
            ["Mrshounka_mustang_civ",150000],
			["Mrshounka_mustang_mat",150000],
			["Mrshounka_mustang_noir",150000],
			["Mrshounka_mustang_mat_n",150000],
			["Mrshounka_mustang_bleufonce",150000],
			["Mrshounka_mustang_mat_b",150000],
			["Mrshounka_mustang_rouge",150000],
			["Mrshounka_mustang_jaune",150000],
			["Mrshounka_mustang_rose",150000],
			["Mrshounka_mustang_grise",150000],
			["Mrshounka_mustang_violet",150000],
			["Mrshounka_mustang_orange",150000]
		];
	};

    case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",60000],
			["I_Truck_02_transport_F",75000],
			["I_Truck_02_covered_F",100000],
			["B_Truck_01_transport_F",275000],
			["O_Truck_03_transport_F",200000],
			["O_Truck_03_covered_F",250000],
			["B_Truck_01_box_F",350000]
		];	
	};
	
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",15000],
			["O_MRAP_02_F",150000],
			["B_Heli_Light_01_F",325000]
		];
		
		if(license_civ_rebel) then
		{
			_return pushBack
			["O_Truck_03_device_F",4500000],
			["B_G_Offroad_01_armed_F",750000];
		};
	};
	
	case "cop_car":
	{
		_return pushBack
		["RG_CVPI_PATROL",15000];
		_return pushBack
		["RG_CVPIS_PATROL",20000];
		_return pushBack
		["RG_CVPI_TRAFFIC",15000];
		_return pushBack
		["RG_CVPIS_TRAFFIC",20000];
		_return pushBack
		["RG_Taurus_Police",25000];
		_return pushBack
		["RG_Taurus_TTF",25000];
		_return pushBack
		["RG_CVPIS_MARSHAL",20000];
		_return pushBack
		["RG_Taurus_Marshal",25000];
		_return pushBack
		["AM_2015C_P_P",30000];
	};

	case "fbi_car":
	{
		_return pushBack
		["AM_Escalade_SERT",20000];
		_return pushBack
		["CG_Lamborghini_Aventador_Orange",20000];
		_return pushBack
		["ivory_isf",20000];
		_return pushBack
		["ivory_lfa",20000];
		_return pushBack
		["Mrshounka_lykan_c",20000];
		_return pushBack
		["S_McLarenP1_Black",20000];
		_return pushBack
		["DAR_ChargerPoliceHWPSLI",20000];
		_return pushBack
		["Mrshounka_veneno_c",20000];
	};

	case "swat_car":
	{
		_return pushBack
		["DAR_SWATPolice",15000];
		_return pushBack
		["cg_h2_sert",20000];
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",253000],
			["O_Heli_Light_02_unarmed_F",750000]
		];
	};
	
	case "cop_air":
	{
		_return pushBack
		["B_Heli_Light_01_F",75000];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack
			["B_Heli_Transport_01_F",200000];
		};
	};
	
	case "cop_airhq":
	{
		_return pushBack
		["B_Heli_Light_01_F",75000];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack
			["B_Heli_Transport_01_F",200000];
			_return pushBack
			["B_MRAP_01_hmg_F",750000];
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",100000]
		];
	};
};

_return;
