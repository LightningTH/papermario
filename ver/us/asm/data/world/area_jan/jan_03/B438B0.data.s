.include "macro.inc"

.section .data

dlabel D_8024ECE0_B438B0
.word 0x00000043, 0x00000006, RotateGroup, 0x00000041, 0xFE363C80, 0x00000000, 0xFFFFFFFF, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_8024ED10_B438E0
.word 0x00000024, 0x00000002, 0xFE363C81, 0xFE363C80, 0x0000002E, 0x00000002, 0xFE363C81, 0xF24A7530, 0x00000043, 0x00000006, RotateGroup, 0x00000047, 0xFE363C81, 0x00000000, 0x00000000, 0x00000001, 0x00000024, 0x00000002, 0xFE363C81, 0xFE363C80, 0x0000002E, 0x00000002, 0xFE363C81, 0xF24A7E80, 0x00000043, 0x00000006, RotateGroup, 0x00000044, 0xFE363C81, 0x00000000, 0x00000000, 0x00000001, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_8024EDA0_B43970
.word 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x00000043, 0x00000003, EnableGroup, 0x00000078, 0x00000001, 0x00000016, 0x00000001, 0x00000003, 0x00000043, 0x00000003, EnableGroup, 0x00000078, 0x00000000, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_8024EE04_B439D4
.word 0x00000001, 0xFFFFFFFF

dlabel D_8024EE0C_B439DC
.word 0x00000043, 0x00000006, RotateGroup, 0x0000007C, 0xFE363C80, 0x00000000, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_8024EE3C_B43A0C
.word 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_8024EE4C_B43A1C
.word 0x00000014, 0x00000001, 0xFE363C80, 0x00000016, 0x00000001, 0x00000000, 0x00000043, 0x00000003, SetGroupEnabled, 0x0000003E, 0x00000000, 0x00000043, 0x00000003, SetGroupEnabled, 0x00000022, 0x00000000, 0x00000016, 0x00000001, 0x00000001, 0x00000016, 0x00000001, 0x00000002, 0x00000016, 0x00000001, 0x00000003, 0x00000043, 0x00000003, SetGroupEnabled, 0x0000003E, 0x00000001, 0x00000043, 0x00000003, SetGroupEnabled, 0x00000022, 0x00000001, 0x00000023, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_8024EEF0_B43AC0
.word 0x00000000, 0xFFFFFFFF, 0x00000043, 0x0000000A, MakeDoorAdvanced, 0x00001006, D_8024ECE0_B438B0, D_8024ED10_B438E0, 0x00000000, D_8024EDA0_B43970, 0x0000002F, 0x00000030, 0x00000079, D_8024EE04_B439D4, 0x00000024, 0x00000002, 0xFE363C80, 0x00000003, 0x00000044, 0x00000001, D_8024EDA0_B43970, 0x00000043, 0x0000000A, MakeDoorAdvanced, 0x00000005, D_8024EE0C_B439DC, D_8024EE3C_B43A0C, 0x00000000, D_8024EE4C_B43A1C, 0x0000003F, 0x00000040, 0x00000000, D_8024EEF0_B43AC0, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000
