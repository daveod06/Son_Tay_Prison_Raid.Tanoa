// SVD
comment "Exported from Arsenal by SaberSnack";

comment "Remove existing items";
removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeBackpack _this;


comment "Add containers";
for "_i" from 1 to 2 do {_this addItemToUniform "FirstAidKit";};
_this addItemToUniform "rhs_mag_rgd5";
for "_i" from 1 to 7 do {_this addItemToUniform "rhs_10Rnd_762x54mmR_7N1";};

comment "Add weapons";
_this addWeapon "rhs_weap_svdp";
_this addPrimaryWeaponItem "rhs_acc_pso1m2";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";