.include "macro.inc"

.section .data

dlabel D_80240620_EB7850
.word 0x00000000, 0x00000000, 0x42C80000, 0x42B40000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, D_80240C34_EB7E64, D_80240620_EB7850, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, func_80200000, 0x00000000

dlabel D_80240670_EB78A0
.word 0x00000043, 0x00000005, 0x802E339C, 0x00000000, 0x0000002A, 0x00000000, 0x00000008, 0x00000043, 0x00000002, 0x802E376C, 0x00000009, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000

dlabel D_802406B0_EB78E0
.word 0x0000004D, 0x00000001, 0x00000000, 0x0000000A, 0x00000002, 0xFE363C85, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C86, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C87, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C88, 0x00000001, 0x00000043, 0x00000001, EB7230_UnkTexturePanFunc, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000013, 0x00000000, 0x00000013, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000001, EB7230_UnkTexturePanFunc2, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_8024074C_EB797C
.word 0x0000004D, 0x00000001, 0x00000000, 0x00000043, 0x00000003, 0x802D6480, 0xFE363C80, 0x00000003, 0x00000056, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x00000003, 0x00000024, 0x00000002, 0xFE363C81, 0xFFFFFF38, 0x00000024, 0x00000002, 0xFE363C82, 0x00000000, 0x00000024, 0x00000002, 0xFE363C83, 0x00000258, 0x00000024, 0x00000002, 0xFE363C84, 0xFFFFFE70, 0x00000024, 0x00000002, 0xFE363C85, 0x00000001, 0x00000024, 0x00000002, 0xFE363C86, 0x00000000, 0x00000024, 0x00000002, 0xFE363C87, 0x00000001, 0x00000024, 0x00000002, 0xFE363C88, 0x00000001, 0x00000024, 0x00000002, 0xFE363C89, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8A, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8B, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8C, 0x00000000, 0x00000044, 0x00000001, D_802406B0_EB78E0, 0x00000057, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_80240868_EB7A98
.word 0x0000004D, 0x00000001, 0x00000000, 0x00000043, 0x00000003, 0x802D6480, 0xFE363C80, 0x00000004, 0x00000056, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x00000004, 0x00000024, 0x00000002, 0xFE363C81, 0x000001F4, 0x00000024, 0x00000002, 0xFE363C82, 0x00000000, 0x00000024, 0x00000002, 0xFE363C83, 0x00000000, 0x00000024, 0x00000002, 0xFE363C84, 0xFFFFFE70, 0x00000024, 0x00000002, 0xFE363C85, 0x00000001, 0x00000024, 0x00000002, 0xFE363C86, 0x00000000, 0x00000024, 0x00000002, 0xFE363C87, 0x00000000, 0x00000024, 0x00000002, 0xFE363C88, 0x00000001, 0x00000024, 0x00000002, 0xFE363C89, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8A, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8B, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8C, 0x00000000, 0x00000044, 0x00000001, D_802406B0_EB78E0, 0x00000057, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_80240984_EB7BB4
.word 0x00000001, 0x00000002, 0x00000003, 0x00000003, 0x00000002, 0x00000001, 0xFFFFFFFF, 0xFFFFFFFE, 0xFFFFFFFD, 0xFFFFFFFD, 0xFFFFFFFE, 0xFFFFFFFF

