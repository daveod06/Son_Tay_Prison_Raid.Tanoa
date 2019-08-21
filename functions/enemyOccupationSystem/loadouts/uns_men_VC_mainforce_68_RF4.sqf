// M1
comment "Exported from Arsenal by SaberSnack";

comment "Remove existing items";
removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;


comment "Add containers";
for "_i" from 1 to 12 do {_this addItemToVest "rhsgref_8Rnd_762x63_Tracer_M1T_M1rifle";};
_this addWeapon "rhs_weap_m1garand_sa43";

_this addItemToUniform "FirstAidKit";
_this addItemToUniform "rhs_mag_f1";

comment "Add items";
_this linkItem "ItemWatch";
