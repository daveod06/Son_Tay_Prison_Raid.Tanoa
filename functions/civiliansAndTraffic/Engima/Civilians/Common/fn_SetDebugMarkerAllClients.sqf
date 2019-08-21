/*
 * Summary: Shows debug marker on all clients.
 * Remarks:
 *   if global variable "dre_var_CL_SilentDebugMode" is set to true, debug marker will not shown.
 * Arguments alternative #1 (Marker representing an area):
 *   _markerName: Marker's name. (must be global unique).
 *   _position: Marker's position.
 *   _size: Marker's size on array format [x, y].
 *   _direction: Marker's direction.
 *   _shape: "RECTANGLE" or "ELLIPSE".
 *   _markerColor: Marker's color ("Default", "ColorRed", "ColorYellow" etc.).
 *   [_markerText]: Optional. Marker's text.
 * Arguments alternative #2 (Marker representing an icon).
 *   _markerName: Marker's name. (must be global unique).
 *   _position: Marker's position.
 *   _type: Markers icon type (applies to icons in cfgIcons, like "Warning", "Dot" etc.).
 *   [_markerColor]: Optional. Marker's color ("Default", "ColorRed", "ColorYellow" etc.).
 *   [_markerText]. Optional. Marker's text.
 */
DJOCivilians_DebugMarkerEventArgs = _this;
publicVariable "DJOCivilians_DebugMarkerEventArgs";
DJOCivilians_DebugMarkerEventArgs call DJOCivilians_fnc_SetDebugMarkerLocal;
