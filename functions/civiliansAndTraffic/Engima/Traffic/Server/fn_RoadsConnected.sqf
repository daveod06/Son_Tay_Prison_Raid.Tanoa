params ["_thisSegment", "_targetSegment", ["_visitedSegments", []]];

scopeName "main";

if (isNil "DJOTraffic_MarkerNo") then {
	DJOTraffic_MarkerNo = 1;
};

/*
private _marker = createMarker ["DJOTraffic_TraceMarker" + str DJOTraffic_MarkerNo, getPos _thisSegment];
_marker setMarkerShape "ICON";
_marker setMarkerType "hd_dot";
DJOTraffic_MarkerNo = DJOTraffic_MarkerNo + 1;
*/
if (_thisSegment == _targetSegment) then {
	//_marker setMarkerColor "ColorBlue";
	true breakOut "main";
};

_visitedSegments pushBack _thisSegment;

private _connectedSegments = roadsConnectedTo _thisSegment;

{
	if (!(_x in _visitedSegments)) then {
		if ([_x, _targetSegment, _visitedSegments] call DJOTraffic_fnc_RoadsConnected) then {
			true breakOut "main";
		};
	};
} foreach _connectedSegments;

false
