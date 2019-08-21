if (!isServer) exitWith {};
// SINGLE INFANTRY GROUP
private ["_grp","_unit","_pool","_pos","_faction"];

_pos=(_this select 0);
_grpSize=(_this select 1);
_faction=(_this select 2);
_side=(_this select 3);
_sidesArray = [WEST,EAST,Resistance,Civilian];
_enemyFactionsArray = [];

_grpMin=_grpSize select 0;
_grpMax=_grpSize select 1;
_d=_grpMax-_grpMin;				
_r=floor(random _d);							
_grpSize=_r+_grpMin;
_newPos = _pos;

if (surfaceiswater _pos) then {
	_newPos = [_pos, 0.0, 200.0, 1.0, 0, 5.0, 0, [], _pos] call BIS_fnc_findSafePos;
	_pool=[_faction,0] call eos_fnc_getunitpool;
}
else
{
	_newPos = _pos;
	_pool=[_faction,0] call eos_fnc_getunitpool;
};
	
_grp = createGroup _side;
    
{
    if ([_side, _x] call BIS_fnc_sideIsEnemy) then
    {
        _enemyFactionsArray append [_x];
    };
} forEach _sidesArray;
			
for "_x" from 1 to _grpSize do
{
	_unitType = "";
	_unitType=_pool select (floor(random(count _pool)));

	//diag_log format ["EOS_fnc_spawnGroup _unitType: %1",_unitType];

    _init = [_unitType,_enemyFactionsArray] call eos_fnc_getunitloadout;
	_unit = _grp createUnit [_unitType, _newPos, [], 6, "FORM"];
    [_unit, (compileFinal _init)] spawn BIS_fnc_spawn;
};

/*
// attach laser target to each man
//_laserTarget0 = laserTarget _unit;
if (WEST in _enemyFactionsArray) then
{
    _laserTarget0 = "LaserTargetW" createVehicle getposatl (leader _grp);
    _laserTarget0 attachTo [(leader _grp), [0, 0, 0]];
    _null = [(leader _grp),_laserTarget0] spawn
    {
        params["_unit","_target"];
        waitUntil {sleep (5 + random 5); !alive _unit};
        detach _target;
        deleteVehicle _target;
    };
};
if (EAST in _enemyFactionsArray) then
{
    _laserTarget1 = "LaserTargetE" createVehicle getposatl (leader _grp);
    _laserTarget1 attachTo [_unit, [0, 0, 0]];
    _null = [(leader _grp),_laserTarget0] spawn
    {
        params["_unit","_target"];
        waitUntil {sleep (5 + random 5); !alive _unit};
        detach _target;
        deleteVehicle _target;
    };
};
//if (Resistance in _enemyFactionsArray) then
//{
//    _laserTarget2 = "LaserTargetE" createVehicle getposatl (leader _grp);
//    _laserTarget2 attachTo [_unit, [0, 0, 0]];
//};
*/

_grp
