/*
// Calculates how much area that is covered when blacklist markers are taken account of,
// and takes all players and all blacklist markers in account.
// _playerPositions (Array): All players' positions.
// Returns (Scalar): The average share of area covered by blacklist markers. 0 = Nothing 
// covered, 1 = all covered.
params ["_playerPositions"];

private _sumShare = 0;

{
	_sumShare = _sumShare + ([_x] call DJOTraffic_fnc_CalculatePlayerBlacklistCoverage);
} foreach _playerPositions;

_sumShare / (count _playerPositions)

*/
