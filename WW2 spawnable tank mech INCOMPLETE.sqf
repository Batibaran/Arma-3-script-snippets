
if (isServer) then {

testunit = hans;
probeType = "LIB_C_Deadgrassbunch_w";
holderType = "RoadCone_F";
center = probeType createVehicle position testunit;
scalingCenter = position center;
scale = 12;


pos1ASL = (ATLToASL position testunit) vectorAdd [0, 0, 30];
floor1 = createVehicle  ["ff_Land_wx_trenchfloor01_b", ASLToATL pos1ASL, [], 0, "CAN_COLLIDE"];
floor1 setVectorUp [0, 0, 1];
floor1 setPosASL pos1ASL;
testunit setPosASL pos1ASL;
hideObjectGlobal testunit;
testunit allowDamage false;


mech_head = createSimpleObject ["CSA38_pzIVC_LATE", testunit getRelPos [10, 0]];
mech_left_forearm = createSimpleObject ["csa38_valentineMkIIgreen2", testunit getRelPos [10, 0]];
mech_right_forearm = createSimpleObject ["csa38_valentineMkIIgreen2", testunit getRelPos [10, 0]];
mech_left_hand = createSimpleObject ["CSA38_TCvz33", testunit getRelPos [10, 0]];
mech_right_hand = createSimpleObject ["CSA38_TCvz33", testunit getRelPos [10, 0]];
mech_left_tigh = createSimpleObject ["fow_v_sdkfz_234_1", testunit getRelPos [10, 0]];
mech_right_tigh = createSimpleObject ["fow_v_sdkfz_234_1", testunit getRelPos [10, 0]];
mech_left_shin = createSimpleObject ["fow_v_sdkfz_234_1", testunit getRelPos [10, 0]];
mech_right_shin = createSimpleObject ["fow_v_sdkfz_234_1", testunit getRelPos [10, 0]];
mech_left_foot = createSimpleObject ["CSA38_StugIII", testunit getRelPos [10, 0]];
mech_right_foot = createSimpleObject ["CSA38_StugIII", testunit getRelPos [10, 0]];
mlb1 = createSimpleObject ["LIB_Churchill_Mk7", testunit getRelPos [10, 0]];
mlb2 = createSimpleObject ["LIB_Churchill_Mk7", testunit getRelPos [10, 0]];
mub1 = createSimpleObject ["fow_v_panther_ger_heer", testunit getRelPos [10, 0]];
mub2 = createSimpleObject ["fow_v_panther_ger_heer", testunit getRelPos [10, 0]];
mech_upper_back = holderType createVehicle position testunit;
mech_lower_back = holderType createVehicle position testunit;
hideObjectGlobal mech_upper_back;
hideObjectGlobal mech_lower_back;


left_foot = probeType createVehicle position testunit;
left_shin = probeType createVehicle position testunit;
left_tigh = probeType createVehicle position testunit;
right_foot = probeType createVehicle position testunit;
right_shin = probeType createVehicle position testunit;
right_tigh = probeType createVehicle position testunit;
lower_back = probeType createVehicle position testunit;
upper_back = probeType createVehicle position testunit;
head = probeType createVehicle position testunit;
left_hand = probeType createVehicle position testunit;
left_forearm = probeType createVehicle position testunit;
right_hand = probeType createVehicle position testunit;
right_forearm = probeType createVehicle position testunit;


left_foot attachTo [testunit, [0, 0.1, 0.45], "LeftFoot", true];
left_shin attachTo [testunit, [0, 0, 0.13], "lknee", true];
left_tigh attachTo [testunit, [0, 0, 0], "lfemur", true];
right_foot attachTo [testunit, [0, 0.1, 0.45], "RightFoot", true];
right_shin attachTo [testunit, [0, 0, 0.13], "rknee", true];
right_tigh attachTo [testunit, [0, 0, 0], "rfemur", true];
lower_back attachTo [testunit, [0, 0, 0.3], "Pelvis", true];
upper_back attachTo [testunit, [0, 0, 0.2], "Spine3", true];
head attachTo [testunit, [0, -0.1, 0.5], "Head", true];
left_hand attachTo [testunit, [0, 0.2, 0.3], "LeftHand", true]; 
right_hand attachTo [testunit, [0, 0.2, 0.3], "RightHand", true]; 
left_forearm attachTo [testunit, [-0.15, 0, 0], "LeftForeArm", true]; 
right_forearm attachTo [testunit, [0.15, 0, 0], "RightForeArm", true]; 



left_foot_holder = holderType createVehicle position testunit;
left_shin_holder = holderType createVehicle position testunit;
left_tigh_holder = holderType createVehicle position testunit;
right_foot_holder = holderType createVehicle position testunit;
right_shin_holder = holderType createVehicle position testunit;
right_tigh_holder = holderType createVehicle position testunit;
lower_back_holder = holderType createVehicle position testunit;
upper_back_holder = holderType createVehicle position testunit;
head_holder = holderType createVehicle position testunit;
left_hand_holder = holderType createVehicle position testunit;
left_forearm_holder = holderType createVehicle position testunit;
right_hand_holder = holderType createVehicle position testunit;
right_forearm_holder = holderType createVehicle position testunit;

comment "";



mech_head attachTo [head_holder, [0, 0, 0]];
mech_head setVectorDirAndUp [[0,0.869228,-0.494412],[0,0.494412,0.869228]];
mech_left_tigh attachTo [left_tigh_holder, [0, 0, 0]];
mech_left_tigh setVectorDirAndUp [[0,0.537682,-0.843148],[0,0.843148,0.537682]];
mech_right_tigh attachTo [right_tigh_holder, [0, 0, 0]];
mech_right_tigh setVectorDirAndUp [[0,0.537682,-0.843148],[0,0.843148,0.537682]];
mech_left_shin attachTo [left_shin_holder, [0, 0, 0]];
mech_left_shin setVectorDirAndUp [[0,-0.321225,-0.947003],[0,0.947003,-0.321225]];
mech_right_shin attachTo [right_shin_holder, [0, 0, 0]];
mech_right_shin setVectorDirAndUp [[0,-0.321225,-0.947003],[0,0.947003,-0.321225]];

mech_upper_back attachTo [upper_back_holder, [0, 0, 0]];
mech_lower_back attachTo [lower_back_holder, [0, 0, 0]];

mech_left_foot attachTo [left_foot_holder, [0, 0, 0]];
mech_right_foot attachTo [right_foot_holder, [0, 0, 0]];

mech_left_forearm attachTo [left_forearm_holder, [0, 0.5, 1.5]];
mech_left_forearm setVectorDirAndUp [[-0.327172,0.329935,-0.885495],[-0.936978,0.00830945,0.34929]];
mech_right_forearm attachTo [right_forearm_holder, [0, 0.5, 1.5]];
mech_right_forearm setVectorDirAndUp [[0.327174,0.329924,-0.885498],[0.936977,0.00831079,0.349291]];


mech_left_hand attachTo [left_hand_holder, [0, 0, 0]];
mech_left_hand setVectorDirAndUp [[0,0.951605,-0.307323],[-1,0.000278932,0.000863692]];
mech_right_hand attachTo [right_hand_holder, [0, 0, 0]];
mech_right_hand setVectorDirAndUp [[0,0.951605,-0.307323],[1,0.000278875,0.000863518]];

hideObjectGlobal left_foot;
hideObjectGlobal left_shin;
hideObjectGlobal left_tigh;
hideObjectGlobal right_foot;
hideObjectGlobal right_shin;
hideObjectGlobal right_tigh;
hideObjectGlobal lower_back;
hideObjectGlobal upper_back;
hideObjectGlobal head;
hideObjectGlobal left_hand;
hideObjectGlobal left_forearm;
hideObjectGlobal right_hand;
hideObjectGlobal right_forearm;
hideObjectGlobal left_foot_holder;
hideObjectGlobal left_shin_holder;
hideObjectGlobal left_tigh_holder;
hideObjectGlobal right_foot_holder;
hideObjectGlobal right_shin_holder;
hideObjectGlobal right_tigh_holder;
hideObjectGlobal lower_back_holder;
hideObjectGlobal upper_back_holder;
hideObjectGlobal head_holder;
hideObjectGlobal left_hand_holder;
hideObjectGlobal left_forearm_holder;
hideObjectGlobal right_hand_holder;
hideObjectGlobal right_forearm_holder;
};

