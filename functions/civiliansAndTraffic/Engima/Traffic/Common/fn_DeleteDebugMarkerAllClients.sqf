/*
 * Summary: Deletes a debug marker on all clients.
 * Arguments:
 *   _markerName: Name of marker to delete.
 */
DJOTraffic_DeleteDebugMarkerEventArgs = _this;
publicVariable "DJOTraffic_DeleteDebugMarkerEventArgs";
DJOTraffic_DeleteDebugMarkerEventArgs call DJOTraffic_fnc_DeleteDebugMarkerLocal;