dlabel D_802409B4_EB7BE4
.word 0x00000005, 0x00000001, 0x00000000, 0x00000030, 0x00000001, D_80240984_EB7BB4, 0x00000005, 0x00000001, 0x0000000C, 0x00000031, 0x00000001, 0xFE363C81, 0x00000027, 0x00000002, 0xFD050F8A, 0xFE363C81, 0x00000008, 0x00000001, 0x00000003, 0x00000006, 0x00000000, 0x00000006, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_80240A20_EB7C50
.word 0x00000044, 0x00000001, D_802409B4_EB7BE4, 0x0000004D, 0x00000001, 0x00000000, 0x00000043, 0x00000003, 0x802D6480, 0x00000013, 0x00000000, 0x00000024, 0x00000002, 0xFE363C80, 0x00000000, 0x00000024, 0x00000002, 0xFE363C81, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, 0x00000000, 0x00000024, 0x00000002, 0xFE363C83, 0x00000000, 0x00000024, 0x00000002, 0xFD050F8A, 0xFFFFFF97, 0x00000024, 0x00000002, 0xFE363C85, 0x00000028, 0x00000043, 0x00000005, 0x802D5FE0, 0x00000013, 0x00000000, 0xFD050F8A, 0x00000000, 0x00000008, 0x00000001, 0x00000006, 0x00000003, 0x00000001, 0x0000000A, 0x00000043, 0x00000005, 0x802D67E4, 0x00000000, 0x00000000, 0xFE363C80, 0xFE363C81, 0x00000043, 0x00000005, 0x802D67E4, 0x00000000, 0x00000001, 0xFE363C82, 0xFE363C83, 0x00000028, 0x00000002, 0xFE363C80, 0x000002BC, 0x00000027, 0x00000002, 0xFE363C81, 0x000002BC, 0x00000027, 0x00000002, 0xFE363C82, 0x000000C8, 0x00000028, 0x00000002, 0xFE363C83, 0x0000012C, 0x0000000A, 0x00000002, 0xFE363C85, 0x00000028, 0x0000000C, 0x00000002, 0xFD050F8A, 0x00000A8C, 0x00000027, 0x00000002, 0xFD050F8A, 0x00000014, 0x00000012, 0x00000000, 0x00000028, 0x00000002, 0xFE363C85, 0x00000001, 0x00000013, 0x00000000, 0x00000012, 0x00000000, 0x0000000B, 0x00000002, 0xFE363C85, 0x00000000, 0x00000028, 0x00000002, 0xFE363C85, 0x00000001, 0x00000028, 0x00000002, 0xFD050F8A, 0x00000001, 0x00000013, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000005, 0x802D5FE0, 0x00000013, 0x00000000, 0xFD050F8A, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000004, 0x00000001, 0x0000000A, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_80240C34_EB7E64
.word 0x00000024, 0x00000002, 0xF5DE0329, 0x00000012, 0x00000043, 0x00000002, 0x802E6F50, 0x000A0010, 0x00000043, 0x00000006, 0x802D7CD8, 0x00000000, 0x00000003, 0x00000019, 0x00000010, 0x00001000, 0x00000043, 0x00000005, func_802D8248, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, 0x802D7B70, 0x00000000, 0x00000001, 0x00000043, 0x00000003, 0x80048338, 0x00000001, D_80241BE0_EB8E10, 0x00000044, 0x00000001, D_80240670_EB78A0, 0x00000044, 0x00000001, D_80240A20_EB7C50, 0x00000024, 0x00000002, 0xFE363C80, 0x00000010, 0x00000044, 0x00000001, D_8024074C_EB797C, 0x00000024, 0x00000002, 0xFE363C80, 0x00000011, 0x00000044, 0x00000001, D_80240868_EB7A98, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000

dlabel D_80240D20_EB7F50
.word 0x00000000, 0x00280018, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00630000

dlabel D_80240D4C_EB7F7C
.word 0x00000000, 0x001A0018, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00630000, 0x00000000, 0x00140014, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00630000, 0x00000000, 0x00160018, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00630000

dlabel D_80240DD0_EB8000
.word 0x00000008, 0x00000001, 0x0000001E, 0x00000043, 0x00000006, 0x802DD810, 0xFFFFFFFF, 0x00B60009, 0x00B60007, 0x00000005, 0x00100117, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_80240E0C_EB803C
.word 0x00000043, 0x00000004, 0x802DC064, 0xFFFFFFFF, 0x0000005A, 0x00000001, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000003, 0x802DB3C8, 0xFFFFFFFF, 0x0000000A, 0x00000043, 0x00000005, 0x802DB310, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x000000B4, 0x00000043, 0x00000003, 0x802DB654, 0xFFFFFFFF, 0x00B60007, 0x00000043, 0x00000003, 0x80048C5C, 0xFFFFFFFF, D_80240DD0_EB8000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_80240E98_EB80C8
.word 0x00000003, 0x00000001, 0x00000000, 0x00000043, 0x00000003, 0x802D93E4, 0x00000000, 0xF24BE280, 0x00000043, 0x00000005, 0x802DC654, 0x00000001, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000027, 0x00000002, 0xFE363C81, 0x0000003C, 0x00000043, 0x00000005, 0x802D83DC, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x0000000C, 0x00000002, 0xFE363C81, 0x00000AB4, 0x00000008, 0x00000001, 0x00000001, 0x00000004, 0x00000001, 0x00000000, 0x00000013, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_80240F40_EB8170
.word 0x42480000, 0x4525A000, 0xC1A00000, 0x43160000, 0x45322000, 0xC2340000, 0x436B0000, 0x45386000, 0xC2700000, 0x43A78000, 0x453B8000, 0xC2960000

dlabel D_80240F70_EB81A0
.word 0xC1A00000, 0x4525A000, 0xC1A00000, 0xC2F00000, 0x45322000, 0xC2200000, 0xC35C0000, 0x453B8000, 0xC2200000

dlabel D_80240F94_EB81C4
.word 0x41200000, 0x4525A000, 0xC1A00000, 0x41A00000, 0x452F0000, 0xC2700000, 0x41F00000, 0x45340000, 0xC2C80000, 0x42200000, 0x45368000, 0xC3160000, 0x42480000, 0x4537C000, 0xC35C0000

