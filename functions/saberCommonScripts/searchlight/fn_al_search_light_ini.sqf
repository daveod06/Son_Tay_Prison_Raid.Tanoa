private ["_object_with_searchlight","_obiect_search","_veh_turr_end"];

if (!isServer) exitWith {};

_object_with_searchlight = _this select 0;

if (!isNil{_object_with_searchlight getVariable "activ"}) exitWith {};
_object_with_searchlight setVariable ["activ",true,true];

if (_object_with_searchlight isKindOf "air") then {
	_object_with_searchlight setVariable ["search_lit_ON",true,true];
	//_object_with_searchlight addAction ["Toggle Search Light","AL_searchlight\turn_on_off_sl_heli.sqf","",0,false,true,"","",15,false];
	_object_with_searchlight addAction ["Toggle Search Light",DJOCommon_fnc_turn_on_off_sl_heli,"",0,false,true,"","",15,false];
	//[[_object_with_searchlight],"AL_searchlight\al_search_effect_heli.sqf"] remoteExec ["execVM",0,true];
    [_object_with_searchlight] remoteExec ["DJOCommon_fnc_al_search_effect_heli",0,true];
} else {
	//_object_with_searchlight addAction ["Toggle Search Light","AL_searchlight\turn_on_off_sl.sqf","",0,false,true,"","",2,false];
	_object_with_searchlight addAction ["Toggle Search Light",DJOCommon_fnc_turn_on_off_sl,"",0,false,true,"","",2,false];
	//[[_object_with_searchlight],"AL_searchlight\al_search_light_effect.sqf"] remoteExec ["execVM",0,true];
    [_object_with_searchlight] remoteExec ["DJOCommon_fnc_al_search_light_effect",0,true];
};
