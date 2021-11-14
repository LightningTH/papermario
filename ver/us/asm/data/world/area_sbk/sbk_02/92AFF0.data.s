.include "macro.inc"

.section .data

dlabel D_80240D40_92AFF0
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000000, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x802455D0, 0x00000001, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_80240D9C_92B04C
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000001, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x802455D8, 0x00000000, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_80240DF8_92B0A8
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000003, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x802455E0, 0x00000002, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_80240E54_92B104
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000004, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x802455E8, 0x00000000, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_80240EB0_92B160
.word 0x00000047, 0x00000005, D_80240D40_92AFF0, 0x00080000, 0x00000003, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_80240D9C_92B04C, 0x00080000, 0x00000007, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_80240DF8_92B0A8, 0x00080000, 0x00000005, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_80240E54_92B104, 0x00080000, 0x00000009, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_80240F30_92B1E0
.word 0x00000043, 0x00000002, GetEntryID, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000005, 0x00000044, 0x00000001, D_80240EB0_92B160, 0x0000001D, 0x00000001, 0x00000006, 0x0000001D, 0x00000001, 0x00000007, 0x00000044, 0x00000001, D_80240EB0_92B160, 0x00000020, 0x00000000, 0x0000001C, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, D_80240EB0_92B160, 0x00000044, 0x00000001, EnterWalk, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xF5DE0329, 0x0000000A, 0x00000043, 0x00000002, SetSpriteShading, 0xFFFFFFFF, 0x0000000A, 0x00000002, 0xF5DE0180, 0xFFFFFFC1, 0x00000043, 0x00000002, DisablePulseStone, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000006, SetCamPerspective, 0x00000000, 0x00000003, 0x00000019, 0x00000010, 0x00001000, 0x00000043, 0x00000005, SetCamBGColor, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamEnabled, 0x00000000, 0x00000001, 0x00000043, 0x00000003, SetCamLeadPlayer, 0x00000000, 0x00000000, 0x00000043, 0x00000003, MakeNpcs, 0x00000000, 0x80245558, 0x00000046, 0x00000001, 0x80245580, 0x0000000C, 0x00000002, 0xF5DE0180, 0xFFFFFFC2, 0x00000043, 0x0000000F, PlayEffect, 0x00000082, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000024, 0x00000002, 0xFD050F80, 0xFE363C8F, 0x00000013, 0x00000000, 0x0000000A, 0x00000002, 0xF5DE0180, 0xFFFFFFCA, 0x00000043, 0x00000005, SetMusicTrack, 0x00000000, 0x00000078, 0x00000001, 0x00000008, 0x00000012, 0x00000000, 0x00000044, 0x00000001, 0x80240CC0, 0x00000013, 0x00000000, 0x00000043, 0x00000002, GetEntryID, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x0000001D, 0x00000001, 0x00000006, 0x0000001D, 0x00000001, 0x00000007, 0x00000020, 0x00000000, 0x0000001C, 0x00000000, 0x00000046, 0x00000001, 0x80243A00, 0x00000023, 0x00000000, 0x00000044, 0x00000001, D_80240F30_92B1E0, 0x00000043, 0x00000002, GetEntryID, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000005, 0x00000008, 0x00000001, 0x00000041, 0x0000001D, 0x00000001, 0x00000006, 0x0000001D, 0x00000001, 0x00000007, 0x00000044, 0x00000001, 0x80243B38, 0x00000008, 0x00000001, 0x00000003, 0x00000020, 0x00000000, 0x0000001C, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000
