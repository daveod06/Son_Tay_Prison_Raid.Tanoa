comment "Exported from Arsenal by SaberSnack";

comment "Remove existing items";
removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeUniform _this;
removeVest _this;
removeBackpack _this;
removeHeadgear _this;
removeGoggles _this;

comment "Add containers";
_this forceAddUniform "LOP_U_TKA_Fatigue_02";
_this addItemToUniform "FirstAidKit";
_this addItemToUniform "hlc_75Rnd_762x39_AP_rpk";
_this addVest "LOP_V_6Sh92_WDL";
_this addItemToVest "rhs_mag_rdg2_white";
for "_i" from 1 to 3 do {_this addItemToVest "rhs_mag_rgd5";};
for "_i" from 1 to 2 do {_this addItemToVest "hlc_75Rnd_762x39_AP_rpk";};
_this addHeadgear "LOP_H_SSh68Helmet_TAN";

comment "Add weapons";
_this addWeapon "hlc_rifle_rpk";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";