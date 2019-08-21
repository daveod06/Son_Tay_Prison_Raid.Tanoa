// RPG-7
comment "Exported from Arsenal by SaberSnack";

comment "Remove existing items";
removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeBackpack _this;


comment "Add containers";
for "_i" from 1 to 2 do {_this addItemToUniform "FirstAidKit";};
for "_i" from 1 to 5 do {_this addItemToUniform "rhs_mag_9x18_8_57N181S";};
_this addItemToUniform "rhs_mag_rgd5";
_this addBackpack "rhs_rpg_empty";
for "_i" from 1 to 2 do {_this addItemToBackpack "rhs_rpg7_PG7V_mag";};

comment "Add weapons";
_this addWeapon "rhs_weap_makarov_pm";
_this addWeapon "rhs_weap_rpg7";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";