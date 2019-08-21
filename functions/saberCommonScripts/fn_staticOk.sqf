// [_staticName] execVm "scripts\common\staticOk.sqf"
//if(!isServer)exitWith{};

fnc_staticOk =
{
	private ["_staticName","_staticOk"];
	_staticName = _this select 0;
	_staticOk = false;

	if ([_staticName] call DJOCommon_fnc_unitOk) then
	{
		if ([gunner _staticName] call DJOCommon_fnc_unitOk) then
		{
			_staticOk = true;
		};
	};
	_staticOk
};

_return = _this call fnc_staticOk;
_return
