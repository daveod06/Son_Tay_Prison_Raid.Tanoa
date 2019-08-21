// [_unit]  execVM "scripts\common\getFriendlyFactions.sqf"
//if (!isServer) exitWith {};

fnc_getFriendlyFactions =
{
    private ["_unit","_unitOk","_sidesArray","_friendlyFactionsArray","_side"];
    _unit = _this select 0;
    _unitOk = [_unit] call DJOCommon_fnc_unitOk;
    if (!_unitOk) exitWith {};
    
    _sidesArray = [WEST,EAST,Resistance,Civilian];
    _friendlyFactionsArray = [];
    _side = side _unit;
    
    {
        if ([_side, _x] call BIS_fnc_sideIsFriendly) then
        {
            _friendlyFactionsArray append [_x];
        };
    } forEach _sidesArray;
    _friendlyFactionsArray
};

_return = _this call fnc_getFriendlyFactions;
_return
