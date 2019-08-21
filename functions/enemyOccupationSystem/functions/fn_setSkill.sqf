_grp=(_this select 0);
_skillArray=(_this select 1);

//_message = format ["SET SKILL: _this: %1 _grp: %2 _skillArray: %3",_this,_grp,_skillArray];
//hint _message; sleep 2.0;

_skillset = server getvariable _skillArray;
//_message = format ["SET SKILL: _skillArray: %1 ",_skillArray];
//hint _message; sleep 2.0;
{
	_unit = _x;
	{
		_skillvalue = (_skillset select _forEachIndex);
		_unit setSkill [_x,_skillvalue];
	} forEach ["aimingAccuracy","aimingShake","aimingSpeed","spotDistance","spotTime","courage","reloadSpeed","commanding","general"];
	
    _general         = _x skillFinal "general";
	_aimingspeed     = _x skillFinal "aimingspeed";
	_spotdistance    = _x skillFinal "spotdistance";
	_aimingaccuracy  = _x skillFinal "aimingaccuracy"; 
	_aimingshake     = _x skillFinal "aimingshake"; 
	_spottime        = _x skillFinal "spottime";
	_commanding      = _x skillFinal "commanding"; 
	_reloadspeed     = _x skillFinal "reloadspeed";
	_courage         = _x skillFinal "courage";
	_endurance       = _x skillFinal "endurance";

    diag_log format ["EOS_fnc_setSkill set skill for %12 to _general: %1 _aimingspeed: %2 _spotdistance: %3 _aimingaccuracy: %4 _aimingshake: %5 _spottime: %6 _commanding: %7 _general: %8 _reloadspeed: %9 _courage: %10 _endurance: %11",_general,_aimingspeed,_spotdistance,_aimingaccuracy,_aimingshake,_spottime,_commanding,_general,_reloadspeed,_courage,_endurance,_x];

	if (EOS_DAMAGE_MULTIPLIER != 1) then {_unit removeAllEventHandlers "HandleDamage";_unit addEventHandler ["HandleDamage",{_damage = (_this select 2)*EOS_DAMAGE_MULTIPLIER;_damage}];};
	if (EOS_KILLCOUNTER) then {_unit addEventHandler ["killed", "null=[] spawn EOS_fnc_KillCounter;"]};
	// ADD CUSTOM SCRIPTS TO UNIT HERE
} forEach (units _grp); 
