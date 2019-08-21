// RPG-2
comment "Exported from Arsenal by SaberSnack";

comment "Remove existing items";
removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;


comment "Add containers";
removeBackpack _this;
_this addBackpack "UNS_NVA_RPG2";
for "_i" from 1 to 2 do {_this addItemToBackpack "uns_rpg2grenade";};
_this addWeapon "uns_rpg2";
for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_762x25_8";};
_this addWeapon "rhs_weap_tt33";

for "_i" from 1 to 2 do {_this addItemToUniform "FirstAidKit";};
_this addItemToUniform "rhs_mag_rgd5";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
