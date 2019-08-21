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
_this forceAddUniform "UNS_ARMY_BDU";
_this addItemToUniform "FirstAidKit";
_this addItemToUniform "uns_kabar";
for "_i" from 1 to 2 do {_this addItemToUniform "uns_m1911mag";};
_this addVest "UNS_M1956_A6";
for "_i" from 1 to 3 do {_this addItemToVest "hlc_100Rnd_762x51_M_M60E4";};
for "_i" from 1 to 3 do {_this addItemToVest "uns_m61gren";};
_this addItemToVest "uns_m1911mag";
_this addBackpack "uns_US_25ID_HMG_Bag";
_this addItemToBackpack "FirstAidKit";
for "_i" from 1 to 3 do {_this addItemToBackpack "hlc_100Rnd_762x51_M_M60E4";};
_this addItemToBackpack "uns_m18red";
_this addHeadgear "UNS_M1_1A";
_this addGoggles "UNS_Bullets";

comment "Add weapons";
_this addWeapon "hlc_lmg_m60";
_this addWeapon "uns_m1911";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";

comment "Set identity";
_this setFace "WhiteHead_20";
_this setSpeaker "";

