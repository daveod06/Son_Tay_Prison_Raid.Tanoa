// MP44
comment "Exported from Arsenal by SaberSnack";

comment "Remove existing items";
removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;


comment "Add containers";
for "_i" from 1 to 6 do {_this addItemToVest "rhsgref_30Rnd_792x33_SmE_StG";};
_this addWeapon "rhs_weap_MP44";

_this addItemToUniform "FirstAidKit";
_this addItemToUniform "rhs_mag_f1";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemWatch";
