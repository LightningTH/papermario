.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .rodata

dlabel jtbl_8029D700
.word L80268C90_197570, L80268B28_197408, L80268B38_197418, L80268B48_197428, L80268B58_197438, L80268B68_197448, L80268B78_197458, L80268B88_197468, L80268B98_197478, L80268BA8_197488, L80268BB8_197498, L80268BC8_1974A8, L80268BD8_1974B8, L80268BE8_1974C8, L80268BF8_1974D8, L80268C08_1974E8, L80268C18_1974F8, L80268C28_197508, L80268C38_197518, L80268C48_197528, L80268C58_197538, L80268C68_197548, L80268C78_197558, L80268C88_197568

.section .text

glabel func_80268AF8
/* 1973D8 80268AF8 3C03802A */  lui       $v1, %hi(D_8029FC2A)
/* 1973DC 80268AFC 8463FC2A */  lh        $v1, %lo(D_8029FC2A)($v1)
/* 1973E0 80268B00 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 1973E4 80268B04 2C620018 */  sltiu     $v0, $v1, 0x18
/* 1973E8 80268B08 10400061 */  beqz      $v0, L80268C90_197570
/* 1973EC 80268B0C AFBF0010 */   sw       $ra, 0x10($sp)
/* 1973F0 80268B10 00031080 */  sll       $v0, $v1, 2
/* 1973F4 80268B14 3C01802A */  lui       $at, %hi(jtbl_8029D700)
/* 1973F8 80268B18 00220821 */  addu      $at, $at, $v0
/* 1973FC 80268B1C 8C22D700 */  lw        $v0, %lo(jtbl_8029D700)($at)
/* 197400 80268B20 00400008 */  jr        $v0
/* 197404 80268B24 00000000 */   nop
dlabel L80268B28_197408
/* 197408 80268B28 0C0AA551 */  jal       action_command_jump_draw_hud_elements
/* 19740C 80268B2C 00000000 */   nop
/* 197410 80268B30 0809A324 */  j         L80268C90_197570
/* 197414 80268B34 00000000 */   nop
dlabel L80268B38_197418
/* 197418 80268B38 0C0AA675 */  jal       action_command_hammer_draw_hud_elements
/* 19741C 80268B3C 00000000 */   nop
/* 197420 80268B40 0809A324 */  j         L80268C90_197570
/* 197424 80268B44 00000000 */   nop
dlabel L80268B48_197428
/* 197428 80268B48 0C0AA5BD */  jal       func_802A96F4_4231C4
/* 19742C 80268B4C 00000000 */   nop
/* 197430 80268B50 0809A324 */  j         L80268C90_197570
/* 197434 80268B54 00000000 */   nop
dlabel L80268B58_197438
/* 197438 80268B58 0C0AA5AE */  jal       func_802A96B8_423AA8
/* 19743C 80268B5C 00000000 */   nop
/* 197440 80268B60 0809A324 */  j         L80268C90_197570
/* 197444 80268B64 00000000 */   nop
dlabel L80268B68_197448
/* 197448 80268B68 0C0AA5D1 */  jal       func_802A9744_4243B4
/* 19744C 80268B6C 00000000 */   nop
/* 197450 80268B70 0809A324 */  j         L80268C90_197570
/* 197454 80268B74 00000000 */   nop
dlabel L80268B78_197458
/* 197458 80268B78 0C0AA529 */  jal       func_802A94A4_425A34
/* 19745C 80268B7C 00000000 */   nop
/* 197460 80268B80 0809A324 */  j         L80268C90_197570
/* 197464 80268B84 00000000 */   nop
dlabel L80268B88_197468
/* 197468 80268B88 0C0AA536 */  jal       func_802A94D8_426028
/* 19746C 80268B8C 00000000 */   nop
/* 197470 80268B90 0809A324 */  j         L80268C90_197570
/* 197474 80268B94 00000000 */   nop
dlabel L80268B98_197478
/* 197478 80268B98 0C0AA5B7 */  jal       action_command_dizzy_shell_UnkActionCommandFunc1
/* 19747C 80268B9C 00000000 */   nop
/* 197480 80268BA0 0809A324 */  j         L80268C90_197570
/* 197484 80268BA4 00000000 */   nop
dlabel L80268BA8_197488
/* 197488 80268BA8 0C0AA60D */  jal       action_command_fire_shell_UnkActionCommandFunc1
/* 19748C 80268BAC 00000000 */   nop
/* 197490 80268BB0 0809A324 */  j         L80268C90_197570
/* 197494 80268BB4 00000000 */   nop
dlabel L80268BB8_197498
/* 197498 80268BB8 0C0AA557 */  jal       action_command_0A_UnkActionCommandFunc1
/* 19749C 80268BBC 00000000 */   nop
/* 1974A0 80268BC0 0809A324 */  j         L80268C90_197570
/* 1974A4 80268BC4 00000000 */   nop
dlabel L80268BC8_1974A8
/* 1974A8 80268BC8 0C0AA5BB */  jal       action_command_bomb_UnkActionCommandFunc1
/* 1974AC 80268BCC 00000000 */   nop
/* 1974B0 80268BD0 0809A324 */  j         L80268C90_197570
/* 1974B4 80268BD4 00000000 */   nop
dlabel L80268BD8_1974B8
/* 1974B8 80268BD8 0C0AA599 */  jal       action_command_body_slam_draw_hud_elements
/* 1974BC 80268BDC 00000000 */   nop
/* 1974C0 80268BE0 0809A324 */  j         L80268C90_197570
/* 1974C4 80268BE4 00000000 */   nop
dlabel L80268BE8_1974C8
/* 1974C8 80268BE8 0C0AA5BB */  jal       action_command_bomb_UnkActionCommandFunc1
/* 1974CC 80268BEC 00000000 */   nop
/* 1974D0 80268BF0 0809A324 */  j         L80268C90_197570
/* 1974D4 80268BF4 00000000 */   nop
dlabel L80268BF8_1974D8
/* 1974D8 80268BF8 0C0AA613 */  jal       action_command_air_raid_UnkActionCommandFunc1
/* 1974DC 80268BFC 00000000 */   nop
/* 1974E0 80268C00 0809A324 */  j         L80268C90_197570
/* 1974E4 80268C04 00000000 */   nop
dlabel L80268C08_1974E8
/* 1974E8 80268C08 0C0AA58D */  jal       func_802A9634_42A354
/* 1974EC 80268C0C 00000000 */   nop
/* 1974F0 80268C10 0809A324 */  j         L80268C90_197570
/* 1974F4 80268C14 00000000 */   nop
dlabel L80268C18_1974F8
/* 1974F8 80268C18 0C0AA634 */  jal       action_command_power_shock_draw_hud_elements
/* 1974FC 80268C1C 00000000 */   nop
/* 197500 80268C20 0809A324 */  j         L80268C90_197570
/* 197504 80268C24 00000000 */   nop
dlabel L80268C28_197508
/* 197508 80268C28 0C0AA5FE */  jal       func_802A97F8_42E208
/* 19750C 80268C2C 00000000 */   nop
/* 197510 80268C30 0809A324 */  j         L80268C90_197570
/* 197514 80268C34 00000000 */   nop
dlabel L80268C38_197518
/* 197518 80268C38 0C0AA62C */  jal       action_command_smack_UnkActionCommandFunc1
/* 19751C 80268C3C 00000000 */   nop
/* 197520 80268C40 0809A324 */  j         L80268C90_197570
/* 197524 80268C44 00000000 */   nop
dlabel L80268C48_197528
/* 197528 80268C48 0C0AA5CF */  jal       action_command_spiny_surge_UnkActionCommandFunc1
/* 19752C 80268C4C 00000000 */   nop
/* 197530 80268C50 0809A324 */  j         L80268C90_197570
/* 197534 80268C54 00000000 */   nop
dlabel L80268C58_197538
/* 197538 80268C58 0C0AA5EB */  jal       func_802A97AC_42FE8C
/* 19753C 80268C5C 00000000 */   nop
/* 197540 80268C60 0809A324 */  j         L80268C90_197570
/* 197544 80268C64 00000000 */   nop
dlabel L80268C68_197548
/* 197548 80268C68 0C0AA5FF */  jal       func_802A97FC_423BEC
/* 19754C 80268C6C 00000000 */   nop
/* 197550 80268C70 0809A324 */  j         L80268C90_197570
/* 197554 80268C74 00000000 */   nop
dlabel L80268C78_197558
/* 197558 80268C78 0C0AA805 */  jal       func_802AA014_42B504
/* 19755C 80268C7C 00000000 */   nop
/* 197560 80268C80 0809A324 */  j         L80268C90_197570
/* 197564 80268C84 00000000 */   nop
dlabel L80268C88_197568
/* 197568 80268C88 0C0AA5C6 */  jal       action_command_tidal_wave_draw_hud_elements
/* 19756C 80268C8C 00000000 */   nop
dlabel L80268C90_197570
/* 197570 80268C90 8FBF0010 */  lw        $ra, 0x10($sp)
/* 197574 80268C94 03E00008 */  jr        $ra
/* 197578 80268C98 27BD0018 */   addiu    $sp, $sp, 0x18
