// M1903
comment "Exported from Arsenal by SaberSnack";

comment "Remove existing items";
removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;


comment "Add containers";
for "_i" from 1 to 12 do {_this addItemToVest "hlc_5rnd_3006_1903";};
_this addWeapon "hlc_rifle_M1903A1_unertl";

_this addItemToUniform "FirstAidKit";
_this addItemToUniform "rhs_mag_f1";

comment "Add items";
_this linkItem "ItemWatch";
