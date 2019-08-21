find ./. -type f -print0 | xargs -0 sed -i 's/SHK_pos/EOS_fnc_SHK_pos/g'
find ./. -type f -print0 | xargs -0 sed -i 's/EOS_debug/EOS_fnc_debug/g'
