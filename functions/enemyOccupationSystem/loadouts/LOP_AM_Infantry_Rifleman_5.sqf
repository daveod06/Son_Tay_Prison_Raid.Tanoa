// AKS-74
comment "Exported from Arsenal by SaberSnack";

comment "Remove existing items";
removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeBackpack _this;


comment "Add containers";
for "_i" from 1 to 2 do {_this addItemToUniform "FirstAidKit";};
_this addItemToUniform "rhs_mag_rgd5";
for "_i" from 1 to 6 do {_this addItemToUniform "rhs_30Rnd_545x39_AK";};

comment "Add weapons";
_this addWeapon "rhs_weap_aks74";
_this addPrimaryWeaponItem "rhs_acc_dtk1983";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";