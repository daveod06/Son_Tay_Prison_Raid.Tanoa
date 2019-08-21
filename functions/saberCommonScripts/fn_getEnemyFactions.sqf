// [_unit]  execVM "scripts\common\getEnemyFactions.sqf"
//if (!isServer) exitWith {};

fnc_getEnemyFactions =
{
    private ["_unit","_unitOk","_sidesArray","_enemyFactionsArray","_side"];
    _unit = _this select 0;
    _unitOk = [_unit] call DJOCommon_fnc_unitOk;
    if (!_unitOk) exitWith {};
    
    _sidesArray = [WEST,EAST,Resistance,Civilian];
    _enemyFactionsArray = [];
    _side = side _unit;
    
    {
        if ([_side, _x] call BIS_fnc_sideIsEnemy) then
        {
            _enemyFactionsArray append [_x];
        };
    } forEach _sidesArray;
    _enemyFactionsArray
};

_return = _this call fnc_getEnemyFactions;
_return
