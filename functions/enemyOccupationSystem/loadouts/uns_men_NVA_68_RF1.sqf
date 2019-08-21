// SKS
comment "Exported from Arsenal by SaberSnack";

comment "Remove existing items";
removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;


comment "Add containers";
for "_i" from 1 to 10 do {_this addItemToVest "uns_sksmag";};
_this addWeapon "uns_sks";

for "_i" from 1 to 2 do {_this addItemToUniform "FirstAidKit";};
_this addItemToUniform "rhs_mag_rgd5";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
