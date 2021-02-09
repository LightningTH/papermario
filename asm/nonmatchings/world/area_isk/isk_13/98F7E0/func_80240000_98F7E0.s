.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240000_98F7E0
/* 98F7E0 80240000 27BDFFA8 */  addiu     $sp, $sp, -0x58
/* 98F7E4 80240004 AFB00030 */  sw        $s0, 0x30($sp)
/* 98F7E8 80240008 0080802D */  daddu     $s0, $a0, $zero
/* 98F7EC 8024000C AFBF0040 */  sw        $ra, 0x40($sp)
/* 98F7F0 80240010 AFB3003C */  sw        $s3, 0x3c($sp)
/* 98F7F4 80240014 AFB20038 */  sw        $s2, 0x38($sp)
/* 98F7F8 80240018 AFB10034 */  sw        $s1, 0x34($sp)
/* 98F7FC 8024001C F7B60050 */  sdc1      $f22, 0x50($sp)
/* 98F800 80240020 F7B40048 */  sdc1      $f20, 0x48($sp)
/* 98F804 80240024 8E130148 */  lw        $s3, 0x148($s0)
/* 98F808 80240028 00A0882D */  daddu     $s1, $a1, $zero
/* 98F80C 8024002C 86640008 */  lh        $a0, 8($s3)
/* 98F810 80240030 0C00EABB */  jal       get_npc_unsafe
/* 98F814 80240034 00C0902D */   daddu    $s2, $a2, $zero
/* 98F818 80240038 0200202D */  daddu     $a0, $s0, $zero
/* 98F81C 8024003C 0220282D */  daddu     $a1, $s1, $zero
/* 98F820 80240040 0240302D */  daddu     $a2, $s2, $zero
/* 98F824 80240044 0C012568 */  jal       func_800495A0
/* 98F828 80240048 0040802D */   daddu    $s0, $v0, $zero
/* 98F82C 8024004C 8E020000 */  lw        $v0, ($s0)
/* 98F830 80240050 2404002D */  addiu     $a0, $zero, 0x2d
/* 98F834 80240054 34420800 */  ori       $v0, $v0, 0x800
/* 98F838 80240058 0C00A67F */  jal       rand_int
/* 98F83C 8024005C AE020000 */   sw       $v0, ($s0)
/* 98F840 80240060 0200202D */  daddu     $a0, $s0, $zero
/* 98F844 80240064 3C05B000 */  lui       $a1, 0xb000
/* 98F848 80240068 34A50017 */  ori       $a1, $a1, 0x17
/* 98F84C 8024006C 44820000 */  mtc1      $v0, $f0
/* 98F850 80240070 00000000 */  nop
/* 98F854 80240074 46800021 */  cvt.d.w   $f0, $f0
/* 98F858 80240078 3C014024 */  lui       $at, 0x4024
/* 98F85C 8024007C 44811800 */  mtc1      $at, $f3
/* 98F860 80240080 44801000 */  mtc1      $zero, $f2
/* 98F864 80240084 3C014020 */  lui       $at, 0x4020
/* 98F868 80240088 44812800 */  mtc1      $at, $f5
/* 98F86C 8024008C 44802000 */  mtc1      $zero, $f4
/* 98F870 80240090 46220003 */  div.d     $f0, $f0, $f2
/* 98F874 80240094 46240000 */  add.d     $f0, $f0, $f4
/* 98F878 80240098 3C013FC0 */  lui       $at, 0x3fc0
/* 98F87C 8024009C 44811000 */  mtc1      $at, $f2
/* 98F880 802400A0 0000302D */  daddu     $a2, $zero, $zero
/* 98F884 802400A4 E6020014 */  swc1      $f2, 0x14($s0)
/* 98F888 802400A8 46200020 */  cvt.s.d   $f0, $f0
/* 98F88C 802400AC 0C012530 */  jal       func_800494C0
/* 98F890 802400B0 E600001C */   swc1     $f0, 0x1c($s0)
/* 98F894 802400B4 8E6300D0 */  lw        $v1, 0xd0($s3)
/* 98F898 802400B8 C6000040 */  lwc1      $f0, 0x40($s0)
/* 98F89C 802400BC C4620000 */  lwc1      $f2, ($v1)
/* 98F8A0 802400C0 468010A0 */  cvt.s.w   $f2, $f2
/* 98F8A4 802400C4 C4640008 */  lwc1      $f4, 8($v1)
/* 98F8A8 802400C8 46802120 */  cvt.s.w   $f4, $f4
/* 98F8AC 802400CC E7A00010 */  swc1      $f0, 0x10($sp)
/* 98F8B0 802400D0 8E6200D0 */  lw        $v0, 0xd0($s3)
/* 98F8B4 802400D4 44051000 */  mfc1      $a1, $f2
/* 98F8B8 802400D8 C440000C */  lwc1      $f0, 0xc($v0)
/* 98F8BC 802400DC 46800020 */  cvt.s.w   $f0, $f0
/* 98F8C0 802400E0 E7A00014 */  swc1      $f0, 0x14($sp)
/* 98F8C4 802400E4 8E6200D0 */  lw        $v0, 0xd0($s3)
/* 98F8C8 802400E8 44062000 */  mfc1      $a2, $f4
/* 98F8CC 802400EC C4400010 */  lwc1      $f0, 0x10($v0)
/* 98F8D0 802400F0 46800020 */  cvt.s.w   $f0, $f0
/* 98F8D4 802400F4 E7A00018 */  swc1      $f0, 0x18($sp)
/* 98F8D8 802400F8 8C640018 */  lw        $a0, 0x18($v1)
/* 98F8DC 802400FC 0C0123F5 */  jal       is_point_within_region
/* 98F8E0 80240100 8E070038 */   lw       $a3, 0x38($s0)
/* 98F8E4 80240104 10400035 */  beqz      $v0, .L802401DC
/* 98F8E8 80240108 00000000 */   nop
/* 98F8EC 8024010C C60C0038 */  lwc1      $f12, 0x38($s0)
/* 98F8F0 80240110 3C0141C8 */  lui       $at, 0x41c8
/* 98F8F4 80240114 4481B000 */  mtc1      $at, $f22
/* 98F8F8 80240118 8E6200D0 */  lw        $v0, 0xd0($s3)
/* 98F8FC 8024011C C60E0040 */  lwc1      $f14, 0x40($s0)
/* 98F900 80240120 C4480000 */  lwc1      $f8, ($v0)
/* 98F904 80240124 46804220 */  cvt.s.w   $f8, $f8
/* 98F908 80240128 44064000 */  mfc1      $a2, $f8
/* 98F90C 8024012C C4480008 */  lwc1      $f8, 8($v0)
/* 98F910 80240130 46804220 */  cvt.s.w   $f8, $f8
/* 98F914 80240134 44074000 */  mfc1      $a3, $f8
/* 98F918 80240138 3C01403E */  lui       $at, 0x403e
/* 98F91C 8024013C 4481A800 */  mtc1      $at, $f21
/* 98F920 80240140 4480A000 */  mtc1      $zero, $f20
/* 98F924 80240144 0C00A720 */  jal       atan2
/* 98F928 80240148 0000882D */   daddu    $s1, $zero, $zero
/* 98F92C 8024014C C6020038 */  lwc1      $f2, 0x38($s0)
/* 98F930 80240150 C604003C */  lwc1      $f4, 0x3c($s0)
/* 98F934 80240154 C6060040 */  lwc1      $f6, 0x40($s0)
/* 98F938 80240158 E600000C */  swc1      $f0, 0xc($s0)
/* 98F93C 8024015C E7A20020 */  swc1      $f2, 0x20($sp)
/* 98F940 80240160 E7A40024 */  swc1      $f4, 0x24($sp)
/* 98F944 80240164 E7A60028 */  swc1      $f6, 0x28($sp)
.L80240168:
/* 98F948 80240168 E7B60010 */  swc1      $f22, 0x10($sp)
/* 98F94C 8024016C C600000C */  lwc1      $f0, 0xc($s0)
/* 98F950 80240170 E7A00014 */  swc1      $f0, 0x14($sp)
/* 98F954 80240174 860200A8 */  lh        $v0, 0xa8($s0)
/* 98F958 80240178 27A50020 */  addiu     $a1, $sp, 0x20
/* 98F95C 8024017C 44820000 */  mtc1      $v0, $f0
/* 98F960 80240180 00000000 */  nop
/* 98F964 80240184 46800020 */  cvt.s.w   $f0, $f0
/* 98F968 80240188 E7A00018 */  swc1      $f0, 0x18($sp)
/* 98F96C 8024018C 860200A6 */  lh        $v0, 0xa6($s0)
/* 98F970 80240190 27A60024 */  addiu     $a2, $sp, 0x24
/* 98F974 80240194 44820000 */  mtc1      $v0, $f0
/* 98F978 80240198 00000000 */  nop
/* 98F97C 8024019C 46800020 */  cvt.s.w   $f0, $f0
/* 98F980 802401A0 E7A0001C */  swc1      $f0, 0x1c($sp)
/* 98F984 802401A4 8E040080 */  lw        $a0, 0x80($s0)
/* 98F988 802401A8 0C037711 */  jal       func_800DDC44
/* 98F98C 802401AC 27A70028 */   addiu    $a3, $sp, 0x28
/* 98F990 802401B0 10400016 */  beqz      $v0, .L8024020C
/* 98F994 802401B4 26310001 */   addiu    $s1, $s1, 1
/* 98F998 802401B8 C600000C */  lwc1      $f0, 0xc($s0)
/* 98F99C 802401BC 46000021 */  cvt.d.s   $f0, $f0
/* 98F9A0 802401C0 46340000 */  add.d     $f0, $f0, $f20
/* 98F9A4 802401C4 2A220006 */  slti      $v0, $s1, 6
/* 98F9A8 802401C8 46200020 */  cvt.s.d   $f0, $f0
/* 98F9AC 802401CC 1440FFE6 */  bnez      $v0, .L80240168
/* 98F9B0 802401D0 E600000C */   swc1     $f0, 0xc($s0)
/* 98F9B4 802401D4 08090083 */  j         .L8024020C
/* 98F9B8 802401D8 00000000 */   nop
.L802401DC:
/* 98F9BC 802401DC 0C00A67F */  jal       rand_int
/* 98F9C0 802401E0 2404003C */   addiu    $a0, $zero, 0x3c
/* 98F9C4 802401E4 C60C000C */  lwc1      $f12, 0xc($s0)
/* 98F9C8 802401E8 44820000 */  mtc1      $v0, $f0
/* 98F9CC 802401EC 00000000 */  nop
/* 98F9D0 802401F0 46800020 */  cvt.s.w   $f0, $f0
/* 98F9D4 802401F4 46006300 */  add.s     $f12, $f12, $f0
/* 98F9D8 802401F8 3C0141F0 */  lui       $at, 0x41f0
/* 98F9DC 802401FC 44810000 */  mtc1      $at, $f0
/* 98F9E0 80240200 0C00A6C9 */  jal       clamp_angle
/* 98F9E4 80240204 46006301 */   sub.s    $f12, $f12, $f0
/* 98F9E8 80240208 E600000C */  swc1      $f0, 0xc($s0)
.L8024020C:
/* 98F9EC 8024020C 8FBF0040 */  lw        $ra, 0x40($sp)
/* 98F9F0 80240210 8FB3003C */  lw        $s3, 0x3c($sp)
/* 98F9F4 80240214 8FB20038 */  lw        $s2, 0x38($sp)
/* 98F9F8 80240218 8FB10034 */  lw        $s1, 0x34($sp)
/* 98F9FC 8024021C 8FB00030 */  lw        $s0, 0x30($sp)
/* 98FA00 80240220 D7B60050 */  ldc1      $f22, 0x50($sp)
/* 98FA04 80240224 D7B40048 */  ldc1      $f20, 0x48($sp)
/* 98FA08 80240228 03E00008 */  jr        $ra
/* 98FA0C 8024022C 27BD0058 */   addiu    $sp, $sp, 0x58