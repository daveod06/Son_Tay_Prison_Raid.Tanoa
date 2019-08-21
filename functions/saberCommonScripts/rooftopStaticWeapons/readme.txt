Rooftop Static Weapons Script
by MisterGoodson


=== How to Install ===
1. Copy the rooftopStaticWeapons folder into your mission folder.

2. Copy the following into your descript.ext:

class CfgFunctions
{
	class gdsn {
		#include "\functions\saberCommonScripts\rooftopStaticWeapons\functions.hpp"
	};
};

3. Within your mission, create an ellipse marker (this will define the area
that you wish to place static weapons) and give it a name (e.g. "m1").

4. Place down a "Game Logic" unit and put the following in the unit's init field:

["m1", 1, 5, false, "CAF_AG_ME_T_RPK74", east] call gdsn_fnc_spawnRooftopStaticWeapons;


Parameter 1: Name of marker (e.g. "m1").
Parameter 2: Type of weapon placement. 1 = Light (Anti-infantry), 2 = Medium (AT), 3 = Heavy (AA).
Parameter 3: Number of static weapons to spawn.
Parameter 4: Delete marker after use.
Parameter 5: Classname of gunner unit.
Parameter 5: Side of gunner (east, west, resistance).

5. Run your mission.


=== Changing the Static Weapons ===
The classnames of the static weapons spawned can be changed within fn_spawnRooftopStaticWeapons.sqf.
Look for the line that begins with:

"// Define weapon placement types"
