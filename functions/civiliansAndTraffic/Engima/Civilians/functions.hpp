class DJOCivilians
{
	class Civs
	{
        file = "functions\civiliansAndTraffic\Engima\Civilians";
		#include "Civilians.hpp"
	};
    class CivsCommon
	{
        file = "functions\civiliansAndTraffic\Engima\Civilians\Common";
        #include "Common\Common.hpp"
	};
    class CivsServer
	{
        file = "functions\civiliansAndTraffic\Engima\Civilians\Server";
        #include "Server\Server.hpp"
	};
};
/*
// IN include/functions.hpp
class CfgFunctions
{
    #include "..\functions\civiliansAndTraffic\Engima\Civilians\functions.hpp" 
};
*/
