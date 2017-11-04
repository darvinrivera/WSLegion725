DELETE FROM `creature` WHERE `guid` IN (280662,280655,280654,280659,280657,280658,280656,280661,280660);
DELETE FROM `creature_addon` WHERE `guid` IN (280662,280655,280654,280659,280657,280658,280656,280661,280660);
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-9119.9,`position_y`=390.402,`position_z`=91.8667 WHERE `guid`=280791;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=-9119.9,`position_y`=390.402,`position_z`=91.8667 WHERE `guid` IN (280796,280794,280795,280793,280792,280798,280799,280797);
DELETE FROM `creature_addon` WHERE `guid` IN (280791,280796,280794,280795,280793,280792,280798,280799,280797);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(280796,0,29284,0,1,0, '78855'),
(280794,0,29284,0,1,0, '78855'),
(280795,0,29284,0,1,0, '78855'),
(280793,0,29284,0,1,0, '78855'),
(280792,0,29284,0,1,0, '78855'),
(280798,0,29284,0,1,0, '78855'),
(280799,0,29284,0,1,0, '78855'),
(280797,0,29284,0,1,0, '78855'),
(280791,2807910,29284,0,1,0, '78855');

DELETE FROM `creature_formations` WHERE `leaderGUID`=280791;
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`,`point_1`,`point_2`) VALUES
(280791, 280791, 0,   0, 515, 0, 0),
(280791, 280796, 3,  90, 515, 0, 0),
(280791, 280794, 3, 270, 515, 0, 0),
(280791, 280795, 5, 45, 515, 0, 0),
(280791, 280793, 5, 315, 515, 0, 0),
(280791, 280792, 4, 360, 515, 0, 0),
(280791, 280798, 8, 360, 515, 0, 0),
(280791, 280799, 9, 22, 515, 0, 0),
(280791, 280797, 9, 344, 515, 0, 0);

DELETE FROM `smart_scripts` WHERE `entryorguid`=42218 AND `source_type`=0 AND `id`>0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(42218,0,1,0,4,0,100,0,0,0,0,0,28,78855,0,0,0,0,0,1,0,0,0,0,0,0,0,"Stormwind Royal Guard - On aggro - Remove aura"),
(42218,0,2,0,34,0,100,0,2,58,0,0,41,0,0,0,0,0,0,11,42218,30,0,0,0,0,0,"Stormwind Royal Guard - On movement informer - despawn all guars");

DELETE FROM `waypoint_data` WHERE `id`=2807910;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(2807910, 1, -9119.9, 390.402, 91.8667, 0, 0, 0, 0, 100, 0),
(2807910, 2, -9120.68, 389.773, 91.8667, 0, 0, 0, 0, 100, 0),
(2807910, 3, -9136.41, 381.545, 90.6434, 0, 0, 0, 0, 100, 0),
(2807910, 4, -9157.69, 359.5, 89.305, 0, 0, 0, 0, 100, 0),
(2807910, 5, -9174.68, 339.597, 83.9513, 0, 0, 0, 0, 100, 0),
(2807910, 6, -9180.38, 319.033, 79.9367, 0, 0, 0, 0, 100, 0),
(2807910, 7, -9179.4, 282.561, 76.0222, 0, 0, 0, 0, 100, 0),
(2807910, 8, -9186.77, 238.557, 72.4619, 0, 0, 0, 0, 100, 0),
(2807910, 9, -9214.09, 208.528, 69.7846, 0, 0, 0, 0, 100, 0),
(2807910, 10, -9241.48, 173.536, 67.8369, 0, 0, 0, 0, 100, 0),
(2807910, 11, -9263.96, 154.547, 67.2846, 0, 0, 0, 0, 100, 0),
(2807910, 12, -9292.29, 148.413, 66.4168, 0, 0, 0, 0, 100, 0),
(2807910, 13, -9327.91, 130.203, 64.0227, 0, 0, 0, 0, 100, 0),
(2807910, 14, -9348.82, 117.773, 62.7116, 0, 0, 0, 0, 100, 0),
(2807910, 15, -9385.51, 104.726, 59.7012, 0, 0, 0, 0, 100, 0),
(2807910, 16, -9409.12, 92.467, 57.7331, 0, 0, 0, 0, 100, 0),
(2807910, 17, -9435.12, 72.3941, 56.0949, 0, 0, 0, 0, 100, 0),
(2807910, 18, -9454.01, 64.7517, 56.0216, 0, 0, 0, 0, 100, 0),
(2807910, 19, -9483.89, 65.4722, 56.1705, 0, 0, 0, 0, 100, 0),
(2807910, 20, -9491.36, 60.8906, 55.8921, 0, 0, 0, 0, 100, 0),
(2807910, 21, -9504.84, 33.474, 56.3795, 0, 0, 0, 0, 100, 0),
(2807910, 22, -9525.04, -5.62326, 55.8272, 0, 0, 0, 0, 100, 0),
(2807910, 23, -9539.8, -35.5156, 56.431, 0, 0, 0, 0, 100, 0),
(2807910, 24, -9546.57, -61.9184, 57.0113, 0, 0, 0, 0, 100, 0),
(2807910, 25, -9549.15, -101.922, 57.2853, 0, 0, 0, 0, 100, 0),
(2807910, 26, -9551.71, -131.13, 57.3982, 0, 0, 0, 0, 100, 0),
(2807910, 27, -9572.64, -156.448, 57.3927, 0, 0, 0, 0, 100, 0),
(2807910, 28, -9583.48, -186.366, 57.5604, 0, 0, 0, 0, 100, 0),
(2807910, 29, -9598.09, -223.769, 57.2399, 0, 0, 0, 0, 100, 0),
(2807910, 30, -9609.41, -258.146, 57.1602, 0, 0, 0, 0, 100, 0),
(2807910, 31, -9618.23, -294.892, 56.9496, 0, 0, 0, 0, 100, 0),
(2807910, 32, -9620.23, -324.826, 57.5732, 0, 0, 0, 0, 100, 0),
(2807910, 33, -9620.42, -359.37, 57.2582, 0, 0, 0, 0, 100, 0),
(2807910, 34, -9619.54, -392.205, 57.804, 0, 0, 0, 0, 100, 0),
(2807910, 35, -9611.05, -426.469, 57.3709, 0, 0, 0, 0, 100, 0),
(2807910, 36, -9598.08, -453.528, 57.6788, 0, 0, 0, 0, 100, 0),
(2807910, 37, -9588.98, -476.995, 57.7533, 0, 0, 0, 0, 100, 0),
(2807910, 38, -9593.1, -503.181, 57.3872, 0, 0, 0, 0, 100, 0),
(2807910, 39, -9599.22, -512.536, 57.3586, 0, 0, 0, 0, 100, 0),
(2807910, 40, -9610.61, -530.849, 54.8333, 0, 0, 0, 0, 100, 0),
(2807910, 41, -9616.64, -555.116, 54.4425, 0, 0, 0, 0, 100, 0),
(2807910, 42, -9621.07, -599.967, 52.7582, 0, 0, 0, 0, 100, 0),
(2807910, 43, -9623.73, -630.854, 51.541, 0, 0, 0, 0, 100, 0),
(2807910, 44, -9641.07, -661.401, 49.3346, 0, 0, 0, 0, 100, 0),
(2807910, 45, -9648.89, -693.67, 46.7381, 0, 0, 0, 0, 100, 0),
(2807910, 46, -9655.99, -725.42, 44.418, 0, 0, 0, 0, 100, 0),
(2807910, 47, -9653.45, -752.071, 44.5802, 0, 0, 0, 0, 100, 0),
(2807910, 48, -9651.89, -780.089, 44.3004, 0, 0, 0, 0, 100, 0),
(2807910, 49, -9647.31, -797.179, 43.5314, 0, 0, 0, 0, 100, 0),
(2807910, 50, -9631.43, -817.967, 43.8334, 0, 0, 0, 0, 100, 0),
(2807910, 51, -9606.31, -843.512, 43.7135, 0, 0, 0, 0, 100, 0),
(2807910, 52, -9586.62, -866.698, 43.743, 0, 0, 0, 0, 100, 0),
(2807910, 53, -9581.56, -898.13, 43.6025, 0, 0, 0, 0, 100, 0),
(2807910, 54, -9587.17, -930.189, 43.328, 0, 0, 0, 0, 100, 0),
(2807910, 55, -9611.5, -962.557, 43.7248, 0, 0, 0, 0, 100, 0),
(2807910, 56, -9618.83, -979.495, 43.7668, 0, 0, 0, 0, 100, 0),
(2807910, 57, -9621.49, -1000.79, 42.2443, 0, 0, 0, 0, 100, 0),
(2807910, 58, -9619.17, -1033.02, 39.6984, 0, 0, 0, 0, 100, 0),
(2807910, 59, -9619.17, -1033.02, 39.6984, 0, 0, 0, 0, 100, 0);