AM_Core_Message = {
	_message = [_this,0,"",[""]] call BIS_fnc_Param;
	_color = [_this,1,"",[""]] call BIS_fnc_Param;
	iF(count(AM_messages) > 15)then{
		AM_Messages = [];
	};	
	AM_Messages = AM_Messages + [[_message,_color]];
	_toHint = [] call AM_Server_DecodeMessage;
	waitUntil{!isNil "_toHint"};
	hint parseText format["<t size='1.5'>%1 Messages</t><br/>%2",AM_CommunityName,_toHint];
	_toHint = nil;

};