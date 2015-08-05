/*---------------------------------------------------------------------------
							   Access Trunk
								by DEADdem
## DESCRIPTION:
 	Accesses the trunk of a vehicle
## UPDATES:
  001:
  Creation
---------------------------------------------------------------------------*/
AM_Core_AccessTrunk = {
	if(isNil "AM_InteractTarget")exitWith{};
	if(!(AM_InteractTarget in AM_SERVERVAR_Cars) || isPlayer AM_InteractTarget)exitWith{};

	_dlg = createDialog "AM_VehicleTrunk";
	_objType = AM_InteractTarget getVariable "AM_CAROBJECT";

	_trunkSpace = [_objType,"storage"] call AM_Inventory_Info;
	_trunk = AM_InteractTarget getVariable "AM_Trunk";
	_trunkSpacetaken = 0;
	for[{_t=0},{_t<count _trunk},{_t=_t+1}]do{
		_obj = _trunk select _t;
		_class = _obj select 0;
		_count = _obj select 1;

		_name = [_class,"name"] call AM_Inventory_Info;
		_weight = [_class,"weight"] call AM_Inventory_Info;

		_trunkSpacetaken = _trunkSpacetaken + (_weight * _count);
		lbAdd[1500,format['%1 (x%2)',_name,_count]];
	};
	for[{_i=0},{_i<count AM_Inventory},{_i=_i+1}]do{
		_obj =  AM_Inventory select _i;
		_class = _obj select 0;
		_count = _obj select 1;

		_name = [_class,"name"] call AM_Inventory_Info;
		lbAdd[1501,format['%1 (x%2)',_name,_count]];
	};
	_remainderTrunk = _trunkSpace - _trunkSpacetaken;
	ctrlSetText[1001,format["%1kg",_remainderTrunk]];
	ctrlSetText[1400,"1"];
};