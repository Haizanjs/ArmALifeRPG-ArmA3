/*
    Nathan M
    Display Names
    Fnc - AM_Core_displayNames

    Continually displays custom names for players

    ChangeLog
    0.1 Created
*/
AM_Displayname = {
_close = player nearEntities ["Man", 30]; // grab any close players
{
    if (isPlayer _x) then // if it is a player not AI then
    {
        _index = 0; // first player it finds
        while {_index < count AM_playerNames} do // of course it will run cause we set it to 0
            {
                _nameArray = AM_playerNames select _index; // get his UID from AM_plyaerNames
                _getUID = _nameArray select 0; //grab the UID from first part of array 
                if (getPlayerUID _x == _getUID) then // verifying it is mr. kabannes with UID match
                {
                    _displayName = _nameArray select 1; // lets set his name first
                    drawIcon3D ["", [0,1,0,1], [getPosATL _x select 0, getPosATL _x select 1, (getPosATL _x select 2) + 2], 1, 1, 45, _displayName, 1, 0.05, "TahomaB"]; // and display it above his head!
                } else
                {
                    _displayName = "Stranger"; // lets set his name first
                    drawIcon3D ["", [0,1,0,1], [getPosATL _x select 0, getPosATL _x select 1, (getPosATL _x select 2) + 2], 1, 1, 45, _displayName, 1, 0.05, "TahomaB"]; // ahh he's masked! tell us!
                };
                _index = _index + 1; // that first player is done, onto next one
            };
    };
}forEach _close; //commence code again for the next player

// end of file
};