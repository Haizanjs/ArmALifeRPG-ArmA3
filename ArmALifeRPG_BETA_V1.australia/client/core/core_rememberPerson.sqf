/*
    Nathan Martin
    Remember Person
    Fnc - AM_Core_rememberPerson

    Stores a players custom name for memory

    ChangeLog
    0.1 Creation
	0.2 Rewrite for local saving in iniDB
*/
AM_RememberPerson = {
_stranger = _this select 0; // grab stranger
_strangerUID = getPlayerUID _stranger; //grab stranger UID
_strangerName = ctrlText 1400; //box of custom name
_strangerArray = [_strangerUID, _strangerName]; //puts it into an array
AM_playerNames pushBack _strangerArray; //sends it to the server for storage
// new inidb write ["databasefilename", "sectionname=playeruid", "variablename it creates", "value = strangerarray in array format"]
//["playerNamesDB", _playerUID, "AM_playerNames", _strangerArray] call iniDB_write; 
//_playerUID = getPlayerUID player; //grab player UID
//old pushback local storage above
//end of file
};