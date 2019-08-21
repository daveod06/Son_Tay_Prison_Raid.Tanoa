//if (!isServer or hasInterface) exitWith {};


// set up zeus for 4 players
missionCurators = [];
CuratorLogicGroup = creategroup sideLogic;

// Enable/Disbale animals, flies, and bugs -- false turns them off
enableEnvironment true;

_timeOfDay = ("Param_TimeOfDay" call BIS_fnc_getParamValue);
_hour = _timeOfDay;
switch (_timeOfDay) do {
    case 24: { 
		_hour = round(random(24));
	};
    case 25: {
		_hour = 6+round(random(12));  //Between 0600 and 1800
	};
	case 26: { 
		_hour = 20 + round(random(8)); //Between 2000 and 0400
		_hour = _hour % 24;
	};
    default { _hour = _timeOfDay };
};
setDate [Tooth_year, Tooth_month, Tooth_day, _timeOfDay, 0];

uiSleep 0.2;
setTimeMultiplier ("Param_TimeMultiplier" call BIS_fnc_getParamValue);
if ( ("Param_UseCustomWeather" call BIS_fnc_getParamValue) == 1) then
{
};


[] spawn
{
	{
  		_x addCuratorEditableObjects [allUnits,true];
  		_x addCuratorEditableObjects [vehicles,true];
	} forEach allCurators;
	sleep 30.0;
};


// disable AI respawning
{
	_x addMPEventHandler ["MPRespawn", {
		_unit = _this select 0;
		if (!isPlayer _unit) exitWith
		{
			deleteVehicle _unit
		};
		}
	];
} forEach playableUnits;





// --------------------------------------  START UP EOS
VictoryColor="colorGreen";	// Colour of marker after completion
hostileColor="colorRed";	// Default colour when enemies active
bastionColor="colorOrange";	// Colour for bastion marker
EOS_DAMAGE_MULTIPLIER=1.0;	// 1 is default
EOS_KILLCOUNTER=false;		// Counts killed units
EOS_USE_FLASHLIGHTS=false;   // Attempts to make spawned units use flashlights
EOS_SUICIDE_CHANCE=0.0;     // Attemps to % of units as suicide bombers 0.0 -1.0
EOS_FLARE_ATTACK_SIGNAL=true; // shoot flare to signal beginning of wave
EOS_TASK_INDEX=0; // set index for EOS tasks
BAS_TASK_INDEX=0; // set index for BAS tasks

_eosZones = ["EOSzone_0"];
_houseGroups = [3,2,100];
_patrolGroups = [2,2,100];
_lightVehicles = [0,0,50];
_armoredVehicles = [0,100];
_staticWeapons = [0,100];
_helicopters = [0,0];
_faction = 11; // NVA
_markertype = 1;
_distance = 700;
_side = east;
_heightlimit = false;
_debug = false;
_cache = false;
_createTask = false;
_settings = [_faction,_markertype,_distance,_side,_heightlimit,_debug,_cache,_createTask];
[_eosZones,_houseGroups,_patrolGroups,_lightVehicles,_armoredVehicles,_staticWeapons,_helicopters,_settings] spawn EOS_fnc_EOSMaster;

_eosZones = ["EOSzone_1"];
_houseGroups = [2,1,100];
_patrolGroups = [3,2,100];
_lightVehicles = [0,0,50];
_armoredVehicles = [0,100];
_staticWeapons = [0,100];
_helicopters = [0,0];
_faction = 11; // NVA
_markertype = 1;
_distance = 700;
_side = east;
_heightlimit = false;
_debug = false;
_cache = false;
_createTask = false;
_settings = [_faction,_markertype,_distance,_side,_heightlimit,_debug,_cache,_createTask];
[_eosZones,_houseGroups,_patrolGroups,_lightVehicles,_armoredVehicles,_staticWeapons,_helicopters,_settings] spawn EOS_fnc_EOSMaster;