dlabel D_80240FD0_EB8200
.word 0xC20C0000, 0x4525A000, 0xC1A00000, 0xC2820000, 0x452DC000, 0xC1F00000, 0xC2BE0000, 0x45322000, 0xC2200000, 0xC2FA0000, 0x45340000, 0xC2480000, 0xC31B0000, 0x45354000, 0xC2700000, 0xC3390000, 0x45363000, 0xC28C0000

dlabel D_80241018_EB8248
.word 0x00000082, 0xFFFFFF6A, 0x00000082, 0xFFFFFF6A

dlabel D_80241028_EB8258
.word 0x00000027, 0x00000002, 0xFE363C80, 0x00000001, 0x00000030, 0x00000001, D_80241018_EB8248, 0x00000005, 0x00000001, 0xFE363C80, 0x00000031, 0x00000001, 0xFE363C81, 0x00000006, 0x00000000, 0x0000000A, 0x00000002, 0xF9718891, 0x00000000, 0x00000043, 0x00000006, 0x802E382C, 0x000001AD, 0x00000000, 0xFE363C81, 0x00000AF0, 0x00000000, 0x00000024, 0x00000002, 0xF9718891, 0x00000001, 0x00000012, 0x00000000, 0x00000043, 0x00000006, 0x802E382C, 0x000001AE, 0x00000000, 0xFE363C81, 0x00000AF0, 0x00000000, 0x00000024, 0x00000002, 0xF9718891, 0x00000000, 0x00000013, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_802410F4_EB8324
.word 0x00000005, 0x00000001, 0x00000000, 0x00000056, 0x00000000, 0x00000043, 0x00000003, 0x802E1D00, 0x00000003, 0xFE363C80, 0x00000044, 0x00000001, D_80241028_EB8258, 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x00000043, 0x0000000F, 0x802E58EC, 0x00000065, 0x00000002, 0x00000032, 0x00000A5A, 0xFFFFFFEC, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8E, 0xFE363C8F, 0x00000043, 0x00000005, func_802E2A80, 0x0000000F, D_80240F40_EB8170, 0x00000004, 0x00000004, 0x00000016, 0x00000001, 0x00000001, 0x00000043, 0x0000000F, 0x802E58EC, 0x00000065, 0x00000002, 0xFFFFFFEC, 0x00000A5A, 0xFFFFFFEC, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8E, 0xFE363C8F, 0x00000043, 0x00000005, func_802E2A80, 0x0000000A, D_80240F70_EB81A0, 0x00000003, 0x00000004, 0x00000016, 0x00000001, 0x00000002, 0x00000043, 0x0000000F, 0x802E58EC, 0x00000065, 0x00000002, 0x0000000A, 0x00000A5A, 0xFFFFFFEC, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8E, 0xFE363C8F, 0x00000043, 0x00000005, func_802E2A80, 0x0000000F, D_80240F94_EB81C4, 0x00000005, 0x00000004, 0x00000016, 0x00000001, 0x00000003, 0x00000043, 0x0000000F, 0x802E58EC, 0x00000065, 0x00000002, 0xFFFFFFCE, 0x00000A5A, 0xFFFFFFEC, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8E, 0xFE363C8F, 0x00000043, 0x00000005, func_802E2A80, 0x00000014, D_80240FD0_EB8200, 0x00000006, 0x00000004, 0x00000023, 0x00000000, 0x00000043, 0x00000003, 0x802E1D00, 0x00000001, 0xFE363C84, 0x0000000A, 0x00000002, 0xFE363C84, 0x00000000, 0x00000024, 0x00000002, 0xFE363C84, 0xFFFFFFFF, 0x00000013, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, func_802E2B74, 0x00000029, 0x00000002, 0xFE363C81, 0xFE363C84, 0x00000043, 0x00000004, func_80240478_EB76A8, 0xFE363C81, 0xFE363C82, 0xFE363C83, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000043, 0x00000002, 0x802E5160, 0xFE363C8E, 0x00000057, 0x00000000, 0x00000008, 0x00000001, 0x00000008, 0x00000006, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_80241418_EB8648
.word 0x00000043, 0x00000002, 0x802DE448, 0x00000001, 0x00000043, 0x00000002, 0x802DE404, 0x00000001, 0x00000043, 0x00000002, 0x802DE6F8, 0x0000000A, 0x00000043, 0x00000002, 0x802DCA48, 0x00000000, 0x00000043, 0x00000004, 0x802DC5C0, 0xFFFFFFFC, 0x00000200, 0x00000000, 0x00000043, 0x00000001, EB7540_UnsetCamera0MoveFlag1, 0x00000044, 0x00000001, D_80240E98_EB80C8, 0x00000043, 0x00000003, 0x8004930C, 0x00000000, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000002, 0x802DE6A4, 0x00080000, 0x00000057, 0x00000000, 0x00000056, 0x00000000, 0x00000043, 0x00000005, 0x802E1C00, 0x00000000, 0x00000C12, 0x000000A0, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, 0x802E1C7C, 0x00000028, 0x00000002, 0xFE363C80, 0x00000064, 0x00000043, 0x00000005, 0x802DB210, 0xFFFFFFFF, 0x00000000, 0xFE363C80, 0x00000000, 0x00000043, 0x00000005, 0x802DB210, 0x00000000, 0x0000000A, 0xFE363C80, 0xFFFFFFFB, 0x00000043, 0x00000004, 0x802DE510, 0xFFFFFFF6, 0xFE363C80, 0x00000005, 0x00000027, 0x00000002, 0xFE363C80, 0x00000014, 0x00000043, 0x00000005, 0x802DB210, 0xFFFFFFFC, 0xFFFFFFF6, 0xFE363C80, 0x00000000, 0x0000000D, 0x00000002, 0xFE363C80, 0x00000B18, 0x00000043, 0x00000003, 0x8004930C, 0x00000000, 0x00000001, 0x00000013, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000057, 0x00000000, 0x00000003, 0x00000001, 0x00000000, 0x00000043, 0x00000003, 0x80049370, 0x00000000, 0xFE363C80, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000008, 0x00000001, 0x00000001, 0x00000004, 0x00000001, 0x00000000, 0x00000013, 0x00000000, 0x00000044, 0x00000001, D_802410F4_EB8324, 0x00000008, 0x00000001, 0x00000023, 0x00000043, 0x00000007, 0x8011A58C, 0x802F92E0, 0x00000000, 0x00000A5A, 0x00000000, 0x00000094, D_80000000, 0x00000024, 0x00000002, 0xFE363C8A, 0xFE363C80, 0x00000056, 0x00000000, 0x00000043, 0x00000001, func_80240520_EB7750, 0x00000057, 0x00000000, 0x00000024, 0x00000002, 0xFE363C89, 0xFE363C8A, 0x00000043, 0x00000005, EB7540_GetEntityPosition, 0xFE363C89, 0xFE363C82, 0xFE363C83, 0xFE363C84, 0x00000043, 0x00000005, 0x802E1C00, 0xFE363C83, 0x00000BB8, 0x0000000A, 0x00000001, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000001, 0x802E1C7C, 0x00000043, 0x00000005, EB7540_SetEntityPositionF, 0xFE363C89, 0xFE363C82, 0xFE363C80, 0xFE363C84, 0x00000027, 0x00000002, 0xFE363C82, 0xFFFFFFFF, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000007, 0x00000000, 0x00000013, 0x00000000, 0x00000006, 0x00000000, 0x00000008, 0x00000001, 0x0000002D, 0x00000043, 0x00000003, 0x802D78AC, 0x80241C18, 0x00000001, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_802417AC_EB89DC
.word 0x00000043, 0x00000005, 0x802DB210, 0xFFFFFFFF, 0x00000000, 0xFFFFFF9C, 0x00000000, 0x00000043, 0x00000003, 0x802DB654, 0xFFFFFFFF, 0x00160008, 0x00000043, 0x00000003, 0x80048C5C, 0xFFFFFFFF, D_80241418_EB8648, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_80241800_EB8A30
.word 0x00000000, D_80240D20_EB7F50, 0x00000000, 0xC47A0000, 0x00000000, 0x00110709, D_80240E0C_EB803C, 0x00000000, 0x00000000, 0x0000005A, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00B60001, 0x00B60004, 0x00B60006, 0x00B60006, 0x00B60001, 0x00B60001, 0x00B60001, 0x00B60001, 0x00B60001, 0x00B60001, 0x00B60001, 0x00B60001, 0x00B60001, 0x00B60001, 0x00B60001, 0x00B60001, 0x00000000, 0x00000000, 0x00000000, 0x001A0000

dlabel D_802419F0_EB8C20
.word 0x00000001, D_80240D4C_EB7F7C, 0x00000000, 0xC47A0000, 0x00000000, 0x19100004, D_802417AC_EB89DC, 0x00000000, 0x00000000, 0x0000010E, D_80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00007FFF, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00160001, 0x00160001, 0x00160001, 0x00160001, 0x00160001, 0x00160001, 0x00160001, 0x00160001, 0x00160000, 0x00160001, 0x00160001, 0x00160001, 0x00160001, 0x00160001, 0x00160001, 0x00160001, 0x00000000, 0x00000000, 0x00000000, 0x00000000

dlabel D_80241BE0_EB8E10
.word 0x00000001, D_80241800_EB8A30, 0x00000000, 0x00000001, D_802419F0_EB8C20, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
