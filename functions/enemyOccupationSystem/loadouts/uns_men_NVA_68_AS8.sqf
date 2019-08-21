// RPD
comment "Exported from Arsenal by SaberSnack";

comment "Remove existing items";
removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;


comment "Add containers";
removeBackpack _this;
_this addBackpack "UNS_NVA_R1";
for "_i" from 1 to 2 do {_this addItemToVest "uns_rpdmag";};
for "_i" from 1 to 2 do {_this addItemToBackpack "uns_rpdmag";};
_this addWeapon "uns_rpd";

for "_i" from 1 to 2 do {_this addItemToUniform "FirstAidKit";};
_this addItemToUniform "rhs_mag_rgd5";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
