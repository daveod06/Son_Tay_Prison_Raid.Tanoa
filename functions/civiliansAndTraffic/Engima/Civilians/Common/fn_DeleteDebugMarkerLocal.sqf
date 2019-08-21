/*
 * Summary: Deletes a debug marker on local client.
 * Arguments:
 *   _markerName: Name of marker to delete.
 */
private ["_markerName"];
_markerName = _this select 0;
deleteMarkerLocal _markerName;

