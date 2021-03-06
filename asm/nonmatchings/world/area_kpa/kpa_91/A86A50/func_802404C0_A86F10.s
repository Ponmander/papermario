.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802404C0_A86F10
/* A86F10 802404C0 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* A86F14 802404C4 AFB40040 */  sw        $s4, 0x40($sp)
/* A86F18 802404C8 0080A02D */  daddu     $s4, $a0, $zero
/* A86F1C 802404CC AFBF0044 */  sw        $ra, 0x44($sp)
/* A86F20 802404D0 AFB3003C */  sw        $s3, 0x3c($sp)
/* A86F24 802404D4 AFB20038 */  sw        $s2, 0x38($sp)
/* A86F28 802404D8 AFB10034 */  sw        $s1, 0x34($sp)
/* A86F2C 802404DC AFB00030 */  sw        $s0, 0x30($sp)
/* A86F30 802404E0 8E910148 */  lw        $s1, 0x148($s4)
/* A86F34 802404E4 00A0902D */  daddu     $s2, $a1, $zero
/* A86F38 802404E8 86240008 */  lh        $a0, 8($s1)
/* A86F3C 802404EC 0C00EABB */  jal       get_npc_unsafe
/* A86F40 802404F0 00C0982D */   daddu    $s3, $a2, $zero
/* A86F44 802404F4 8E430014 */  lw        $v1, 0x14($s2)
/* A86F48 802404F8 04600031 */  bltz      $v1, .L802405C0
/* A86F4C 802404FC 0040802D */   daddu    $s0, $v0, $zero
/* A86F50 80240500 0260202D */  daddu     $a0, $s3, $zero
/* A86F54 80240504 AFA00010 */  sw        $zero, 0x10($sp)
/* A86F58 80240508 8E460024 */  lw        $a2, 0x24($s2)
/* A86F5C 8024050C 8E470028 */  lw        $a3, 0x28($s2)
/* A86F60 80240510 0C01242D */  jal       func_800490B4
/* A86F64 80240514 0220282D */   daddu    $a1, $s1, $zero
/* A86F68 80240518 10400029 */  beqz      $v0, .L802405C0
/* A86F6C 8024051C 0000202D */   daddu    $a0, $zero, $zero
/* A86F70 80240520 0200282D */  daddu     $a1, $s0, $zero
/* A86F74 80240524 0000302D */  daddu     $a2, $zero, $zero
/* A86F78 80240528 860300A8 */  lh        $v1, 0xa8($s0)
/* A86F7C 8024052C 3C013F80 */  lui       $at, 0x3f80
/* A86F80 80240530 44810000 */  mtc1      $at, $f0
/* A86F84 80240534 3C014000 */  lui       $at, 0x4000
/* A86F88 80240538 44811000 */  mtc1      $at, $f2
/* A86F8C 8024053C 3C01C1A0 */  lui       $at, 0xc1a0
/* A86F90 80240540 44812000 */  mtc1      $at, $f4
/* A86F94 80240544 2402000F */  addiu     $v0, $zero, 0xf
/* A86F98 80240548 AFA2001C */  sw        $v0, 0x1c($sp)
/* A86F9C 8024054C 44833000 */  mtc1      $v1, $f6
/* A86FA0 80240550 00000000 */  nop
/* A86FA4 80240554 468031A0 */  cvt.s.w   $f6, $f6
/* A86FA8 80240558 44073000 */  mfc1      $a3, $f6
/* A86FAC 8024055C 27A20028 */  addiu     $v0, $sp, 0x28
/* A86FB0 80240560 AFA20020 */  sw        $v0, 0x20($sp)
/* A86FB4 80240564 E7A00010 */  swc1      $f0, 0x10($sp)
/* A86FB8 80240568 E7A20014 */  swc1      $f2, 0x14($sp)
/* A86FBC 8024056C 0C01BFA4 */  jal       fx_emote
/* A86FC0 80240570 E7A40018 */   swc1     $f4, 0x18($sp)
/* A86FC4 80240574 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* A86FC8 80240578 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* A86FCC 8024057C C60C0038 */  lwc1      $f12, 0x38($s0)
/* A86FD0 80240580 C60E0040 */  lwc1      $f14, 0x40($s0)
/* A86FD4 80240584 8C460028 */  lw        $a2, 0x28($v0)
/* A86FD8 80240588 0C00A720 */  jal       atan2
/* A86FDC 8024058C 8C470030 */   lw       $a3, 0x30($v0)
/* A86FE0 80240590 0200202D */  daddu     $a0, $s0, $zero
/* A86FE4 80240594 240502F4 */  addiu     $a1, $zero, 0x2f4
/* A86FE8 80240598 3C060020 */  lui       $a2, 0x20
/* A86FEC 8024059C 0C012530 */  jal       func_800494C0
/* A86FF0 802405A0 E480000C */   swc1     $f0, 0xc($a0)
/* A86FF4 802405A4 8E220018 */  lw        $v0, 0x18($s1)
/* A86FF8 802405A8 9442002A */  lhu       $v0, 0x2a($v0)
/* A86FFC 802405AC 30420001 */  andi      $v0, $v0, 1
/* A87000 802405B0 14400029 */  bnez      $v0, .L80240658
/* A87004 802405B4 2402000A */   addiu    $v0, $zero, 0xa
/* A87008 802405B8 08090196 */  j         .L80240658
/* A8700C 802405BC 2402000C */   addiu    $v0, $zero, 0xc
.L802405C0:
/* A87010 802405C0 8602008C */  lh        $v0, 0x8c($s0)
/* A87014 802405C4 14400025 */  bnez      $v0, .L8024065C
/* A87018 802405C8 00000000 */   nop
/* A8701C 802405CC 9602008E */  lhu       $v0, 0x8e($s0)
/* A87020 802405D0 2442FFFF */  addiu     $v0, $v0, -1
/* A87024 802405D4 A602008E */  sh        $v0, 0x8e($s0)
/* A87028 802405D8 00021400 */  sll       $v0, $v0, 0x10
/* A8702C 802405DC 1440001F */  bnez      $v0, .L8024065C
/* A87030 802405E0 00000000 */   nop
/* A87034 802405E4 8E820074 */  lw        $v0, 0x74($s4)
/* A87038 802405E8 2442FFFF */  addiu     $v0, $v0, -1
/* A8703C 802405EC 10400019 */  beqz      $v0, .L80240654
/* A87040 802405F0 AE820074 */   sw       $v0, 0x74($s4)
/* A87044 802405F4 8E220018 */  lw        $v0, 0x18($s1)
/* A87048 802405F8 9442002A */  lhu       $v0, 0x2a($v0)
/* A8704C 802405FC 30420010 */  andi      $v0, $v0, 0x10
/* A87050 80240600 14400007 */  bnez      $v0, .L80240620
/* A87054 80240604 00000000 */   nop
/* A87058 80240608 C600000C */  lwc1      $f0, 0xc($s0)
/* A8705C 8024060C 3C014334 */  lui       $at, 0x4334
/* A87060 80240610 44816000 */  mtc1      $at, $f12
/* A87064 80240614 0C00A6C9 */  jal       clamp_angle
/* A87068 80240618 460C0300 */   add.s    $f12, $f0, $f12
/* A8706C 8024061C E600000C */  swc1      $f0, 0xc($s0)
.L80240620:
/* A87070 80240620 8E440008 */  lw        $a0, 8($s2)
/* A87074 80240624 000417C2 */  srl       $v0, $a0, 0x1f
/* A87078 80240628 00822021 */  addu      $a0, $a0, $v0
/* A8707C 8024062C 00042043 */  sra       $a0, $a0, 1
/* A87080 80240630 0C00A67F */  jal       rand_int
/* A87084 80240634 24840001 */   addiu    $a0, $a0, 1
/* A87088 80240638 8E430008 */  lw        $v1, 8($s2)
/* A8708C 8024063C 000327C2 */  srl       $a0, $v1, 0x1f
/* A87090 80240640 00641821 */  addu      $v1, $v1, $a0
/* A87094 80240644 00031843 */  sra       $v1, $v1, 1
/* A87098 80240648 00621821 */  addu      $v1, $v1, $v0
/* A8709C 8024064C 08090197 */  j         .L8024065C
/* A870A0 80240650 A603008E */   sh       $v1, 0x8e($s0)
.L80240654:
/* A870A4 80240654 24020004 */  addiu     $v0, $zero, 4
.L80240658:
/* A870A8 80240658 AE820070 */  sw        $v0, 0x70($s4)
.L8024065C:
/* A870AC 8024065C 8FBF0044 */  lw        $ra, 0x44($sp)
/* A870B0 80240660 8FB40040 */  lw        $s4, 0x40($sp)
/* A870B4 80240664 8FB3003C */  lw        $s3, 0x3c($sp)
/* A870B8 80240668 8FB20038 */  lw        $s2, 0x38($sp)
/* A870BC 8024066C 8FB10034 */  lw        $s1, 0x34($sp)
/* A870C0 80240670 8FB00030 */  lw        $s0, 0x30($sp)
/* A870C4 80240674 03E00008 */  jr        $ra
/* A870C8 80240678 27BD0048 */   addiu    $sp, $sp, 0x48
