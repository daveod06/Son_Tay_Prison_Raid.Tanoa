// Tests and calculates the width of a road segment.
// _roadSegment (Object): The road segment to test for its width.
// Returns (Scalar): The width of the road in meters.
params ["_roadSegment"];

private _nextNode = objNull;
private _connectedRoads = roadsConnectedTo _roadSegment;
private _dir = 0;

if ( count _connectedRoads > 0 ) then {
	_nextNode = _connectedRoads select 0;
	_dir = [ getPos _roadSegment, getPos _nextNode ] call BIS_fnc_dirTo;
};

_dir = _dir + 90;

private _step = 0;
//private _arrow = "Sign_Arrow_F" createVehicle ([ _roadSegment, _step, _dir ] call BIS_fnc_relPos);
//_arrow setPos ([ _roadSegment, _step, _dir ] call BIS_fnc_relPos);

while { isOnRoad ([ _roadSegment, _step, _dir ] call BIS_fnc_relPos) } do {
	_step = _step + 0.1;
};

//_arrow = "Sign_Arrow_F" createVehicle ([ _roadSegment, _step, _dir ] call BIS_fnc_relPos);
//_arrow setPos ([ _roadSegment, _step, _dir ] call BIS_fnc_relPos);

_step * 2
