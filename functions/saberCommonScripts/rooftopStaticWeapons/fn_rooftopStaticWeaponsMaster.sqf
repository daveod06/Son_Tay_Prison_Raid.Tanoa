//if (!isServer) exitWith {};
//check if HC1 is present
HC1Present = if (isNil "HC1") then{False} else{True};
HC2Present = if (isNil "HC2") then{False} else{True};
HC3Present = if (isNil "HC3") then{False} else{True};


fnc_RooftopStaticMaster =
{
	_this call DJOCommon_fnc_SpawnRooftopStaticWeapons;

};

/*
    Parameter 1: Name of marker (e.g. "m1").
    Parameter 2: Type of weapon placement. 1 = Light (Anti-infantry), 2 = Medium (AT), 3 = Heavy (AA).
    Parameter 3: Number of static weapons to spawn.
    Parameter 4: Delete marker after use.
    Parameter 5: Classname of gunner unit.
    Parameter 5: Side of gunner (east, west, resistance).
*/
//_this = [_marker,_type,_amount,_deleteMarker,_unit,_side]
if(HC1Present && isMultiplayer && !isServer && !hasInterface) then
{
    //if Saber_DEBUG then {hint "Calling fnc_RooftopStaticMaster.";sleep 1.0;};
    _this call fnc_RooftopStaticMaster;
}
else
{
    if(isServer) then
    {
        //if Saber_DEBUG then {hint "Calling fnc_RooftopStaticMaster.";sleep 1.0;};
        _this call fnc_RooftopStaticMaster;
    };
};
