//["JIP_id", "onplayerConnected", {[] spawn EOS_fnc_Markers;}] call BIS_fnc_addStackedEventHandler;
// EOS 1.98 by BangaBob 
IF (isnil "server")then{hint "YOU MUST PLACE A GAME LOGIC NAMED SERVER!";};
[] execVm "functions\enemyOccupationSystem\fn_AI_Skill.sqf";

["JIP_id", "onplayerConnected", {[] spawn EOS_fnc_Markers;}] call BIS_fnc_addStackedEventHandler; // FIXME

fnc_master =
{

    _eosZones = _this select 0;
    _houseGroups = _this select 1;
    _patrolGroups = _this select 2;
    _lightVehicles = _this select 3;
    _armoredVehicles = _this select 4;
    _staticWeapons = _this select 5;
    _helicopters = _this select 6;
    _settings = _this select 7;
    [_eosZones,_houseGroups,_patrolGroups,_lightVehicles,_armoredVehicles,_staticWeapons,_helicopters,_settings] call EOS_fnc_Spawn;

};


/*
if (!hasInterface && !isDedicated && (missionNamespace getVariable ["currentHC_ID",-1]) == clientOwner) then
{
    _this spawn fnc_master;
    currentHC_ID = -1;
    //publicVariable "currentHC_ID";
    missionNamespace setVariable ["currentHC_ID",currentHC_ID];
}
else
{
    if (isServer) then
    {
        _this spawn fnc_master;
    };
};
*/

if (isServer) then
    {
        _this spawn fnc_master;
    };