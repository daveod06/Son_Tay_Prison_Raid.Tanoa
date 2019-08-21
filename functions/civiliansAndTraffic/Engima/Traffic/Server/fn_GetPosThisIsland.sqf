params ["_startPos", "_targetPos"];

scopeName "main";

private _stepDistance = 100;
private _direction = _startPos getDir _targetPos;
private _totDistance = _startPos distance2D _targetPos;
private _lastLandPos = _startPos;
private _i = 0;
private _pos = _startPos;
private _waterPositionsInARow = 0;

while { _stepDistance * _i < _totDistance } do {
	_pos = _startPos getPos [_stepDistance * (_i + 1), _direction];
	
	if (surfaceIsWater _pos) then {
		_waterPositionsInARow = _waterPositionsInARow + 1;
	}
	else {
		_lastLandPos = _pos;
	};
	
	if (_waterPositionsInARow >= 3) then {
		_lastLandPos breakOut "main";
	};
	
	_i = _i + 1;
};

_lastLandPos
