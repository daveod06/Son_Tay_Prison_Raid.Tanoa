/*
 * Summary: Shows debug text on all clients.
 * Remarks:
 *   if global variable "dre_var_CL_SilentDebugMode" is set to true, debug text will only be written to RTF-file and not shown on screen.
 * Arguments:
 *   _text: Debug text.
 */
DJOTraffic_DebugTextEventArgs = _this;
publicVariable "DJOTraffic_DebugTextEventArgs";
DJOTraffic_DebugTextEventArgs call DJOTraffic_ShowDebugTextLocal;
