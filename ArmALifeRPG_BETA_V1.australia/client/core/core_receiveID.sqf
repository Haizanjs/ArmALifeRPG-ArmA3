/*
    Nathan Martin
    Receive ID 
    Fnc - AM_Core_receiveID

    Displays the ID that a _presenter has shown _player

    ChangeLog
    0.1 Creation
*/
AM_ReceiveID = {
_presenter = _this select 0; // finding who sent it

_presentername = name _presenter; // grabbing the others name for use in the card

cutRsc["IDCard", "PLAIN"];

//if(GETC_cop_level > 1) then
//{
//    _presentername = Officer _presenter;    // adding the suffix of Officer to police
//}

_cardinfo = format ["ArmALifeRPG \nProof of Identification \n\n%1", (_name)]; // creates the info of card

((uiNamespace getVariable "idCard") displayCtrl 1000) ctrlSetText _string; // presents the card with info

// end of file
};