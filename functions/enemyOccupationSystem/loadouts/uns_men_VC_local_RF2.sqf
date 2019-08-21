// M38
comment "Exported from Arsenal by SaberSnack";

comment "Remove existing items";
removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;


comment "Add containers";
for "_i" from 1 to 15 do {_this addItemToVest "rhsgref_5Rnd_762x54_m38";};
_this addWeapon "rhs_weap_m38";

_this addItemToUniform "FirstAidKit";
_this addItemToUniform "rhs_mag_f1";

comment "Add items";
_this linkItem "ItemWatch";
