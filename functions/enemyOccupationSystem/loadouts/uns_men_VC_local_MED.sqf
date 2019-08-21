// PPS-52
comment "Exported from Arsenal by SaberSnack";

comment "Remove existing items";
removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;


comment "Add containers";
for "_i" from 1 to 5 do {_this addItemToVest "uns_k50mag";};
_this addWeapon "uns_PPS43";

for "_i" from 1 to 2 do {_this addItemToUniform "FirstAidKit";};
_this addItemToUniform "rhs_mag_f1";

removeBackpack _this;
_this addBackpack "UNS_NVA_RC";
_this addItemToBackpack "medikit";
_this addItemToBackpack "FirstAidKit";
_this addItemToBackpack "FirstAidKit";


comment "Add items";
_this linkItem "ItemWatch";
