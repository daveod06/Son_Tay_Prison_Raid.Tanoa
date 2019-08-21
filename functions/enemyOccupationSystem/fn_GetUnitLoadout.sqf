private ["_initString"];
params["_classname","_enemyFactionsArray"];
//_classname=(_this select 0);
//_enemyFactionsArray=(_this select 1);
//_pool=(_this select 1);

KK_fnc_fileExists = {
    private ["_ctrl", "_fileExists"];
    disableSerialization;
    _ctrl = findDisplay 0 ctrlCreate ["RscHTML", -1];
    _ctrl htmlLoad _this;
    _fileExists = ctrlHTMLLoaded _ctrl;
    ctrlDelete _ctrl;
    _fileExists
};

//diag_log format ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!EOS_fnc_getUnitType isNull _classname: %1",(isNull _classname)];
//diag_log format ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!EOS_fnc_getUnitType _classname: %1 type _classname: %2",_classname,(typeName _classname)];

if (_classname == "") exitWith {diag_log format["EOS_fnc_getUnitType _classname is null!!!!!!!!! _this: %1",_this]};

_loadoutsFilePath = "functions\enemyOccupationSystem\loadouts\";
_dotSqf = ".sqf";
_joinArray = [_loadoutsFilePath,_classname,_dotSqf];

_fileName = _joinArray joinString "";
_fileExists = (_fileName call KK_fnc_fileExists);

_addFlashlightString = "_flashlightItem = (primaryWeaponItems _this) select 1;_this removePrimaryWeaponItem _flashlightItem;_this addPrimaryWeaponItem ""acc_flashlight"";_this addPrimaryWeaponItem ""rhs_acc_2dpZenit"";_this addPrimaryWeaponItem ""rhsusf_acc_anpeq15_light"";";
_useFlashLightString = "_this enablegunlights ""forceOn"";_this unassignItem ""NVGoggles"";_this removeItem ""NVGoggles"";_this unassignItem ""NVGoggles_OPFOR"";_this removeItem ""NVGoggles_OPFOR"";";
// ["_bomber","_targetSide","_explosiveSize","_radius","_deadManSwtich","_detonateTrigger"]
_suicideBomberString = "[_this,[_this] call DJOCommon_fnc_getEnemyFactions,""SMALL"",20,TRUE,false] spawn EOS_fnc_suicideBomber;";
_initString = "";

if (_fileExists) then
{
    diag_log format ["EOS_fnc_getUnitType: Found matching loadout file for %1",_classname];

    _initString = preprocessFileLineNumbers _fileName; 
    if (EOS_USE_FLASHLIGHTS) then
    {  
        _flashLightArray = [_initString,_addFlashlightString,_useFlashLightString];
        _initString = _flashLightArray joinString "";
    };
    if (random 1.0 <= EOS_SUICIDE_CHANCE) then
    {  
        _suicideBomberArray = [_initString,_suicideBomberString];
        _initString = _suicideBomberArray joinString "";
    };
}
else
{
    if (EOS_USE_FLASHLIGHTS) then
    {  
        _flashLightArray = [_initString,_addFlashlightString,_useFlashLightString];
        _initString = _flashLightArray joinString "";
    };
    if (random 1.0 <= EOS_SUICIDE_CHANCE) then
    {  
        _suicideBomberArray = [_initString,_suicideBomberString];
        _initString = _suicideBomberArray joinString "";
    };
};

//hint _initString;
_initString;
