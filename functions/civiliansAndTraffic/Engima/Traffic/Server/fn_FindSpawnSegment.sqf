params ["_currentInstanceIndex", "_allPlayerPositions", "_minSpawnDistance", "_maxSpawnDistance", "_activeVehicles"];
private ["_insideMarker", "_areaMarkerName", "_refPlayerPos", "_roadSegments", "_roadSegment", "_isOk", "_tries", "_result", "_spawnDistanceDiff", "_refPosX", "_refPosY", "_dir", "_tooFarAwayFromAll", "_tooClose", "_tooCloseToAnotherVehicle"];

_spawnDistanceDiff = _maxSpawnDistance - _minSpawnDistance;
_roadSegment = "NULL";
_refPlayerPos = (selectRandom _allPlayerPositions) select 1;
_areaMarkerName = DJOTraffic_areaMarkerNames select _currentInstanceIndex;

_isOk = false;
_tries = 0;
while {!_isOk && _tries < 10} do {
    _isOk = true;
    
    _dir = random 360;

    _refPosX = (_refPlayerPos select 0) + (_minSpawnDistance + _spawnDistanceDiff / 2) * sin _dir;
    _refPosY = (_refPlayerPos select 1) + (_minSpawnDistance + _spawnDistanceDiff / 2) * cos _dir;
    
    _roadSegments = [_refPosX, _refPosY] nearRoads (_spawnDistanceDiff / 2);
    
    if (count _roadSegments > 0) then {
        _roadSegment = selectRandom _roadSegments;
        private _roadPos = getPos _roadSegment;
		
		if (isOnRoad _roadPos) then
		{
            // Check if road segment is ok
            _tooFarAwayFromAll = true;
            _tooClose = false;
            _insideMarker = true;
            _tooCloseToAnotherVehicle = false;
            
            if (_areaMarkerName != "" && !((_roadPos) inArea _areaMarkerName)) then {
            	_insideMarker = false;
            };
            
            if (_insideMarker) then {
	            {
	            	private _closePos = _x select 0;
	            	private _farPos = _x select 1;
	                private _tooFarAway = false;
	                
	                if (_closePos distance (_roadPos) < _minSpawnDistance) then {
	                    _tooClose = true;
	                }
	                else {
		                if (_farPos distance (_roadPos) > _maxSpawnDistance) then {
		                    _tooFarAway = true;
		                };
	                };
	                
	                if (!_tooFarAway) then {
	                    _tooFarAwayFromAll = false;
	                };
	                
	                sleep 0.01;
	            } foreach _allPlayerPositions;
			
                {
                    private ["_vehicle"];
                    _vehicle = _x select 0;
                    
                    if ((_roadPos) distance _vehicle < 100) then {
                        _tooCloseToAnotherVehicle = true;
                    };
                    
                    sleep 0.01;
                } foreach _activeVehicles;
			};
	                
            _isOk = true;
            
            if (_tooClose || _tooFarAwayFromAll || _tooCloseToAnotherVehicle || !_insideMarker) then {
                _isOk = false;
                _tries = _tries + 1;
            };
		}
		else {
            _isOk = false;
            _tries = _tries + 1;
		};
    }
    else {
        _isOk = false;
        _tries = _tries + 1;
    };
    
	sleep 0.1;
};

if (!_isOk) then {
    _result = "NULL";
}
else {
    _result = _roadSegment;
};

_result
