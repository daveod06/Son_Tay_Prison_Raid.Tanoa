// AKMS
comment "Exported from Arsenal by SaberSnack";

comment "Remove existing items";
removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;


comment "Add containers";
for "_i" from 1 to 6 do {_this addItemToVest "rhs_30Rnd_762x39mm_tracer";};
_this addWeapon "rhs_weap_akms";
_this addPrimaryWeaponItem "rhs_acc_dtkakm";

for "_i" from 1 to 2 do {_this addItemToUniform "FirstAidKit";};
_this addItemToUniform "rhs_mag_rgd5";

removeBackpack _this;
_this addBackpack "UNS_NVA_RC";
_this addItemToBackpack "DemoCharge_Remote_Mag";
_this addItemToBackpack "Toolkit";
_this addItemToBackpack "MineDetector";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
