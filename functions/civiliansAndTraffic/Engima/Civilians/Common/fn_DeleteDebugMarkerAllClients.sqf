/*
 * Summary: Deletes a debug marker on all clients.
 * Arguments:
 *   _markerName: Name of marker to delete.
 */
DJOCivilians_DeleteDebugMarkerEventArgs = _this;
publicVariable "DJOCivilians_DeleteDebugMarkerEventArgs";
DJOCivilians_DeleteDebugMarkerEventArgs call DJOCivilians_fnc_DeleteDebugMarkerLocal;
