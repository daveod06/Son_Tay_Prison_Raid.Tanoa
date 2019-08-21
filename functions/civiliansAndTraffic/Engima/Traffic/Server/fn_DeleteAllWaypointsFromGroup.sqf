// Deletes all waypoints from a group.
// _group (Group): The group to delete all waypoints from.
params ["_group"];
private ["_waypoints", "_i"];

_waypoints = waypoints _group;

for [{_i = (count _waypoints) - 1}, {_i >= 0}, {_i = _i - 1}] do {
	deleteWaypoint [_group, _i];
} 

