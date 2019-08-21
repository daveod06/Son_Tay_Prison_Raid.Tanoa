// [_unit or _pos or _group,_distance]  execVM "scripts\common\findNearestEnemies.sqf"
//if (!isServer) exitWith {};

fnc_findNearestEnemy =
{
    private ["_unit","_pos"];
    private _input = _this select 0;
    private _distance = _this select 1;
    private _obj = objNull;
    if (typeName _input == "OBJECT") then
    {
        if ([_input] call DJOCommon_fnc_unitOk) then
        {
            _obj = _input;
            _pos = getPosATL _obj;
        };
    };
    if (typeName _input == "GROUP") then
    {
        if ([_input] call DJOCommon_fnc_groupOk) then
        {
            _obj = leader _input;
            _pos = getPosATL _obj;
        };
    };

    if (Saber_DEBUG && (isNull _obj)) exitWith {hint "DJOCommon_fnc_findNearestEnemy input validation failed.";};

    _nearestEnemies = _obj call BIS_fnc_enemyTargets;
    if (count _nearestEnemies > 0) then
    {
        _list = _pos nearEntities _distance;
        _enemyFactions = [_obj] call DJOCommon_fnc_getEnemyFactions;
        _nearEnemies = _enemyFactions select {side _x in _enemyFactions;};
        if (count _nearEnemies > 0) then
        {
            _nearestEnemies = _nearEnemies;
        }
        else
        {
            _nearestEnemies = [];
        };
    };
    _nearestEnemies

};

_return = _this call fnc_findNearestEnemies;
_return
