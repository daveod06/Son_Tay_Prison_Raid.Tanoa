_faction=(_this select 0);

_units = [];

// PROJECT OPFOR MIDDLE EASTERN CIVILIANS
if (_faction==0) then
{
	_units = [
    "C_Truck_02_box_F",
    "C_Truck_02_covered_F",
    "C_Truck_02_fuel_F",
    "C_Truck_02_transport_F",
    "LOP_TAK_Civ_Landrover",
    "LOP_TAK_Civ_Offroad",
    "LOP_TAK_Civ_UAZ",
    "LOP_TAK_Civ_UAZ_Open",
    "LOP_TAK_Civ_Ural",
    "LOP_TAK_Civ_Ural_open",
    "RHS_Ural_Open_Civ_01",
    "RHS_Ural_Civ_01",
    "RHS_Ural_Open_Civ_02",
    "RHS_Ural_Civ_02",
    "RHS_Ural_Open_Civ_03",
    "RHS_Ural_Civ_03"
    ];
};

// CUP TAK CIVILIANS
if (_faction==1) then
{
	_units = [
    "CUP_C_Volha_Limo_TKCIV"
    ,"CUP_C_Volha_Blue_TKCIV"
    ,"CUP_C_UAZ_Unarmed_TK_CIV"
    ,"CUP_C_V3S_Open_TKC"
    ,"CUP_C_S1203_CIV"
    ,"CUP_C_Ural_Open_Civ_03"
    ,"CUP_C_Ural_Civ_03"
    ,"CUP_C_Lada_Red_CIV"
    ,"CUP_C_Lada_White_CIV"
    ,"CUP_C_S1203_Militia_CIV"
    ,"CUP_C_Skoda_Red_CIV"
    ,"CUP_C_Skoda_Green_CIV"
    ,"CUP_C_Datsun"
    ];
};

// Cuban / African Civs
if (_faction==2) then
{
	_units = [
    "LOP_CHR_Civ_Landrover"
	,"LOP_CHR_Civ_UAZ"
	,"LOP_CHR_Civ_UAZ_Open"
	,"LOP_CHR_Civ_Ural"
	,"LOP_CHR_Civ_Ural_open"
	,"C_Truck_02_fuel_F"
	,"C_Truck_02_transport_F"
    ];
};

// Chernarus Civs
if (_faction==3) then
{
	_units = [
    "LOP_CHR_Civ_Landrover"
	,"LOP_CHR_Civ_UAZ"
	,"LOP_CHR_Civ_UAZ_Open"
	,"LOP_CHR_Civ_Ural"
	,"LOP_CHR_Civ_Ural_open"
	,"C_Truck_02_fuel_F"
	,"C_Truck_02_transport_F"
    ];
};

// Vietnamese Civs
if (_faction==4) then
{
	_units = [
    "LOP_CHR_Civ_Landrover"
	,"LOP_CHR_Civ_UAZ"
	,"LOP_CHR_Civ_UAZ_Open"
	,"LOP_CHR_Civ_Ural"
	,"LOP_CHR_Civ_Ural_open"
	,"C_Truck_02_fuel_F"
	,"C_Truck_02_transport_F"
    ];
};

// 
if (_faction==5) then
{
	_units = [];
};

_units
