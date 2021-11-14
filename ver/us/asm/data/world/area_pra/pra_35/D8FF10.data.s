.include "macro.inc"

.section .data

dlabel D_80242CC0_D8FF10
.word 0x00000043, 0x00000003, SetTexPanner, 0xFE363C80, 0xFE363C82, 0x00000043, 0x00000003, SetTexPanner, 0xFE363C81, 0xFE363C82, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000003, EnableModel, 0xFE363C80, 0x00000001, 0x00000043, 0x00000003, EnableModel, 0xFE363C81, 0x00000001, 0x00000024, 0x00000002, 0xFE363C8A, 0x00000000, 0x00000005, 0x00000001, 0x00000014, 0x00000043, 0x00000005, SetTexPanOffset, 0xFE363C82, 0x00000000, 0xFE363C8A, 0x00000000, 0x00000027, 0x00000002, 0xFE363C8A, 0x00000BB8, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000043, 0x00000003, EnableModel, 0xFE363C80, 0x00000000, 0x00000043, 0x00000003, EnableModel, 0xFE363C81, 0x00000000, 0x00000008, 0x00000001, 0x000000A0, 0x00000006, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, GetEntryID, 0xFE363C8A, 0x0000000A, 0x00000002, 0xFE363C8A, 0xFE363C81, 0x00000024, 0x00000002, 0xFE363C80, 0x00000002, 0x00000013, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C8A, 0xFE363C82, 0x00000024, 0x00000002, 0xFE363C80, 0x00000002, 0x00000013, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C8A, 0xFE363C83, 0x00000024, 0x00000002, 0xFE363C80, 0x00000002, 0x00000013, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C8A, 0xFE363C84, 0x00000024, 0x00000002, 0xFE363C80, 0x00000002, 0x00000013, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C8A, 0xFE363C85, 0x00000024, 0x00000002, 0xFE363C80, 0x00000002, 0x00000013, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C8A, 0xFE363C86, 0x00000024, 0x00000002, 0xFE363C80, 0x00000002, 0x00000013, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_80242ED4_D90124
.word 0x0000003E, 0x00000002, 0x00000010, 0xFE363C8A, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x00000043, 0x00000001, pra_35_ReflectWall, 0x00000016, 0x00000001, 0x00000001, 0x00000016, 0x00000001, 0x00000002, 0x00000043, 0x00000001, pra_35_ReflectWall, 0x00000023, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000002, pra_35_ReflectFloor, 0xFE363C80, 0x00000043, 0x00000002, pra_35_ReflectPartner, 0xFE363C80, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_80242F7C_D901CC
.word 0x0000002D, 0x0000002E, 0xFFFFFFFF

dlabel D_80242F88_D901D8
.word 0x0000002A, 0x0000002B, 0xFFFFFFFF

dlabel D_80242F94_D901E4
.word 0x00000033, 0x00000034, 0xFFFFFFFF

dlabel D_80242FA0_D901F0
.word 0x00000030, 0x00000031, 0xFFFFFFFF

dlabel D_80242FAC_D901FC
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x00000024, 0x00000002, 0xFE363C81, 0x00000014, 0x00000024, 0x00000002, 0xFE363C82, D_80242F7C_D901CC, 0x00000024, 0x00000002, 0xFE363C83, D_80242F88_D901D8, 0x00000044, 0x00000001, D_80285EEC_7E6D6C, 0x00000008, 0x00000001, 0x00000011, 0x00000043, 0x00000003, GotoMap, 0x80243FD0, 0x00000000, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_80243050_D902A0
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0x00000001, 0x00000024, 0x00000002, 0xFE363C81, 0x00000014, 0x00000024, 0x00000002, 0xFE363C82, D_80242F94_D901E4, 0x00000024, 0x00000002, 0xFE363C83, D_80242FA0_D901F0, 0x00000044, 0x00000001, D_80285EEC_7E6D6C, 0x00000008, 0x00000001, 0x00000011, 0x00000043, 0x00000003, GotoMap, 0x80243FD8, 0x00000000, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_802430F4_D90344
.word 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000002, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80243FD0, 0x00000002, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_80243160_D903B0
.word 0x00000047, 0x00000005, D_80242FAC_D901FC, 0x00000100, 0x00000014, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_80243050_D902A0, 0x00000100, 0x00000021, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_802430F4_D90344, 0x00080000, 0x00000016, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_802431C4_D90414
.word 0x00000043, 0x00000002, GetEntryID, 0xFE363C80, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, D_80242F7C_D901CC, 0x00000024, 0x00000002, 0xFE363C83, D_80242F88_D901D8, 0x00000046, 0x00000001, D_802861B0_7E7030, 0x00000044, 0x00000001, D_80243160_D903B0, 0x00000016, 0x00000001, 0x00000001, 0x00000024, 0x00000002, 0xFE363C82, D_80242F94_D901E4, 0x00000024, 0x00000002, 0xFE363C83, D_80242FA0_D901F0, 0x00000046, 0x00000001, D_802861B0_7E7030, 0x00000044, 0x00000001, D_80243160_D903B0, 0x00000016, 0x00000001, 0x00000002, 0x00000024, 0x00000002, 0xFE363C80, D_80243160_D903B0, 0x00000044, 0x00000001, EnterWalk, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_802432A8_D904F8
.word 0x41500000, 0x00000000, 0xC2A00000, 0x00000000

dlabel D_802432B8_D90508
.word 0x00000043, 0x00000003, EnableGroup, 0x00000019, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000018, 0x7FFFFE00, 0x00000048, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xF5DE0329, 0x00000015, 0x00000043, 0x00000002, SetSpriteShading, 0xFFFFFFFF, 0x00000043, 0x00000006, SetCamPerspective, 0x00000000, 0x00000003, 0x00000019, 0x00000010, 0x00001000, 0x00000043, 0x00000005, SetCamBGColor, 0x00000000, 0x00000018, 0x00000018, 0x00000028, 0x00000043, 0x00000003, SetCamLeadPlayer, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamEnabled, 0x00000000, 0x00000001, 0x00000043, 0x00000003, MakeNpcs, 0x00000001, 0x80243DB0, 0x00000024, 0x00000002, 0xFE363C80, 0x00000040, 0x00000024, 0x00000002, 0xFE363C81, 0x00000041, 0x00000024, 0x00000002, 0xFE363C82, 0x00000000, 0x00000044, 0x00000001, D_80242CC0_D8FF10, 0x00000046, 0x00000001, 0x80243F78, 0x00000044, 0x00000001, D_802431C4_D90414, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xF840616C, 0x00000000, 0x00000047, 0x00000005, D_802432B8_D90508, 0x00100000, D_802432A8_D904F8, 0x00000001, 0x00000000, 0x00000012, 0x00000000, 0x00000043, 0x00000003, EnableGroup, 0x00000019, 0x00000000, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000018, 0x7FFFFE00, 0x00000013, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x00000024, 0x00000002, 0xFE363C81, 0xF8406152, 0x00000044, 0x00000001, D_80242ED4_D90124, 0x00000044, 0x00000001, 0x80242C80, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000
