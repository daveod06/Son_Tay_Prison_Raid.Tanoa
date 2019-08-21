Tooth_introMusic = "";
Tooth_outroMusic = "";
Tooth_year = 1970;
Tooth_month = 11;
Tooth_day = 21;

Tooth_playerUniform = "";
Tooth_playerVest = "";
Tooth_playerHeadgear = "";
Tooth_playerGoggles = "";
Tooth_playerBackpack = "";
Tooth_playersHaveRadio = false;
Tooth_playersHaveWatch = false;
Tooth_playersHaveMap = false;
Tooth_playersHaveCompass = false;

A3E_WorldName = "Son Tay";

TOOTH_LZ_Smoke = [];
TOOTH_LZ_Smoke pushback "SmokeShellBlue";
TOOTH_LZ_Smoke pushback "SmokeShellGreen";
TOOTH_LZ_Smoke pushback "SmokeShellOrange";
TOOTH_LZ_Smoke pushback "SmokeShellPurple";
TOOTH_LZ_Smoke pushback "SmokeShellRed";
TOOTH_LZ_Smoke pushback "SmokeShellYellow";

/*
_patches = (ConfigFile >> "CfgPatches");
_c = count _patches;
AddonsToActivate = [];
diag_log format ["Tooth DEBUG: %1 addons loaded",_c];
{
    _addonName = _x;
    if (isClass _addonName) then
    {	
        AddonsToActivate pushback (configName _addonName);
	};
} forEach _patches

//curatorObj addCuratorAddons AddonsToActivate;
//activateAddons AddonsToActivate;

*/
