// [_groupName, _trigger] execVm "scripts\common\groupAnyInTrigger.sqf"
//if (!isServer) exitWith {};

fnc_groupAnyInTrigger =
{
    private ["_groupName","_trigger","_triggerOk","_unitsInTrigger","_count","_groupInTrigger","_loop"];
    _groupName = _this select 0;
    _trigger = _this select 1;

    //_groupOk = [_groupName] call DJOCommon_fnc_groupOk;
    _triggerOk = !(isNull _trigger);
    if !(_triggerOk) exitwith {};
    _trigger setTriggerActivation [ANY", "PRESENT", true];

    _groupInTrigger = false;
    _loop = 1;
    
    while {_loop == 1} do
    {
        if ([_groupName] call DJOCommon_fnc_groupOk) then
        {
            //_groupInTrigger = (({_x in list _trigger} count (units _groupName)) >= 1 );
            _unitsInTrigger = list _trigger;
            if (count _unitsInTrigger > 0) then
            {
                _count = 0;
                {
                    if (_x in (units _groupName)) then
                    {
                        _count = _count + 1;
                    };
                } forEach _unitsInTrigger;
                if (_count > 1) then
                {
                    _groupInTrigger = true;
                };
            };
        }
        else
        {
            _loop = 0;
            _groupInTrigger = false;
        };
        sleep 2.0;
        _groupInTrigger
    };
};

_return = _this call fnc_groupAnyInTrigger;
_return
