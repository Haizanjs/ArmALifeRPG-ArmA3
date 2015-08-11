// Loop processes ever 60minutes
if(!isNil "AM_SERVERVAR_JailCode")exitWith{};
AM_SERVERVAR_JailCode = 00000;
_generatenewCode = {
	_randselect = round(random(100000));
};

while{true}do{
	AM_SERVERVAR_JailCode = round(random(100000));
	publicVariable "AM_SERVERVAR_JailCode";
	sleep 3200;
};
