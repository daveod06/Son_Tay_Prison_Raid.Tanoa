DJOTraffic_SilentDebugMode = false;

DJOTraffic_DebugTextEventArgs = []; // Empty
DJOTraffic_DebugMarkerEventArgs = []; // [name, position, size, direction, shape ("RECTANGLE" or "ELLIPSE"), markerColor, markerText (optional)] or alternatively [name, position, type, markerColor (optional), markerText (optional)]
DJOTraffic_DeleteDebugMarkerEventArgs = [];  // [name]

"DJOTraffic_DebugTextEventArgs" addPublicVariableEventHandler {
    DJOTraffic_DebugTextEventArgs call DJOTraffic_ShowDebugTextLocal;
};

"DJOTraffic_DebugMarkerEventArgs" addPublicVariableEventHandler {
    DJOTraffic_DebugMarkerEventArgs call DJOTraffic_SetDebugMarkerLocal;
};

"DJOTraffic_DeleteDebugMarkerEventArgs" addPublicVariableEventHandler {
    DJOTraffic_DeleteDebugMarkerEventArgs call DJOTraffic_DeleteDebugMarkerLocal;
};



