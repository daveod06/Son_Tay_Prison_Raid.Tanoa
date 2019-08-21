// AKM
comment "Exported from Arsenal by SaberSnack";

comment "Remove existing items";
removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;


comment "Add containers";
for "_i" from 1 to 6 do {_this addItemToVest "rhs_30Rnd_762x39mm_tracer";};
_this addWeapon "rhs_weap_akm";
_this addPrimaryWeaponItem "rhs_acc_dtkakm";


for "_i" from 1 to 2 do {_this addItemToUniform "FirstAidKit";};
_this addItemToUniform "rhs_mag_rgd5";
_this addItemToUniform "rhs_mag_rdg2_white";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemRadio";
_this linkItem "ItemWatch";
