// put this in init.sqf

// --------------------------------------  COMPILE CIVILIANS
//call compile preprocessFileLineNumbers "functions\civiliansAndTraffic\Engima\Civilians\Init.sqf"; // not necessary now
// --------------------------------------  START UP CIVILIANS
_faction = 0;
_civSide = civilian;
_civMinSkill = 0.3;
_civMaxSkill = 0.5;
_civMaxWaitTime = 300.0;
_civRunChance = 0.01;
_civInstanceNo = 0;
_unitsPerBuilding = 0.4;
_max_groups_count = 50;
_min_spawn_distance = 50;
_max_spawn_distance = 600;
_blacklist_markers = ["no_civ_0","no_civ_1","no_civ_2","EOSzone_1","EOSzone_2","EOSzone_3"];
_hide_blacklist_markers = true;
_on_unit_spawned_callback = {};
_on_unit_remove_callback = {true};
_debug = false;
[_faction,
_unitsPerBuilding,
_max_groups_count,
_min_spawn_distance,
_max_spawn_distance,
_blacklist_markers,
_hide_blacklist_markers,
_on_unit_spawned_callback,
_on_unit_spawned_callback,
_on_unit_remove_callback,
_debug] spawn DJOCivilians_fnc_CiviliansMaster;

