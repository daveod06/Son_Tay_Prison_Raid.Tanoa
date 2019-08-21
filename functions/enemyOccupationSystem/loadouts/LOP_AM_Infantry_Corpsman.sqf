// MEDIC
comment "Exported from Arsenal by SaberSnack";

comment "Remove existing items";
removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeBackpack _this;


comment "Add containers";
for "_i" from 1 to 2 do {_this addItemToUniform "FirstAidKit";};
_this addItemToUniform "rhs_mag_rgd5";
for "_i" from 1 to 8 do {_this addItemToUniform "rhsgref_5Rnd_762x54_m38";};
_this addBackpack "rhs_sidor";
_this addItemToBackpack "Medikit";
for "_i" from 1 to 4 do {_this addItemToBackpack "FirstAidKit";};

comment "Add weapons";
_this addWeapon "rhs_weap_m38";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
