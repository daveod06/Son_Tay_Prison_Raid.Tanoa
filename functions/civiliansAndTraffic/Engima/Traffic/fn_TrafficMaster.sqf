DJOTraffic_SilentDebugMode = false;

DJOTraffic_DebugTextEventArgs = []; // Empty
DJOTraffic_DebugMarkerEventArgs = []; // [name, position, size, direction, shape ("RECTANGLE" or "ELLIPSE"), markerColor, markerText (optional)] or alternatively [name, position, type, markerColor (optional), markerText (optional)]
DJOTraffic_DeleteDebugMarkerEventArgs = [];  // [name]

"DJOTraffic_DebugTextEventArgs" addPublicVariableEventHandler {
    DJOTraffic_DebugTextEventArgs call DJOTraffic_ShowDebugTextLocal;
};

"DJOTraffic_DebugMarkerEventArgs" addPublicVariableEventHandler {
    DJOTraffic_DebugMarkerEventArgs call DJOTraffic_SetDebugMarkerLocal;
};

"DJOTraffic_DeleteDebugMarkerEventArgs" addPublicVariableEventHandler {
    DJOTraffic_DeleteDebugMarkerEventArgs call DJOTraffic_fnc_DeleteDebugMarkerLocal;
};

fnc_master = 
{
	
	_faction = _this select 0;
	_side = _this select 1;
	_vehicles_count = _this select 2;
	_max_groups_count = _this select 3;
	_min_spawn_distance = _this select 4;
	_max_spawn_distance = _this select 5;
	_min_skill = _this select 6;
	_max_skill = _this select 7;
	_area_marker = _this select 8;
	_hide_area_marker = _this select 9;
	_on_unit_creating = _this select 10;
	_on_unit_created = _this select 11;
	_on_unit_removing = _this select 12;


	DJOTraffic_instanceIndex = -1;
	DJOTraffic_areaMarkerNames = [];
	DJOTraffic_roadSegments = [];
	DJOTraffic_edgeTopLeftRoads = [];
	DJOTraffic_edgeTopRightRoads = [];
	DJOTraffic_edgeBottomRightRoads = [];
	DJOTraffic_edgeBottomLeftRoads = [];
	DJOTraffic_edgeRoadsUseful = [];


	/* 
	 * This file contains parameters to config and function call to start an instance of
	 * traffic in the mission. The file is edited by the mission developer.
	 *
	 * See file Engima\Traffic\Documentation.txt for documentation and a full reference of 
	 * how to customize and use Engima's Traffic.
	 */
	 
	 private ["_parameters"];

	// get unit classnames
	_units = [_faction] call DJOTraffic_fnc_UnitPools;

    // Set traffic parameters.
	_parameters = [
		["SIDE", _side],
		["VEHICLES", _units],
		["VEHICLES_COUNT", _vehicles_count],
		["MAX_GROUPS_COUNT", _max_groups_count],
		["MIN_SPAWN_DISTANCE", _min_spawn_distance],
		["MAX_SPAWN_DISTANCE", _max_spawn_distance],
		["MIN_SKILL", _min_skill],
		["MAX_SKILL", _max_skill],
		["AREA_MARKER", _area_marker],
		["HIDE_AREA_MARKER", _hide_area_marker],
		["ON_UNIT_CREATING", _on_unit_creating],
		["ON_UNIT_CREATED", _on_unit_created],
		["ON_UNIT_REMOVING", _on_unit_removing]
	];

	// Start an instance of the traffic
	_parameters spawn DJOTraffic_fnc_StartTraffic;

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