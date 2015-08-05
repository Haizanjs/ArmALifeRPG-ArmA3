/*
    Nathan Martin
    Show ID
    Fnc - AM_Core_showID

    Allows a _presenter to send ID to _receiver

    ChangeLog
    0.1 Creation
*/
AM_ShowID = {
_receiver = _this select 0; // finding who to send it to

[[player], "AM_Core_receiveID", _receiver, false] spawn BIS_fnc_MP; // opens receiveID with _receiver saved.
};