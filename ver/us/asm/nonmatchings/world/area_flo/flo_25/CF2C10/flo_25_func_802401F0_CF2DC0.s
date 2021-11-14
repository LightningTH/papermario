.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .rodata

dlabel D_80244EE8_CF7AB8
.double 0.09

dlabel D_80244EF0_CF7AC0
.double 0.09

.section .text

glabel flo_25_func_802401F0_CF2DC0
/* CF2DC0 802401F0 27BDFF80 */  addiu     $sp, $sp, -0x80
/* CF2DC4 802401F4 AFB3004C */  sw        $s3, 0x4c($sp)
/* CF2DC8 802401F8 0080982D */  daddu     $s3, $a0, $zero
/* CF2DCC 802401FC AFBF0058 */  sw        $ra, 0x58($sp)
/* CF2DD0 80240200 AFB50054 */  sw        $s5, 0x54($sp)
/* CF2DD4 80240204 AFB40050 */  sw        $s4, 0x50($sp)
/* CF2DD8 80240208 AFB20048 */  sw        $s2, 0x48($sp)
/* CF2DDC 8024020C AFB10044 */  sw        $s1, 0x44($sp)
/* CF2DE0 80240210 AFB00040 */  sw        $s0, 0x40($sp)
/* CF2DE4 80240214 F7BA0078 */  sdc1      $f26, 0x78($sp)
/* CF2DE8 80240218 F7B80070 */  sdc1      $f24, 0x70($sp)
/* CF2DEC 8024021C F7B60068 */  sdc1      $f22, 0x68($sp)
/* CF2DF0 80240220 F7B40060 */  sdc1      $f20, 0x60($sp)
/* CF2DF4 80240224 8E710148 */  lw        $s1, 0x148($s3)
/* CF2DF8 80240228 00A0902D */  daddu     $s2, $a1, $zero
/* CF2DFC 8024022C 86240008 */  lh        $a0, 8($s1)
/* CF2E00 80240230 0C00EABB */  jal       get_npc_unsafe
/* CF2E04 80240234 00C0A82D */   daddu    $s5, $a2, $zero
/* CF2E08 80240238 0040802D */  daddu     $s0, $v0, $zero
/* CF2E0C 8024023C 0000A02D */  daddu     $s4, $zero, $zero
/* CF2E10 80240240 C624007C */  lwc1      $f4, 0x7c($s1)
/* CF2E14 80240244 46802120 */  cvt.s.w   $f4, $f4
/* CF2E18 80240248 C6220088 */  lwc1      $f2, 0x88($s1)
/* CF2E1C 8024024C 468010A0 */  cvt.s.w   $f2, $f2
/* CF2E20 80240250 460010A1 */  cvt.d.s   $f2, $f2
/* CF2E24 80240254 46002121 */  cvt.d.s   $f4, $f4
/* CF2E28 80240258 C600003C */  lwc1      $f0, 0x3c($s0)
/* CF2E2C 8024025C 3C014059 */  lui       $at, 0x4059
/* CF2E30 80240260 44813800 */  mtc1      $at, $f7
/* CF2E34 80240264 44803000 */  mtc1      $zero, $f6
/* CF2E38 80240268 46000021 */  cvt.d.s   $f0, $f0
/* CF2E3C 8024026C 46260002 */  mul.d     $f0, $f0, $f6
/* CF2E40 80240270 00000000 */  nop
/* CF2E44 80240274 24020001 */  addiu     $v0, $zero, 1
/* CF2E48 80240278 8E24006C */  lw        $a0, 0x6c($s1)
/* CF2E4C 8024027C 46261083 */  div.d     $f2, $f2, $f6
/* CF2E50 80240280 462010A0 */  cvt.s.d   $f2, $f2
/* CF2E54 80240284 46262103 */  div.d     $f4, $f4, $f6
/* CF2E58 80240288 46202520 */  cvt.s.d   $f20, $f4
/* CF2E5C 8024028C 30830011 */  andi      $v1, $a0, 0x11
/* CF2E60 80240290 4620020D */  trunc.w.d $f8, $f0
/* CF2E64 80240294 E628007C */  swc1      $f8, 0x7c($s1)
/* CF2E68 80240298 C6200078 */  lwc1      $f0, 0x78($s1)
/* CF2E6C 8024029C 46800020 */  cvt.s.w   $f0, $f0
/* CF2E70 802402A0 46000021 */  cvt.d.s   $f0, $f0
/* CF2E74 802402A4 46260003 */  div.d     $f0, $f0, $f6
/* CF2E78 802402A8 462006A0 */  cvt.s.d   $f26, $f0
/* CF2E7C 802402AC C6200070 */  lwc1      $f0, 0x70($s1)
/* CF2E80 802402B0 46800020 */  cvt.s.w   $f0, $f0
/* CF2E84 802402B4 46000021 */  cvt.d.s   $f0, $f0
/* CF2E88 802402B8 46260003 */  div.d     $f0, $f0, $f6
/* CF2E8C 802402BC 462005A0 */  cvt.s.d   $f22, $f0
/* CF2E90 802402C0 14620025 */  bne       $v1, $v0, .L80240358
/* CF2E94 802402C4 4602D600 */   add.s    $f24, $f26, $f2
/* CF2E98 802402C8 8E020000 */  lw        $v0, ($s0)
/* CF2E9C 802402CC 30420008 */  andi      $v0, $v0, 8
/* CF2EA0 802402D0 10400009 */  beqz      $v0, .L802402F8
/* CF2EA4 802402D4 27A50028 */   addiu    $a1, $sp, 0x28
/* CF2EA8 802402D8 C600003C */  lwc1      $f0, 0x3c($s0)
/* CF2EAC 802402DC 4600C001 */  sub.s     $f0, $f24, $f0
/* CF2EB0 802402E0 4600B03C */  c.lt.s    $f22, $f0
/* CF2EB4 802402E4 00000000 */  nop
/* CF2EB8 802402E8 4500001B */  bc1f      .L80240358
/* CF2EBC 802402EC 34820010 */   ori      $v0, $a0, 0x10
/* CF2EC0 802402F0 080900D6 */  j         .L80240358
/* CF2EC4 802402F4 AE22006C */   sw       $v0, 0x6c($s1)
.L802402F8:
/* CF2EC8 802402F8 27A6002C */  addiu     $a2, $sp, 0x2c
/* CF2ECC 802402FC C6000038 */  lwc1      $f0, 0x38($s0)
/* CF2ED0 80240300 C602003C */  lwc1      $f2, 0x3c($s0)
/* CF2ED4 80240304 C6040040 */  lwc1      $f4, 0x40($s0)
/* CF2ED8 80240308 3C01447A */  lui       $at, 0x447a
/* CF2EDC 8024030C 44813000 */  mtc1      $at, $f6
/* CF2EE0 80240310 27A20034 */  addiu     $v0, $sp, 0x34
/* CF2EE4 80240314 E7A00028 */  swc1      $f0, 0x28($sp)
/* CF2EE8 80240318 E7A2002C */  swc1      $f2, 0x2c($sp)
/* CF2EEC 8024031C E7A40030 */  swc1      $f4, 0x30($sp)
/* CF2EF0 80240320 E7A60034 */  swc1      $f6, 0x34($sp)
/* CF2EF4 80240324 AFA20010 */  sw        $v0, 0x10($sp)
/* CF2EF8 80240328 8E040080 */  lw        $a0, 0x80($s0)
/* CF2EFC 8024032C 0C0372DF */  jal       npc_raycast_down_sides
/* CF2F00 80240330 27A70030 */   addiu    $a3, $sp, 0x30
/* CF2F04 80240334 C7A00034 */  lwc1      $f0, 0x34($sp)
/* CF2F08 80240338 4600D001 */  sub.s     $f0, $f26, $f0
/* CF2F0C 8024033C 4600B03C */  c.lt.s    $f22, $f0
/* CF2F10 80240340 00000000 */  nop
/* CF2F14 80240344 45000004 */  bc1f      .L80240358
/* CF2F18 80240348 00000000 */   nop
/* CF2F1C 8024034C 8E22006C */  lw        $v0, 0x6c($s1)
/* CF2F20 80240350 34420010 */  ori       $v0, $v0, 0x10
/* CF2F24 80240354 AE22006C */  sw        $v0, 0x6c($s1)
.L80240358:
/* CF2F28 80240358 8E22006C */  lw        $v0, 0x6c($s1)
/* CF2F2C 8024035C 24030011 */  addiu     $v1, $zero, 0x11
/* CF2F30 80240360 30420011 */  andi      $v0, $v0, 0x11
/* CF2F34 80240364 14430039 */  bne       $v0, $v1, .L8024044C
/* CF2F38 80240368 00000000 */   nop
/* CF2F3C 8024036C 8E020000 */  lw        $v0, ($s0)
/* CF2F40 80240370 30420008 */  andi      $v0, $v0, 8
/* CF2F44 80240374 1040000A */  beqz      $v0, .L802403A0
/* CF2F48 80240378 4600C106 */   mov.s    $f4, $f24
/* CF2F4C 8024037C 4614C081 */  sub.s     $f2, $f24, $f20
/* CF2F50 80240380 3C018024 */  lui       $at, %hi(D_80244EE8_CF7AB8)
/* CF2F54 80240384 D4204EE8 */  ldc1      $f0, %lo(D_80244EE8_CF7AB8)($at)
/* CF2F58 80240388 460010A1 */  cvt.d.s   $f2, $f2
/* CF2F5C 8024038C 46201082 */  mul.d     $f2, $f2, $f0
/* CF2F60 80240390 00000000 */  nop
/* CF2F64 80240394 4600A021 */  cvt.d.s   $f0, $f20
/* CF2F68 80240398 08090101 */  j         .L80240404
/* CF2F6C 8024039C 46220000 */   add.d    $f0, $f0, $f2
.L802403A0:
/* CF2F70 802403A0 27A50028 */  addiu     $a1, $sp, 0x28
/* CF2F74 802403A4 27A6002C */  addiu     $a2, $sp, 0x2c
/* CF2F78 802403A8 C6000038 */  lwc1      $f0, 0x38($s0)
/* CF2F7C 802403AC C6020040 */  lwc1      $f2, 0x40($s0)
/* CF2F80 802403B0 3C01447A */  lui       $at, 0x447a
/* CF2F84 802403B4 44812000 */  mtc1      $at, $f4
/* CF2F88 802403B8 27A20034 */  addiu     $v0, $sp, 0x34
/* CF2F8C 802403BC E7B4002C */  swc1      $f20, 0x2c($sp)
/* CF2F90 802403C0 E7A00028 */  swc1      $f0, 0x28($sp)
/* CF2F94 802403C4 E7A20030 */  swc1      $f2, 0x30($sp)
/* CF2F98 802403C8 E7A40034 */  swc1      $f4, 0x34($sp)
/* CF2F9C 802403CC AFA20010 */  sw        $v0, 0x10($sp)
/* CF2FA0 802403D0 8E040080 */  lw        $a0, 0x80($s0)
/* CF2FA4 802403D4 0C0372DF */  jal       npc_raycast_down_sides
/* CF2FA8 802403D8 27A70030 */   addiu    $a3, $sp, 0x30
/* CF2FAC 802403DC C7A4002C */  lwc1      $f4, 0x2c($sp)
/* CF2FB0 802403E0 461A2100 */  add.s     $f4, $f4, $f26
/* CF2FB4 802403E4 46142081 */  sub.s     $f2, $f4, $f20
/* CF2FB8 802403E8 3C018024 */  lui       $at, %hi(D_80244EF0_CF7AC0)
/* CF2FBC 802403EC D4204EF0 */  ldc1      $f0, %lo(D_80244EF0_CF7AC0)($at)
/* CF2FC0 802403F0 460010A1 */  cvt.d.s   $f2, $f2
/* CF2FC4 802403F4 46201082 */  mul.d     $f2, $f2, $f0
/* CF2FC8 802403F8 00000000 */  nop
/* CF2FCC 802403FC 4600A021 */  cvt.d.s   $f0, $f20
/* CF2FD0 80240400 46220000 */  add.d     $f0, $f0, $f2
.L80240404:
/* CF2FD4 80240404 46200020 */  cvt.s.d   $f0, $f0
/* CF2FD8 80240408 E600003C */  swc1      $f0, 0x3c($s0)
/* CF2FDC 8024040C C600003C */  lwc1      $f0, 0x3c($s0)
/* CF2FE0 80240410 46002001 */  sub.s     $f0, $f4, $f0
/* CF2FE4 80240414 3C013FF0 */  lui       $at, 0x3ff0
/* CF2FE8 80240418 44811800 */  mtc1      $at, $f3
/* CF2FEC 8024041C 44801000 */  mtc1      $zero, $f2
/* CF2FF0 80240420 46000005 */  abs.s     $f0, $f0
/* CF2FF4 80240424 46000021 */  cvt.d.s   $f0, $f0
/* CF2FF8 80240428 4622003C */  c.lt.d    $f0, $f2
/* CF2FFC 8024042C 00000000 */  nop
/* CF3000 80240430 45000036 */  bc1f      .L8024050C
/* CF3004 80240434 2403FFEF */   addiu    $v1, $zero, -0x11
/* CF3008 80240438 E604003C */  swc1      $f4, 0x3c($s0)
/* CF300C 8024043C 8E22006C */  lw        $v0, 0x6c($s1)
/* CF3010 80240440 00431024 */  and       $v0, $v0, $v1
/* CF3014 80240444 08090143 */  j         .L8024050C
/* CF3018 80240448 AE22006C */   sw       $v0, 0x6c($s1)
.L8024044C:
/* CF301C 8024044C 8E220070 */  lw        $v0, 0x70($s1)
/* CF3020 80240450 1840002E */  blez      $v0, .L8024050C
/* CF3024 80240454 00000000 */   nop
/* CF3028 80240458 C62C0074 */  lwc1      $f12, 0x74($s1)
/* CF302C 8024045C 0C00A8BB */  jal       sin_deg
/* CF3030 80240460 46806320 */   cvt.s.w  $f12, $f12
/* CF3034 80240464 8E020000 */  lw        $v0, ($s0)
/* CF3038 80240468 30420008 */  andi      $v0, $v0, 8
/* CF303C 8024046C 10400003 */  beqz      $v0, .L8024047C
/* CF3040 80240470 46000506 */   mov.s    $f20, $f0
/* CF3044 80240474 0809012F */  j         .L802404BC
/* CF3048 80240478 0000102D */   daddu    $v0, $zero, $zero
.L8024047C:
/* CF304C 8024047C 27A50028 */  addiu     $a1, $sp, 0x28
/* CF3050 80240480 27A6002C */  addiu     $a2, $sp, 0x2c
/* CF3054 80240484 C6000038 */  lwc1      $f0, 0x38($s0)
/* CF3058 80240488 C602003C */  lwc1      $f2, 0x3c($s0)
/* CF305C 8024048C C6040040 */  lwc1      $f4, 0x40($s0)
/* CF3060 80240490 3C01447A */  lui       $at, 0x447a
/* CF3064 80240494 44813000 */  mtc1      $at, $f6
/* CF3068 80240498 27A20034 */  addiu     $v0, $sp, 0x34
/* CF306C 8024049C E7A00028 */  swc1      $f0, 0x28($sp)
/* CF3070 802404A0 E7A2002C */  swc1      $f2, 0x2c($sp)
/* CF3074 802404A4 E7A40030 */  swc1      $f4, 0x30($sp)
/* CF3078 802404A8 E7A60034 */  swc1      $f6, 0x34($sp)
/* CF307C 802404AC AFA20010 */  sw        $v0, 0x10($sp)
/* CF3080 802404B0 8E040080 */  lw        $a0, 0x80($s0)
/* CF3084 802404B4 0C0372DF */  jal       npc_raycast_down_sides
/* CF3088 802404B8 27A70030 */   addiu    $a3, $sp, 0x30
.L802404BC:
/* CF308C 802404BC 10400007 */  beqz      $v0, .L802404DC
/* CF3090 802404C0 00000000 */   nop
/* CF3094 802404C4 4616A082 */  mul.s     $f2, $f20, $f22
/* CF3098 802404C8 00000000 */  nop
/* CF309C 802404CC C7A0002C */  lwc1      $f0, 0x2c($sp)
/* CF30A0 802404D0 461A0000 */  add.s     $f0, $f0, $f26
/* CF30A4 802404D4 0809013A */  j         .L802404E8
/* CF30A8 802404D8 46020000 */   add.s    $f0, $f0, $f2
.L802404DC:
/* CF30AC 802404DC 4616A002 */  mul.s     $f0, $f20, $f22
/* CF30B0 802404E0 00000000 */  nop
/* CF30B4 802404E4 4600C000 */  add.s     $f0, $f24, $f0
.L802404E8:
/* CF30B8 802404E8 E600003C */  swc1      $f0, 0x3c($s0)
/* CF30BC 802404EC 8E220074 */  lw        $v0, 0x74($s1)
/* CF30C0 802404F0 2442000A */  addiu     $v0, $v0, 0xa
/* CF30C4 802404F4 44826000 */  mtc1      $v0, $f12
/* CF30C8 802404F8 00000000 */  nop
/* CF30CC 802404FC 0C00A6C9 */  jal       clamp_angle
/* CF30D0 80240500 46806320 */   cvt.s.w  $f12, $f12
/* CF30D4 80240504 4600020D */  trunc.w.s $f8, $f0
/* CF30D8 80240508 E6280074 */  swc1      $f8, 0x74($s1)
.L8024050C:
/* CF30DC 8024050C 8E220090 */  lw        $v0, 0x90($s1)
/* CF30E0 80240510 1C40004A */  bgtz      $v0, .L8024063C
/* CF30E4 80240514 2442FFFF */   addiu    $v0, $v0, -1
/* CF30E8 80240518 8E430014 */  lw        $v1, 0x14($s2)
/* CF30EC 8024051C 04600048 */  bltz      $v1, .L80240640
/* CF30F0 80240520 00000000 */   nop
/* CF30F4 80240524 8E620074 */  lw        $v0, 0x74($s3)
/* CF30F8 80240528 1C400042 */  bgtz      $v0, .L80240634
/* CF30FC 8024052C 2442FFFF */   addiu    $v0, $v0, -1
/* CF3100 80240530 AE630074 */  sw        $v1, 0x74($s3)
/* CF3104 80240534 860200A8 */  lh        $v0, 0xa8($s0)
/* CF3108 80240538 C602003C */  lwc1      $f2, 0x3c($s0)
/* CF310C 8024053C 44820000 */  mtc1      $v0, $f0
/* CF3110 80240540 00000000 */  nop
/* CF3114 80240544 46800020 */  cvt.s.w   $f0, $f0
/* CF3118 80240548 46001080 */  add.s     $f2, $f2, $f0
/* CF311C 8024054C 3C014024 */  lui       $at, 0x4024
/* CF3120 80240550 44810800 */  mtc1      $at, $f1
/* CF3124 80240554 44800000 */  mtc1      $zero, $f0
/* CF3128 80240558 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* CF312C 8024055C 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* CF3130 80240560 460010A1 */  cvt.d.s   $f2, $f2
/* CF3134 80240564 46201080 */  add.d     $f2, $f2, $f0
/* CF3138 80240568 C440002C */  lwc1      $f0, 0x2c($v0)
/* CF313C 8024056C 46000021 */  cvt.d.s   $f0, $f0
/* CF3140 80240570 4622003C */  c.lt.d    $f0, $f2
/* CF3144 80240574 00000000 */  nop
/* CF3148 80240578 4500002C */  bc1f      .L8024062C
/* CF314C 8024057C 02A0202D */   daddu    $a0, $s5, $zero
/* CF3150 80240580 AFA00010 */  sw        $zero, 0x10($sp)
/* CF3154 80240584 8E46000C */  lw        $a2, 0xc($s2)
/* CF3158 80240588 8E470010 */  lw        $a3, 0x10($s2)
/* CF315C 8024058C 0C01242D */  jal       func_800490B4
/* CF3160 80240590 0220282D */   daddu    $a1, $s1, $zero
/* CF3164 80240594 10400025 */  beqz      $v0, .L8024062C
/* CF3168 80240598 0000202D */   daddu    $a0, $zero, $zero
/* CF316C 8024059C 0200282D */  daddu     $a1, $s0, $zero
/* CF3170 802405A0 0000302D */  daddu     $a2, $zero, $zero
/* CF3174 802405A4 2412000C */  addiu     $s2, $zero, 0xc
/* CF3178 802405A8 860300A8 */  lh        $v1, 0xa8($s0)
/* CF317C 802405AC 3C013F80 */  lui       $at, 0x3f80
/* CF3180 802405B0 44810000 */  mtc1      $at, $f0
/* CF3184 802405B4 3C014000 */  lui       $at, 0x4000
/* CF3188 802405B8 44811000 */  mtc1      $at, $f2
/* CF318C 802405BC 3C01C1A0 */  lui       $at, 0xc1a0
/* CF3190 802405C0 44812000 */  mtc1      $at, $f4
/* CF3194 802405C4 44834000 */  mtc1      $v1, $f8
/* CF3198 802405C8 00000000 */  nop
/* CF319C 802405CC 46804220 */  cvt.s.w   $f8, $f8
/* CF31A0 802405D0 44074000 */  mfc1      $a3, $f8
/* CF31A4 802405D4 27A20038 */  addiu     $v0, $sp, 0x38
/* CF31A8 802405D8 AFB2001C */  sw        $s2, 0x1c($sp)
/* CF31AC 802405DC AFA20020 */  sw        $v0, 0x20($sp)
/* CF31B0 802405E0 E7A00010 */  swc1      $f0, 0x10($sp)
/* CF31B4 802405E4 E7A20014 */  swc1      $f2, 0x14($sp)
/* CF31B8 802405E8 0C01BFA4 */  jal       fx_emote
/* CF31BC 802405EC E7A40018 */   swc1     $f4, 0x18($sp)
/* CF31C0 802405F0 0200202D */  daddu     $a0, $s0, $zero
/* CF31C4 802405F4 240502F4 */  addiu     $a1, $zero, 0x2f4
/* CF31C8 802405F8 C480003C */  lwc1      $f0, 0x3c($a0)
/* CF31CC 802405FC 3C060020 */  lui       $a2, 0x20
/* CF31D0 80240600 0C012530 */  jal       ai_enemy_play_sound
/* CF31D4 80240604 E4800064 */   swc1     $f0, 0x64($a0)
/* CF31D8 80240608 8E220018 */  lw        $v0, 0x18($s1)
/* CF31DC 8024060C 9442002A */  lhu       $v0, 0x2a($v0)
/* CF31E0 80240610 30420001 */  andi      $v0, $v0, 1
/* CF31E4 80240614 10400003 */  beqz      $v0, .L80240624
/* CF31E8 80240618 2402000A */   addiu    $v0, $zero, 0xa
/* CF31EC 8024061C 080901F9 */  j         .L802407E4
/* CF31F0 80240620 AE620070 */   sw       $v0, 0x70($s3)
.L80240624:
/* CF31F4 80240624 080901F9 */  j         .L802407E4
/* CF31F8 80240628 AE720070 */   sw       $s2, 0x70($s3)
.L8024062C:
/* CF31FC 8024062C 8E620074 */  lw        $v0, 0x74($s3)
/* CF3200 80240630 2442FFFF */  addiu     $v0, $v0, -1
.L80240634:
/* CF3204 80240634 08090190 */  j         .L80240640
/* CF3208 80240638 AE620074 */   sw       $v0, 0x74($s3)
.L8024063C:
/* CF320C 8024063C AE220090 */  sw        $v0, 0x90($s1)
.L80240640:
/* CF3210 80240640 8E2300D0 */  lw        $v1, 0xd0($s1)
/* CF3214 80240644 C6000040 */  lwc1      $f0, 0x40($s0)
/* CF3218 80240648 C4620000 */  lwc1      $f2, ($v1)
/* CF321C 8024064C 468010A0 */  cvt.s.w   $f2, $f2
/* CF3220 80240650 C4640008 */  lwc1      $f4, 8($v1)
/* CF3224 80240654 46802120 */  cvt.s.w   $f4, $f4
/* CF3228 80240658 E7A00010 */  swc1      $f0, 0x10($sp)
/* CF322C 8024065C 8E2200D0 */  lw        $v0, 0xd0($s1)
/* CF3230 80240660 44051000 */  mfc1      $a1, $f2
/* CF3234 80240664 C440000C */  lwc1      $f0, 0xc($v0)
/* CF3238 80240668 46800020 */  cvt.s.w   $f0, $f0
/* CF323C 8024066C E7A00014 */  swc1      $f0, 0x14($sp)
/* CF3240 80240670 8E2200D0 */  lw        $v0, 0xd0($s1)
/* CF3244 80240674 44062000 */  mfc1      $a2, $f4
/* CF3248 80240678 C4400010 */  lwc1      $f0, 0x10($v0)
/* CF324C 8024067C 46800020 */  cvt.s.w   $f0, $f0
/* CF3250 80240680 E7A00018 */  swc1      $f0, 0x18($sp)
/* CF3254 80240684 8C640018 */  lw        $a0, 0x18($v1)
/* CF3258 80240688 0C0123F5 */  jal       is_point_within_region
/* CF325C 8024068C 8E070038 */   lw       $a3, 0x38($s0)
/* CF3260 80240690 1040001A */  beqz      $v0, .L802406FC
/* CF3264 80240694 00000000 */   nop
/* CF3268 80240698 8E060038 */  lw        $a2, 0x38($s0)
/* CF326C 8024069C 8E2200D0 */  lw        $v0, 0xd0($s1)
/* CF3270 802406A0 8E070040 */  lw        $a3, 0x40($s0)
/* CF3274 802406A4 C44C0000 */  lwc1      $f12, ($v0)
/* CF3278 802406A8 46806320 */  cvt.s.w   $f12, $f12
/* CF327C 802406AC C44E0008 */  lwc1      $f14, 8($v0)
/* CF3280 802406B0 0C00A7B5 */  jal       dist2D
/* CF3284 802406B4 468073A0 */   cvt.s.w  $f14, $f14
/* CF3288 802406B8 C6020018 */  lwc1      $f2, 0x18($s0)
/* CF328C 802406BC 4600103C */  c.lt.s    $f2, $f0
/* CF3290 802406C0 00000000 */  nop
/* CF3294 802406C4 4500000D */  bc1f      .L802406FC
/* CF3298 802406C8 E7A00034 */   swc1     $f0, 0x34($sp)
/* CF329C 802406CC C60C0038 */  lwc1      $f12, 0x38($s0)
/* CF32A0 802406D0 8E2200D0 */  lw        $v0, 0xd0($s1)
/* CF32A4 802406D4 C60E0040 */  lwc1      $f14, 0x40($s0)
/* CF32A8 802406D8 C4480000 */  lwc1      $f8, ($v0)
/* CF32AC 802406DC 46804220 */  cvt.s.w   $f8, $f8
/* CF32B0 802406E0 44064000 */  mfc1      $a2, $f8
/* CF32B4 802406E4 C4480008 */  lwc1      $f8, 8($v0)
/* CF32B8 802406E8 46804220 */  cvt.s.w   $f8, $f8
/* CF32BC 802406EC 44074000 */  mfc1      $a3, $f8
/* CF32C0 802406F0 0C00A720 */  jal       atan2
/* CF32C4 802406F4 24140001 */   addiu    $s4, $zero, 1
/* CF32C8 802406F8 E600000C */  swc1      $f0, 0xc($s0)
.L802406FC:
/* CF32CC 802406FC 8E2200D0 */  lw        $v0, 0xd0($s1)
/* CF32D0 80240700 8C43000C */  lw        $v1, 0xc($v0)
/* CF32D4 80240704 8C420010 */  lw        $v0, 0x10($v0)
/* CF32D8 80240708 00621825 */  or        $v1, $v1, $v0
/* CF32DC 8024070C 00741825 */  or        $v1, $v1, $s4
/* CF32E0 80240710 10600008 */  beqz      $v1, .L80240734
/* CF32E4 80240714 00000000 */   nop
/* CF32E8 80240718 8602008C */  lh        $v0, 0x8c($s0)
/* CF32EC 8024071C 14400031 */  bnez      $v0, .L802407E4
/* CF32F0 80240720 00000000 */   nop
/* CF32F4 80240724 8E050018 */  lw        $a1, 0x18($s0)
/* CF32F8 80240728 8E06000C */  lw        $a2, 0xc($s0)
/* CF32FC 8024072C 0C00EA95 */  jal       npc_move_heading
/* CF3300 80240730 0200202D */   daddu    $a0, $s0, $zero
.L80240734:
/* CF3304 80240734 C600003C */  lwc1      $f0, 0x3c($s0)
/* CF3308 80240738 3C014059 */  lui       $at, 0x4059
/* CF330C 8024073C 44811800 */  mtc1      $at, $f3
/* CF3310 80240740 44801000 */  mtc1      $zero, $f2
/* CF3314 80240744 46000021 */  cvt.d.s   $f0, $f0
/* CF3318 80240748 46220002 */  mul.d     $f0, $f0, $f2
/* CF331C 8024074C 00000000 */  nop
/* CF3320 80240750 4620020D */  trunc.w.d $f8, $f0
/* CF3324 80240754 E628007C */  swc1      $f8, 0x7c($s1)
/* CF3328 80240758 8E420004 */  lw        $v0, 4($s2)
/* CF332C 8024075C 18400021 */  blez      $v0, .L802407E4
/* CF3330 80240760 00000000 */   nop
/* CF3334 80240764 8602008E */  lh        $v0, 0x8e($s0)
/* CF3338 80240768 9603008E */  lhu       $v1, 0x8e($s0)
/* CF333C 8024076C 18400005 */  blez      $v0, .L80240784
/* CF3340 80240770 2462FFFF */   addiu    $v0, $v1, -1
/* CF3344 80240774 A602008E */  sh        $v0, 0x8e($s0)
/* CF3348 80240778 00021400 */  sll       $v0, $v0, 0x10
/* CF334C 8024077C 1C400019 */  bgtz      $v0, .L802407E4
/* CF3350 80240780 00000000 */   nop
.L80240784:
/* CF3354 80240784 240403E8 */  addiu     $a0, $zero, 0x3e8
/* CF3358 80240788 24020002 */  addiu     $v0, $zero, 2
/* CF335C 8024078C 0C00A67F */  jal       rand_int
/* CF3360 80240790 AE620070 */   sw       $v0, 0x70($s3)
/* CF3364 80240794 3C035555 */  lui       $v1, 0x5555
/* CF3368 80240798 34635556 */  ori       $v1, $v1, 0x5556
/* CF336C 8024079C 00430018 */  mult      $v0, $v1
/* CF3370 802407A0 000227C3 */  sra       $a0, $v0, 0x1f
/* CF3374 802407A4 00004010 */  mfhi      $t0
/* CF3378 802407A8 01042023 */  subu      $a0, $t0, $a0
/* CF337C 802407AC 00041840 */  sll       $v1, $a0, 1
/* CF3380 802407B0 00641821 */  addu      $v1, $v1, $a0
/* CF3384 802407B4 00431023 */  subu      $v0, $v0, $v1
/* CF3388 802407B8 24430002 */  addiu     $v1, $v0, 2
/* CF338C 802407BC AE630074 */  sw        $v1, 0x74($s3)
/* CF3390 802407C0 8E42002C */  lw        $v0, 0x2c($s2)
/* CF3394 802407C4 58400007 */  blezl     $v0, .L802407E4
/* CF3398 802407C8 AE600070 */   sw       $zero, 0x70($s3)
/* CF339C 802407CC 8E420008 */  lw        $v0, 8($s2)
/* CF33A0 802407D0 18400003 */  blez      $v0, .L802407E0
/* CF33A4 802407D4 28620003 */   slti     $v0, $v1, 3
/* CF33A8 802407D8 10400002 */  beqz      $v0, .L802407E4
/* CF33AC 802407DC 00000000 */   nop
.L802407E0:
/* CF33B0 802407E0 AE600070 */  sw        $zero, 0x70($s3)
.L802407E4:
/* CF33B4 802407E4 8FBF0058 */  lw        $ra, 0x58($sp)
/* CF33B8 802407E8 8FB50054 */  lw        $s5, 0x54($sp)
/* CF33BC 802407EC 8FB40050 */  lw        $s4, 0x50($sp)
/* CF33C0 802407F0 8FB3004C */  lw        $s3, 0x4c($sp)
/* CF33C4 802407F4 8FB20048 */  lw        $s2, 0x48($sp)
/* CF33C8 802407F8 8FB10044 */  lw        $s1, 0x44($sp)
/* CF33CC 802407FC 8FB00040 */  lw        $s0, 0x40($sp)
/* CF33D0 80240800 D7BA0078 */  ldc1      $f26, 0x78($sp)
/* CF33D4 80240804 D7B80070 */  ldc1      $f24, 0x70($sp)
/* CF33D8 80240808 D7B60068 */  ldc1      $f22, 0x68($sp)
/* CF33DC 8024080C D7B40060 */  ldc1      $f20, 0x60($sp)
/* CF33E0 80240810 03E00008 */  jr        $ra
/* CF33E4 80240814 27BD0080 */   addiu    $sp, $sp, 0x80
