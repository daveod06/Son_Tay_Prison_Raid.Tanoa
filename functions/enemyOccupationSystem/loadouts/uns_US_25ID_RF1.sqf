
comment "Exported from Arsenal by SaberSnack";

comment "[!] UNIT MUST BE LOCAL [!]";
if (!local _this) exitWith {};

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
for "_i" from 1 to 3 do {_this addItemToUniform "rhs_mag_30Rnd_556x45_M855_Stanag";};
_this addVest "UNS_M1956_A7";
for "_i" from 1 to 3 do {_this addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag";};
for "_i" from 1 to 2 do {_this addItemToVest "uns_m61gren";};
_this addItemToVest "uns_kabar";
for "_i" from 1 to 4 do {_this addItemToVest "uns_40mm_mkv_Yellow";};
_this addBackpack "uns_US_25ID_RF1_Bag";
_this addItemToBackpack "FirstAidKit";
for "_i" from 1 to 8 do {_this addItemToBackpack "rhs_mag_30Rnd_556x45_M855_Stanag";};
_this addHeadgear "UNS_M1_1A";
_this addGoggles "UNS_Peace";

comment "Add weapons";
_this addWeapon "hlc_wp_m16A1";
_this addWeapon "uns_mkvFlarePistol";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";

comment "Set identity";
[_this,"WhiteHead_04_cfaces_lrrpcamo09",""] call BIS_fnc_setIdentity;
