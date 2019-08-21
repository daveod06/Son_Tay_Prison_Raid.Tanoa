/*
 * Summary: Shows debug text on local client.
 * Remarks:
 *   if global variable "dre_var_CL_SilentDebugMode" is set to true, debug text will only be written to RTF-file and not shown on screen.
 * Arguments:
 *   _text: Debug text.
 */
private ["_minutes", "_seconds"];

if (!isNull player) then {
    if (!DJOTraffic_SilentDebugMode) then {
        player sideChat (_this select 0);
    };
};

_minutes = floor (time / 60);
_seconds = floor (time - (_minutes * 60));
diag_log ((str _minutes + ":" + str _seconds) + " Debug: " + (_this select 0));