temp1 = 0.478503;
[] spawn { 
sleep 2;
mub2 attachTo [mech_upper_back, [1.43188,-0.674805,temp1]]; 
mub2 setVectorDirAndUp [[0,0.615249,-0.788333],[0,0.788333,0.615249]]; 
};
[] spawn { 
sleep 1;
mub2 attachTo [mech_upper_back, [1.43188,-0.674805,temp1]]; 
mub2 setVectorDirAndUp [[0,0.615249,-0.788333],[0,0.788333,0.615249]]; 
};
[] spawn { 
sleep 2;
mub1 attachTo [mech_upper_back, [-1.43188,-0.674805,temp1]]; 
mub1 setVectorDirAndUp [[0,0.615249,-0.788333],[0,0.788333,0.615249]];  
};
[] spawn { 
sleep 1;
mub1 attachTo [mech_upper_back, [-1.43188,-0.674805,temp1]]; 
mub1 setVectorDirAndUp [[0,0.615249,-0.788333],[0,0.788333,0.615249]]; 
};

temp2 = 1;
[] spawn { 
sleep 2;
mlb2 attachTo [mech_lower_back, [1.53967,1.26709,temp2]]; 
mlb2 setVectorDirAndUp [[0,-0.00904063,-0.999959],[0,0.999959,-0.00904063]]; 
};
[] spawn { 
sleep 1;
mlb2 attachTo [mech_lower_back, [1.53967,1.26709,temp2]]; 
mlb2 setVectorDirAndUp [[0,-0.00904063,-0.999959],[0,0.999959,-0.00904063]];
};
[] spawn { 
sleep 2;
mlb1 attachTo [mech_lower_back, [-1.53967,1.26709,temp2]]; 
mlb1 setVectorDirAndUp [[0,-0.00904063,-0.999959],[0,0.999959,-0.00904063]];
};
[] spawn { 
sleep 1;
mlb1 attachTo [mech_lower_back, [-1.53967,1.26709,temp2]]; 
mlb1 setVectorDirAndUp [[0,-0.00904063,-0.999959],[0,0.999959,-0.00904063]]; 
};

