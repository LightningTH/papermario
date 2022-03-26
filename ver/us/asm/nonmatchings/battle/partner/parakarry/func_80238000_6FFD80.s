.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80238000_6FFD80
/* 6FFD80 80238000 27BDFF80 */  addiu     $sp, $sp, -0x80
/* 6FFD84 80238004 AFB7005C */  sw        $s7, 0x5c($sp)
/* 6FFD88 80238008 0080B82D */  daddu     $s7, $a0, $zero
/* 6FFD8C 8023800C AFB60058 */  sw        $s6, 0x58($sp)
/* 6FFD90 80238010 3C16800E */  lui       $s6, %hi(gBattleStatus)
/* 6FFD94 80238014 26D6C070 */  addiu     $s6, $s6, %lo(gBattleStatus)
/* 6FFD98 80238018 AFBF0060 */  sw        $ra, 0x60($sp)
/* 6FFD9C 8023801C AFB50054 */  sw        $s5, 0x54($sp)
/* 6FFDA0 80238020 AFB40050 */  sw        $s4, 0x50($sp)
/* 6FFDA4 80238024 AFB3004C */  sw        $s3, 0x4c($sp)
/* 6FFDA8 80238028 AFB20048 */  sw        $s2, 0x48($sp)
/* 6FFDAC 8023802C AFB10044 */  sw        $s1, 0x44($sp)
/* 6FFDB0 80238030 AFB00040 */  sw        $s0, 0x40($sp)
/* 6FFDB4 80238034 F7B80078 */  sdc1      $f24, 0x78($sp)
/* 6FFDB8 80238038 F7B60070 */  sdc1      $f22, 0x70($sp)
/* 6FFDBC 8023803C F7B40068 */  sdc1      $f20, 0x68($sp)
/* 6FFDC0 80238040 8ED500DC */  lw        $s5, 0xdc($s6)
/* 6FFDC4 80238044 3C04802A */  lui       $a0, %hi(gActionCommandStatus)
/* 6FFDC8 80238048 2484FBE0 */  addiu     $a0, $a0, %lo(gActionCommandStatus)
/* 6FFDCC 8023804C 10A00002 */  beqz      $a1, .L80238058
/* 6FFDD0 80238050 26B4000C */   addiu    $s4, $s5, 0xc
/* 6FFDD4 80238054 AEE00070 */  sw        $zero, 0x70($s7)
.L80238058:
/* 6FFDD8 80238058 8EE30070 */  lw        $v1, 0x70($s7)
/* 6FFDDC 8023805C 24020001 */  addiu     $v0, $zero, 1
/* 6FFDE0 80238060 1062019B */  beq       $v1, $v0, .L802386D0
/* 6FFDE4 80238064 28620002 */   slti     $v0, $v1, 2
/* 6FFDE8 80238068 10400005 */  beqz      $v0, .L80238080
/* 6FFDEC 8023806C 24020002 */   addiu    $v0, $zero, 2
/* 6FFDF0 80238070 10600009 */  beqz      $v1, .L80238098
/* 6FFDF4 80238074 28620003 */   slti     $v0, $v1, 3
/* 6FFDF8 80238078 0808E26D */  j         .L802389B4
/* 6FFDFC 8023807C 00000000 */   nop
.L80238080:
/* 6FFE00 80238080 106201B5 */  beq       $v1, $v0, .L80238758
/* 6FFE04 80238084 24020003 */   addiu    $v0, $zero, 3
/* 6FFE08 80238088 106201F2 */  beq       $v1, $v0, .L80238854
/* 6FFE0C 8023808C 00000000 */   nop
/* 6FFE10 80238090 0808E26B */  j         .L802389AC
/* 6FFE14 80238094 00000000 */   nop
.L80238098:
/* 6FFE18 80238098 3C048029 */  lui       $a0, %hi(HudScript_AimMarkerF)
/* 6FFE1C 8023809C 24843014 */  addiu     $a0, $a0, %lo(HudScript_AimMarkerF)
/* 6FFE20 802380A0 0C050529 */  jal       hud_element_create
/* 6FFE24 802380A4 00000000 */   nop
/* 6FFE28 802380A8 0040982D */  daddu     $s3, $v0, $zero
/* 6FFE2C 802380AC 0260202D */  daddu     $a0, $s3, $zero
/* 6FFE30 802380B0 2405000A */  addiu     $a1, $zero, 0xa
/* 6FFE34 802380B4 3C108024 */  lui       $s0, %hi(D_8023BD78)
/* 6FFE38 802380B8 2610BD78 */  addiu     $s0, $s0, %lo(D_8023BD78)
/* 6FFE3C 802380BC 0C051277 */  jal       hud_element_set_render_depth
/* 6FFE40 802380C0 AE130000 */   sw       $s3, ($s0)
/* 6FFE44 802380C4 0260202D */  daddu     $a0, $s3, $zero
/* 6FFE48 802380C8 2405FF9C */  addiu     $a1, $zero, -0x64
/* 6FFE4C 802380CC 0C051261 */  jal       hud_element_set_render_pos
/* 6FFE50 802380D0 00A0302D */   daddu    $a2, $a1, $zero
/* 6FFE54 802380D4 3C048029 */  lui       $a0, %hi(HudScript_AimMarkerE)
/* 6FFE58 802380D8 24842F7C */  addiu     $a0, $a0, %lo(HudScript_AimMarkerE)
/* 6FFE5C 802380DC 0C050529 */  jal       hud_element_create
/* 6FFE60 802380E0 00000000 */   nop
/* 6FFE64 802380E4 0040982D */  daddu     $s3, $v0, $zero
/* 6FFE68 802380E8 0260202D */  daddu     $a0, $s3, $zero
/* 6FFE6C 802380EC 2405000A */  addiu     $a1, $zero, 0xa
/* 6FFE70 802380F0 0C051277 */  jal       hud_element_set_render_depth
/* 6FFE74 802380F4 AE130004 */   sw       $s3, 4($s0)
/* 6FFE78 802380F8 0260202D */  daddu     $a0, $s3, $zero
/* 6FFE7C 802380FC 2405FF9C */  addiu     $a1, $zero, -0x64
/* 6FFE80 80238100 0C051261 */  jal       hud_element_set_render_pos
/* 6FFE84 80238104 00A0302D */   daddu    $a2, $a1, $zero
/* 6FFE88 80238108 3C048029 */  lui       $a0, %hi(HudScript_AimMarkerD)
/* 6FFE8C 8023810C 24842EE4 */  addiu     $a0, $a0, %lo(HudScript_AimMarkerD)
/* 6FFE90 80238110 0C050529 */  jal       hud_element_create
/* 6FFE94 80238114 00000000 */   nop
/* 6FFE98 80238118 0040982D */  daddu     $s3, $v0, $zero
/* 6FFE9C 8023811C 0260202D */  daddu     $a0, $s3, $zero
/* 6FFEA0 80238120 2405000A */  addiu     $a1, $zero, 0xa
/* 6FFEA4 80238124 0C051277 */  jal       hud_element_set_render_depth
/* 6FFEA8 80238128 AE130008 */   sw       $s3, 8($s0)
/* 6FFEAC 8023812C 0260202D */  daddu     $a0, $s3, $zero
/* 6FFEB0 80238130 2405FF9C */  addiu     $a1, $zero, -0x64
/* 6FFEB4 80238134 0C051261 */  jal       hud_element_set_render_pos
/* 6FFEB8 80238138 00A0302D */   daddu    $a2, $a1, $zero
/* 6FFEBC 8023813C 3C048029 */  lui       $a0, %hi(HudScript_AimMarkerC)
/* 6FFEC0 80238140 24842E4C */  addiu     $a0, $a0, %lo(HudScript_AimMarkerC)
/* 6FFEC4 80238144 0C050529 */  jal       hud_element_create
/* 6FFEC8 80238148 00000000 */   nop
/* 6FFECC 8023814C 0040982D */  daddu     $s3, $v0, $zero
/* 6FFED0 80238150 0260202D */  daddu     $a0, $s3, $zero
/* 6FFED4 80238154 2405000A */  addiu     $a1, $zero, 0xa
/* 6FFED8 80238158 0C051277 */  jal       hud_element_set_render_depth
/* 6FFEDC 8023815C AE13000C */   sw       $s3, 0xc($s0)
/* 6FFEE0 80238160 0260202D */  daddu     $a0, $s3, $zero
/* 6FFEE4 80238164 2405FF9C */  addiu     $a1, $zero, -0x64
/* 6FFEE8 80238168 0C051261 */  jal       hud_element_set_render_pos
/* 6FFEEC 8023816C 00A0302D */   daddu    $a2, $a1, $zero
/* 6FFEF0 80238170 3C048029 */  lui       $a0, %hi(HudScript_AimMarkerB)
/* 6FFEF4 80238174 24842DB4 */  addiu     $a0, $a0, %lo(HudScript_AimMarkerB)
/* 6FFEF8 80238178 0C050529 */  jal       hud_element_create
/* 6FFEFC 8023817C 00000000 */   nop
/* 6FFF00 80238180 0040982D */  daddu     $s3, $v0, $zero
/* 6FFF04 80238184 0260202D */  daddu     $a0, $s3, $zero
/* 6FFF08 80238188 2405000A */  addiu     $a1, $zero, 0xa
/* 6FFF0C 8023818C 0C051277 */  jal       hud_element_set_render_depth
/* 6FFF10 80238190 AE130010 */   sw       $s3, 0x10($s0)
/* 6FFF14 80238194 0260202D */  daddu     $a0, $s3, $zero
/* 6FFF18 80238198 2405FF9C */  addiu     $a1, $zero, -0x64
/* 6FFF1C 8023819C 0C051261 */  jal       hud_element_set_render_pos
/* 6FFF20 802381A0 00A0302D */   daddu    $a2, $a1, $zero
/* 6FFF24 802381A4 3C048029 */  lui       $a0, %hi(HudScript_AimMarkerA)
/* 6FFF28 802381A8 24842D1C */  addiu     $a0, $a0, %lo(HudScript_AimMarkerA)
/* 6FFF2C 802381AC 0C050529 */  jal       hud_element_create
/* 6FFF30 802381B0 00000000 */   nop
/* 6FFF34 802381B4 0040982D */  daddu     $s3, $v0, $zero
/* 6FFF38 802381B8 0260202D */  daddu     $a0, $s3, $zero
/* 6FFF3C 802381BC 2405000A */  addiu     $a1, $zero, 0xa
/* 6FFF40 802381C0 0C051277 */  jal       hud_element_set_render_depth
/* 6FFF44 802381C4 AE130014 */   sw       $s3, 0x14($s0)
/* 6FFF48 802381C8 0260202D */  daddu     $a0, $s3, $zero
/* 6FFF4C 802381CC 2405FF9C */  addiu     $a1, $zero, -0x64
/* 6FFF50 802381D0 0C051261 */  jal       hud_element_set_render_pos
/* 6FFF54 802381D4 00A0302D */   daddu    $a2, $a1, $zero
/* 6FFF58 802381D8 3C048029 */  lui       $a0, %hi(HudScript_AimReticle)
/* 6FFF5C 802381DC 2484369C */  addiu     $a0, $a0, %lo(HudScript_AimReticle)
/* 6FFF60 802381E0 0C050529 */  jal       hud_element_create
/* 6FFF64 802381E4 00000000 */   nop
/* 6FFF68 802381E8 0040982D */  daddu     $s3, $v0, $zero
/* 6FFF6C 802381EC 0260202D */  daddu     $a0, $s3, $zero
/* 6FFF70 802381F0 2405000A */  addiu     $a1, $zero, 0xa
/* 6FFF74 802381F4 0C051277 */  jal       hud_element_set_render_depth
/* 6FFF78 802381F8 AE130018 */   sw       $s3, 0x18($s0)
/* 6FFF7C 802381FC 0260202D */  daddu     $a0, $s3, $zero
/* 6FFF80 80238200 2405FF9C */  addiu     $a1, $zero, -0x64
/* 6FFF84 80238204 0C051261 */  jal       hud_element_set_render_pos
/* 6FFF88 80238208 00A0302D */   daddu    $a2, $a1, $zero
/* 6FFF8C 8023820C 3C048029 */  lui       $a0, %hi(HudScript_AimShimmerF)
/* 6FFF90 80238210 248434D4 */  addiu     $a0, $a0, %lo(HudScript_AimShimmerF)
/* 6FFF94 80238214 0C050529 */  jal       hud_element_create
/* 6FFF98 80238218 00000000 */   nop
/* 6FFF9C 8023821C 0040982D */  daddu     $s3, $v0, $zero
/* 6FFFA0 80238220 0260202D */  daddu     $a0, $s3, $zero
/* 6FFFA4 80238224 24050009 */  addiu     $a1, $zero, 9
/* 6FFFA8 80238228 3C108024 */  lui       $s0, %hi(D_8023BD98)
/* 6FFFAC 8023822C 2610BD98 */  addiu     $s0, $s0, %lo(D_8023BD98)
/* 6FFFB0 80238230 0C051277 */  jal       hud_element_set_render_depth
/* 6FFFB4 80238234 AE130000 */   sw       $s3, ($s0)
/* 6FFFB8 80238238 0260202D */  daddu     $a0, $s3, $zero
/* 6FFFBC 8023823C 2405FF9C */  addiu     $a1, $zero, -0x64
/* 6FFFC0 80238240 0C051261 */  jal       hud_element_set_render_pos
/* 6FFFC4 80238244 00A0302D */   daddu    $a2, $a1, $zero
/* 6FFFC8 80238248 3C048029 */  lui       $a0, %hi(HudScript_AimShimmerE)
/* 6FFFCC 8023824C 2484343C */  addiu     $a0, $a0, %lo(HudScript_AimShimmerE)
/* 6FFFD0 80238250 0C050529 */  jal       hud_element_create
/* 6FFFD4 80238254 00000000 */   nop
/* 6FFFD8 80238258 0040982D */  daddu     $s3, $v0, $zero
/* 6FFFDC 8023825C 0260202D */  daddu     $a0, $s3, $zero
/* 6FFFE0 80238260 24050009 */  addiu     $a1, $zero, 9
/* 6FFFE4 80238264 0C051277 */  jal       hud_element_set_render_depth
/* 6FFFE8 80238268 AE130004 */   sw       $s3, 4($s0)
/* 6FFFEC 8023826C 0260202D */  daddu     $a0, $s3, $zero
/* 6FFFF0 80238270 2405FF9C */  addiu     $a1, $zero, -0x64
/* 6FFFF4 80238274 0C051261 */  jal       hud_element_set_render_pos
/* 6FFFF8 80238278 00A0302D */   daddu    $a2, $a1, $zero
/* 6FFFFC 8023827C 3C048029 */  lui       $a0, %hi(HudScript_AimShimmerD)
/* 700000 80238280 248433A4 */  addiu     $a0, $a0, %lo(HudScript_AimShimmerD)
/* 700004 80238284 0C050529 */  jal       hud_element_create
/* 700008 80238288 00000000 */   nop
/* 70000C 8023828C 0040982D */  daddu     $s3, $v0, $zero
/* 700010 80238290 0260202D */  daddu     $a0, $s3, $zero
/* 700014 80238294 24050009 */  addiu     $a1, $zero, 9
/* 700018 80238298 0C051277 */  jal       hud_element_set_render_depth
/* 70001C 8023829C AE130008 */   sw       $s3, 8($s0)
/* 700020 802382A0 0260202D */  daddu     $a0, $s3, $zero
/* 700024 802382A4 2405FF9C */  addiu     $a1, $zero, -0x64
/* 700028 802382A8 0C051261 */  jal       hud_element_set_render_pos
/* 70002C 802382AC 00A0302D */   daddu    $a2, $a1, $zero
/* 700030 802382B0 3C048029 */  lui       $a0, %hi(HudScript_AimShimmerC)
/* 700034 802382B4 2484330C */  addiu     $a0, $a0, %lo(HudScript_AimShimmerC)
/* 700038 802382B8 0C050529 */  jal       hud_element_create
/* 70003C 802382BC 00000000 */   nop
/* 700040 802382C0 0040982D */  daddu     $s3, $v0, $zero
/* 700044 802382C4 0260202D */  daddu     $a0, $s3, $zero
/* 700048 802382C8 24050009 */  addiu     $a1, $zero, 9
/* 70004C 802382CC 0C051277 */  jal       hud_element_set_render_depth
/* 700050 802382D0 AE13000C */   sw       $s3, 0xc($s0)
/* 700054 802382D4 0260202D */  daddu     $a0, $s3, $zero
/* 700058 802382D8 2405FF9C */  addiu     $a1, $zero, -0x64
/* 70005C 802382DC 0C051261 */  jal       hud_element_set_render_pos
/* 700060 802382E0 00A0302D */   daddu    $a2, $a1, $zero
/* 700064 802382E4 3C048029 */  lui       $a0, %hi(HudScript_AimShimmerB)
/* 700068 802382E8 24843274 */  addiu     $a0, $a0, %lo(HudScript_AimShimmerB)
/* 70006C 802382EC 0C050529 */  jal       hud_element_create
/* 700070 802382F0 00000000 */   nop
/* 700074 802382F4 0040982D */  daddu     $s3, $v0, $zero
/* 700078 802382F8 0260202D */  daddu     $a0, $s3, $zero
/* 70007C 802382FC 24050009 */  addiu     $a1, $zero, 9
/* 700080 80238300 0C051277 */  jal       hud_element_set_render_depth
/* 700084 80238304 AE130010 */   sw       $s3, 0x10($s0)
/* 700088 80238308 0260202D */  daddu     $a0, $s3, $zero
/* 70008C 8023830C 2405FF9C */  addiu     $a1, $zero, -0x64
/* 700090 80238310 0C051261 */  jal       hud_element_set_render_pos
/* 700094 80238314 00A0302D */   daddu    $a2, $a1, $zero
/* 700098 80238318 3C048029 */  lui       $a0, %hi(HudScript_AimShimmerA)
/* 70009C 8023831C 248431DC */  addiu     $a0, $a0, %lo(HudScript_AimShimmerA)
/* 7000A0 80238320 0C050529 */  jal       hud_element_create
/* 7000A4 80238324 00000000 */   nop
/* 7000A8 80238328 0040982D */  daddu     $s3, $v0, $zero
/* 7000AC 8023832C 0260202D */  daddu     $a0, $s3, $zero
/* 7000B0 80238330 24050009 */  addiu     $a1, $zero, 9
/* 7000B4 80238334 0C051277 */  jal       hud_element_set_render_depth
/* 7000B8 80238338 AE130014 */   sw       $s3, 0x14($s0)
/* 7000BC 8023833C 0260202D */  daddu     $a0, $s3, $zero
/* 7000C0 80238340 2405FF9C */  addiu     $a1, $zero, -0x64
/* 7000C4 80238344 0C051261 */  jal       hud_element_set_render_pos
/* 7000C8 80238348 00A0302D */   daddu    $a2, $a1, $zero
/* 7000CC 8023834C 3C048029 */  lui       $a0, %hi(HudScript_AimTarget)
/* 7000D0 80238350 248436D4 */  addiu     $a0, $a0, %lo(HudScript_AimTarget)
/* 7000D4 80238354 0C050529 */  jal       hud_element_create
/* 7000D8 80238358 00000000 */   nop
/* 7000DC 8023835C 0040982D */  daddu     $s3, $v0, $zero
/* 7000E0 80238360 0260202D */  daddu     $a0, $s3, $zero
/* 7000E4 80238364 2405000A */  addiu     $a1, $zero, 0xa
/* 7000E8 80238368 3C128024 */  lui       $s2, %hi(D_8023BDB4)
/* 7000EC 8023836C 2652BDB4 */  addiu     $s2, $s2, %lo(D_8023BDB4)
/* 7000F0 80238370 0C051277 */  jal       hud_element_set_render_depth
/* 7000F4 80238374 AE530000 */   sw       $s3, ($s2)
/* 7000F8 80238378 8E440000 */  lw        $a0, ($s2)
/* 7000FC 8023837C 0C0513CA */  jal       hud_element_create_transform_A
/* 700100 80238380 00000000 */   nop
/* 700104 80238384 0260202D */  daddu     $a0, $s3, $zero
/* 700108 80238388 2405FF9C */  addiu     $a1, $zero, -0x64
/* 70010C 8023838C 0C051261 */  jal       hud_element_set_render_pos
/* 700110 80238390 00A0302D */   daddu    $a2, $a1, $zero
/* 700114 80238394 3C048011 */  lui       $a0, %hi(HudScript_StickHoldLeft)
/* 700118 80238398 24848E48 */  addiu     $a0, $a0, %lo(HudScript_StickHoldLeft)
/* 70011C 8023839C 3C118024 */  lui       $s1, %hi(D_8023BDC4)
/* 700120 802383A0 2631BDC4 */  addiu     $s1, $s1, %lo(D_8023BDC4)
/* 700124 802383A4 2402FFD0 */  addiu     $v0, $zero, -0x30
/* 700128 802383A8 3C108024 */  lui       $s0, %hi(D_8023BDC8)
/* 70012C 802383AC 2610BDC8 */  addiu     $s0, $s0, %lo(D_8023BDC8)
/* 700130 802383B0 AE220000 */  sw        $v0, ($s1)
/* 700134 802383B4 24020050 */  addiu     $v0, $zero, 0x50
/* 700138 802383B8 0C050529 */  jal       hud_element_create
/* 70013C 802383BC AE020000 */   sw       $v0, ($s0)
/* 700140 802383C0 0040982D */  daddu     $s3, $v0, $zero
/* 700144 802383C4 8E250000 */  lw        $a1, ($s1)
/* 700148 802383C8 8E060000 */  lw        $a2, ($s0)
/* 70014C 802383CC 3C018024 */  lui       $at, %hi(D_8023BDC0)
/* 700150 802383D0 AC33BDC0 */  sw        $s3, %lo(D_8023BDC0)($at)
/* 700154 802383D4 0C051261 */  jal       hud_element_set_render_pos
/* 700158 802383D8 0260202D */   daddu    $a0, $s3, $zero
/* 70015C 802383DC 0260202D */  daddu     $a0, $s3, $zero
/* 700160 802383E0 0C051277 */  jal       hud_element_set_render_depth
/* 700164 802383E4 0000282D */   daddu    $a1, $zero, $zero
/* 700168 802383E8 86A50428 */  lh        $a1, 0x428($s5)
/* 70016C 802383EC 82A60426 */  lb        $a2, 0x426($s5)
/* 700170 802383F0 0C09A5D5 */  jal       set_goal_pos_to_part
/* 700174 802383F4 0280202D */   daddu    $a0, $s4, $zero
/* 700178 802383F8 86A40428 */  lh        $a0, 0x428($s5)
/* 70017C 802383FC 0C09A75B */  jal       get_actor
/* 700180 80238400 0000882D */   daddu    $s1, $zero, $zero
/* 700184 80238404 0040802D */  daddu     $s0, $v0, $zero
/* 700188 80238408 82A50426 */  lb        $a1, 0x426($s5)
/* 70018C 8023840C 0C099117 */  jal       get_actor_part
/* 700190 80238410 0200202D */   daddu    $a0, $s0, $zero
/* 700194 80238414 80430075 */  lb        $v1, 0x75($v0)
/* 700198 80238418 C6000188 */  lwc1      $f0, 0x188($s0)
/* 70019C 8023841C 44831000 */  mtc1      $v1, $f2
/* 7001A0 80238420 00000000 */  nop
/* 7001A4 80238424 468010A0 */  cvt.s.w   $f2, $f2
/* 7001A8 80238428 46001082 */  mul.s     $f2, $f2, $f0
/* 7001AC 8023842C 00000000 */  nop
/* 7001B0 80238430 C6A00018 */  lwc1      $f0, 0x18($s5)
/* 7001B4 80238434 46020000 */  add.s     $f0, $f0, $f2
/* 7001B8 80238438 E6A00018 */  swc1      $f0, 0x18($s5)
/* 7001BC 8023843C 80430076 */  lb        $v1, 0x76($v0)
/* 7001C0 80238440 C6020188 */  lwc1      $f2, 0x188($s0)
/* 7001C4 80238444 44830000 */  mtc1      $v1, $f0
/* 7001C8 80238448 00000000 */  nop
/* 7001CC 8023844C 46800020 */  cvt.s.w   $f0, $f0
/* 7001D0 80238450 46020002 */  mul.s     $f0, $f0, $f2
/* 7001D4 80238454 00000000 */  nop
/* 7001D8 80238458 C6A2001C */  lwc1      $f2, 0x1c($s5)
/* 7001DC 8023845C 46001080 */  add.s     $f2, $f2, $f0
/* 7001E0 80238460 C6A00020 */  lwc1      $f0, 0x20($s5)
/* 7001E4 80238464 E6A2001C */  swc1      $f2, 0x1c($s5)
/* 7001E8 80238468 90430073 */  lbu       $v1, 0x73($v0)
/* 7001EC 8023846C 90420072 */  lbu       $v0, 0x72($v0)
/* 7001F0 80238470 3C014038 */  lui       $at, 0x4038
/* 7001F4 80238474 44811800 */  mtc1      $at, $f3
/* 7001F8 80238478 44801000 */  mtc1      $zero, $f2
/* 7001FC 8023847C 00621821 */  addu      $v1, $v1, $v0
/* 700200 80238480 00031843 */  sra       $v1, $v1, 1
/* 700204 80238484 44830000 */  mtc1      $v1, $f0
/* 700208 80238488 00000000 */  nop
/* 70020C 8023848C 46800021 */  cvt.d.w   $f0, $f0
/* 700210 80238490 46220003 */  div.d     $f0, $f0, $f2
/* 700214 80238494 46200020 */  cvt.s.d   $f0, $f0
/* 700218 80238498 E6A00030 */  swc1      $f0, 0x30($s5)
/* 70021C 8023849C C6020188 */  lwc1      $f2, 0x188($s0)
/* 700220 802384A0 46020002 */  mul.s     $f0, $f0, $f2
/* 700224 802384A4 00000000 */  nop
/* 700228 802384A8 8E440000 */  lw        $a0, ($s2)
/* 70022C 802384AC 44050000 */  mfc1      $a1, $f0
/* 700230 802384B0 3C013F80 */  lui       $at, 0x3f80
/* 700234 802384B4 4481B000 */  mtc1      $at, $f22
/* 700238 802384B8 0C051308 */  jal       hud_element_set_scale
/* 70023C 802384BC 00000000 */   nop
/* 700240 802384C0 27B30028 */  addiu     $s3, $sp, 0x28
/* 700244 802384C4 8EA60018 */  lw        $a2, 0x18($s5)
/* 700248 802384C8 C6A00144 */  lwc1      $f0, 0x144($s5)
/* 70024C 802384CC 3C014100 */  lui       $at, 0x4100
/* 700250 802384D0 44811000 */  mtc1      $at, $f2
/* 700254 802384D4 3C014180 */  lui       $at, 0x4180
/* 700258 802384D8 44812000 */  mtc1      $at, $f4
/* 70025C 802384DC 46020000 */  add.s     $f0, $f0, $f2
/* 700260 802384E0 C6A20148 */  lwc1      $f2, 0x148($s5)
/* 700264 802384E4 8EA7001C */  lw        $a3, 0x1c($s5)
/* 700268 802384E8 46041080 */  add.s     $f2, $f2, $f4
/* 70026C 802384EC E6A0000C */  swc1      $f0, 0xc($s5)
/* 700270 802384F0 46000306 */  mov.s     $f12, $f0
/* 700274 802384F4 C6A0014C */  lwc1      $f0, 0x14c($s5)
/* 700278 802384F8 27B2002C */  addiu     $s2, $sp, 0x2c
/* 70027C 802384FC E6A20010 */  swc1      $f2, 0x10($s5)
/* 700280 80238500 46001386 */  mov.s     $f14, $f2
/* 700284 80238504 0C00A720 */  jal       atan2
/* 700288 80238508 E6A00014 */   swc1     $f0, 0x14($s5)
/* 70028C 8023850C E6A00054 */  swc1      $f0, 0x54($s5)
/* 700290 80238510 46000106 */  mov.s     $f4, $f0
/* 700294 80238514 3C0142E8 */  lui       $at, 0x42e8
/* 700298 80238518 44811000 */  mtc1      $at, $f2
/* 70029C 8023851C 27B00030 */  addiu     $s0, $sp, 0x30
/* 7002A0 80238520 E6A0005C */  swc1      $f0, 0x5c($s5)
/* 7002A4 80238524 E6A40024 */  swc1      $f4, 0x24($s5)
/* 7002A8 80238528 E6A20058 */  swc1      $f2, 0x58($s5)
.L8023852C:
/* 7002AC 8023852C C68C0018 */  lwc1      $f12, 0x18($s4)
/* 7002B0 80238530 46166301 */  sub.s     $f12, $f12, $f22
/* 7002B4 80238534 0C00A6C9 */  jal       clamp_angle
/* 7002B8 80238538 E68C0018 */   swc1     $f12, 0x18($s4)
/* 7002BC 8023853C 27A40020 */  addiu     $a0, $sp, 0x20
/* 7002C0 80238540 C6940008 */  lwc1      $f20, 8($s4)
/* 7002C4 80238544 8E86004C */  lw        $a2, 0x4c($s4)
/* 7002C8 80238548 44070000 */  mfc1      $a3, $f0
/* 7002CC 8023854C C6800000 */  lwc1      $f0, ($s4)
/* 7002D0 80238550 C6820004 */  lwc1      $f2, 4($s4)
/* 7002D4 80238554 27A50024 */  addiu     $a1, $sp, 0x24
/* 7002D8 80238558 E7A00020 */  swc1      $f0, 0x20($sp)
/* 7002DC 8023855C 0C00A7E7 */  jal       add_vec2D_polar
/* 7002E0 80238560 E7A20024 */   swc1     $f2, 0x24($sp)
/* 7002E4 80238564 3C048007 */  lui       $a0, %hi(gCurrentCameraID)
/* 7002E8 80238568 8C847410 */  lw        $a0, %lo(gCurrentCameraID)($a0)
/* 7002EC 8023856C 4407A000 */  mfc1      $a3, $f20
/* 7002F0 80238570 C7A00020 */  lwc1      $f0, 0x20($sp)
/* 7002F4 80238574 C7A20024 */  lwc1      $f2, 0x24($sp)
/* 7002F8 80238578 44050000 */  mfc1      $a1, $f0
/* 7002FC 8023857C 44061000 */  mfc1      $a2, $f2
/* 700300 80238580 AFB30010 */  sw        $s3, 0x10($sp)
/* 700304 80238584 AFB20014 */  sw        $s2, 0x14($sp)
/* 700308 80238588 0C00B94E */  jal       get_screen_coords
/* 70030C 8023858C AFB00018 */   sw       $s0, 0x18($sp)
/* 700310 80238590 8FA2002C */  lw        $v0, 0x2c($sp)
/* 700314 80238594 284200B5 */  slti      $v0, $v0, 0xb5
/* 700318 80238598 10400004 */  beqz      $v0, .L802385AC
/* 70031C 8023859C 26310001 */   addiu    $s1, $s1, 1
/* 700320 802385A0 2A22001E */  slti      $v0, $s1, 0x1e
/* 700324 802385A4 1440FFE1 */  bnez      $v0, .L8023852C
/* 700328 802385A8 00000000 */   nop
.L802385AC:
/* 70032C 802385AC 0000882D */  daddu     $s1, $zero, $zero
/* 700330 802385B0 27B30028 */  addiu     $s3, $sp, 0x28
/* 700334 802385B4 27B2002C */  addiu     $s2, $sp, 0x2c
/* 700338 802385B8 3C013F80 */  lui       $at, 0x3f80
/* 70033C 802385BC 4481B000 */  mtc1      $at, $f22
/* 700340 802385C0 C6800048 */  lwc1      $f0, 0x48($s4)
/* 700344 802385C4 27B00030 */  addiu     $s0, $sp, 0x30
/* 700348 802385C8 E680001C */  swc1      $f0, 0x1c($s4)
.L802385CC:
/* 70034C 802385CC C68C001C */  lwc1      $f12, 0x1c($s4)
/* 700350 802385D0 46166300 */  add.s     $f12, $f12, $f22
/* 700354 802385D4 0C00A6C9 */  jal       clamp_angle
/* 700358 802385D8 E68C001C */   swc1     $f12, 0x1c($s4)
/* 70035C 802385DC 27A40020 */  addiu     $a0, $sp, 0x20
/* 700360 802385E0 C6940008 */  lwc1      $f20, 8($s4)
/* 700364 802385E4 8E86004C */  lw        $a2, 0x4c($s4)
/* 700368 802385E8 44070000 */  mfc1      $a3, $f0
/* 70036C 802385EC C6800000 */  lwc1      $f0, ($s4)
/* 700370 802385F0 C6820004 */  lwc1      $f2, 4($s4)
/* 700374 802385F4 27A50024 */  addiu     $a1, $sp, 0x24
/* 700378 802385F8 E7A00020 */  swc1      $f0, 0x20($sp)
/* 70037C 802385FC 0C00A7E7 */  jal       add_vec2D_polar
/* 700380 80238600 E7A20024 */   swc1     $f2, 0x24($sp)
/* 700384 80238604 3C048007 */  lui       $a0, %hi(gCurrentCameraID)
/* 700388 80238608 8C847410 */  lw        $a0, %lo(gCurrentCameraID)($a0)
/* 70038C 8023860C 4407A000 */  mfc1      $a3, $f20
/* 700390 80238610 C7A00020 */  lwc1      $f0, 0x20($sp)
/* 700394 80238614 C7A20024 */  lwc1      $f2, 0x24($sp)
/* 700398 80238618 44050000 */  mfc1      $a1, $f0
/* 70039C 8023861C 44061000 */  mfc1      $a2, $f2
/* 7003A0 80238620 AFB30010 */  sw        $s3, 0x10($sp)
/* 7003A4 80238624 AFB20014 */  sw        $s2, 0x14($sp)
/* 7003A8 80238628 0C00B94E */  jal       get_screen_coords
/* 7003AC 8023862C AFB00018 */   sw       $s0, 0x18($sp)
/* 7003B0 80238630 8FA2002C */  lw        $v0, 0x2c($sp)
/* 7003B4 80238634 2842001E */  slti      $v0, $v0, 0x1e
/* 7003B8 80238638 14400004 */  bnez      $v0, .L8023864C
/* 7003BC 8023863C 26310001 */   addiu    $s1, $s1, 1
/* 7003C0 80238640 2A22001E */  slti      $v0, $s1, 0x1e
/* 7003C4 80238644 1440FFE1 */  bnez      $v0, .L802385CC
/* 7003C8 80238648 00000000 */   nop
.L8023864C:
/* 7003CC 8023864C C682001C */  lwc1      $f2, 0x1c($s4)
/* 7003D0 80238650 C6800018 */  lwc1      $f0, 0x18($s4)
/* 7003D4 80238654 46001081 */  sub.s     $f2, $f2, $f0
/* 7003D8 80238658 3C014000 */  lui       $at, 0x4000
/* 7003DC 8023865C 44810000 */  mtc1      $at, $f0
/* 7003E0 80238660 00000000 */  nop
/* 7003E4 80238664 46001081 */  sub.s     $f2, $f2, $f0
/* 7003E8 80238668 24020078 */  addiu     $v0, $zero, 0x78
/* 7003EC 8023866C 4600120D */  trunc.w.s $f8, $f2
/* 7003F0 80238670 44044000 */  mfc1      $a0, $f8
/* 7003F4 80238674 0C00A67F */  jal       rand_int
/* 7003F8 80238678 A6820064 */   sh       $v0, 0x64($s4)
/* 7003FC 8023867C 44822000 */  mtc1      $v0, $f4
/* 700400 80238680 00000000 */  nop
/* 700404 80238684 46802120 */  cvt.s.w   $f4, $f4
/* 700408 80238688 C6800018 */  lwc1      $f0, 0x18($s4)
/* 70040C 8023868C 3C014040 */  lui       $at, 0x4040
/* 700410 80238690 44811000 */  mtc1      $at, $f2
/* 700414 80238694 2402005A */  addiu     $v0, $zero, 0x5a
/* 700418 80238698 3C018024 */  lui       $at, %hi(D_8023BDB8)
/* 70041C 8023869C AC20BDB8 */  sw        $zero, %lo(D_8023BDB8)($at)
/* 700420 802386A0 46040000 */  add.s     $f0, $f0, $f4
/* 700424 802386A4 3C018024 */  lui       $at, %hi(D_8023BDBC)
/* 700428 802386A8 AC22BDBC */  sw        $v0, %lo(D_8023BDBC)($at)
/* 70042C 802386AC E6820044 */  swc1      $f2, 0x44($s4)
/* 700430 802386B0 E6800048 */  swc1      $f0, 0x48($s4)
/* 700434 802386B4 0C09A216 */  jal       func_80268858
/* 700438 802386B8 A2C00086 */   sb       $zero, 0x86($s6)
/* 70043C 802386BC 0C09A446 */  jal       func_80269118
/* 700440 802386C0 00000000 */   nop
/* 700444 802386C4 24020001 */  addiu     $v0, $zero, 1
/* 700448 802386C8 0808E26B */  j         .L802389AC
/* 70044C 802386CC AEE20070 */   sw       $v0, 0x70($s7)
.L802386D0:
/* 700450 802386D0 8082005E */  lb        $v0, 0x5e($a0)
/* 700454 802386D4 14400005 */  bnez      $v0, .L802386EC
/* 700458 802386D8 3C030004 */   lui      $v1, 4
/* 70045C 802386DC 8EC20210 */  lw        $v0, 0x210($s6)
/* 700460 802386E0 00431024 */  and       $v0, $v0, $v1
/* 700464 802386E4 10400003 */  beqz      $v0, .L802386F4
/* 700468 802386E8 00000000 */   nop
.L802386EC:
/* 70046C 802386EC 3C018024 */  lui       $at, %hi(D_8023BDBC)
/* 700470 802386F0 AC20BDBC */  sw        $zero, %lo(D_8023BDBC)($at)
.L802386F4:
/* 700474 802386F4 3C038024 */  lui       $v1, %hi(D_8023BDBC)
/* 700478 802386F8 2463BDBC */  addiu     $v1, $v1, %lo(D_8023BDBC)
/* 70047C 802386FC 8C620000 */  lw        $v0, ($v1)
/* 700480 80238700 1040000D */  beqz      $v0, .L80238738
/* 700484 80238704 2442FFFF */   addiu    $v0, $v0, -1
/* 700488 80238708 144000A8 */  bnez      $v0, .L802389AC
/* 70048C 8023870C AC620000 */   sw       $v0, ($v1)
/* 700490 80238710 0C00A67F */  jal       rand_int
/* 700494 80238714 24040064 */   addiu    $a0, $zero, 0x64
/* 700498 80238718 28420032 */  slti      $v0, $v0, 0x32
/* 70049C 8023871C 10400004 */  beqz      $v0, .L80238730
/* 7004A0 80238720 00000000 */   nop
/* 7004A4 80238724 C6800018 */  lwc1      $f0, 0x18($s4)
/* 7004A8 80238728 0808E1CE */  j         .L80238738
/* 7004AC 8023872C E6800048 */   swc1     $f0, 0x48($s4)
.L80238730:
/* 7004B0 80238730 C680001C */  lwc1      $f0, 0x1c($s4)
/* 7004B4 80238734 E6800048 */  swc1      $f0, 0x48($s4)
.L80238738:
/* 7004B8 80238738 0C05272D */  jal       sfx_play_sound
/* 7004BC 8023873C 24040311 */   addiu    $a0, $zero, 0x311
/* 7004C0 80238740 2402003C */  addiu     $v0, $zero, 0x3c
/* 7004C4 80238744 3C018024 */  lui       $at, %hi(D_8023BDBC)
/* 7004C8 80238748 AC22BDBC */  sw        $v0, %lo(D_8023BDBC)($at)
/* 7004CC 8023874C 24020002 */  addiu     $v0, $zero, 2
/* 7004D0 80238750 0808E26B */  j         .L802389AC
/* 7004D4 80238754 AEE20070 */   sw       $v0, 0x70($s7)
.L80238758:
/* 7004D8 80238758 8082005E */  lb        $v0, 0x5e($a0)
/* 7004DC 8023875C 14400007 */  bnez      $v0, .L8023877C
/* 7004E0 80238760 3C030004 */   lui      $v1, 4
/* 7004E4 80238764 8EC20210 */  lw        $v0, 0x210($s6)
/* 7004E8 80238768 00431024 */  and       $v0, $v0, $v1
/* 7004EC 8023876C 1440001F */  bnez      $v0, .L802387EC
/* 7004F0 80238770 24020003 */   addiu    $v0, $zero, 3
/* 7004F4 80238774 0808E26B */  j         .L802389AC
/* 7004F8 80238778 AEE20070 */   sw       $v0, 0x70($s7)
.L8023877C:
/* 7004FC 8023877C 3C038024 */  lui       $v1, %hi(D_8023BDBC)
/* 700500 80238780 2463BDBC */  addiu     $v1, $v1, %lo(D_8023BDBC)
/* 700504 80238784 8C620000 */  lw        $v0, ($v1)
/* 700508 80238788 14400017 */  bnez      $v0, .L802387E8
/* 70050C 8023878C 2442FFFF */   addiu    $v0, $v0, -1
/* 700510 80238790 86A40428 */  lh        $a0, 0x428($s5)
/* 700514 80238794 0C09A75B */  jal       get_actor
/* 700518 80238798 00000000 */   nop
/* 70051C 8023879C C6AC0054 */  lwc1      $f12, 0x54($s5)
/* 700520 802387A0 C6AE005C */  lwc1      $f14, 0x5c($s5)
/* 700524 802387A4 0C00A70A */  jal       get_clamped_angle_diff
/* 700528 802387A8 0040802D */   daddu    $s0, $v0, $zero
/* 70052C 802387AC 46000005 */  abs.s     $f0, $f0
/* 700530 802387B0 C6A20030 */  lwc1      $f2, 0x30($s5)
/* 700534 802387B4 C6040188 */  lwc1      $f4, 0x188($s0)
/* 700538 802387B8 46020003 */  div.s     $f0, $f0, $f2
/* 70053C 802387BC 46040082 */  mul.s     $f2, $f0, $f4
/* 700540 802387C0 00000000 */  nop
/* 700544 802387C4 3C014040 */  lui       $at, 0x4040
/* 700548 802387C8 44810000 */  mtc1      $at, $f0
/* 70054C 802387CC 00000000 */  nop
/* 700550 802387D0 4600103C */  c.lt.s    $f2, $f0
/* 700554 802387D4 00000000 */  nop
/* 700558 802387D8 45000004 */  bc1f      .L802387EC
/* 70055C 802387DC 24020003 */   addiu    $v0, $zero, 3
/* 700560 802387E0 0808E26B */  j         .L802389AC
/* 700564 802387E4 AEE20070 */   sw       $v0, 0x70($s7)
.L802387E8:
/* 700568 802387E8 AC620000 */  sw        $v0, ($v1)
.L802387EC:
/* 70056C 802387EC C6800048 */  lwc1      $f0, 0x48($s4)
/* 700570 802387F0 C6820044 */  lwc1      $f2, 0x44($s4)
/* 700574 802387F4 46020000 */  add.s     $f0, $f0, $f2
/* 700578 802387F8 C6840018 */  lwc1      $f4, 0x18($s4)
/* 70057C 802387FC 4604003E */  c.le.s    $f0, $f4
/* 700580 80238800 00000000 */  nop
/* 700584 80238804 45000006 */  bc1f      .L80238820
/* 700588 80238808 E6800048 */   swc1     $f0, 0x48($s4)
/* 70058C 8023880C 44800000 */  mtc1      $zero, $f0
/* 700590 80238810 00000000 */  nop
/* 700594 80238814 46020001 */  sub.s     $f0, $f0, $f2
/* 700598 80238818 E6840048 */  swc1      $f4, 0x48($s4)
/* 70059C 8023881C E6800044 */  swc1      $f0, 0x44($s4)
.L80238820:
/* 7005A0 80238820 C6800048 */  lwc1      $f0, 0x48($s4)
/* 7005A4 80238824 C684001C */  lwc1      $f4, 0x1c($s4)
/* 7005A8 80238828 4600203E */  c.le.s    $f4, $f0
/* 7005AC 8023882C 00000000 */  nop
/* 7005B0 80238830 4500005E */  bc1f      .L802389AC
/* 7005B4 80238834 00000000 */   nop
/* 7005B8 80238838 C6820044 */  lwc1      $f2, 0x44($s4)
/* 7005BC 8023883C 44800000 */  mtc1      $zero, $f0
/* 7005C0 80238840 00000000 */  nop
/* 7005C4 80238844 46020001 */  sub.s     $f0, $f0, $f2
/* 7005C8 80238848 E6840048 */  swc1      $f4, 0x48($s4)
/* 7005CC 8023884C 0808E26B */  j         .L802389AC
/* 7005D0 80238850 E6800044 */   swc1     $f0, 0x44($s4)
.L80238854:
/* 7005D4 80238854 86A40428 */  lh        $a0, 0x428($s5)
/* 7005D8 80238858 0C09A75B */  jal       get_actor
/* 7005DC 8023885C 00000000 */   nop
/* 7005E0 80238860 C6AC0054 */  lwc1      $f12, 0x54($s5)
/* 7005E4 80238864 C6AE005C */  lwc1      $f14, 0x5c($s5)
/* 7005E8 80238868 0C00A70A */  jal       get_clamped_angle_diff
/* 7005EC 8023886C 0040802D */   daddu    $s0, $v0, $zero
/* 7005F0 80238870 46000186 */  mov.s     $f6, $f0
/* 7005F4 80238874 46003005 */  abs.s     $f0, $f6
/* 7005F8 80238878 C6A20030 */  lwc1      $f2, 0x30($s5)
/* 7005FC 8023887C C6040188 */  lwc1      $f4, 0x188($s0)
/* 700600 80238880 46020003 */  div.s     $f0, $f0, $f2
/* 700604 80238884 46040082 */  mul.s     $f2, $f0, $f4
/* 700608 80238888 00000000 */  nop
/* 70060C 8023888C C6A00050 */  lwc1      $f0, 0x50($s5)
/* 700610 80238890 44802000 */  mtc1      $zero, $f4
/* 700614 80238894 00000000 */  nop
/* 700618 80238898 4600203E */  c.le.s    $f4, $f0
/* 70061C 8023889C 00000000 */  nop
/* 700620 802388A0 45000007 */  bc1f      .L802388C0
/* 700624 802388A4 00000000 */   nop
/* 700628 802388A8 4604303C */  c.lt.s    $f6, $f4
/* 70062C 802388AC 00000000 */  nop
/* 700630 802388B0 4503000A */  bc1tl     .L802388DC
/* 700634 802388B4 A2C00086 */   sb       $zero, 0x86($s6)
/* 700638 802388B8 0808E234 */  j         .L802388D0
/* 70063C 802388BC 2402FFFF */   addiu    $v0, $zero, -1
.L802388C0:
/* 700640 802388C0 4604303C */  c.lt.s    $f6, $f4
/* 700644 802388C4 00000000 */  nop
/* 700648 802388C8 45000003 */  bc1f      .L802388D8
/* 70064C 802388CC 2402FFFF */   addiu    $v0, $zero, -1
.L802388D0:
/* 700650 802388D0 0808E237 */  j         .L802388DC
/* 700654 802388D4 A2C20086 */   sb       $v0, 0x86($s6)
.L802388D8:
/* 700658 802388D8 A2C00086 */  sb        $zero, 0x86($s6)
.L802388DC:
/* 70065C 802388DC 3C0140E0 */  lui       $at, 0x40e0
/* 700660 802388E0 44810000 */  mtc1      $at, $f0
/* 700664 802388E4 00000000 */  nop
/* 700668 802388E8 4600103C */  c.lt.s    $f2, $f0
/* 70066C 802388EC 00000000 */  nop
/* 700670 802388F0 45000007 */  bc1f      .L80238910
/* 700674 802388F4 A2C00084 */   sb       $zero, 0x84($s6)
/* 700678 802388F8 24020001 */  addiu     $v0, $zero, 1
/* 70067C 802388FC A2C20084 */  sb        $v0, 0x84($s6)
/* 700680 80238900 0C09A458 */  jal       func_80269160
/* 700684 80238904 A2C20086 */   sb       $v0, 0x86($s6)
/* 700688 80238908 0808E24C */  j         .L80238930
/* 70068C 8023890C 0000882D */   daddu    $s1, $zero, $zero
.L80238910:
/* 700690 80238910 C6820048 */  lwc1      $f2, 0x48($s4)
/* 700694 80238914 C6800050 */  lwc1      $f0, 0x50($s4)
/* 700698 80238918 4600103C */  c.lt.s    $f2, $f0
/* 70069C 8023891C 00000000 */  nop
/* 7006A0 80238920 45000002 */  bc1f      .L8023892C
/* 7006A4 80238924 2402FFFF */   addiu    $v0, $zero, -1
/* 7006A8 80238928 A2C20084 */  sb        $v0, 0x84($s6)
.L8023892C:
/* 7006AC 8023892C 0000882D */  daddu     $s1, $zero, $zero
.L80238930:
/* 7006B0 80238930 3C108024 */  lui       $s0, %hi(D_8023BD78)
/* 7006B4 80238934 2610BD78 */  addiu     $s0, $s0, %lo(D_8023BD78)
.L80238938:
/* 7006B8 80238938 8E040000 */  lw        $a0, ($s0)
/* 7006BC 8023893C 26100004 */  addiu     $s0, $s0, 4
/* 7006C0 80238940 0C05123D */  jal       hud_element_free
/* 7006C4 80238944 26310001 */   addiu    $s1, $s1, 1
/* 7006C8 80238948 2A220007 */  slti      $v0, $s1, 7
/* 7006CC 8023894C 1440FFFA */  bnez      $v0, .L80238938
/* 7006D0 80238950 00000000 */   nop
/* 7006D4 80238954 0000882D */  daddu     $s1, $zero, $zero
/* 7006D8 80238958 3C108024 */  lui       $s0, %hi(D_8023BD98)
/* 7006DC 8023895C 2610BD98 */  addiu     $s0, $s0, %lo(D_8023BD98)
.L80238960:
/* 7006E0 80238960 8E040000 */  lw        $a0, ($s0)
/* 7006E4 80238964 26100004 */  addiu     $s0, $s0, 4
/* 7006E8 80238968 0C05123D */  jal       hud_element_free
/* 7006EC 8023896C 26310001 */   addiu    $s1, $s1, 1
/* 7006F0 80238970 2A220006 */  slti      $v0, $s1, 6
/* 7006F4 80238974 1440FFFA */  bnez      $v0, .L80238960
/* 7006F8 80238978 00000000 */   nop
/* 7006FC 8023897C 3C048024 */  lui       $a0, %hi(D_8023BDB4)
/* 700700 80238980 8C84BDB4 */  lw        $a0, %lo(D_8023BDB4)($a0)
/* 700704 80238984 0C05123D */  jal       hud_element_free
/* 700708 80238988 00000000 */   nop
/* 70070C 8023898C 3C048024 */  lui       $a0, %hi(D_8023BDC0)
/* 700710 80238990 8C84BDC0 */  lw        $a0, %lo(D_8023BDC0)($a0)
/* 700714 80238994 0C05123D */  jal       hud_element_free
/* 700718 80238998 00000000 */   nop
/* 70071C 8023899C 0C093EB1 */  jal       btl_set_popup_duration
/* 700720 802389A0 0000202D */   daddu    $a0, $zero, $zero
/* 700724 802389A4 0808E314 */  j         .L80238C50
/* 700728 802389A8 24020002 */   addiu    $v0, $zero, 2
.L802389AC:
/* 70072C 802389AC 8EE30070 */  lw        $v1, 0x70($s7)
/* 700730 802389B0 28620003 */  slti      $v0, $v1, 3
.L802389B4:
/* 700734 802389B4 50400030 */  beql      $v0, $zero, .L80238A78
/* 700738 802389B8 27B50028 */   addiu    $s5, $sp, 0x28
/* 70073C 802389BC 5860002E */  blezl     $v1, .L80238A78
/* 700740 802389C0 27B50028 */   addiu    $s5, $sp, 0x28
/* 700744 802389C4 86A40428 */  lh        $a0, 0x428($s5)
/* 700748 802389C8 3C138024 */  lui       $s3, %hi(D_8023BDC0)
/* 70074C 802389CC 8E73BDC0 */  lw        $s3, %lo(D_8023BDC0)($s3)
/* 700750 802389D0 0C09A75B */  jal       get_actor
/* 700754 802389D4 00000000 */   nop
/* 700758 802389D8 C68C0048 */  lwc1      $f12, 0x48($s4)
/* 70075C 802389DC C68E0050 */  lwc1      $f14, 0x50($s4)
/* 700760 802389E0 0C00A70A */  jal       get_clamped_angle_diff
/* 700764 802389E4 0040802D */   daddu    $s0, $v0, $zero
/* 700768 802389E8 46000005 */  abs.s     $f0, $f0
/* 70076C 802389EC C6820024 */  lwc1      $f2, 0x24($s4)
/* 700770 802389F0 C6040188 */  lwc1      $f4, 0x188($s0)
/* 700774 802389F4 46020003 */  div.s     $f0, $f0, $f2
/* 700778 802389F8 46040082 */  mul.s     $f2, $f0, $f4
/* 70077C 802389FC 00000000 */  nop
/* 700780 80238A00 3C0140E0 */  lui       $at, 0x40e0
/* 700784 80238A04 44810000 */  mtc1      $at, $f0
/* 700788 80238A08 00000000 */  nop
/* 70078C 80238A0C 4600103C */  c.lt.s    $f2, $f0
/* 700790 80238A10 00000000 */  nop
/* 700794 80238A14 45000005 */  bc1f      .L80238A2C
/* 700798 80238A18 0260202D */   daddu    $a0, $s3, $zero
/* 70079C 80238A1C 3C058011 */  lui       $a1, %hi(HudScript_StickNeutral)
/* 7007A0 80238A20 24A58E1C */  addiu     $a1, $a1, %lo(HudScript_StickNeutral)
/* 7007A4 80238A24 0808E28D */  j         .L80238A34
/* 7007A8 80238A28 00000000 */   nop
.L80238A2C:
/* 7007AC 80238A2C 3C058011 */  lui       $a1, %hi(HudScript_StickHoldLeft)
/* 7007B0 80238A30 24A58E48 */  addiu     $a1, $a1, %lo(HudScript_StickHoldLeft)
.L80238A34:
/* 7007B4 80238A34 0C0511FF */  jal       hud_element_set_script
/* 7007B8 80238A38 00000000 */   nop
/* 7007BC 80238A3C 3C058024 */  lui       $a1, %hi(D_8023BDC4)
/* 7007C0 80238A40 24A5BDC4 */  addiu     $a1, $a1, %lo(D_8023BDC4)
/* 7007C4 80238A44 8CA20000 */  lw        $v0, ($a1)
/* 7007C8 80238A48 24420014 */  addiu     $v0, $v0, 0x14
/* 7007CC 80238A4C ACA20000 */  sw        $v0, ($a1)
/* 7007D0 80238A50 28420033 */  slti      $v0, $v0, 0x33
/* 7007D4 80238A54 14400002 */  bnez      $v0, .L80238A60
/* 7007D8 80238A58 24020032 */   addiu    $v0, $zero, 0x32
/* 7007DC 80238A5C ACA20000 */  sw        $v0, ($a1)
.L80238A60:
/* 7007E0 80238A60 8CA50000 */  lw        $a1, ($a1)
/* 7007E4 80238A64 3C068024 */  lui       $a2, %hi(D_8023BDC8)
/* 7007E8 80238A68 8CC6BDC8 */  lw        $a2, %lo(D_8023BDC8)($a2)
/* 7007EC 80238A6C 0C051261 */  jal       hud_element_set_render_pos
/* 7007F0 80238A70 0260202D */   daddu    $a0, $s3, $zero
/* 7007F4 80238A74 27B50028 */  addiu     $s5, $sp, 0x28
.L80238A78:
/* 7007F8 80238A78 27B2002C */  addiu     $s2, $sp, 0x2c
/* 7007FC 80238A7C 3C048007 */  lui       $a0, %hi(gCurrentCameraID)
/* 700800 80238A80 8C847410 */  lw        $a0, %lo(gCurrentCameraID)($a0)
/* 700804 80238A84 27A20030 */  addiu     $v0, $sp, 0x30
/* 700808 80238A88 AFB50010 */  sw        $s5, 0x10($sp)
/* 70080C 80238A8C AFB20014 */  sw        $s2, 0x14($sp)
/* 700810 80238A90 AFA20018 */  sw        $v0, 0x18($sp)
/* 700814 80238A94 8E85000C */  lw        $a1, 0xc($s4)
/* 700818 80238A98 8E860010 */  lw        $a2, 0x10($s4)
/* 70081C 80238A9C 0C00B94E */  jal       get_screen_coords
/* 700820 80238AA0 8E870014 */   lw       $a3, 0x14($s4)
/* 700824 80238AA4 3C138024 */  lui       $s3, %hi(D_8023BDB4)
/* 700828 80238AA8 8E73BDB4 */  lw        $s3, %lo(D_8023BDB4)($s3)
/* 70082C 80238AAC 8FA50028 */  lw        $a1, 0x28($sp)
/* 700830 80238AB0 8FA6002C */  lw        $a2, 0x2c($sp)
/* 700834 80238AB4 0C051261 */  jal       hud_element_set_render_pos
/* 700838 80238AB8 0260202D */   daddu    $a0, $s3, $zero
/* 70083C 80238ABC 0260202D */  daddu     $a0, $s3, $zero
/* 700840 80238AC0 3C108024 */  lui       $s0, %hi(D_8023BDB8)
/* 700844 80238AC4 2610BDB8 */  addiu     $s0, $s0, %lo(D_8023BDB8)
/* 700848 80238AC8 44800000 */  mtc1      $zero, $f0
/* 70084C 80238ACC C6080000 */  lwc1      $f8, ($s0)
/* 700850 80238AD0 46804220 */  cvt.s.w   $f8, $f8
/* 700854 80238AD4 44050000 */  mfc1      $a1, $f0
/* 700858 80238AD8 44074000 */  mfc1      $a3, $f8
/* 70085C 80238ADC 0C051489 */  jal       hud_element_set_transform_rotation
/* 700860 80238AE0 00A0302D */   daddu    $a2, $a1, $zero
/* 700864 80238AE4 8E020000 */  lw        $v0, ($s0)
/* 700868 80238AE8 2442FFF6 */  addiu     $v0, $v0, -0xa
/* 70086C 80238AEC 44826000 */  mtc1      $v0, $f12
/* 700870 80238AF0 00000000 */  nop
/* 700874 80238AF4 46806320 */  cvt.s.w   $f12, $f12
/* 700878 80238AF8 0C00A6C9 */  jal       clamp_angle
/* 70087C 80238AFC AE020000 */   sw       $v0, ($s0)
/* 700880 80238B00 8EE40070 */  lw        $a0, 0x70($s7)
/* 700884 80238B04 4600020D */  trunc.w.s $f8, $f0
/* 700888 80238B08 E6080000 */  swc1      $f8, ($s0)
/* 70088C 80238B0C 28820002 */  slti      $v0, $a0, 2
/* 700890 80238B10 1440004F */  bnez      $v0, .L80238C50
/* 700894 80238B14 0000102D */   daddu    $v0, $zero, $zero
/* 700898 80238B18 28820003 */  slti      $v0, $a0, 3
/* 70089C 80238B1C 1040004B */  beqz      $v0, .L80238C4C
/* 7008A0 80238B20 0000882D */   daddu    $s1, $zero, $zero
/* 7008A4 80238B24 C68C0048 */  lwc1      $f12, 0x48($s4)
/* 7008A8 80238B28 3C0140C0 */  lui       $at, 0x40c0
/* 7008AC 80238B2C 4481B000 */  mtc1      $at, $f22
/* 7008B0 80238B30 0C00A6C9 */  jal       clamp_angle
/* 7008B4 80238B34 0240982D */   daddu    $s3, $s2, $zero
/* 7008B8 80238B38 27A40034 */  addiu     $a0, $sp, 0x34
/* 7008BC 80238B3C 8E86004C */  lw        $a2, 0x4c($s4)
/* 7008C0 80238B40 44070000 */  mfc1      $a3, $f0
/* 7008C4 80238B44 C6800000 */  lwc1      $f0, ($s4)
/* 7008C8 80238B48 C6820004 */  lwc1      $f2, 4($s4)
/* 7008CC 80238B4C E7A00034 */  swc1      $f0, 0x34($sp)
/* 7008D0 80238B50 E7A20038 */  swc1      $f2, 0x38($sp)
/* 7008D4 80238B54 C6980008 */  lwc1      $f24, 8($s4)
/* 7008D8 80238B58 0C00A7E7 */  jal       add_vec2D_polar
/* 7008DC 80238B5C 27A50038 */   addiu    $a1, $sp, 0x38
/* 7008E0 80238B60 C6940008 */  lwc1      $f20, 8($s4)
/* 7008E4 80238B64 C6800000 */  lwc1      $f0, ($s4)
/* 7008E8 80238B68 C6820004 */  lwc1      $f2, 4($s4)
/* 7008EC 80238B6C 3C128024 */  lui       $s2, %hi(D_8023BD78)
/* 7008F0 80238B70 2652BD78 */  addiu     $s2, $s2, %lo(D_8023BD78)
/* 7008F4 80238B74 E7A00020 */  swc1      $f0, 0x20($sp)
/* 7008F8 80238B78 E7A20024 */  swc1      $f2, 0x24($sp)
.L80238B7C:
/* 7008FC 80238B7C C7A20034 */  lwc1      $f2, 0x34($sp)
/* 700900 80238B80 C6800000 */  lwc1      $f0, ($s4)
/* 700904 80238B84 46001081 */  sub.s     $f2, $f2, $f0
/* 700908 80238B88 C7A60020 */  lwc1      $f6, 0x20($sp)
/* 70090C 80238B8C C6800004 */  lwc1      $f0, 4($s4)
/* 700910 80238B90 46161083 */  div.s     $f2, $f2, $f22
/* 700914 80238B94 46023180 */  add.s     $f6, $f6, $f2
/* 700918 80238B98 C7A20038 */  lwc1      $f2, 0x38($sp)
/* 70091C 80238B9C 46001081 */  sub.s     $f2, $f2, $f0
/* 700920 80238BA0 C6800008 */  lwc1      $f0, 8($s4)
/* 700924 80238BA4 4600C001 */  sub.s     $f0, $f24, $f0
/* 700928 80238BA8 C7A40024 */  lwc1      $f4, 0x24($sp)
/* 70092C 80238BAC 46161083 */  div.s     $f2, $f2, $f22
/* 700930 80238BB0 46022100 */  add.s     $f4, $f4, $f2
/* 700934 80238BB4 3C048007 */  lui       $a0, %hi(gCurrentCameraID)
/* 700938 80238BB8 8C847410 */  lw        $a0, %lo(gCurrentCameraID)($a0)
/* 70093C 80238BBC 46160003 */  div.s     $f0, $f0, $f22
/* 700940 80238BC0 4600A500 */  add.s     $f20, $f20, $f0
/* 700944 80238BC4 44053000 */  mfc1      $a1, $f6
/* 700948 80238BC8 44062000 */  mfc1      $a2, $f4
/* 70094C 80238BCC 4407A000 */  mfc1      $a3, $f20
/* 700950 80238BD0 27A20030 */  addiu     $v0, $sp, 0x30
/* 700954 80238BD4 AFA50020 */  sw        $a1, 0x20($sp)
/* 700958 80238BD8 AFA60024 */  sw        $a2, 0x24($sp)
/* 70095C 80238BDC AFB50010 */  sw        $s5, 0x10($sp)
/* 700960 80238BE0 AFB30014 */  sw        $s3, 0x14($sp)
/* 700964 80238BE4 0C00B94E */  jal       get_screen_coords
/* 700968 80238BE8 AFA20018 */   sw       $v0, 0x18($sp)
/* 70096C 80238BEC 00118080 */  sll       $s0, $s1, 2
/* 700970 80238BF0 8E440000 */  lw        $a0, ($s2)
/* 700974 80238BF4 8FA50028 */  lw        $a1, 0x28($sp)
/* 700978 80238BF8 8FA6002C */  lw        $a2, 0x2c($sp)
/* 70097C 80238BFC 0C051261 */  jal       hud_element_set_render_pos
/* 700980 80238C00 26310001 */   addiu    $s1, $s1, 1
/* 700984 80238C04 3C048024 */  lui       $a0, %hi(D_8023BD98)
/* 700988 80238C08 00902021 */  addu      $a0, $a0, $s0
/* 70098C 80238C0C 8C84BD98 */  lw        $a0, %lo(D_8023BD98)($a0)
/* 700990 80238C10 8FA50028 */  lw        $a1, 0x28($sp)
/* 700994 80238C14 8FA6002C */  lw        $a2, 0x2c($sp)
/* 700998 80238C18 0C051261 */  jal       hud_element_set_render_pos
/* 70099C 80238C1C 26520004 */   addiu    $s2, $s2, 4
/* 7009A0 80238C20 2A220006 */  slti      $v0, $s1, 6
/* 7009A4 80238C24 1440FFD5 */  bnez      $v0, .L80238B7C
/* 7009A8 80238C28 00111080 */   sll      $v0, $s1, 2
/* 7009AC 80238C2C 3C048024 */  lui       $a0, %hi(D_8023BD78)
/* 7009B0 80238C30 00822021 */  addu      $a0, $a0, $v0
/* 7009B4 80238C34 8C84BD78 */  lw        $a0, %lo(D_8023BD78)($a0)
/* 7009B8 80238C38 8FA50028 */  lw        $a1, 0x28($sp)
/* 7009BC 80238C3C 0C051261 */  jal       hud_element_set_render_pos
/* 7009C0 80238C40 8FA6002C */   lw       $a2, 0x2c($sp)
/* 7009C4 80238C44 0C093EB1 */  jal       btl_set_popup_duration
/* 7009C8 80238C48 24040063 */   addiu    $a0, $zero, 0x63
.L80238C4C:
/* 7009CC 80238C4C 0000102D */  daddu     $v0, $zero, $zero
.L80238C50:
/* 7009D0 80238C50 8FBF0060 */  lw        $ra, 0x60($sp)
/* 7009D4 80238C54 8FB7005C */  lw        $s7, 0x5c($sp)
/* 7009D8 80238C58 8FB60058 */  lw        $s6, 0x58($sp)
/* 7009DC 80238C5C 8FB50054 */  lw        $s5, 0x54($sp)
/* 7009E0 80238C60 8FB40050 */  lw        $s4, 0x50($sp)
/* 7009E4 80238C64 8FB3004C */  lw        $s3, 0x4c($sp)
/* 7009E8 80238C68 8FB20048 */  lw        $s2, 0x48($sp)
/* 7009EC 80238C6C 8FB10044 */  lw        $s1, 0x44($sp)
/* 7009F0 80238C70 8FB00040 */  lw        $s0, 0x40($sp)
/* 7009F4 80238C74 D7B80078 */  ldc1      $f24, 0x78($sp)
/* 7009F8 80238C78 D7B60070 */  ldc1      $f22, 0x70($sp)
/* 7009FC 80238C7C D7B40068 */  ldc1      $f20, 0x68($sp)
/* 700A00 80238C80 03E00008 */  jr        $ra
/* 700A04 80238C84 27BD0080 */   addiu    $sp, $sp, 0x80
