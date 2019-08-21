// Calculates the blacklist coverage share for one player.
// _playerPos (Array): The player's position.
// Returns (Scalar): Coverage chare for surrounding blacklist markers. 0 if no area is
//                   covered by blacklist marker, and 1 if all area is covered.
params ["_playerPos", "_maxSpawnDistance", "_marker"];

//private _minSpawnDistance = _mConfiguration.MinSpawnDistance;
//private _playerRadius = _mConfiguration.MaxSpawnDistance;
//private _blacklistMarkers = _mConfiguration.BlacklistMarkers;

private _sumCoveredShare = 0;

private _distanceToMarker = _playerPos distance2D (getMarkerPos _marker);
private _avgMarkerRadius = (((getMarkerSize _marker) select 0) + ((getMarkerSize _marker) select 1)) / 2;
private _coveredShare = 0;

// If the marker is covered at all
if (_distanceToMarker < _maxSpawnDistance + _avgMarkerRadius) then
{
	// If the marker is completely surrounded by the player radius
	if (_maxSpawnDistance > _distanceToMarker + _avgMarkerRadius) then {
		_coveredShare = _avgMarkerRadius / _maxSpawnDistance;
	}
	else {
		_coveredShare = (_maxSpawnDistance + _avgMarkerRadius - _distanceToMarker) / (2 * _maxSpawnDistance);
		
		// If player radius is completely surrounded by the marker, the covered share must not be greater than 1.
		if (_coveredShare > 1) then {
			_coveredShare = 1;
		};
	};
};

_sumCoveredShare = _sumCoveredShare + _coveredShare;

/*
private _circleParts = 12;
private _waterCount = 0;
private _sumWaterCoveredShare = 0;

for "_i" from 1 to _circleParts do {
	private _x = (_playerPos select 0) + _minSpawnDistance * sin (_i * 360 / _circleParts);
	private _y = (_playerPos select 1) + _minSpawnDistance * cos (_i * 360 / _circleParts);
	
	if (surfaceIsWater [_x, _y] && !([[_x, _y], _mConfiguration.BlacklistMarkers] call MarkerHelper.PositionInsideAnyMarker)) then {
		_waterCount = _waterCount + 1;
	};
};

_sumWaterCoveredShare = _waterCount / _circleParts;
*/

//_sumCoveredShareBlacklist + _sumWaterCoveredShare
_sumCoveredShare

