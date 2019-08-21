// RPK
comment "Exported from Arsenal by SaberSnack";

comment "Remove existing items";
removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;


comment "Add containers";
removeBackpack _this;
_this addBackpack "UNS_NVA_RC";
for "_i" from 1 to 3 do {_this addItemToVest "hlc_75Rnd_762x39_m_rpk";};
_this addItemToBackpack "hlc_75Rnd_762x39_m_rpk";
_this addWeapon "hlc_rifle_rpk";

for "_i" from 1 to 2 do {_this addItemToUniform "FirstAidKit";};
_this addItemToUniform "rhs_mag_rgd5";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
