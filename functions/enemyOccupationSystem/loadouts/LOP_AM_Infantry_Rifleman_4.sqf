// AKS-74U
comment "Exported from Arsenal by SaberSnack";

comment "Remove existing items";
removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeBackpack _this;


comment "Add containers";
for "_i" from 1 to 2 do {_this addItemToUniform "FirstAidKit";};
_this addItemToUniform "rhs_mag_rgd5";
for "_i" from 1 to 2 do {_this addItemToUniform "hlc_75Rnd_762x39_m_rpk";};

comment "Add weapons";
_this addWeapon "hlc_rifle_rpk";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";