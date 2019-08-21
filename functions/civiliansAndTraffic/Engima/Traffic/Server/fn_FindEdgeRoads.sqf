private ["_minTopLeftDistances", "_minTopRightDistances", "_minBottomRightDistances", "_minBottomLeftDistances"];
private ["_worldTrigger", "_worldSize", "_mapTopLeftPos", "_mapTopRightPos", "_mapBottomRightPos", "_mapBottomLeftPos", "_i", "_nextStartPos", "_segmentsCount"];

if (!isNil "DJOTraffic_edgeRoadsInitializing") exitWith {};
DJOTraffic_edgeRoadsInitializing = true;

sleep 3; // Wait for all traffic instances to be registered

_worldTrigger = call BIS_fnc_worldArea;
_worldSize = triggerArea _worldTrigger;
_mapTopLeftPos = [0, 2 * (_worldSize select 1)];
_mapTopRightPos = [2 * (_worldSize select 0), 2 * (_worldSize select 1)];
_mapBottomRightPos = [2 * (_worldSize select 0), 0];
_mapBottomLeftPos = [0, 0];

_minTopLeftDistances = [];
_minTopRightDistances = [];
_minBottomRightDistances = [];
_minBottomLeftDistances = [];

for "_i" from 0 to DJOTraffic_instanceIndex do {
	_minTopLeftDistances pushBack 1000000;
	_minTopRightDistances pushBack 1000000;
	_minBottomRightDistances pushBack 1000000;
	_minBottomLeftDistances pushBack 1000000;
};

DJOTraffic_allRoadSegments = [0,0,0] nearRoads 1000000;
sleep 0.01;
_segmentsCount = count DJOTraffic_allRoadSegments;

// Find all edge road segments

_i = 0;
_nextStartPos = 1;
while { _i < _segmentsCount } do {
	private ["_instanceIndex", "_road", "_roadPos", "_markerName", "_insideMarker", "_roads"];
	
	_road = DJOTraffic_allRoadSegments select _i;
	_roadPos = getPos _road;
	
	_instanceIndex = 0;

	//if (isOnRoad (_roadPos)) then { // A path is not a road (like on Tanoa).
		while { _instanceIndex <= DJOTraffic_instanceIndex } do {
			_markerName = DJOTraffic_areaMarkerNames select _instanceIndex; // Get the marker name for the current instance
			
			_insideMarker = true;
			if (_markerName != "") then {
				_insideMarker = _roadPos inArea _markerName;
			};
			
			if (_insideMarker) then {
				_roads = DJOTraffic_roadSegments select _instanceIndex;
				
				if (isOnRoad getPos _road) then { // A path is not a road (like on Tanoa).
					_roads pushBack _road;
				
					// Top left
					if (_roadPos distance _mapTopLeftPos < (_minTopLeftDistances select _instanceIndex)) then {
						_minTopLeftDistances set [_instanceIndex, _roadPos distance _mapTopLeftPos];
						DJOTraffic_edgeTopLeftRoads set [_instanceIndex, _road];
					};
					
					// Top right
					if (_roadPos distance _mapTopRightPos < (_minTopRightDistances select _instanceIndex)) then {
						_minTopRightDistances set [_instanceIndex, _roadPos distance _mapTopRightPos];
						DJOTraffic_edgeTopRightRoads set [_instanceIndex, _road];
					};
					
					// Bottom right
					if (_roadPos distance _mapBottomRightPos < (_minBottomRightDistances select _instanceIndex)) then {
						_minBottomRightDistances set [_instanceIndex, _roadPos distance _mapBottomRightPos];
						DJOTraffic_edgeBottomRightRoads set [_instanceIndex, _road];
					};
					
					// Bottom left
					if (_roadPos distance _mapBottomLeftPos < (_minBottomLeftDistances select _instanceIndex)) then {
						_minBottomLeftDistances set [_instanceIndex, _roadPos distance _mapBottomLeftPos];
						DJOTraffic_edgeBottomLeftRoads set [_instanceIndex, _road];
					};
					
					if (!(DJOTraffic_edgeRoadsUseful select _instanceIndex)) then {
						DJOTraffic_edgeRoadsUseful set [_instanceIndex, true];
					};
					sleep 0.01;
				};
			};
			
			_instanceIndex = _instanceIndex + 1;
		};
		
		sleep 0.01;
		_i = _i + 50;
		if (_i >= _segmentsCount) then {
			_i = _nextStartPos;
			_nextStartPos = _nextStartPos + 1;
			if (_nextStartPos == 50) then {
				_i = _segmentsCount;
			};
		};
	//};
};

DJOTraffic_edgeRoadsInitialized = true;

