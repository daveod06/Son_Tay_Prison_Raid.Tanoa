class DJOTraffic
{
	class Traffic
	{
        file = "functions\civiliansAndTraffic\Engima\Traffic";
		#include "Traffic.hpp"
	};
    class TrafficCommon
	{
        file = "functions\civiliansAndTraffic\Engima\Traffic\Common";
        #include "Common\Common.hpp"
	};
    class TrafficServer
	{
        file = "functions\civiliansAndTraffic\Engima\Traffic\Server";
        #include "Server\Server.hpp"
	};
};
/*
// IN include/functions.hpp
class CfgFunctions
{
    #include "..\functions\civiliansAndTraffic\Engima\Traffic\functions.hpp" 
};
*/
