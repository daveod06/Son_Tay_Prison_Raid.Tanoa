// PKM Assistant
comment "Exported from Arsenal by SaberSnack";

comment "Remove existing items";
removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeBackpack _this;


comment "Add containers";
for "_i" from 1 to 2 do {_this addItemToUniform "FirstAidKit";};
for "_i" from 1 to 5 do {_this addItemToUniform "rhsgref_20rnd_765x17_vz61";};
_this addItemToUniform "rhs_mag_rgd5";
_this addBackpack "rhs_sidor";
for "_i" from 1 to 2 do {_this addItemToBackpack "rhs_100Rnd_762x54mmR";};

comment "Add weapons";
_this addWeapon "rhs_weap_savz61";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";