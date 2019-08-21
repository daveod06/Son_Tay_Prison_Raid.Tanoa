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
_this addVest "UNS_M1956_A4";
_this addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag";
for "_i" from 1 to 3 do {_this addItemToVest "uns_m1911mag";};
_this addItemToVest "uns_m61gren";
_this addItemToVest "uns_m18Purple";
_this addItemToVest "uns_kabar";
_this addBackpack "uns_US_25ID_MED_Bag";
for "_i" from 1 to 5 do {_this addItemToBackpack "FirstAidKit";};
_this addItemToBackpack "Medikit";
for "_i" from 1 to 8 do {_this addItemToBackpack "rhs_mag_30Rnd_556x45_M855_Stanag";};
_this addHeadgear "UNS_M1_1A";
_this addGoggles "UNS_Towel";

comment "Add weapons";
_this addWeapon "hlc_wp_m16A1";
_this addWeapon "uns_m1911";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "ItemRadio";