if (player == testunit) then {
switchCamera mech_head;
onEachFrame {

_difference = position head vectorDiff scalingCenter;
_difference = _difference vectorMultiply scale;
_difference = _difference vectorAdd scalingCenter;
head_holder setPosATL _difference;
head_holder setVectorDirAndUp [vectorDir head, vectorUp head];


_difference = position upper_back vectorDiff scalingCenter;
_difference = _difference vectorMultiply scale;
_difference = _difference vectorAdd scalingCenter;
upper_back_holder setPosATL _difference;
upper_back_holder setVectorDirAndUp [vectorDir upper_back, vectorUp upper_back];


_difference = position lower_back vectorDiff scalingCenter;
_difference = _difference vectorMultiply scale;
_difference = _difference vectorAdd scalingCenter;
lower_back_holder setPosATL _difference;
lower_back_holder setVectorDirAndUp [vectorDir lower_back, vectorUp lower_back];

_difference = position left_tigh vectorDiff scalingCenter;
_difference = _difference vectorMultiply scale;
_difference = _difference vectorAdd scalingCenter;
left_tigh_holder setPosATL _difference;
left_tigh_holder setVectorDirAndUp [vectorDir left_tigh, vectorUp left_tigh];

_difference = position right_tigh vectorDiff scalingCenter;
_difference = _difference vectorMultiply scale;
_difference = _difference vectorAdd scalingCenter;
right_tigh_holder setPosATL _difference;
right_tigh_holder setVectorDirAndUp [vectorDir right_tigh, vectorUp right_tigh];

_difference = position left_shin vectorDiff scalingCenter;
_difference = _difference vectorMultiply scale;
_difference = _difference vectorAdd scalingCenter;
left_shin_holder setPosATL _difference;
left_shin_holder setVectorDirAndUp [vectorDir left_shin, vectorUp left_shin];

_difference = position right_shin vectorDiff scalingCenter;
_difference = _difference vectorMultiply scale;
_difference = _difference vectorAdd scalingCenter;
right_shin_holder setPosATL _difference;
right_shin_holder setVectorDirAndUp [vectorDir right_shin, vectorUp right_shin];

_difference = position left_foot vectorDiff scalingCenter;
_difference = _difference vectorMultiply scale;
_difference = _difference vectorAdd scalingCenter;
left_foot_holder setPosATL _difference;
left_foot_holder setVectorDirAndUp [vectorDir left_foot, vectorUp left_foot];

_difference = position right_foot vectorDiff scalingCenter;
_difference = _difference vectorMultiply scale;
_difference = _difference vectorAdd scalingCenter;
right_foot_holder setPosATL _difference;
right_foot_holder setVectorDirAndUp [vectorDir right_foot, vectorUp right_foot];

_difference = position left_forearm vectorDiff scalingCenter;
_difference = _difference vectorMultiply scale;
_difference = _difference vectorAdd scalingCenter;
left_forearm_holder setPosATL _difference;
left_forearm_holder setVectorDirAndUp [vectorDir left_forearm, vectorUp left_forearm];

_difference = position right_forearm vectorDiff scalingCenter;
_difference = _difference vectorMultiply scale;
_difference = _difference vectorAdd scalingCenter;
right_forearm_holder setPosATL _difference;
right_forearm_holder setVectorDirAndUp [vectorDir right_forearm, vectorUp right_forearm];

_difference = position left_hand vectorDiff scalingCenter;
_difference = _difference vectorMultiply scale;
_difference = _difference vectorAdd scalingCenter;
left_hand_holder setPosATL _difference;
left_hand_holder setVectorDirAndUp [vectorDir left_hand, vectorUp left_hand];

_difference = position right_hand vectorDiff scalingCenter;
_difference = _difference vectorMultiply scale;
_difference = _difference vectorAdd scalingCenter;
right_hand_holder setPosATL _difference;
right_hand_holder setVectorDirAndUp [vectorDir right_hand, vectorUp right_hand];


if ((testunit distance mech_head) > 100) then {
_difference = position testunit vectorDiff scalingCenter;
_difference = _difference vectorMultiply scale;
_difference = _difference vectorAdd scalingCenter;
_difference set [2, 30];
testunit setPosATL _difference;
floor1 setPosATL _difference;
_difference set [2, 0];
scalingCenter = _difference;
};
};
[] spawn {
while {alive testunit} do {
	waitUntil {inputAction "defaultAction" > 0};
	shellFired = createVehicle ["csa38_75mm_GR38HL", mech_head modelToWorld [0, 1.8, -0.1], [], 0, "CAN_COLLIDE"];
	dirShell = [vectorDir mech_head, vectorUp mech_head];
	shellFired setVectorDirAndUp dirShell;
	shellFired setVelocityModelSpace [0, 300, 0];
	sleep 7;
};
};
} else {

onEachFrame {

_difference = position head vectorDiff scalingCenter;
_difference = _difference vectorMultiply scale;
_difference = _difference vectorAdd scalingCenter;
head_holder setPosATL _difference;
head_holder setVectorDirAndUp [vectorDir head, vectorUp head];


_difference = position upper_back vectorDiff scalingCenter;
_difference = _difference vectorMultiply scale;
_difference = _difference vectorAdd scalingCenter;
upper_back_holder setPosATL _difference;
upper_back_holder setVectorDirAndUp [vectorDir upper_back, vectorUp upper_back];


_difference = position lower_back vectorDiff scalingCenter;
_difference = _difference vectorMultiply scale;
_difference = _difference vectorAdd scalingCenter;
lower_back_holder setPosATL _difference;
lower_back_holder setVectorDirAndUp [vectorDir lower_back, vectorUp lower_back];

_difference = position left_tigh vectorDiff scalingCenter;
_difference = _difference vectorMultiply scale;
_difference = _difference vectorAdd scalingCenter;
left_tigh_holder setPosATL _difference;
left_tigh_holder setVectorDirAndUp [vectorDir left_tigh, vectorUp left_tigh];

_difference = position right_tigh vectorDiff scalingCenter;
_difference = _difference vectorMultiply scale;
_difference = _difference vectorAdd scalingCenter;
right_tigh_holder setPosATL _difference;
right_tigh_holder setVectorDirAndUp [vectorDir right_tigh, vectorUp right_tigh];

_difference = position left_shin vectorDiff scalingCenter;
_difference = _difference vectorMultiply scale;
_difference = _difference vectorAdd scalingCenter;
left_shin_holder setPosATL _difference;
left_shin_holder setVectorDirAndUp [vectorDir left_shin, vectorUp left_shin];

_difference = position right_shin vectorDiff scalingCenter;
_difference = _difference vectorMultiply scale;
_difference = _difference vectorAdd scalingCenter;
right_shin_holder setPosATL _difference;
right_shin_holder setVectorDirAndUp [vectorDir right_shin, vectorUp right_shin];

_difference = position left_foot vectorDiff scalingCenter;
_difference = _difference vectorMultiply scale;
_difference = _difference vectorAdd scalingCenter;
left_foot_holder setPosATL _difference;
left_foot_holder setVectorDirAndUp [vectorDir left_foot, vectorUp left_foot];

_difference = position right_foot vectorDiff scalingCenter;
_difference = _difference vectorMultiply scale;
_difference = _difference vectorAdd scalingCenter;
right_foot_holder setPosATL _difference;
right_foot_holder setVectorDirAndUp [vectorDir right_foot, vectorUp right_foot];

_difference = position left_forearm vectorDiff scalingCenter;
_difference = _difference vectorMultiply scale;
_difference = _difference vectorAdd scalingCenter;
left_forearm_holder setPosATL _difference;
left_forearm_holder setVectorDirAndUp [vectorDir left_forearm, vectorUp left_forearm];

_difference = position right_forearm vectorDiff scalingCenter;
_difference = _difference vectorMultiply scale;
_difference = _difference vectorAdd scalingCenter;
right_forearm_holder setPosATL _difference;
right_forearm_holder setVectorDirAndUp [vectorDir right_forearm, vectorUp right_forearm];

_difference = position left_hand vectorDiff scalingCenter;
_difference = _difference vectorMultiply scale;
_difference = _difference vectorAdd scalingCenter;
left_hand_holder setPosATL _difference;
left_hand_holder setVectorDirAndUp [vectorDir left_hand, vectorUp left_hand];

_difference = position right_hand vectorDiff scalingCenter;
_difference = _difference vectorMultiply scale;
_difference = _difference vectorAdd scalingCenter;
right_hand_holder setPosATL _difference;
right_hand_holder setVectorDirAndUp [vectorDir right_hand, vectorUp right_hand];

comment "hintSilent str [position head_holder];"
};
};

