// MG-42
comment "Exported from Arsenal by SaberSnack";

comment "Remove existing items";
removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;


comment "Add containers";
removeBackpack _this;
_this addBackpack "UNS_NVA_RC";
for "_i" from 1 to 5 do {_this addItemToVest "uns_barmag_T";};
_this addWeapon "uns_bar";
for "_i" from 1 to 5 do {_this addItemToBackpack "uns_barmag_T";};



_this addItemToUniform "FirstAidKit";
_this addItemToUniform "rhs_mag_f1";

comment "Add items";
_this linkItem "ItemWatch";