_basZones = ["EOSzone_0"];
_spreadAngle = 5.0;
_spawnDistance = 500.0;
_spawnZones = ["BASspawn_0",_spreadAngle,_spawnDistance];
_patrolGroups = [2,3,100];
_lightVehicles = [2,1,100];
_armoredVehicles = [0,50];
_helicopters = [0,0];
_faction = 11;
_markertype = 1;
_side = east;
_heightlimit = false;
_debug = false;
_settings = [_faction,_markertype,_side,_heightlimit,_debug]; // [FACTION,MARKERTYPE,SIDE,HEIGHTLIMIT,DEBUG]
_intitialPause = 0*60;
_numWaves = 2;
_waveDelay = 2*60;
_integrateEOS = false;
_showHints = false;
_createTask = false;
_waveParams = [_intitialPause,_numWaves,_waveDelay,_integrateEOS,_showHints,_createTask]; // [INITIAL PAUSE, NUMBER OF WAVES, DELAY BETWEEN WAVES, INTEGRATE EOS, SHOW HINTS]
[_basZones,_spawnZones,_patrolGroups,_lightVehicles,_armoredVehicles,_helicopters,_settings,_waveParams] spawn EOS_fnc_BASMaster;






{
	_x setMarkerAlpha 0.0;
}
forEach ["BASspawn_0","ALiVE_SUP_MULTISPAWN_DESTINATION_unsung_w","ALiVE_SUP_MULTISPAWN_INSERTION_unsung_w"];





_skillset = [
	0.13,        // aimingAccuracy
	0.13,        // aimingShake
	0.23,        // aimingSpeed
	0.5,         // spotDistance
	0.5,        // spotTime
	1.0,        // courage
	0.5,        // reloadSpeed
	0.8,        // commanding
	0.8        // general
	];


blueboyGroup enableGunLights "ForceOff";

[] spawn
{
	sleep 60*20;
	{
		_unit = _x;
		if (!isPlayer _unit) then
		{
			_primaryWeapon = primaryWeapon _unit;
			_magazineClass = "";

			if (_primaryWeapon != "") then
			{
				_magazines = getArray (configFile / "CfgWeapons" / _primaryWeapon / "magazines");
				if (count _magazines > 0) then
				{
					_magazineClass = _magazines select 0;
				}
				else
				{
					_magazineClass = "";
				};
				if (_magazineClass != "") then
				{
					_unit addMagazines [_magazineClass, 15];
				};
			};

			_unit addMagazines ["rhs_mag_m67", 1];
			_unit enableGunLights "ForceOff";
		};
	} forEach (units blueboyGroup);
};


_Param_EnemySkill = ("Param_EnemySkill" call BIS_fnc_getParamValue);

_aiSkillBase = 0.11;

switch (_Param_EnemySkill) do
{
    case 0: //conscript very low skill
    {
        _aiSkillBase = 0.1;
    };
    case 1: //rebels low skill
    {
        _aiSkillBase = 0.15;
    };
    case 2: //regular fair skill
    {
        _aiSkillBase = 0.2;
    };
    case 3: //elite soldiers medium skill
    {
        _aiSkillBase = 0.3;
    };
    case 4: // specops good skill
    {
        _aiSkillBase = 0.4;
    };
    default
    { 
        _aiSkillBase = 0.1;
    };
};

_skill = _aiSkillBase;

_InfSkillSet=
[
0.4 * _skill,        // aimingAccuracy
0.4 * _skill,        // aimingShake
0.4 * _skill,        // aimingSpeed
0.4 * _skill,         // spotDistance
1.0 * _skill,        // spotTime
2.0 * _skill,        // courage
2.5 * _skill,        // reloadSpeed
2.0 * _skill,        // commanding
0.8 * _skill        // general
];

{
	_unit = _x;
	if (side _unit isEqualTo EAST) then
	{
		{
			_skillvalue = (_InfSkillSet select _forEachIndex);
			_unit setSkill [_x,_skillvalue];
		} forEach ["aimingAccuracy","aimingShake","aimingSpeed","spotDistance","spotTime","courage","reloadSpeed","commanding","general"];
	};
} forEach allUnits;




sleep 1.0;
missionNameSpace setvariable["A3E_ServerInitialized",true,true];
