private ["_tempArray","_InfPool","_MotPool","_ACHPool","_CHPool","_uavPool","_stPool","_shipPool","_diverPool","_crewPool","_heliCrew","_ArmPool"];
_faction=(_this select 0);
_type=(_this select 1);
_tempArray=[];

// EAST CSAT FACTION
	if (_faction==0) then {
	_InfPool=	["O_SoldierU_SL_F","O_soldierU_repair_F","O_soldierU_medic_F","O_sniper_F","O_Soldier_A_F","O_Soldier_AA_F","O_Soldier_AAA_F","O_Soldier_AAR_F","O_Soldier_AAT_F","O_Soldier_AR_F","O_Soldier_AT_F","O_soldier_exp_F","O_Soldier_F","O_engineer_F","O_engineer_U_F","O_medic_F","O_recon_exp_F","O_recon_F","O_recon_JTAC_F","O_recon_LAT_F","O_recon_M_F","O_recon_medic_F","O_recon_TL_F"];	
	_ArmPool=	["O_APC_Tracked_02_AA_F","O_APC_Tracked_02_cannon_F","O_APC_Wheeled_02_rcws_F","O_MBT_02_arty_F","O_MBT_02_cannon_F"];
	_MotPool=	["O_Truck_02_covered_F","O_Truck_02_transport_F","O_MRAP_02_F","O_MRAP_02_gmg_F","O_MRAP_02_hmg_F","O_Truck_02_medical_F"];
	_ACHPool=	["O_Heli_Attack_02_black_F","O_Heli_Attack_02_F"];
	_CHPool=	["O_Heli_Light_02_F","O_Heli_Light_02_unarmed_F"];
	_uavPool=	["O_UAV_01_F","O_UAV_02_CAS_F","O_UGV_01_rcws_F"];
	_stPool=	["O_Mortar_01_F","O_static_AT_F","O_static_AA_F"];
	_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
	_diverPool=	["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
	_crewPool=	["O_crew_F"];
	_heliCrew=	["O_helicrew_F","O_helipilot_F"];
};
// WEST NATO FACTION	
	if (_faction==1) then {
	_InfPool=	["B_sniper_F","B_Soldier_A_F","B_Soldier_AA_F","B_Soldier_AAA_F","B_Soldier_AAR_F","B_Soldier_AAT_F","B_Soldier_AR_F","B_Soldier_AT_F","B_soldier_exp_F","B_Soldier_F","B_engineer_F","B_medic_F","B_recon_exp_F","B_recon_F","B_recon_JTAC_F","B_recon_LAT_F","B_recon_M_F","B_recon_medic_F","B_recon_TL_F"];	
	_ArmPool=	["B_MBT_01_arty_F","B_MBT_01_cannon_F","B_MBT_01_mlrs_F","B_APC_Tracked_01_AA_F","B_APC_Tracked_01_CRV_F","B_APC_Tracked_01_rcws_F","B_APC_Wheeled_01_cannon_F","B_MBT_02_cannon_F"];
	_MotPool=	["B_Truck_01_covered_F","B_Truck_01_transport_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F","B_Truck_01_medical_F"];
	_ACHPool=	["B_Heli_Attack_01_F","B_Heli_Light_01_armed_F"];
	_CHPool=	["B_Heli_Light_01_F","B_Heli_Transport_01_camo_F","B_Heli_Transport_01_F"];
	_uavPool=	["B_UAV_01_F","B_UAV_01_CAS_F","B_UGV_01_rcws_F"];
	_stPool=	["B_Mortar_01_F","B_static_AT_F","B_static_AA_F"];
	_shipPool=	["B_Boat_Armed_01_minigun_F","B_Boat_Transport_01_F"];
	_diverPool=	["B_diver_exp_F","B_diver_F","B_diver_TL_F"];
	_crewPool=	["B_crew_F"];
	_heliCrew=	["B_helicrew_F","B_helipilot_F"];
};
// INDEPENDENT AAF FACTION	
	if (_faction==2) then {
	_InfPool=	["I_engineer_F","I_Soldier_A_F","I_Soldier_AA_F","I_Soldier_AAA_F","I_Soldier_AAR_F","I_Soldier_AAT_F","I_Soldier_AR_F","I_Soldier_AT_F","I_Soldier_exp_F","I_soldier_F","I_Soldier_GL_F","I_Soldier_repair_F"];	
	_ArmPool=	["I_APC_Wheeled_03_cannon_F"];
	_MotPool=	["I_MRAP_03_F","I_MRAP_03_gmg_F","I_MRAP_03_hmg_F","I_Truck_02_medical_F"];
	_ACHPool=	[];
	_CHPool=	["I_Heli_Transport_02_F","B_Heli_Light_02_unarmed_F"];
	_uavPool=	["I_UAV_01_F","I_UAV_02_CAS_F","I_UGV_01_rcws_F"];
	_stPool=	["I_Mortar_01_F"];
	_shipPool=	["I_Boat_Transport_01_F","I_G_Boat_Transport_01_F","I_Boat_Armed_01_minigun_F"];
	_diverPool=	["I_diver_exp_F","I_diver_F","I_diver_TL_F"];
	_crewPool=	["I_crew_F"];
	_heliCrew=	["I_helicrew_F","I_helipilot_F"];
};
// CIVILIAN	
	if (_faction==3) then {
	_InfPool=	["C_man_1","C_man_1_1_F","C_man_1_2_F","C_man_1_3_F","C_man_hunter_1_F","C_man_p_beggar_F","C_man_p_beggar_F_afro","C_man_p_fugitive_F","C_man_p_shorts_1_F","C_man_pilot_F","C_man_polo_1_F","C_man_polo_2_F","C_man_polo_3_F","C_man_polo_4_F","C_man_polo_5_F","C_man_polo_6_F","C_man_shorts_1_F","C_man_shorts_2_F","C_man_shorts_3_F","C_man_shorts_4_F","C_man_w_worker_F"];	
	_ArmPool=	["C_Hatchback_01_F","C_Hatchback_01_sport_F","C_Quadbike_01_F","C_SUV_01_F","C_Van_01_transport_F","C_Van_01_box_F"];
	_MotPool=	["C_Hatchback_01_F","C_Hatchback_01_sport_F","C_Quadbike_01_F","C_SUV_01_F","C_Van_01_transport_F","C_Van_01_box_F"];
	_ACHPool=	[];
	_CHPool=	[];
	_uavPool=	[];
	_stPool=	[];
	_shipPool=	["C_Boat_Civil_01_F","C_Boat_Civil_01_rescue_F","C_Boat_Civil_04_F","C_Rubberboat"];
	_diverPool=	[];
	_crewPool=	["C_man_1"];
	_heliCrew=	["C_man_1","C_man_1"];
};
// WEST FIA FACTION
	if (_faction==4) then {
	_InfPool=	["B_G_engineer_F","B_G_medic_F","B_G_officer_F","B_G_Soldier_A_F","B_G_Soldier_AR_F","B_G_Soldier_exp_F","B_G_Soldier_F","B_G_Soldier_GL_F","B_G_Soldier_LAT_F","B_G_Soldier_lite_F","B_G_Soldier_M_F","B_G_Soldier_SL_F","B_G_Soldier_TL_F"];	
	_ArmPool=	[];
	_MotPool=	["B_G_Offroad_01_F","B_G_Offroad_01_armed_F","B_G_Van_01_transport_F","B_G_Van_01_fuel_F"];
	_ACHPool=	[];
	_CHPool=	[];
	_uavPool=	[];
	_stPool=	["B_G_Mortar_01_F"];
	_shipPool=	["B_G_Boat_Transport_01_F"];
	_diverPool=	[];
	_crewPool=	[];
	_heliCrew=	[];
};
// TAKISTAN MILITIA FACTION
	if (_faction==5) then {
	_InfPool=	["CUP_O_TK_INS_Soldier_TL","CUP_O_TK_INS_Soldier","CUP_O_TK_INS_Soldier_MG","CUP_O_TK_INS_Soldier_GL","CUP_O_TK_INS_Soldier_AT","CUP_O_TK_INS_Soldier_FNFAL","CUP_O_TK_INS_Soldier_AR","CUP_O_TK_INS_Sniper","CUP_O_TK_INS_Guerilla_Medic","CUP_O_TK_INS_Bomber","CUP_O_TK_INS_Commander","CUP_O_TK_INS_Soldier_Enfield"];	
	_ArmPool=	["CUP_O_T55_TK","CUP_O_BTR40_MG_TKM"];
	_MotPool=	["CUP_O_LR_SPG9_TKM","CUP_O_LR_MG_TKM","CUP_O_LR_Transport_TKM","CUP_O_UAZ_Open_TKA","CUP_O_UAZ_MG_TKA","CUP_O_Ural_ZU23_TKM","CUP_O_V3S_Open_TKM"];
	_ACHPool=	[];
	_CHPool=	[];
	_uavPool=	[];
	_stPool=	["CUP_O_DSHKM_TK_INS","CUP_O_SPG9_TK_INS"];
	_shipPool=	[];
	_diverPool=	["CUP_O_TK_INS_Mechanic"];
	_crewPool=	["CUP_O_TK_INS_Mechanic"];
	_heliCrew=	["CUP_O_TK_INS_Mechanic"];
	};
	
// TAKISTAN ARMY FACTION 	
	if (_faction==6) then {
	_InfPool=	["CUP_O_TK_Spotter","CUP_O_TK_Engineer","CUP_O_TK_Commander","CUP_O_TK_Officer","CUP_O_TK_Soldier_SL","CUP_O_TK_Medic","CUP_O_TK_Soldier_AR","CUP_O_TK_Soldier_MG","CUP_O_TK_Soldier_LAT","CUP_O_TK_Soldier_AT","CUP_O_TK_Soldier_AMG","CUP_O_TK_Soldier_Backpack","CUP_O_TK_Soldier_GL","CUP_O_TK_Soldier"];	
	_ArmPool=	["CUP_O_T55_TK","CUP_O_T34_TKA","CUP_O_T72_TKA","CUP_O_BRDM2_ATGM_TKA","CUP_O_BRDM2_TKA","CUP_O_BMP2_ZU_TKA","CUP_O_BMP2_TKA","CUP_O_BMP1P_TKA","CUP_O_BMP1_TKA"];
	_MotPool=	["CUP_O_BTR40_TKA","CUP_O_BTR40_MG_TKA","CUP_O_Ural_ZU23_TKA","CUP_O_Ural_Empty_TKA","CUP_O_Ural_Open_TKA","CUP_O_Ural_TKA","CUP_O_UAZ_METIS_TKA","CUP_O_UAZ_SPG9_TKA","CUP_O_UAZ_MG_TKA","CUP_O_UAZ_Unarmed_TKA","CUP_O_LR_SPG9_TKA","CUP_O_LR_Ambulance_TKA","CUP_O_LR_MG_TKA","CUP_O_LR_Transport_TKA"];
	_ACHPool=	["CUP_O_Mi24_D_TK","CUP_O_Mi17_TK"];
	_CHPool=	["CUP_O_MI6T_TKA","CUP_O_Mi17_VIV_TK"];
	_uavPool=	[];
	_stPool=	["CUP_O_2b14_82mm_TK","CUP_O_Metis_TK","CUP_O_AGS_TK","CUP_O_KORD_high_TK","CUP_O_ZU23_TK"];
	_shipPool=	[];
	_diverPool=	[];
	_crewPool=	["CUP_O_TK_Crew"];
	_heliCrew=	["CUP_O_TK_Crew","CUP_O_TK_Pilot"];};
	
// OKSVA SOVIETS FACTION 	
	if (_faction==7) then {
	_InfPool=	["OKSVA_Rifleman_MSV","OKSVA_Rifleman_GP_25_MSV","OKSVA_Junior_Officer_MSV","OKSVA_Officer_MSV","OKSVA_Senior_Technician_MSV","OKSVA_Machine_Gunner_RPK_74_MSV","OKSVA_Machine_Gunner_PKM_MSV","OKSVA_Machine_Gunner_Assistant_PKM_MSV","OKSVA_Marksman_MSV","OKSVA_Medic_MSV","OKSVA_Grenadier_RPG_7V_MSV","OKSVA_Grenadier_Assistant_RPG_7V_MSV","OKSVA_AT_Operator_RPG_26_MSV","OKSVA_Mechanic_MSV","OKSVA_Engineer_MSV"];	
	_ArmPool=	["OKSVA_2S3","OKSVA_T72B_1984","OKSVA_T72B_1985","OKSVA_T72B_1989","OKSVA_T80","OKSVA_ZSU23_4"];
	_MotPool=	["OKSVA_UAZ","OKSVA_UAZ_Open","OKSVA_GAZ66","OKSVA_GAZ66_Ammo","OKSVA_BRDM2","OKSVA_BRDM2UM","OKSVA_BRDM2_9P148","OKSVA_BRDM2UM_Armed","OKSVA_BTR60PB","OKSVA_BTR70","OKSVA_BTR80","OKSVA_BMP1","OKSVA_BMP1D","OKSVA_BMP1K","OKSVA_BMP1P","OKSVA_BMP2","OKSVA_BMP2K","OKSVA_BMP2D","OKSVA_BRM1K","OKSVA_BMD1","OKSVA_BMD1K","OKSVA_BMD1PK","OKSVA_BMD2","OKSVA_BMD2K"];
	_ACHPool=	["OKSVA_MI24P","OKSVA_MI24V","OKSVA_MI24VT","OKSVA_Mi8MTV3"];
	_CHPool=	["OKSVA_MI8MT","OKSVA_Mi6A","OKSVA_Mi6T"];
	_uavPool=	[];
	_stPool=	["OKSVA_2B14","OKSVA_ZU23","OKSVA_NSV","OKSVA_AGS30","OKSVA_SPG9M","OKSVA_9K38","OKSVA_9K115_2"];
	_shipPool=	[];
	_diverPool=	[];
	_crewPool=	["OKSVA_Crew_MSV"];
	_heliCrew=	["OKSVA_Aircrew_FA"];};
	
// PROJECT OPFOR MIDDLE EASTERN MILITIA 	
	if (_faction==8) then {
	_InfPool=	["LOP_AM_Infantry_Engineer","LOP_AM_Infantry_Corpsman","LOP_AM_Infantry_GL","LOP_AM_Infantry_Rifleman_6","LOP_AM_Infantry_Rifleman","LOP_AM_Infantry_Rifleman_2","LOP_AM_Infantry_Rifleman_4","LOP_AM_Infantry_Rifleman_3","LOP_AM_Infantry_AT","LOP_AM_Infantry_Marksman","LOP_AM_Infantry_AR","LOP_AM_Infantry_AR_Asst","LOP_AM_Infantry_SL"];	
	_ArmPool=	[];
	_MotPool=	["LOP_AM_Nissan_PKM","LOP_AM_UAZ_DshKM","LOP_AM_UAZ_Open","LOP_AM_UAZ_SPG"];
	_ACHPool=	[];
	_CHPool=	[];
	_uavPool=	[];
	_stPool=	["LOP_AM_Static_DSHKM","LOP_AM_Static_SPG9"];
	_shipPool=	[];
	_diverPool=	["LOP_AM_Infantry_Engineer","LOP_AM_Infantry_Corpsman","LOP_AM_Infantry_GL","LOP_AM_Infantry_Rifleman_6","LOP_AM_Infantry_Rifleman","LOP_AM_Infantry_Rifleman_2","LOP_AM_Infantry_Rifleman_4","LOP_AM_Infantry_Rifleman_3","LOP_AM_Infantry_AT","LOP_AM_Infantry_Marksman","LOP_AM_Infantry_AR","LOP_AM_Infantry_AR_Asst","LOP_AM_Infantry_SL"];
	_crewPool=	["LOP_AM_Infantry_Engineer","LOP_AM_Infantry_Corpsman","LOP_AM_Infantry_GL","LOP_AM_Infantry_Rifleman_6","LOP_AM_Infantry_Rifleman","LOP_AM_Infantry_Rifleman_2","LOP_AM_Infantry_Rifleman_4","LOP_AM_Infantry_Rifleman_3","LOP_AM_Infantry_AT","LOP_AM_Infantry_Marksman","LOP_AM_Infantry_AR","LOP_AM_Infantry_AR_Asst","LOP_AM_Infantry_SL"];
	_heliCrew=	[];};

// 1942 Imperial Japanese Army
	if (_faction==9) then {
	_InfPool=	["fow_s_ija_rifleman","fow_s_ija_rifleman","fow_s_ija_rifleman","fow_s_ija_rifleman","fow_s_ija_rifleman","fow_s_ija_rifleman","fow_s_ija_rifleman","fow_s_ija_rifleman","fow_s_ija_rifleman_at","fow_s_ija_type99_asst","fow_s_ija_type99_asst","fow_s_ija_type99_gunner","fow_s_ija_medic","fow_s_ija_type99_gunner","fow_s_ija_medic","fow_s_ija_nco","fow_s_ija_nco","fow_s_ija_officer"];	
	_ArmPool=	["fow_ija_type95_HaGo_3_ija","fow_ija_type95_HaGo_2_ija","fow_ija_type95_HaGo_2_ija","fow_ija_type95_HaGo_1_ija","fow_ija_type95_HaGo_1_ija"];
	_MotPool=	["fow_v_type97_truck_open_ija","fow_v_type97_truck_open_ija","fow_v_type97_truck_open_ija","fow_v_type97_truck_ija","fow_v_type97_truck_ija"];
	_ACHPool=	[];
	_CHPool=	[];
	_uavPool=	[];
	_stPool=	["fow_w_type92_tripod_low_ija","fow_w_type92_tripod_low_ija","fow_w_type92_tripod_low_s_ija","fow_w_type92_tripod_ija","fow_w_type92_tripod_ija","fow_w_type97_mortar_ija","fow_w_6Pounder_ija"];
	_shipPool=	["fow_usmc_lcvp"];
	_diverPool=	["fow_s_ija_crewman"];
	_crewPool=	["fow_s_ija_crewman"];
	_heliCrew=	["fow_s_ija_pilot"];};


// UNSUNG VC 1968
	if (_faction==10) then {
		_InfPool=	["uns_men_VC_local_MED",
						"uns_men_VC_local_off",
						"uns_men_VC_local_nco",
						"uns_men_VC_local_RF1",
						"uns_men_VC_local_RF2",
						"uns_men_VC_local_RF3",
						"uns_men_VC_local_RF4",
						"uns_men_VC_local_RF5",
						"uns_men_VC_local_AS1",
						"uns_men_VC_local_AS2",
						"uns_men_VC_local_AS3",
						"uns_men_VC_local_AS4",
						"uns_men_VC_local_MRK",
						"uns_men_VC_local_LMG",
						"uns_men_VC_local_SAP",
						"uns_men_VC_local_TRI",
						"uns_men_VC_local_MGS",
						"uns_men_VC_local_MTS"];	
		_ArmPool=	[];
		_MotPool=	["uns_zil157",
						"uns_zil157_repair",
						"uns_Zil157_refuel"];
		_ACHPool=	[];
		_CHPool=	[];
		_uavPool=	[];
		_stPool=	["uns_pk_high_NVA",
						"uns_dshk_high_NVA",
						"uns_m1941_82mm_mortarNVA",
						"uns_m1941_82mm_mortarNVA_arty"];
		_shipPool=	[];
		_diverPool=	[];
		_crewPool=	["uns_men_VC_local_RF1"];
		_heliCrew=	[];
	};

// UNSUNG NVA 1968	
	if (_faction==11) then {
		_InfPool=	["uns_men_NVA_68_AA", // 
						"uns_men_NVA_68_AS2", //
						"uns_men_NVA_68_AS3", //
						"uns_men_NVA_68_AS4", //
						"uns_men_NVA_68_AS5", //
						"uns_men_NVA_68_AS6", //
						"uns_men_NVA_68_AS7", //
						"uns_men_NVA_68_AS8", //
						"uns_men_NVA_68_AT", //
						"uns_men_NVA_68_AT2", //
						"uns_men_NVA_68_COM", //
						"uns_men_NVA_68_HMG", //
						"uns_men_NVA_68_LMG", //
						"uns_men_NVA_68_MED", //
						"uns_men_NVA_68_MRK", //
						"uns_men_NVA_68_MTS", // 
						"uns_men_NVA_68_Ra1", //
						"uns_men_NVA_68_Ra2", //
						"uns_men_NVA_68_RF1", //
						"uns_men_NVA_68_RF2", //
						"uns_men_NVA_68_RF3", //
						"uns_men_NVA_68_RF4", // 
						"uns_men_NVA_68_RTO", //
						"uns_men_NVA_68_RRTO", // FIXME
						"uns_men_NVA_68_SAP", //
						"uns_men_NVA_68_SLT", //
						"uns_men_NVA_68_RSAP", // FIXME
						"uns_men_NVA_68_TRI", //
						"uns_men_NVA_68_nco", // 
						"uns_men_NVA_68_roff", // FIXME
						"uns_men_NVA_68_off"]; //
		_ArmPool=	["uns_Type55",
        				"uns_Type55_LMG",
						"uns_Type55_MG",
						"uns_Type63_amb",
						"uns_BTR152_DSHK",
						"uns_Type74_NVA",
						"uns_Type63_mg",
						"pook_zsu57_nva",
						"uns_t34_85_nva",
						"uns_t54_nva"];
		_MotPool=	["uns_zil157",
						"uns_zil157_repair",
						"uns_Zil157_refuel",
						"uns_nvatruck",
						"uns_nvatruck_mg",
						"uns_nvatruck_open",
						"uns_nvatruck_reammo",
						"uns_nvatruck_refuel",
						"uns_nvatruck_repair"];
		_ACHPool=	[];
		_CHPool=	[];
		_uavPool=	[];
		_stPool=	["uns_M40_106mm_NVA",
						"uns_SPG9_73mm_NVA",
						"uns_dshk_high_NVA",
						"uns_m1941_82mm_mortarNVA",
						"uns_m1941_82mm_mortarNVA_arty",
						"uns_ZPU4_NVA"];
		_shipPool=	[];
		_diverPool=	[];
		_crewPool=	["uns_men_NVA_68_RF1"];
		_heliCrew=	[];
	};

// P OPFOR TAKISTANI ARMY
	if (_faction==12) then {
		_InfPool=	[
			"LOP_TKA_Infantry_Corpsman",
			"LOP_TKA_Infantry_Engineer",
			"LOP_TKA_Infantry_GL",
			"LOP_TKA_Infantry_AT",
			"LOP_TKA_Infantry_AT_Asst",
			"LOP_TKA_Infantry_MG",
			"LOP_TKA_Infantry_MG_Asst",
			"LOP_TKA_Infantry_Marksman",
			"LOP_TKA_Infantry_Officer",
			"LOP_TKA_Infantry_Rifleman",
			"LOP_TKA_Infantry_Rifleman",
			"LOP_TKA_Infantry_Rifleman",
			"LOP_TKA_Infantry_Rifleman_2",
			"LOP_TKA_Infantry_Rifleman_3",
			"LOP_TKA_Infantry_SL",
			"LOP_TKA_Infantry_TL"
		];	
		_ArmPool=	[
			"LOP_TKA_BTR60",
			"LOP_TKA_BTR60",
			"LOP_TKA_BTR60",
			"LOP_TKA_BTR70",
			"LOP_TKA_BMP1",
			"LOP_TKA_BMP1",
			"LOP_TKA_BMP1D",
			"LOP_TKA_ZSU234",
			"LOP_TKA_T34",
			"LOP_TKA_T34",
			"LOP_TKA_T55",
			"LOP_TKA_T55",
			"LOP_TKA_T55"
		];
		_MotPool=	[
			"LOP_TKA_UAZ",
			"LOP_TKA_UAZ",
			"LOP_TKA_UAZ",
			"LOP_TKA_UAZ",
			"LOP_TKA_UAZ_Open",
			"LOP_TKA_UAZ_Open",
			"LOP_TKA_UAZ_DshKM",
			"LOP_TKA_UAZ_DshKM",
			"LOP_TKA_UAZ_SPG",
			"LOP_TKA_UAZ_SPG",
			"LOP_TKA_Ural",
			"LOP_TKA_Ural",
			"LOP_TKA_Ural_open",
			"LOP_TKA_Ural_open",
			"LOP_TKA_BM21"
		];
		_ACHPool=	[
			"LOP_TKA_Mi24V_AT",
			"LOP_TKA_Mi24V_FAB",
			"LOP_TKA_Mi24V_UPK23",
			"LOP_TKA_Mi8MTV3_FAB",
			"LOP_TKA_Mi8MTV3_UPK23"
		];
		_CHPool=	[
			"LOP_TKA_Mi8MT_Cargo"
		];
		_uavPool=	[];
		_stPool=	[
			"LOP_TKA_Static_D30",
			"LOP_TKA_Static_AT4",
			"LOP_TKA_Static_DSHKM",
			"LOP_TKA_Static_NSV_tripod",
			"LOP_TKA_Static_SPG9",
			"LOP_TKA_Zu23"
		];
		_shipPool=	[];
		_diverPool=	[];
		_crewPool=	["LOP_TKA_Infantry_crewman"];
		_heliCrew=	["LOP_TKA_Infantry_Pilot"];
	};

// ADD CLASSNAMES 	
	if (_faction==13) then {
		_InfPool=	[];	
		_ArmPool=	[];
		_MotPool=	[];
		_ACHPool=	[];
		_CHPool=	[];
		_uavPool=	[];
		_stPool=	[];
		_shipPool=	[];
		_diverPool=	[];
		_crewPool=	[];
		_heliCrew=	[];
	};

//diag_log format ["EOS_fnc_getUnitPool _type: %1 _faction: %2 _InfPool: %3 _MotPool: %4 _stPool: %5",_type,_faction,_InfPool,_MotPool,_stPool];

////////////////////////////////////////////////////////////////////////////////////////
if (_type==0) then 
{
	for "_i" from 0 to 5 do
	{
		_unit=_InfPool select (floor(random(count _InfPool)));
		_tempArray set [count _tempArray,_unit];
	};
};
						
if (_type==1) then {_tempArray=_diverPool};
	
				
// CREATE ARMOUR & CREW			
if (_type==2) then {
				_tempUnit=_ArmPool select (floor(random(count _ArmPool)));
				_temparray set [count _temparray,_tempUnit];
				_crew=_crewPool select (floor(random(count _crewPool)));
				_temparray set [count _temparray,_crew];
};

// CREATE ATTACK CHOPPER & CREW	
if (_type==3) then {
				_tempUnit=_ACHPool select (floor(random(count _ACHPool)));
				_temparray set [count _temparray,_tempUnit];
				_crew=_heliCrew select (floor(random(count _heliCrew)));
				_temparray set [count _temparray,_crew];
};

// CREATE TRANSPORT CHOPPER & CREW		
if (_type==4) then {
				_tempUnit=_CHPool select (floor(random(count _CHPool)));
				_temparray set [count _temparray,_tempUnit];
				_crew=_heliCrew select (floor(random(count _heliCrew)));
				_temparray set [count _temparray,_crew];
						};
						
// CREATE STATIC & CREW						
if (_type==5) then {
				_tempUnit=_stPool select (floor(random(count _stPool)));
				_temparray set [count _temparray,_tempUnit];
				_crew=_crewPool select (floor(random(count _crewPool)));
				_temparray set [count _temparray,_crew];

};
if (_type==6) then {_tempArray=_uavPool select (floor(random(count _uavPool)));};

// CREATE TRANSPORT & CREW
if (_type==7) then {
				_tempUnit=_MotPool select (floor(random(count _MotPool)));
				_temparray set [count _temparray,_tempUnit];
				_crew=_crewPool select (floor(random(count _crewPool)));
				_temparray set [count _temparray,_crew];
				};

// CREATE BOAT & DIVER CREW
if (_type==8) then {
				_tempUnit=_shipPool select (floor(random(count _shipPool)));
				_temparray set [count _temparray,_tempUnit];
				_crew=_diverPool select (floor(random(count _diverPool)));
				_temparray set [count _temparray,_crew];
				};
				
// CREATE CARGO
if (_type==9) then {
		for "_i" from 0 to 4 do{
			_unit=_InfPool select (floor(random(count _InfPool)));
			_temparray set [count _temparray,_unit];
							};
};

// CREATE DIVER CARGO
if (_type==10) then {
		for "_i" from 0 to 4 do{
			_unit=_diverPool select (floor(random(count _diverPool)));
			_temparray set [count _temparray,_unit];
							};			
};

//diag_log format ["EOS_fnc_getUnitPool _tempArray: %1",_tempArray];
_tempArray
