/* Randomized Convoy Spawner
Takes the given markers named "convoy" and randomly chooses two different points for start and end respectively.
Adds "Start" and "End" markers for the convoy.
Rolls a random from 3 to 7 for convoy size.
Then rolls another random of 3 to decide unit types: armored/aa/inf(motorized and mechanized)
Depending on the result spawns the respective unit.
The reason AA and Armor have AA unit spawning and then their launchers taken away is because they are the only three man composition.
Then adds a waypoint to the prechosen end point.
After a delay it spawns the next unit in queue.
Made by B.Bati|Demon Phoenix.
*/
[]spawn{
hint "Creating Convoy Objective...";
deleteMarker "markerStart";
deleteMarker "markerEnd";

_markerArray = ["convoy","convoy_1","convoy_2","convoy_3","convoy_4","convoy_5","convoy_6","convoy_7","convoy_8","convoy_9","convoy_10","convoy_11","convoy_12","convoy_13","convoy_14","convoy_15","convoy_16","convoy_17","convoy_18","convoy_19","convoy_20","convoy_21","convoy_22","convoy_23"];
_start = selectRandom _markerArray;
_end = selectRandom _markerArray;
while{ _start == _end } do { _end = selectRandom _markerArray; };

createMarker ["markerStart", markerPos _start];
"markerStart" setMarkerType "hd_start";
"markerStart" setMarkerText "Convoy Start";
createMarker ["markerEnd", markerPos _end];
"markerEnd" setMarkerType "hd_end";
"markerEnd" setMarkerText "Convoy End";

_rNumber = floor (random 5) + 3;

for [{private _i = 0}, {_i < _rNumber}, {_i = _i + 1}] do { 

_vicIndex = floor (random 3);

if (_vicIndex == 0) then {
 _array = ["CUP_O_BTR80A_DESERT_RU" , "CUP_O_BTR80_DESERT_RU" , "CUP_O_BMP2_RU" , "CUP_O_Ural_Open_RU" , "CUP_O_Ural_RU" , "CUP_O_Kamaz_Open_RU" , "CUP_O_Kamaz_RU"];
_vicName = selectRandom _array;
_position =  [_start, 20] call CBA_fnc_randPos;
_vic = _vicName createVehicle _position;
_aiGRP = [_position , EAST, ( configfile >> "CfgGroups" >> "East" >> "CUP_O_RU" >> "Infantry_M_EMR" >> "InfSquad_Weapons" ) ] call BIS_fnc_spawnGroup;
{
    _x moveInAny _vic;
} forEach units _aiGRP;
_wp1 = _aiGRP addWaypoint [markerPos [_end, true],0];
};

if (_vicIndex == 1) then {
_array = ["CUP_O_T72_RU" , "CUP_O_T90_RU"];
private _vicName = selectRandom _array;
_position =  [_start, 20] call CBA_fnc_randPos;
_vic = _vicName createVehicle _position;
_aiGRP = [_position, EAST, ( configfile >> "CfgGroups" >> "East" >> "CUP_O_RU" >> "Infantry_M_EMR" >> "InfTeam_AA" ) ] call BIS_fnc_spawnGroup;
{
    _x removeWeaponGlobal (secondaryWeapon _x);
    _x moveInAny _vic;
} forEach units _aiGRP;
_wp1 = _aiGRP addWaypoint [markerPos [_end, true],0];
};

if (_vicIndex == 2) then {
_array = ["CUP_O_2S6M_RU" , "CUP_O_UAZ_AA_RU" , "CUP_O_Ural_ZU23_RU"];
private _vicName = selectRandom _array;
_position =  [_start, 20] call CBA_fnc_randPos;
_vic = _vicName createVehicle _position;
_aiGRP = [_position, EAST, ( configfile >> "CfgGroups" >> "East" >> "CUP_O_RU" >> "Infantry_M_EMR" >> "InfTeam_AA" ) ] call BIS_fnc_spawnGroup;
{
    _x removeWeaponGlobal (secondaryWeapon _x);
    _x moveInAny _vic;
} forEach units _aiGRP;
_wp1 = _aiGRP addWaypoint [markerPos [_end, true],0];
};

sleep 10;
 };

hint "Convoy Objective Created.";
};