find ./. -type f -print0 | xargs -0 sed -i 's/DJOCommon_fnc_/DJOCommon_fnc_/g'
find ./. -type f -print0 | xargs -0 sed -i 's///g'
