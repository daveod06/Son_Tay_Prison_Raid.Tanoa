IF (isnil "server")then{hint "YOU MUST PLACE A GAME LOGIC NAMED SERVER!";};
EOS_fnc_setskill=compile preprocessfilelinenumbers "functions\enemyOccupationSystem\functions\fn_setSkill.sqf";
EOS_fnc_taskpatrol= compile preprocessfile "functions\enemyOccupationSystem\functions\fn_taskpatrol.sqf";
//EOS_fnc_getunitpool = compile preprocessfilelinenumbers "functions\enemyOccupationSystem\fn_UnitPools.sqf";
//EOS_fnc_getunitloadout = compile preprocessfilelinenumbers "functions\enemyOccupationSystem\fn_UnitLoadouts.sqf";
call compile preprocessfilelinenumbers "functions\enemyOccupationSystem\fn_AI_Skill.sqf";

EOS_fnc_Spawn = compile preprocessfilelinenumbers "functions\enemyOccupationSystem\core\fn_spawn.sqf";
EOS_fnc_Bastion_Spawn = compile preprocessfilelinenumbers "functions\enemyOccupationSystem\core\fn_bastion_spawn.sqf";
EOS_fnc_b_core = compile preprocessfilelinenumbers "functions\enemyOccupationSystem\core\fn_b_core.sqf";
EOS_fnc_Core = compile preprocessfilelinenumbers "functions\enemyOccupationSystem\core\fn_Core.sqf";
EOS_fnc_TransportUnload_fnc = compile preprocessfilelinenumbers "functions\enemyOccupationSystem\functions\fn_TransportUnload_fnc.sqf";
EOS_fnc_SpawnVehicle = compile preprocessfilelinenumbers "functions\enemyOccupationSystem\functions\fn_spawnVehicle.sqf";
EOS_fnc_findSafePos = compile preprocessfilelinenumbers "functions\enemyOccupationSystem\functions\fn_findSafePos.sqf";
EOS_fnc_infantry_fnc = compile preprocessfilelinenumbers "functions\enemyOccupationSystem\functions\fn_infantry_fnc.sqf";
EOS_fnc_cargo_fnc = compile preprocessfilelinenumbers "functions\enemyOccupationSystem\functions\fn_cargo_fnc.sqf";
EOS_fnc_shk_patrol = compile preprocessfilelinenumbers "functions\enemyOccupationSystem\functions\fn_shk_patrol.sqf";
EOS_fnc_shk_pos = compile preprocessfilelinenumbers "functions\enemyOccupationSystem\functions\fn_shk_pos.sqf";
//EOS_fnc_SHK_buildingpos = compile preprocessfilelinenumbers "functions\enemyOccupationSystem\Functions\fn_SHK_buildingpos.sqf";
EOS_fnc_UnitPools = compile preprocessfilelinenumbers "functions\enemyOccupationSystem\fn_UnitPools.sqf";
EOS_fnc_UnitLoadouts = compile preprocessfilelinenumbers "functions\enemyOccupationSystem\fn_UnitLoadouts.sqf";
EOS_fnc_KillCounter = compile preprocessfilelinenumbers "functions\enemyOccupationSystem\functions\fn_KillCounter.sqf";
EOS_fnc_Markers = compile preprocessfilelinenumbers "functions\enemyOccupationSystem\Functions\fn_Markers.sqf";
EOS_fnc_suicideBomber = compile preprocessfilelinenumbers "functions\enemyOccupationSystem\functions\fn_suicideBomber.sqf";
EOS_fnc_spawngroup = compile preprocessfilelinenumbers "functions\enemyOccupationSystem\functions\fn_spawngroup.sqf";
//EOS_fnc_EOSMaster = compile preprocessfilelinenumbers "functions\enemyOccupationSystem\fn_EOSMaster.sqf";
//EOS_fnc_BASMaster = compile preprocessfilelinenumbers "functions\enemyOccupationSystem\fn_BASMaster.sqf";
EOS_fnc_fillhouse = compile preprocessFileLineNumbers "functions\enemyOccupationSystem\Functions\fn_fillhouse.sqf";


