.include "macro.inc"

.section .data

dlabel D_80240260_D53F10
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x00000024, 0x00000002, 0xFE363C81, 0x00000013, 0x00000024, 0x00000002, 0xFE363C82, 0x00000016, 0x00000024, 0x00000002, 0xFE363C83, 0xFFFFFFFF, 0x00000044, 0x00000001, ExitSingleDoor, 0x00000008, 0x00000001, 0x00000011, 0x00000043, 0x00000003, GotoMap, 0x802409C0, 0x00000001, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_80240304_D53FB4
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0x00000001, 0x00000024, 0x00000002, 0xFE363C81, 0x0000000E, 0x00000024, 0x00000002, 0xFE363C82, 0x00000014, 0x00000024, 0x00000002, 0xFE363C83, 0x00000012, 0x00000044, 0x00000001, ExitDoubleDoor, 0x00000008, 0x00000001, 0x00000011, 0x00000043, 0x00000003, GotoMap, 0x802409C8, 0x00000000, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_802403A8_D54058
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0x00000002, 0x00000024, 0x00000002, 0xFE363C81, 0x00000024, 0x00000024, 0x00000002, 0xFE363C82, 0x00000037, 0x00000024, 0x00000002, 0xFE363C83, 0x00000035, 0x00000044, 0x00000001, ExitDoubleDoor, 0x00000008, 0x00000001, 0x00000011, 0x00000043, 0x00000003, GotoMap, 0x802409D0, 0x00000000, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_8024044C_D540FC
.word 0x00000047, 0x00000005, D_80240260_D53F10, 0x00000100, 0x00000013, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_80240304_D53FB4, 0x00000100, 0x0000000E, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_802403A8_D54058, 0x00000100, 0x00000024, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_802404B0_D54160
.word 0x00000043, 0x00000002, GetLoadType, 0xFE363C81, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000001, 0x00000044, 0x00000001, EnterSavePoint, 0x00000044, 0x00000001, D_8024044C_D540FC, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000002, GetEntryID, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, 0x00000016, 0x00000024, 0x00000002, 0xFE363C83, 0xFFFFFFFF, 0x00000046, 0x00000001, EnterSingleDoor, 0x00000016, 0x00000001, 0x00000001, 0x00000024, 0x00000002, 0xFE363C82, 0x00000014, 0x00000024, 0x00000002, 0xFE363C83, 0x00000012, 0x00000046, 0x00000001, EnterDoubleDoor, 0x00000016, 0x00000001, 0x00000002, 0x00000024, 0x00000002, 0xFE363C82, 0x00000037, 0x00000024, 0x00000002, 0xFE363C83, 0x00000035, 0x00000046, 0x00000001, EnterDoubleDoor, 0x00000023, 0x00000000, 0x00000044, 0x00000001, D_8024044C_D540FC, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xF5DE0329, 0x00000015, 0x00000043, 0x00000002, SetSpriteShading, 0xFFFFFFFF, 0x00000043, 0x00000006, SetCamPerspective, 0x00000000, 0x00000003, 0x00000019, 0x00000010, 0x00001000, 0x00000043, 0x00000005, SetCamBGColor, 0x00000000, 0x00000018, 0x00000018, 0x00000028, 0x00000043, 0x00000003, SetCamLeadPlayer, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamEnabled, 0x00000000, 0x00000001, 0x00000046, 0x00000001, 0x80240934, 0x00000044, 0x00000001, 0x80240220, 0x0000000A, 0x00000002, 0xF8406159, 0x00000001, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000016, 0x7FFFFE00, 0x00000043, 0x00000003, EnableModel, 0x0000001E, 0x00000000, 0x00000012, 0x00000000, 0x00000043, 0x00000003, EnableModel, 0x00000019, 0x00000000, 0x00000013, 0x00000000, 0x00000044, 0x00000001, D_802404B0_D54160, 0x00000008, 0x00000001, 0x00000001, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000
