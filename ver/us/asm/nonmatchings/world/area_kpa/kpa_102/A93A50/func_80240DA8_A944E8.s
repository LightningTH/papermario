.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .rodata

dlabel D_80245B30_A99270
.double 180.0

dlabel D_80245B38_A99278
.double 90.0

dlabel D_80245B40_A99280
.double 1.2

.section .text

glabel func_80240DA8_A944E8
/* A944E8 80240DA8 27BDFFA0 */  addiu     $sp, $sp, -0x60
/* A944EC 80240DAC AFB3003C */  sw        $s3, 0x3c($sp)
/* A944F0 80240DB0 0080982D */  daddu     $s3, $a0, $zero
/* A944F4 80240DB4 AFB40040 */  sw        $s4, 0x40($sp)
/* A944F8 80240DB8 0000A02D */  daddu     $s4, $zero, $zero
/* A944FC 80240DBC 3C03800A */  lui       $v1, %hi(gCurrentCamID)
/* A94500 80240DC0 8463A634 */  lh        $v1, %lo(gCurrentCamID)($v1)
/* A94504 80240DC4 3C04800B */  lui       $a0, %hi(gCameras)
/* A94508 80240DC8 24841D80 */  addiu     $a0, $a0, %lo(gCameras)
/* A9450C 80240DCC AFBF0044 */  sw        $ra, 0x44($sp)
/* A94510 80240DD0 AFB20038 */  sw        $s2, 0x38($sp)
/* A94514 80240DD4 AFB10034 */  sw        $s1, 0x34($sp)
/* A94518 80240DD8 AFB00030 */  sw        $s0, 0x30($sp)
/* A9451C 80240DDC F7B80058 */  sdc1      $f24, 0x58($sp)
/* A94520 80240DE0 F7B60050 */  sdc1      $f22, 0x50($sp)
/* A94524 80240DE4 F7B40048 */  sdc1      $f20, 0x48($sp)
/* A94528 80240DE8 8E710148 */  lw        $s1, 0x148($s3)
/* A9452C 80240DEC 00031080 */  sll       $v0, $v1, 2
/* A94530 80240DF0 00431021 */  addu      $v0, $v0, $v1
/* A94534 80240DF4 00021080 */  sll       $v0, $v0, 2
/* A94538 80240DF8 00431023 */  subu      $v0, $v0, $v1
/* A9453C 80240DFC 000218C0 */  sll       $v1, $v0, 3
/* A94540 80240E00 00431021 */  addu      $v0, $v0, $v1
/* A94544 80240E04 000210C0 */  sll       $v0, $v0, 3
/* A94548 80240E08 10A00002 */  beqz      $a1, .L80240E14
/* A9454C 80240E0C 00449021 */   addu     $s2, $v0, $a0
/* A94550 80240E10 AE600070 */  sw        $zero, 0x70($s3)
.L80240E14:
/* A94554 80240E14 0C00FB5A */  jal       get_enemy_safe
/* A94558 80240E18 86240008 */   lh       $a0, 8($s1)
/* A9455C 80240E1C 14400006 */  bnez      $v0, .L80240E38
/* A94560 80240E20 24020005 */   addiu    $v0, $zero, 5
/* A94564 80240E24 0260202D */  daddu     $a0, $s3, $zero
/* A94568 80240E28 3C05FE36 */  lui       $a1, 0xfe36
/* A9456C 80240E2C 34A53C80 */  ori       $a1, $a1, 0x3c80
/* A94570 80240E30 08090466 */  j         .L80241198
/* A94574 80240E34 0000302D */   daddu    $a2, $zero, $zero
.L80240E38:
/* A94578 80240E38 8E23006C */  lw        $v1, 0x6c($s1)
/* A9457C 80240E3C 14620005 */  bne       $v1, $v0, .L80240E54
/* A94580 80240E40 0260202D */   daddu    $a0, $s3, $zero
/* A94584 80240E44 3C05FE36 */  lui       $a1, 0xfe36
/* A94588 80240E48 34A53C80 */  ori       $a1, $a1, 0x3c80
/* A9458C 80240E4C 08090466 */  j         .L80241198
/* A94590 80240E50 0000302D */   daddu    $a2, $zero, $zero
.L80240E54:
/* A94594 80240E54 86240008 */  lh        $a0, 8($s1)
/* A94598 80240E58 0C00FB5A */  jal       get_enemy_safe
/* A9459C 80240E5C 00000000 */   nop
/* A945A0 80240E60 14400005 */  bnez      $v0, .L80240E78
/* A945A4 80240E64 0260202D */   daddu    $a0, $s3, $zero
/* A945A8 80240E68 3C05FE36 */  lui       $a1, 0xfe36
/* A945AC 80240E6C 34A53C80 */  ori       $a1, $a1, 0x3c80
/* A945B0 80240E70 08090466 */  j         .L80241198
/* A945B4 80240E74 0000302D */   daddu    $a2, $zero, $zero
.L80240E78:
/* A945B8 80240E78 86240008 */  lh        $a0, 8($s1)
/* A945BC 80240E7C 0C00EABB */  jal       get_npc_unsafe
/* A945C0 80240E80 00000000 */   nop
/* A945C4 80240E84 8E630070 */  lw        $v1, 0x70($s3)
/* A945C8 80240E88 10600006 */  beqz      $v1, .L80240EA4
/* A945CC 80240E8C 0040802D */   daddu    $s0, $v0, $zero
/* A945D0 80240E90 24020001 */  addiu     $v0, $zero, 1
/* A945D4 80240E94 1062003F */  beq       $v1, $v0, .L80240F94
/* A945D8 80240E98 0000102D */   daddu    $v0, $zero, $zero
/* A945DC 80240E9C 08090476 */  j         .L802411D8
/* A945E0 80240EA0 00000000 */   nop
.L80240EA4:
/* A945E4 80240EA4 AFA00010 */  sw        $zero, 0x10($sp)
/* A945E8 80240EA8 AFA00014 */  sw        $zero, 0x14($sp)
/* A945EC 80240EAC 8E050038 */  lw        $a1, 0x38($s0)
/* A945F0 80240EB0 8E06003C */  lw        $a2, 0x3c($s0)
/* A945F4 80240EB4 8E070040 */  lw        $a3, 0x40($s0)
/* A945F8 80240EB8 0C01BECC */  jal       fx_walk
/* A945FC 80240EBC 24040002 */   addiu    $a0, $zero, 2
/* A94600 80240EC0 C64C006C */  lwc1      $f12, 0x6c($s2)
/* A94604 80240EC4 0C00A6C9 */  jal       clamp_angle
/* A94608 80240EC8 00000000 */   nop
/* A9460C 80240ECC 3C018024 */  lui       $at, %hi(D_80245B30_A99270)
/* A94610 80240ED0 D4385B30 */  ldc1      $f24, %lo(D_80245B30_A99270)($at)
/* A94614 80240ED4 46000521 */  cvt.d.s   $f20, $f0
/* A94618 80240ED8 4638A300 */  add.d     $f12, $f20, $f24
/* A9461C 80240EDC 3C018024 */  lui       $at, %hi(D_80245B38_A99278)
/* A94620 80240EE0 D4365B38 */  ldc1      $f22, %lo(D_80245B38_A99278)($at)
/* A94624 80240EE4 0C00A6C9 */  jal       clamp_angle
/* A94628 80240EE8 46206320 */   cvt.s.d  $f12, $f12
/* A9462C 80240EEC 4636A500 */  add.d     $f20, $f20, $f22
/* A94630 80240EF0 4620A320 */  cvt.s.d   $f12, $f20
/* A94634 80240EF4 0C00A6C9 */  jal       clamp_angle
/* A94638 80240EF8 46000506 */   mov.s    $f20, $f0
/* A9463C 80240EFC 4600A521 */  cvt.d.s   $f20, $f20
/* A94640 80240F00 4636A500 */  add.d     $f20, $f20, $f22
/* A94644 80240F04 46000586 */  mov.s     $f22, $f0
/* A94648 80240F08 0C00A6C9 */  jal       clamp_angle
/* A9464C 80240F0C 4620A320 */   cvt.s.d  $f12, $f20
/* A94650 80240F10 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* A94654 80240F14 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* A94658 80240F18 C64C006C */  lwc1      $f12, 0x6c($s2)
/* A9465C 80240F1C C44E0084 */  lwc1      $f14, 0x84($v0)
/* A94660 80240F20 0C00A70A */  jal       get_clamped_angle_diff
/* A94664 80240F24 46000506 */   mov.s    $f20, $f0
/* A94668 80240F28 0C00A6C9 */  jal       clamp_angle
/* A9466C 80240F2C 46000306 */   mov.s    $f12, $f0
/* A94670 80240F30 46000021 */  cvt.d.s   $f0, $f0
/* A94674 80240F34 4638003C */  c.lt.d    $f0, $f24
/* A94678 80240F38 00000000 */  nop
/* A9467C 80240F3C 45020002 */  bc1fl     .L80240F48
/* A94680 80240F40 E614000C */   swc1     $f20, 0xc($s0)
/* A94684 80240F44 E616000C */  swc1      $f22, 0xc($s0)
.L80240F48:
/* A94688 80240F48 C6000018 */  lwc1      $f0, 0x18($s0)
/* A9468C 80240F4C 3C018024 */  lui       $at, %hi(D_80245B40_A99280)
/* A94690 80240F50 D4225B40 */  ldc1      $f2, %lo(D_80245B40_A99280)($at)
/* A94694 80240F54 46000021 */  cvt.d.s   $f0, $f0
/* A94698 80240F58 46220002 */  mul.d     $f0, $f0, $f2
/* A9469C 80240F5C 00000000 */  nop
/* A946A0 80240F60 3C013F66 */  lui       $at, 0x3f66
/* A946A4 80240F64 34216666 */  ori       $at, $at, 0x6666
/* A946A8 80240F68 44812000 */  mtc1      $at, $f4
/* A946AC 80240F6C 2402001E */  addiu     $v0, $zero, 0x1e
/* A946B0 80240F70 A602008E */  sh        $v0, 0x8e($s0)
/* A946B4 80240F74 3C014120 */  lui       $at, 0x4120
/* A946B8 80240F78 44811000 */  mtc1      $at, $f2
/* A946BC 80240F7C 24020001 */  addiu     $v0, $zero, 1
/* A946C0 80240F80 E6040014 */  swc1      $f4, 0x14($s0)
/* A946C4 80240F84 E602001C */  swc1      $f2, 0x1c($s0)
/* A946C8 80240F88 46200020 */  cvt.s.d   $f0, $f0
/* A946CC 80240F8C E6000018 */  swc1      $f0, 0x18($s0)
/* A946D0 80240F90 AE620070 */  sw        $v0, 0x70($s3)
.L80240F94:
/* A946D4 80240F94 C6000038 */  lwc1      $f0, 0x38($s0)
/* A946D8 80240F98 C602003C */  lwc1      $f2, 0x3c($s0)
/* A946DC 80240F9C C6040040 */  lwc1      $f4, 0x40($s0)
/* A946E0 80240FA0 C6060018 */  lwc1      $f6, 0x18($s0)
/* A946E4 80240FA4 0000202D */  daddu     $a0, $zero, $zero
/* A946E8 80240FA8 E7A00020 */  swc1      $f0, 0x20($sp)
/* A946EC 80240FAC E7A20024 */  swc1      $f2, 0x24($sp)
/* A946F0 80240FB0 E7A40028 */  swc1      $f4, 0x28($sp)
/* A946F4 80240FB4 E7A60010 */  swc1      $f6, 0x10($sp)
/* A946F8 80240FB8 C600000C */  lwc1      $f0, 0xc($s0)
/* A946FC 80240FBC 27A50020 */  addiu     $a1, $sp, 0x20
/* A94700 80240FC0 E7A00014 */  swc1      $f0, 0x14($sp)
/* A94704 80240FC4 860200A6 */  lh        $v0, 0xa6($s0)
/* A94708 80240FC8 27A60024 */  addiu     $a2, $sp, 0x24
/* A9470C 80240FCC 44820000 */  mtc1      $v0, $f0
/* A94710 80240FD0 00000000 */  nop
/* A94714 80240FD4 46800020 */  cvt.s.w   $f0, $f0
/* A94718 80240FD8 E7A00018 */  swc1      $f0, 0x18($sp)
/* A9471C 80240FDC 860200A8 */  lh        $v0, 0xa8($s0)
/* A94720 80240FE0 27A70028 */  addiu     $a3, $sp, 0x28
/* A94724 80240FE4 44820000 */  mtc1      $v0, $f0
/* A94728 80240FE8 00000000 */  nop
/* A9472C 80240FEC 46800020 */  cvt.s.w   $f0, $f0
/* A94730 80240FF0 0C037711 */  jal       npc_test_move_simple_with_slipping
/* A94734 80240FF4 E7A0001C */   swc1     $f0, 0x1c($sp)
/* A94738 80240FF8 54400007 */  bnel      $v0, $zero, .L80241018
/* A9473C 80240FFC 24140001 */   addiu    $s4, $zero, 1
/* A94740 80241000 8E050018 */  lw        $a1, 0x18($s0)
/* A94744 80241004 8E06000C */  lw        $a2, 0xc($s0)
/* A94748 80241008 0C00EA95 */  jal       npc_move_heading
/* A9474C 8024100C 0200202D */   daddu    $a0, $s0, $zero
/* A94750 80241010 08090407 */  j         .L8024101C
/* A94754 80241014 0000902D */   daddu    $s2, $zero, $zero
.L80241018:
/* A94758 80241018 0000902D */  daddu     $s2, $zero, $zero
.L8024101C:
/* A9475C 8024101C C600001C */  lwc1      $f0, 0x1c($s0)
/* A94760 80241020 44801000 */  mtc1      $zero, $f2
/* A94764 80241024 44801800 */  mtc1      $zero, $f3
/* A94768 80241028 46000021 */  cvt.d.s   $f0, $f0
/* A9476C 8024102C 4622003C */  c.lt.d    $f0, $f2
/* A94770 80241030 00000000 */  nop
/* A94774 80241034 45000028 */  bc1f      .L802410D8
/* A94778 80241038 27A50020 */   addiu    $a1, $sp, 0x20
/* A9477C 8024103C 27A60024 */  addiu     $a2, $sp, 0x24
/* A94780 80241040 27A2002C */  addiu     $v0, $sp, 0x2c
/* A94784 80241044 C602003C */  lwc1      $f2, 0x3c($s0)
/* A94788 80241048 C6060038 */  lwc1      $f6, 0x38($s0)
/* A9478C 8024104C 3C01402A */  lui       $at, 0x402a
/* A94790 80241050 4481A800 */  mtc1      $at, $f21
/* A94794 80241054 4480A000 */  mtc1      $zero, $f20
/* A94798 80241058 460010A1 */  cvt.d.s   $f2, $f2
/* A9479C 8024105C 46341080 */  add.d     $f2, $f2, $f20
/* A947A0 80241060 C600001C */  lwc1      $f0, 0x1c($s0)
/* A947A4 80241064 C6040040 */  lwc1      $f4, 0x40($s0)
/* A947A8 80241068 46000005 */  abs.s     $f0, $f0
/* A947AC 8024106C E7A40028 */  swc1      $f4, 0x28($sp)
/* A947B0 80241070 3C014030 */  lui       $at, 0x4030
/* A947B4 80241074 44812800 */  mtc1      $at, $f5
/* A947B8 80241078 44802000 */  mtc1      $zero, $f4
/* A947BC 8024107C 46000021 */  cvt.d.s   $f0, $f0
/* A947C0 80241080 E7A60020 */  swc1      $f6, 0x20($sp)
/* A947C4 80241084 46240000 */  add.d     $f0, $f0, $f4
/* A947C8 80241088 462010A0 */  cvt.s.d   $f2, $f2
/* A947CC 8024108C E7A20024 */  swc1      $f2, 0x24($sp)
/* A947D0 80241090 46200020 */  cvt.s.d   $f0, $f0
/* A947D4 80241094 E7A0002C */  swc1      $f0, 0x2c($sp)
/* A947D8 80241098 AFA20010 */  sw        $v0, 0x10($sp)
/* A947DC 8024109C 8E040080 */  lw        $a0, 0x80($s0)
/* A947E0 802410A0 0C0372DF */  jal       npc_raycast_down_sides
/* A947E4 802410A4 27A70028 */   addiu    $a3, $sp, 0x28
/* A947E8 802410A8 1040000B */  beqz      $v0, .L802410D8
/* A947EC 802410AC 00000000 */   nop
/* A947F0 802410B0 C600001C */  lwc1      $f0, 0x1c($s0)
/* A947F4 802410B4 C7A2002C */  lwc1      $f2, 0x2c($sp)
/* A947F8 802410B8 46000005 */  abs.s     $f0, $f0
/* A947FC 802410BC 46000021 */  cvt.d.s   $f0, $f0
/* A94800 802410C0 46340000 */  add.d     $f0, $f0, $f20
/* A94804 802410C4 460010A1 */  cvt.d.s   $f2, $f2
/* A94808 802410C8 4620103E */  c.le.d    $f2, $f0
/* A9480C 802410CC 00000000 */  nop
/* A94810 802410D0 45030001 */  bc1tl     .L802410D8
/* A94814 802410D4 24120001 */   addiu    $s2, $zero, 1
.L802410D8:
/* A94818 802410D8 56400008 */  bnel      $s2, $zero, .L802410FC
/* A9481C 802410DC 2414000A */   addiu    $s4, $zero, 0xa
/* A94820 802410E0 C604003C */  lwc1      $f4, 0x3c($s0)
/* A94824 802410E4 C600001C */  lwc1      $f0, 0x1c($s0)
/* A94828 802410E8 46002100 */  add.s     $f4, $f4, $f0
/* A9482C 802410EC C6020014 */  lwc1      $f2, 0x14($s0)
/* A94830 802410F0 46020001 */  sub.s     $f0, $f0, $f2
/* A94834 802410F4 E604003C */  swc1      $f4, 0x3c($s0)
/* A94838 802410F8 E600001C */  swc1      $f0, 0x1c($s0)
.L802410FC:
/* A9483C 802410FC 9602008E */  lhu       $v0, 0x8e($s0)
/* A94840 80241100 2442FFFF */  addiu     $v0, $v0, -1
/* A94844 80241104 A602008E */  sh        $v0, 0x8e($s0)
/* A94848 80241108 00021400 */  sll       $v0, $v0, 0x10
/* A9484C 8024110C 58400001 */  blezl     $v0, .L80241114
/* A94850 80241110 2414000B */   addiu    $s4, $zero, 0xb
.L80241114:
/* A94854 80241114 12800024 */  beqz      $s4, .L802411A8
/* A94858 80241118 00000000 */   nop
/* A9485C 8024111C AFA00010 */  sw        $zero, 0x10($sp)
/* A94860 80241120 AFA00014 */  sw        $zero, 0x14($sp)
/* A94864 80241124 8E050038 */  lw        $a1, 0x38($s0)
/* A94868 80241128 8E06003C */  lw        $a2, 0x3c($s0)
/* A9486C 8024112C 8E070040 */  lw        $a3, 0x40($s0)
/* A94870 80241130 0C01BECC */  jal       fx_walk
/* A94874 80241134 24040002 */   addiu    $a0, $zero, 2
/* A94878 80241138 3C01C47A */  lui       $at, 0xc47a
/* A9487C 8024113C 44810000 */  mtc1      $at, $f0
/* A94880 80241140 AE20006C */  sw        $zero, 0x6c($s1)
/* A94884 80241144 8E020000 */  lw        $v0, ($s0)
/* A94888 80241148 0200202D */  daddu     $a0, $s0, $zero
/* A9488C 8024114C AE000038 */  sw        $zero, 0x38($s0)
/* A94890 80241150 AE000040 */  sw        $zero, 0x40($s0)
/* A94894 80241154 34420002 */  ori       $v0, $v0, 2
/* A94898 80241158 E600003C */  swc1      $f0, 0x3c($s0)
/* A9489C 8024115C 0C00EAFF */  jal       disable_npc_shadow
/* A948A0 80241160 AE020000 */   sw       $v0, ($s0)
/* A948A4 80241164 0260202D */  daddu     $a0, $s3, $zero
/* A948A8 80241168 3C05FE36 */  lui       $a1, 0xfe36
/* A948AC 8024116C 34A53C80 */  ori       $a1, $a1, 0x3c80
/* A948B0 80241170 24060001 */  addiu     $a2, $zero, 1
/* A948B4 80241174 8E020000 */  lw        $v0, ($s0)
/* A948B8 80241178 2403F7FF */  addiu     $v1, $zero, -0x801
/* A948BC 8024117C 00431024 */  and       $v0, $v0, $v1
/* A948C0 80241180 AE020000 */  sw        $v0, ($s0)
/* A948C4 80241184 8E220000 */  lw        $v0, ($s1)
/* A948C8 80241188 3C031F00 */  lui       $v1, 0x1f00
/* A948CC 8024118C 00431025 */  or        $v0, $v0, $v1
/* A948D0 80241190 AE220000 */  sw        $v0, ($s1)
/* A948D4 80241194 AC800070 */  sw        $zero, 0x70($a0)
.L80241198:
/* A948D8 80241198 0C0B2026 */  jal       evt_set_variable
/* A948DC 8024119C 00000000 */   nop
/* A948E0 802411A0 08090476 */  j         .L802411D8
/* A948E4 802411A4 24020002 */   addiu    $v0, $zero, 2
.L802411A8:
/* A948E8 802411A8 8E220070 */  lw        $v0, 0x70($s1)
/* A948EC 802411AC 30420001 */  andi      $v0, $v0, 1
/* A948F0 802411B0 10400009 */  beqz      $v0, .L802411D8
/* A948F4 802411B4 0000102D */   daddu    $v0, $zero, $zero
/* A948F8 802411B8 C600004C */  lwc1      $f0, 0x4c($s0)
/* A948FC 802411BC 3C01404E */  lui       $at, 0x404e
/* A94900 802411C0 44811800 */  mtc1      $at, $f3
/* A94904 802411C4 44801000 */  mtc1      $zero, $f2
/* A94908 802411C8 46000021 */  cvt.d.s   $f0, $f0
/* A9490C 802411CC 46220000 */  add.d     $f0, $f0, $f2
/* A94910 802411D0 46200020 */  cvt.s.d   $f0, $f0
/* A94914 802411D4 E600004C */  swc1      $f0, 0x4c($s0)
.L802411D8:
/* A94918 802411D8 8FBF0044 */  lw        $ra, 0x44($sp)
/* A9491C 802411DC 8FB40040 */  lw        $s4, 0x40($sp)
/* A94920 802411E0 8FB3003C */  lw        $s3, 0x3c($sp)
/* A94924 802411E4 8FB20038 */  lw        $s2, 0x38($sp)
/* A94928 802411E8 8FB10034 */  lw        $s1, 0x34($sp)
/* A9492C 802411EC 8FB00030 */  lw        $s0, 0x30($sp)
/* A94930 802411F0 D7B80058 */  ldc1      $f24, 0x58($sp)
/* A94934 802411F4 D7B60050 */  ldc1      $f22, 0x50($sp)
/* A94938 802411F8 D7B40048 */  ldc1      $f20, 0x48($sp)
/* A9493C 802411FC 03E00008 */  jr        $ra
/* A94940 80241200 27BD0060 */   addiu    $sp, $sp, 0x60
