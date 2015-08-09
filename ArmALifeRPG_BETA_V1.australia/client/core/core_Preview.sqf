AM_Preview = {
    private ["_time"];
    holderObject = createVehicle [
        AM_Selected_Preview select 0,
        _this select 0,
        [],
        0, 
        "CAN_COLLIDE"
    ];
    holderObject hideObject true;

    previewObject = createVehicle [
    	AM_Selected_Preview select 0,
        _this select 0,
        [],
        0, 
        "CAN_COLLIDE"
    ];
    previewObject attachTo [swag, [0,0,3]];
    previewObject setVectorDirAndUp [[0,0,1],[0,-1,0]];
    _time = time + 999;
    _previewOpen = AM_Preview_end;
    _previewEnd = AM_Preview_end select 0;
    dir = getDir previewObject;
    waitUntil {
        dir = dir + (
            if (dir > 360) then [{-360},{.5}]);
        previewObject setDir dir;
        time > _time;
    };
    (findDisplay 46) displayRemoveEventHandler ["KeyDown",_previewEnd];
    deleteVehicle previewObject;
    deleteVehicle holderObject;
    
};
AM_Shops_Preview = {
    t_buyIndex = [_this,0,10123,[1]] call BIS_fnc_Param;
    deleteVehicle holderObject;
    deleteVehicle previewObject;
    if(t_buyIndex == -1)exitWith{["You havent selected an item!",AM_COLGROUP_RED] call AM_Core_Message;};
    _item = (D_ShopBuy select t_buyIndex);
    AM_Selected_Preview = [_item];
    _null = [
        position swag
    ] spawn AM_Preview;
    PREVIEW_cam = "CAMERA" camCreate getPos swag;      
    showCinemaBorder false;      
    PREVIEW_cam cameraEffect ["internal", "back"];     
    PREVIEW_cam camSetTarget previewObject;           
    PREVIEW_cam camsetrelpos [1,-15,7];      
    PREVIEW_cam camSetFOV .33;      
    PREVIEW_cam camSetFocus [50, 0];      
    PREVIEW_cam camCommit 0;
    _previewEnd = (findDisplay 46) displayAddEventHandler 
    ["KeyDown", "if (_this select 1 == 1) then {
    PREVIEW_cam cameraEffect [""TERMINATE"",""back""];
    camDestroy PREVIEW_cam;
    deleteVehicle previewObject;
    }"];
    AM_Preview_end = [_previewEnd];
};