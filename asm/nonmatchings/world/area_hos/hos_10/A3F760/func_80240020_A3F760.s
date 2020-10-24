.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240020_A3F760
/* A3F760 80240020 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* A3F764 80240024 AFB00010 */  sw        $s0, 0x10($sp)
/* A3F768 80240028 0080802D */  daddu     $s0, $a0, $zero
/* A3F76C 8024002C AFBF0014 */  sw        $ra, 0x14($sp)
/* A3F770 80240030 8E0300A8 */  lw        $v1, 0xa8($s0)
/* A3F774 80240034 8E020088 */  lw        $v0, 0x88($s0)
/* A3F778 80240038 00621821 */  addu      $v1, $v1, $v0
/* A3F77C 8024003C 04610004 */  bgez      $v1, .L80240050
/* A3F780 80240040 AE0300A8 */   sw       $v1, 0xa8($s0)
/* A3F784 80240044 3C020002 */  lui       $v0, 2
/* A3F788 80240048 08090018 */  j         .L80240060
/* A3F78C 8024004C 00621021 */   addu     $v0, $v1, $v0
.L80240050:
/* A3F790 80240050 3C040002 */  lui       $a0, 2
/* A3F794 80240054 0083102A */  slt       $v0, $a0, $v1
/* A3F798 80240058 10400002 */  beqz      $v0, .L80240064
/* A3F79C 8024005C 00641023 */   subu     $v0, $v1, $a0
.L80240060:
/* A3F7A0 80240060 AE0200A8 */  sw        $v0, 0xa8($s0)
.L80240064:
/* A3F7A4 80240064 8E0300AC */  lw        $v1, 0xac($s0)
/* A3F7A8 80240068 8E02008C */  lw        $v0, 0x8c($s0)
/* A3F7AC 8024006C 00621821 */  addu      $v1, $v1, $v0
/* A3F7B0 80240070 04610004 */  bgez      $v1, .L80240084
/* A3F7B4 80240074 AE0300AC */   sw       $v1, 0xac($s0)
/* A3F7B8 80240078 3C020002 */  lui       $v0, 2
/* A3F7BC 8024007C 08090025 */  j         .L80240094
/* A3F7C0 80240080 00621021 */   addu     $v0, $v1, $v0
.L80240084:
/* A3F7C4 80240084 3C040002 */  lui       $a0, 2
/* A3F7C8 80240088 0083102A */  slt       $v0, $a0, $v1
/* A3F7CC 8024008C 10400002 */  beqz      $v0, .L80240098
/* A3F7D0 80240090 00641023 */   subu     $v0, $v1, $a0
.L80240094:
/* A3F7D4 80240094 AE0200AC */  sw        $v0, 0xac($s0)
.L80240098:
/* A3F7D8 80240098 8E0300B0 */  lw        $v1, 0xb0($s0)
/* A3F7DC 8024009C 8E020090 */  lw        $v0, 0x90($s0)
/* A3F7E0 802400A0 00621821 */  addu      $v1, $v1, $v0
/* A3F7E4 802400A4 04610004 */  bgez      $v1, .L802400B8
/* A3F7E8 802400A8 AE0300B0 */   sw       $v1, 0xb0($s0)
/* A3F7EC 802400AC 3C020002 */  lui       $v0, 2
/* A3F7F0 802400B0 08090032 */  j         .L802400C8
/* A3F7F4 802400B4 00621021 */   addu     $v0, $v1, $v0
.L802400B8:
/* A3F7F8 802400B8 3C040002 */  lui       $a0, 2
/* A3F7FC 802400BC 0083102A */  slt       $v0, $a0, $v1
/* A3F800 802400C0 10400002 */  beqz      $v0, .L802400CC
/* A3F804 802400C4 00641023 */   subu     $v0, $v1, $a0
.L802400C8:
/* A3F808 802400C8 AE0200B0 */  sw        $v0, 0xb0($s0)
.L802400CC:
/* A3F80C 802400CC 8E0300B4 */  lw        $v1, 0xb4($s0)
/* A3F810 802400D0 8E020094 */  lw        $v0, 0x94($s0)
/* A3F814 802400D4 00621821 */  addu      $v1, $v1, $v0
/* A3F818 802400D8 04610004 */  bgez      $v1, .L802400EC
/* A3F81C 802400DC AE0300B4 */   sw       $v1, 0xb4($s0)
/* A3F820 802400E0 3C020002 */  lui       $v0, 2
/* A3F824 802400E4 0809003F */  j         .L802400FC
/* A3F828 802400E8 00621021 */   addu     $v0, $v1, $v0
.L802400EC:
/* A3F82C 802400EC 3C040002 */  lui       $a0, 2
/* A3F830 802400F0 0083102A */  slt       $v0, $a0, $v1
/* A3F834 802400F4 10400002 */  beqz      $v0, .L80240100
/* A3F838 802400F8 00641023 */   subu     $v0, $v1, $a0
.L802400FC:
/* A3F83C 802400FC AE0200B4 */  sw        $v0, 0xb4($s0)
.L80240100:
/* A3F840 80240100 8E040084 */  lw        $a0, 0x84($s0)
/* A3F844 80240104 0C046F07 */  jal       set_main_pan_u
/* A3F848 80240108 8E0500A8 */   lw       $a1, 0xa8($s0)
/* A3F84C 8024010C 8E040084 */  lw        $a0, 0x84($s0)
/* A3F850 80240110 0C046F0D */  jal       set_main_pan_v
/* A3F854 80240114 8E0500AC */   lw       $a1, 0xac($s0)
/* A3F858 80240118 8E040084 */  lw        $a0, 0x84($s0)
/* A3F85C 8024011C 0C046F13 */  jal       set_aux_pan_u
/* A3F860 80240120 8E0500B0 */   lw       $a1, 0xb0($s0)
/* A3F864 80240124 8E040084 */  lw        $a0, 0x84($s0)
/* A3F868 80240128 0C046F19 */  jal       set_aux_pan_v
/* A3F86C 8024012C 8E0500B4 */   lw       $a1, 0xb4($s0)
/* A3F870 80240130 8FBF0014 */  lw        $ra, 0x14($sp)
/* A3F874 80240134 8FB00010 */  lw        $s0, 0x10($sp)
/* A3F878 80240138 0000102D */  daddu     $v0, $zero, $zero
/* A3F87C 8024013C 03E00008 */  jr        $ra
/* A3F880 80240140 27BD0018 */   addiu    $sp, $sp, 0x18