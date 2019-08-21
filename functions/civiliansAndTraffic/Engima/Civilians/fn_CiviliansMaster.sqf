DJOCivilians_SilentDebugMode = false;

DJOCivilians_DebugTextEventArgs = []; // Empty
DJOCivilians_DebugMarkerEventArgs = []; // [name, position, size, direction, shape ("RECTANGLE" or "ELLIPSE"), markerColor, markerText (optional)] or alternatively [name, position, type, markerColor (optional), markerText (optional)]
DJOCivilians_DeleteDebugMarkerEventArgs = [];  // [name]

"DJOCivilians_DebugTextEventArgs" addPublicVariableEventHandler {
    DJOCivilians_DebugTextEventArgs call DJOCivilians_ShowDebugTextLocal;
};

"DJOCivilians_DebugMarkerEventArgs" addPublicVariableEventHandler {
    DJOCivilians_DebugMarkerEventArgs call DJOCivilians_SetDebugMarkerLocal;
};

"DJOCivilians_DeleteDebugMarkerEventArgs" addPublicVariableEventHandler {
    DJOCivilians_DeleteDebugMarkerEventArgs call DJOCivilians_DeleteDebugMarkerLocal;
};

fnc_master = 
{
	_faction = _this select 0;
	_civSide = civilian;
	_unitsPerBuilding = _this select 1;
	_max_groups_count = _this select 2;
	_min_spawn_distance = _this select 2;
	_max_spawn_distance = _this select 4;
	_blacklist_markers = _this select 5;
	_hide_blacklist_markers = _this select 6;
	_on_unit_spawned_callback = _this select 7;
	_on_unit_remove_callback = _this select 8;
	_debug = _this select 9;

	_civSide = civilian;
	_civMinSkill = 0.3;
	_civMaxSkill = 0.5;
	_civMaxWaitTime = 300.0;
	_civRunChance = 0.01;
	_civInstanceNo = 0;
	DJOCivilians_SIDE = _civSide;      // If you for some reason want the units to spawn into another side.
	DJOCivilians_MINSKILL = _civMinSkill;       // If you spawn something other than civilians, you may want to set another skill level of the spawned units.
	DJOCivilians_MAXSKILL = _civMaxSkill;       // If you spawn something other than civilians, you may want to set another skill level of the spawned units.
	DJOCivilians_MAXWAITINGTIME = _civMaxWaitTime; // Maximum standing still time in seconds
	DJOCivilians_RUNNINGCHANCE = _civRunChance; // Chance of running instead of walking

	// Civilian personalities
	DJOCivilians_BEHAVIOURS = [
		["CITIZEN", 100] // Default citizen with ordinary behaviour. Spawns in a house and walks to another house, and so on...
	];

	DJOCivilians_INSTANCE_NO = _civInstanceNo;

	/* 
	 * This file contains config parameters and a function call to start the civilian script.
	 * The parameters in this file may be edited by the mission developer.
	 *
	 * See file Engima\Civilians\Documentation.txt for documentation and a full reference of 
	 * how to customize and use Engima's Civilians.
	 */
	 
    // determine class names of units to be used
    _unitClasses = [];
	_unitClasses = [_faction] call DJOCivilians_fnc_UnitPools;

	// Set civilian parameters.
    private ["_parameters"];
	_parameters = [
		["UNIT_CLASSES", _unitClasses],
		["UNITS_PER_BUILDING", _unitsPerBuilding],
		["MAX_GROUPS_COUNT", _max_groups_count],
		["MIN_SPAWN_DISTANCE", _min_spawn_distance],
		["MAX_SPAWN_DISTANCE", _max_spawn_distance],
		["BLACKLIST_MARKERS", _blacklist_markers],
		["HIDE_BLACKLIST_MARKERS", _hide_blacklist_markers],
		["ON_UNIT_SPAWNED_CALLBACK", _on_unit_spawned_callback],
		["ON_UNIT_REMOVE_CALLBACK", _on_unit_remove_callback],
		["DEBUG", _debug]
	];

	// Start the script
	_parameters spawn DJOCivilians_fnc_StartCivilians;

};


/*
if (!hasInterface && !isDedicated && currentHC_ID == clientOwner) then
{
    _this spawn fnc_master;
    currentHC_ID = -1;
    publicVariable "currentHC_ID";
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