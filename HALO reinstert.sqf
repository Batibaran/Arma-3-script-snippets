// ~~HALO RE-Insert Script~~


//Place All of the following between ---'s in the Object you wish to interact with [E.G Flagpole]'s .init

// ------------------------------------------------------------------------------------------------------
this addAction 
[ 
 "Halo Drop in", //The text for the addAction
 { 
  [1, "BLACK", 3, 1] spawn BIS_fnc_fadeEffect;		//Fade screen so the TP is jaring
  player setPosATL (getPosATL MedicalVehicle);		//Set the player to the position of the medical vehicle (assuming MedicalVehicle is the variable name of that vehicle)
  [player, 700] call BIS_fnc_halo;					//HALO drop the player from 700M
 }, 
 nil, 3, true, true, "", "true", 5
];

// ------------------------------------------------------------------------------------------------------

// Remember to name an Object/vehicle "MedicalVehicle" in the "Variable Name" field. [NO " marks required!]
// Multiple Addactions could be added with different Vehicles, E.G SQ1, SQ2, SQ3 etc~. [Change MedicalVehicle to SQ1, Set Varialbe name to SQ1, Place multiple Addactions!]
