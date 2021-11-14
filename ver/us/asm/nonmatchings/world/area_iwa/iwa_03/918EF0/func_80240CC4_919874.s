.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .rodata

dlabel D_80242C50_91B800
.double 32767.0

.section .text

glabel func_80240CC4_919874
/* 919874 80240CC4 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 919878 80240CC8 AFB20018 */  sw        $s2, 0x18($sp)
/* 91987C 80240CCC 0080902D */  daddu     $s2, $a0, $zero
/* 919880 80240CD0 AFBF001C */  sw        $ra, 0x1c($sp)
/* 919884 80240CD4 AFB10014 */  sw        $s1, 0x14($sp)
/* 919888 80240CD8 AFB00010 */  sw        $s0, 0x10($sp)
/* 91988C 80240CDC 8E500148 */  lw        $s0, 0x148($s2)
/* 919890 80240CE0 86040008 */  lh        $a0, 8($s0)
/* 919894 80240CE4 0C00EABB */  jal       get_npc_unsafe
/* 919898 80240CE8 00A0882D */   daddu    $s1, $a1, $zero
/* 91989C 80240CEC 0040182D */  daddu     $v1, $v0, $zero
/* 9198A0 80240CF0 9462008E */  lhu       $v0, 0x8e($v1)
/* 9198A4 80240CF4 2442FFFF */  addiu     $v0, $v0, -1
/* 9198A8 80240CF8 A462008E */  sh        $v0, 0x8e($v1)
/* 9198AC 80240CFC 00021400 */  sll       $v0, $v0, 0x10
/* 9198B0 80240D00 1C400015 */  bgtz      $v0, .L80240D58
/* 9198B4 80240D04 00000000 */   nop
/* 9198B8 80240D08 8E0200CC */  lw        $v0, 0xcc($s0)
/* 9198BC 80240D0C 8C420004 */  lw        $v0, 4($v0)
/* 9198C0 80240D10 AC620028 */  sw        $v0, 0x28($v1)
/* 9198C4 80240D14 8E0200D0 */  lw        $v0, 0xd0($s0)
/* 9198C8 80240D18 8C420014 */  lw        $v0, 0x14($v0)
/* 9198CC 80240D1C 04410004 */  bgez      $v0, .L80240D30
/* 9198D0 80240D20 00000000 */   nop
/* 9198D4 80240D24 C6200000 */  lwc1      $f0, ($s1)
/* 9198D8 80240D28 08090354 */  j         .L80240D50
/* 9198DC 80240D2C E4600018 */   swc1     $f0, 0x18($v1)
.L80240D30:
/* 9198E0 80240D30 3C018024 */  lui       $at, %hi(D_80242C50_91B800)
/* 9198E4 80240D34 D4222C50 */  ldc1      $f2, %lo(D_80242C50_91B800)($at)
/* 9198E8 80240D38 44820000 */  mtc1      $v0, $f0
/* 9198EC 80240D3C 00000000 */  nop
/* 9198F0 80240D40 46800021 */  cvt.d.w   $f0, $f0
/* 9198F4 80240D44 46220003 */  div.d     $f0, $f0, $f2
/* 9198F8 80240D48 46200020 */  cvt.s.d   $f0, $f0
/* 9198FC 80240D4C E4600018 */  swc1      $f0, 0x18($v1)
.L80240D50:
/* 919900 80240D50 24020029 */  addiu     $v0, $zero, 0x29
/* 919904 80240D54 AE420070 */  sw        $v0, 0x70($s2)
.L80240D58:
/* 919908 80240D58 8FBF001C */  lw        $ra, 0x1c($sp)
/* 91990C 80240D5C 8FB20018 */  lw        $s2, 0x18($sp)
/* 919910 80240D60 8FB10014 */  lw        $s1, 0x14($sp)
/* 919914 80240D64 8FB00010 */  lw        $s0, 0x10($sp)
/* 919918 80240D68 03E00008 */  jr        $ra
/* 91991C 80240D6C 27BD0020 */   addiu    $sp, $sp, 0x20
