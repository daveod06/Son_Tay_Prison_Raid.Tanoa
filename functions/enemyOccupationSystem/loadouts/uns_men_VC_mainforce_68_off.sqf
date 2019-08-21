// PPS-52
comment "Exported from Arsenal by SaberSnack";

comment "Remove existing items";
removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;


comment "Add containers";
for "_i" from 1 to 5 do {_this addItemToVest "uns_k50mag";};
_this addWeapon "uns_PPS43";

_this addItemToUniform "FirstAidKit";
_this addItemToUniform "rhs_mag_f1";
_this addItemToUniform "rhs_mag_rdg2_white";
_this addItemToUniform "rhs_mag_nspn_yellow";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemRadio";
_this linkItem "ItemWatch";
