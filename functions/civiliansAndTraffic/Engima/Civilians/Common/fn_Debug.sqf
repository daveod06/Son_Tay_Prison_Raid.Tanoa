DJOCivilians_SilentDebugMode = false;

DJOCivilians_DebugTextEventArgs = []; // Empty
DJOCivilians_DebugMarkerEventArgs = []; // [name, position, size, direction, shape ("RECTANGLE" or "ELLIPSE"), markerColor, markerText (optional)] or alternatively [name, position, type, markerColor (optional), markerText (optional)]
DJOCivilians_DeleteDebugMarkerEventArgs = [];  // [name]

"DJOCivilians_DebugTextEventArgs" addPublicVariableEventHandler {
    DJOCivilians_DebugTextEventArgs call DJOCivilians_fnc_ShowDebugTextLocal;
};

"DJOCivilians_DebugMarkerEventArgs" addPublicVariableEventHandler {
    DJOCivilians_DebugMarkerEventArgs call DJOCivilians_fnc_SetDebugMarkerLocal;
};

"DJOCivilians_DeleteDebugMarkerEventArgs" addPublicVariableEventHandler {
    DJOCivilians_DeleteDebugMarkerEventArgs call DJOCivilians_fnc_DeleteDebugMarkerLocal;
};


