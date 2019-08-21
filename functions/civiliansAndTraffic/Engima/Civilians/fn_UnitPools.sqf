_faction=(_this select 0);
_units = [];

// PROJECT OPFOR MIDDLE EASTERN CIVILIANS
if (_faction==0) then
{
	_units = [
    "LOP_Tak_Civ_Man_06",
    "LOP_Tak_Civ_Man_08",
    "LOP_Tak_Civ_Man_07",
    "LOP_Tak_Civ_Man_05",
    "LOP_Tak_Civ_Man_01",
    "LOP_Tak_Civ_Man_10",
    "LOP_Tak_Civ_Man_02",
    "LOP_Tak_Civ_Man_09",
    "LOP_Tak_Civ_Man_11",
    "LOP_Tak_Civ_Man_12",
    "LOP_Tak_Civ_Man_04",
    "LOP_Tak_Civ_Man_14",
    "LOP_Tak_Civ_Man_13",
    "LOP_Tak_Civ_Man_16",
    "LOP_Tak_Civ_Man_15",
    "LOP_Tak_Civ_Random"
    ];
};

// CUP TAK CIVILIANS
if (_faction==1) then
{
	_units = [
    "CUP_C_TK_Man_04",
    "CUP_C_TK_Man_04_Jack",
    "CUP_C_TK_Man_04_Waist",
    "CUP_C_TK_Man_07",
    "CUP_C_TK_Man_07_Coat",
    "CUP_C_TK_Man_07_Waist",
    "CUP_C_TK_Man_08",
    "CUP_C_TK_Man_08_Jack",
    "CUP_C_TK_Man_08_Waist",
    "CUP_C_TK_Man_05_Coat",
    "CUP_C_TK_Man_05_Jack",
    "CUP_C_TK_Man_05_Waist",
    "CUP_C_TK_Man_06_Coat",
    "CUP_C_TK_Man_06_Jack",
    "CUP_C_TK_Man_06_Waist",
    "CUP_C_TK_Man_02",
    "CUP_C_TK_Man_02_Jack",
    "CUP_C_TK_Man_01_Coat",
    "CUP_C_TK_Man_01_Jack",
    "CUP_C_TK_Man_03_Coat",
    "CUP_C_TK_Man_03_Jack",
    "CUP_C_TK_Man_03_Waist"
    ];
};

// Cuban / African Civs
if (_faction==2) then
{
	_units = [
    "C_Man_casual_1_F_tanoan",
    "C_Man_casual_2_F_tanoan",
    "C_Man_casual_3_F_tanoan",
    "C_Man_casual_4_F_afro",
    "C_Man_casual_4_F_tanoan",
    "C_Man_casual_5_F_afro",
    "C_Man_casual_5_F_tanoan",
    "C_Man_casual_6_F_afro",
    "C_Man_casual_6_F_tanoan",
    "C_man_p_beggar_F_afro",
    "C_man_p_fugitive_F_afro",
    "C_man_shorts_1_F_afro",
    "C_man_shorts_2_F_afro",
    "C_man_shorts_3_F_afro",
    "C_man_shorts_4_F_afro"
    ];
};

// Chernarus Civs
if (_faction==3) then
{
	_units = [
    "LOP_CHR_Civ_Assistant",
	"LOP_CHR_Civ_Doctor_01",
	"LOP_CHR_Civ_Functionary_01",
	"LOP_CHR_Civ_Functionary_02",
	"LOP_CHR_Civ_Policeman_01",
	"LOP_CHR_Civ_Rocker_01",
	"LOP_CHR_Civ_Rocker_02",
	"LOP_CHR_Civ_Rocker_03",
	"LOP_CHR_Civ_Rocker_04",
	"LOP_CHR_Civ_Villager_01",
	"LOP_CHR_Civ_Villager_02",
	"LOP_CHR_Civ_Villager_03",
	"LOP_CHR_Civ_Villager_04",
	"LOP_CHR_Civ_Woodlander_01",
	"LOP_CHR_Civ_Woodlander_02",
	"LOP_CHR_Civ_Woodlander_03",
	"LOP_CHR_Civ_Woodlander_04",
	"LOP_CHR_Civ_Worker_01",
	"LOP_CHR_Civ_Worker_02",
	"LOP_CHR_Civ_Worker_03",
	"LOP_CHR_Civ_Worker_04"
    ];
};

// Vietnamese Civs
if (_faction==4) then
{
	_units = [
    "uns_civilian1",
    "uns_civilian1_b3",
    "uns_civilian2",
    "uns_civilian2_b1",
    "uns_civilian2_b3",
    "uns_civilian3",
    "uns_civilian3_b1",
    "uns_civilian4",
    "uns_civilian4_b1",
    "uns_civilian4_b2"
    ];
};

// 
if (_faction==5) then
{
	_units = [];
};

_units
