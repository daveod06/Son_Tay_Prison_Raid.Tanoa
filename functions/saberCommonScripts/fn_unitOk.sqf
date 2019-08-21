// [_unitName] execVm "scripts\common\unitOk.sqf"
//if(!isServer)exitWith{};

fnc_unitOk =
{
	private ["_unitName","_unitOk"];

	_unitName = _this select 0;
	_unitOk = false;
	if (!(isNull _unitName)) then
	{
		if (alive _unitName) then
		{
		    _unitOk = true;
		};
	};
	_unitOk
};

_return = _this call fnc_unitOk;
_return
