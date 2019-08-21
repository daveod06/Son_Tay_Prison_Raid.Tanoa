//INFANTRY SKILL
//[aimingAccuracy,aimingShake,aimingSpeed,spotDistance,spotTime,courage,reloadSpeed,commanding,general];

_aiSkillBase = 0.1;
_Param_EnemySkill = ("Param_EnemySkill" call BIS_fnc_getParamValue);

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

//ARMOR SKILL
_ArmSkillSet=[
0.2 * _skill,        // aimingAccuracy
0.2 * _skill,        // aimingShake
0.2 * _skill,        // aimingSpeed
0.4 * _skill,         // spotDistance
1.0 * _skill,        // spotTime
2.0 * _skill,        // courage
2.5 * _skill,        // reloadSpeed
2.0 * _skill,        // commanding
0.8 * _skill        // general
];

//LIGHT VEHICLE SKILL
_LigSkillSet=[
0.2 * _skill,        // aimingAccuracy
0.2 * _skill,        // aimingShake
0.2 * _skill,        // aimingSpeed
0.4 * _skill,         // spotDistance
1.0 * _skill,        // spotTime
2.0 * _skill,        // courage
2.5 * _skill,        // reloadSpeed
2.0 * _skill,        // commanding
0.8 * _skill        // general
];

//HELICOPTER SKILL
_AirSkillSet=[
0.2 * _skill,        // aimingAccuracy
0.2 * _skill,        // aimingShake
0.2 * _skill,        // aimingSpeed
0.4 * _skill,         // spotDistance
1.0 * _skill,        // spotTime
2.0 * _skill,        // courage
2.5 * _skill,        // reloadSpeed
2.0 * _skill,        // commanding
0.8 * _skill        // general
];

//STATIC SKILL
_STASkillSet=[
0.2 * _skill,        // aimingAccuracy
0.2 * _skill,        // aimingShake
0.2 * _skill,        // aimingSpeed
0.4 * _skill,         // spotDistance
1.0 * _skill,        // spotTime
2.0 * _skill,        // courage
2.5 * _skill,        // reloadSpeed
2.0 * _skill,        // commanding
0.8 * _skill        // general
];

server setvariable ["INFskill",_InfskillSet];
server setvariable ["ARMskill",_ArmSkillSet];
server setvariable ["LIGskill",_LigSkillSet];
server setvariable ["AIRskill",_AIRskillSet];
server setvariable ["STAskill",_STAskillSet];
