// [_objectName] execVm "scripts\common\objectExists.sqf"
//if(!isServer)exitWith{};

fnc_objectExists =
{
	private ["_objectName","_objectOk"];

	_objectName = _this select 0;
	_objectOk = false;
	if (!(isNull _objectName)) then
	{
		_objectOk = true;
	};
	_objectOk
};

_return = _this call fnc_objectExists;
_return
