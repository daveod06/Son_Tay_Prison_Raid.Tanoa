// [_vehicleName] execVm "scripts\common\vehicleOk.sqf"
//if(!isServer)exitWith{};

fnc_vehicleOk =
{
	private ["_vehicleName","_vehicleOk"];

	_vehicleName = _this select 0;
	_vehicleOk = false;
	if (!(isNull _vehicleName)) then
	{
		if (alive _vehicleName) then
		{
		    _vehicleOk = true;
		};
	};
	_vehicleOk
};

_return = _this call fnc_vehicleOk;
_return
