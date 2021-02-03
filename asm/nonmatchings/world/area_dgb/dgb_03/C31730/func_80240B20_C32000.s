.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240B20_C32000
/* C32000 80240B20 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* C32004 80240B24 AFB50024 */  sw        $s5, 0x24($sp)
/* C32008 80240B28 0080A82D */  daddu     $s5, $a0, $zero
/* C3200C 80240B2C AFBF002C */  sw        $ra, 0x2c($sp)
/* C32010 80240B30 AFB60028 */  sw        $s6, 0x28($sp)
/* C32014 80240B34 AFB40020 */  sw        $s4, 0x20($sp)
/* C32018 80240B38 AFB3001C */  sw        $s3, 0x1c($sp)
/* C3201C 80240B3C AFB20018 */  sw        $s2, 0x18($sp)
/* C32020 80240B40 AFB10014 */  sw        $s1, 0x14($sp)
/* C32024 80240B44 AFB00010 */  sw        $s0, 0x10($sp)
/* C32028 80240B48 F7B80040 */  sdc1      $f24, 0x40($sp)
/* C3202C 80240B4C F7B60038 */  sdc1      $f22, 0x38($sp)
/* C32030 80240B50 F7B40030 */  sdc1      $f20, 0x30($sp)
/* C32034 80240B54 8EB30148 */  lw        $s3, 0x148($s5)
/* C32038 80240B58 86640008 */  lh        $a0, 8($s3)
/* C3203C 80240B5C 0C00EABB */  jal       get_npc_unsafe
/* C32040 80240B60 00A0B02D */   daddu    $s6, $a1, $zero
/* C32044 80240B64 0040A02D */  daddu     $s4, $v0, $zero
/* C32048 80240B68 AEA00074 */  sw        $zero, 0x74($s5)
/* C3204C 80240B6C C6980038 */  lwc1      $f24, 0x38($s4)
/* C32050 80240B70 C6960040 */  lwc1      $f22, 0x40($s4)
/* C32054 80240B74 0000902D */  daddu     $s2, $zero, $zero
/* C32058 80240B78 AEA00078 */  sw        $zero, 0x78($s5)
/* C3205C 80240B7C 8E6300D0 */  lw        $v1, 0xd0($s3)
/* C32060 80240B80 8C620000 */  lw        $v0, ($v1)
/* C32064 80240B84 3C0146FF */  lui       $at, 0x46ff
/* C32068 80240B88 3421FE00 */  ori       $at, $at, 0xfe00
/* C3206C 80240B8C 4481A000 */  mtc1      $at, $f20
/* C32070 80240B90 18400018 */  blez      $v0, .L80240BF4
/* C32074 80240B94 0240802D */   daddu    $s0, $s2, $zero
/* C32078 80240B98 0240882D */  daddu     $s1, $s2, $zero
.L80240B9C:
/* C3207C 80240B9C 02231021 */  addu      $v0, $s1, $v1
/* C32080 80240BA0 4600C306 */  mov.s     $f12, $f24
/* C32084 80240BA4 C4440004 */  lwc1      $f4, 4($v0)
/* C32088 80240BA8 46802120 */  cvt.s.w   $f4, $f4
/* C3208C 80240BAC 44062000 */  mfc1      $a2, $f4
/* C32090 80240BB0 C444000C */  lwc1      $f4, 0xc($v0)
/* C32094 80240BB4 46802120 */  cvt.s.w   $f4, $f4
/* C32098 80240BB8 44072000 */  mfc1      $a3, $f4
/* C3209C 80240BBC 0C00A7B5 */  jal       dist2D
/* C320A0 80240BC0 4600B386 */   mov.s    $f14, $f22
/* C320A4 80240BC4 4614003C */  c.lt.s    $f0, $f20
/* C320A8 80240BC8 00000000 */  nop
/* C320AC 80240BCC 45000003 */  bc1f      .L80240BDC
/* C320B0 80240BD0 2631000C */   addiu    $s1, $s1, 0xc
/* C320B4 80240BD4 46000506 */  mov.s     $f20, $f0
/* C320B8 80240BD8 AEB20078 */  sw        $s2, 0x78($s5)
.L80240BDC:
/* C320BC 80240BDC 8E6300D0 */  lw        $v1, 0xd0($s3)
/* C320C0 80240BE0 26100001 */  addiu     $s0, $s0, 1
/* C320C4 80240BE4 8C620000 */  lw        $v0, ($v1)
/* C320C8 80240BE8 0202102A */  slt       $v0, $s0, $v0
/* C320CC 80240BEC 1440FFEB */  bnez      $v0, .L80240B9C
/* C320D0 80240BF0 26520001 */   addiu    $s2, $s2, 1
.L80240BF4:
/* C320D4 80240BF4 8E6200CC */  lw        $v0, 0xcc($s3)
/* C320D8 80240BF8 8C420004 */  lw        $v0, 4($v0)
/* C320DC 80240BFC AE820028 */  sw        $v0, 0x28($s4)
/* C320E0 80240C00 8E6200D0 */  lw        $v0, 0xd0($s3)
/* C320E4 80240C04 8C42007C */  lw        $v0, 0x7c($v0)
/* C320E8 80240C08 04410004 */  bgez      $v0, .L80240C1C
/* C320EC 80240C0C 00000000 */   nop
/* C320F0 80240C10 C6C00000 */  lwc1      $f0, ($s6)
/* C320F4 80240C14 0809030F */  j         .L80240C3C
/* C320F8 80240C18 E6800018 */   swc1     $f0, 0x18($s4)
.L80240C1C:
/* C320FC 80240C1C 3C018024 */  lui       $at, %hi(D_80244B88_C36068)
/* C32100 80240C20 D4224B88 */  ldc1      $f2, %lo(D_80244B88_C36068)($at)
/* C32104 80240C24 44820000 */  mtc1      $v0, $f0
/* C32108 80240C28 00000000 */  nop
/* C3210C 80240C2C 46800021 */  cvt.d.w   $f0, $f0
/* C32110 80240C30 46220003 */  div.d     $f0, $f0, $f2
/* C32114 80240C34 46200020 */  cvt.s.d   $f0, $f0
/* C32118 80240C38 E6800018 */  swc1      $f0, 0x18($s4)
.L80240C3C:
/* C3211C 80240C3C 24020001 */  addiu     $v0, $zero, 1
/* C32120 80240C40 AEA20070 */  sw        $v0, 0x70($s5)
/* C32124 80240C44 8FBF002C */  lw        $ra, 0x2c($sp)
/* C32128 80240C48 8FB60028 */  lw        $s6, 0x28($sp)
/* C3212C 80240C4C 8FB50024 */  lw        $s5, 0x24($sp)
/* C32130 80240C50 8FB40020 */  lw        $s4, 0x20($sp)
/* C32134 80240C54 8FB3001C */  lw        $s3, 0x1c($sp)
/* C32138 80240C58 8FB20018 */  lw        $s2, 0x18($sp)
/* C3213C 80240C5C 8FB10014 */  lw        $s1, 0x14($sp)
/* C32140 80240C60 8FB00010 */  lw        $s0, 0x10($sp)
/* C32144 80240C64 D7B80040 */  ldc1      $f24, 0x40($sp)
/* C32148 80240C68 D7B60038 */  ldc1      $f22, 0x38($sp)
/* C3214C 80240C6C D7B40030 */  ldc1      $f20, 0x30($sp)
/* C32150 80240C70 03E00008 */  jr        $ra
/* C32154 80240C74 27BD0048 */   addiu    $sp, $sp, 0x48
