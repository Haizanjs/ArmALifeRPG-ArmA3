AM_Core_ProcessFactory = {
	if(AM_FactoryActive)then{
		AM_FactoryActive = false;
	}else{
		AM_FactoryActive = true;
	};		
	closeDialog 0;
	[] call AM_Core_OpenFactory;
};
