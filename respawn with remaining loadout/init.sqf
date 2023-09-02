    Fnc_Set_Loadout =
    {
    _unit = _this select 0;
    _unit setVariable ["Saved_Loadout",getUnitLoadout _unit];
    };
	
	    Fnc_Get_Loadout =
    {
    _unit = _this select 0;
    _unit setUnitLoadout (_unit getVariable ["Saved_Loadout",[]]);
    };