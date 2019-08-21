// put this in init.sqf

// --------------------------------------  COMPILE TRAFFIC
//call compile preprocessFileLineNumbers "functions\civiliansAndTraffic\Engima\Traffic\TrafficInit.sqf";
// --------------------------------------  START UP TRAFFIC
_faction = 1;
_side = civilian;
_vehicles_count = 10;
_max_groups_count = 0;
_min_spawn_distance = 600;
_max_spawn_distance = 1200;
_min_skill = 0.3;
_max_skill = 0.6;
_area_marker = "traffic_area";
_hide_area_marker = true;
_on_unit_creating = {true};
_on_unit_created = {};
_on_unit_removing = {};
[_faction,_side,
_vehicles_count,
_max_groups_count,
_min_spawn_distance,
_max_spawn_distance,
_min_skill,_max_skill,
_area_marker,
_hide_area_marker,
_on_unit_creating,
_on_unit_created,
_on_unit_removing] spawn DJOTraffic_fnc_TrafficMaster;

