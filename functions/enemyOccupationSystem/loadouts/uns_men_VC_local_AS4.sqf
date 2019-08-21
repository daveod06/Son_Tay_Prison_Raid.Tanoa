// PPS43
comment "Exported from Arsenal by SaberSnack";

comment "Remove existing items";
removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;


comment "Add containers";
for "_i" from 1 to 6 do {_this addItemToVest "uns_k50mag";};
_this addWeapon "uns_PPS43";

_this addItemToUniform "FirstAidKit";
_this addItemToUniform "rhs_mag_f1";

comment "Add items";
_this linkItem "ItemWatch";
