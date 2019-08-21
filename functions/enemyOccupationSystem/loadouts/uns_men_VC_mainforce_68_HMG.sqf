// MG42
comment "Exported from Arsenal by SaberSnack";

comment "Remove existing items";
removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;


comment "Add containers";
removeBackpack _this;
_this addBackpack "UNS_NVA_RC";
for "_i" from 1 to 2 do {_this addItemToVest "hlc_50Rnd_792x57_T_MG42";};
for "_i" from 1 to 2 do {_this addItemToBackpack "hlc_100Rnd_792x57_T_MG42";};
_this addWeapon "hlc_lmg_MG42";


_this addItemToUniform "FirstAidKit";
_this addItemToUniform "rhs_mag_f1";

comment "Add items";
_this linkItem "ItemWatch";
