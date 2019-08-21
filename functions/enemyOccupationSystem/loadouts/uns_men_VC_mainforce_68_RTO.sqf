// M3A1
comment "Exported from Arsenal by SaberSnack";

comment "Remove existing items";
removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;


comment "Add containers";
for "_i" from 1 to 5 do {_this addItemToVest "rhsgref_30rnd_1143x23_M1T_SMG";};
_this addWeapon "rhs_weap_m3a1";


for "_i" from 1 to 2 do {_this addItemToUniform "FirstAidKit";};
_this addItemToUniform "rhs_mag_f1";

comment "Add items";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";
