if (isServer) then 
{
	// [_basZones,_spawnZones,_patrolGroups,_lightVehicles,_armoredVehicles,_helicopters,_settings,_waveParams] call EOS_fnc_Bastion_Spawn;
	private ["_CHgroupArray","_LVgroupArray","_PAgroupArray","_CHGroups","_AVehGroups","_LVehGroups","_PApatrols"];

	/*
	_basZones = _this select 0; // ["BASzone_0","BASzone_1"];
	_spawnZones = _this select 1; // ["BASspawn_0",180.0];
	_patrolGroups = _this select 2; // [8,3,90];
	_lightVehicles = _this select 3; // [0,1,60];
	_armoredVehicles = _this select 4; // [0,50];
	_helicopters = _this select 5; // [0,0];
	_settings = _this select 6; // [11,1,east,true,false];
	_waveParams = _this select 7; // [6*60,3,5*60,false,true];
	[["BAS_zone_1"],[0,1],[0,2],[0],[1,2],[0,0,EAST,TRUE],[0,2,120,TRUE,FALSE,TRUE]] call Bastion_Spawn;
	"eos\core\b_launch.sqf" = "fn_bastion_spawn.sqf"
	*/

	_JIPmkr=(_this select 0);
	_spawn=(_this select 1);

	_infantry=(_this select 2);
	_PApatrols=_infantry select 0;
	_PAgroupSize=_infantry select 1;

	_LVeh=(_this select 3);
	_LVehGroups=_LVeh select 0;
	_LVgroupSize=_LVeh select 1;
	_AVeh=(_this select 4);
	_AVehGroups=_AVeh select 0;
	_SVeh=(_this select 5);
	_CHGroups=_SVeh select 0;
	_CHgroupSize=_SVeh select 1;
	_settings=(_this select 6);
	_waveParams=(_this select 7);

	if (_PAgroupSize==0) then {_PAgroupArray=[1,1]};
	if (_PAgroupSize==1) then {_PAgroupArray=[2,4]};
	if (_PAgroupSize==2) then {_PAgroupArray=[4,8]};
	if (_PAgroupSize==3) then {_PAgroupArray=[8,12]};
	if (_PAgroupSize==4) then {_PAgroupArray=[12,16]};
	if (_PAgroupSize==5) then {_PAgroupArray=[16,20]};


	if (_LVgroupSize==0) then {_LVgroupArray=[1,1]};
	if (_LVgroupSize==1) then {_LVgroupArray=[2,4]};
	if (_LVgroupSize==2) then {_LVgroupArray=[4,8]};
	if (_LVgroupSize==3) then {_LVgroupArray=[8,12]};
	if (_LVgroupSize==4) then {_LVgroupArray=[12,16]};
	if (_LVgroupSize==5) then {_LVgroupArray=[16,20]};

	if (_CHgroupSize==0) then {_CHgroupArray=[0,0]};
	if (_CHgroupSize==1) then {_CHgroupArray=[2,4]};
	if (_CHgroupSize==2) then {_CHgroupArray=[4,8]};
	if (_CHgroupSize==3) then {_CHgroupArray=[8,12]};
	if (_CHgroupSize==4) then {_CHgroupArray=[12,16]};
	if (_CHgroupSize==5) then {_CHgroupArray=[16,20]};

	{
		_eosMarkers=server getvariable "EOSmarkers";
	
		if (isnil "_eosMarkers") then {_eosMarkers=[];};
		_eosMarkers set [count _eosMarkers,_x];
		server setvariable ["EOSmarkers",_eosMarkers,true];
		null = [_x,_spawn,[_PApatrols,_PAgroupArray],[_LVehGroups,_LVgroupArray],[_AVehGroups],[_CHGroups,_CHgroupArray],_settings,_waveParams] spawn EOS_fnc_b_core;
	} foreach _JIPmkr;

};
