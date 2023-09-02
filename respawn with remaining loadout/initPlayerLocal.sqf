player addEventhandler ["Killed",  {_this spawn Fnc_Set_Loadout}];
player addEventHandler ["Respawn", {_this spawn Fnc_Get_Loadout}];