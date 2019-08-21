class EOS
{
	class EOSMain
    //class enemyOccupationSystem
	{
        file = "functions\enemyOccupationSystem";
		#include "EOS.hpp"
	};
    
    class EOSCore
    {
        file = "functions\enemyOccupationSystem\core";
        #include "core\Core.hpp"
    };
    class EOSFunctions
    {
        file = "functions\enemyOccupationSystem\functions";
        #include "functions\Functions.hpp"
    };
};
/*
// IN include/functions.hpp
class CfgFunctions
{
    #include "..\functions\enemyOccupationSystem\functions.hpp" 
};
*/
