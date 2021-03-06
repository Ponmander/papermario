.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802194C0_448900
/* 448900 802194C0 27BDFFA8 */  addiu     $sp, $sp, -0x58
/* 448904 802194C4 AFB40020 */  sw        $s4, 0x20($sp)
/* 448908 802194C8 0080A02D */  daddu     $s4, $a0, $zero
/* 44890C 802194CC AFBF0024 */  sw        $ra, 0x24($sp)
/* 448910 802194D0 AFB3001C */  sw        $s3, 0x1c($sp)
/* 448914 802194D4 AFB20018 */  sw        $s2, 0x18($sp)
/* 448918 802194D8 AFB10014 */  sw        $s1, 0x14($sp)
/* 44891C 802194DC AFB00010 */  sw        $s0, 0x10($sp)
/* 448920 802194E0 F7BE0050 */  sdc1      $f30, 0x50($sp)
/* 448924 802194E4 F7BC0048 */  sdc1      $f28, 0x48($sp)
/* 448928 802194E8 F7BA0040 */  sdc1      $f26, 0x40($sp)
/* 44892C 802194EC F7B80038 */  sdc1      $f24, 0x38($sp)
/* 448930 802194F0 F7B60030 */  sdc1      $f22, 0x30($sp)
/* 448934 802194F4 F7B40028 */  sdc1      $f20, 0x28($sp)
/* 448938 802194F8 8E90000C */  lw        $s0, 0xc($s4)
/* 44893C 802194FC 8E050000 */  lw        $a1, ($s0)
/* 448940 80219500 0C0B1EAF */  jal       get_variable
/* 448944 80219504 26100004 */   addiu    $s0, $s0, 4
/* 448948 80219508 44820000 */  mtc1      $v0, $f0
/* 44894C 8021950C 00000000 */  nop
/* 448950 80219510 46800021 */  cvt.d.w   $f0, $f0
/* 448954 80219514 8E110000 */  lw        $s1, ($s0)
/* 448958 80219518 26100004 */  addiu     $s0, $s0, 4
/* 44895C 8021951C 3C014024 */  lui       $at, 0x4024
/* 448960 80219520 44811800 */  mtc1      $at, $f3
/* 448964 80219524 44801000 */  mtc1      $zero, $f2
/* 448968 80219528 3C0140C9 */  lui       $at, 0x40c9
/* 44896C 8021952C 34210FD0 */  ori       $at, $at, 0xfd0
/* 448970 80219530 4481A000 */  mtc1      $at, $f20
/* 448974 80219534 8E130000 */  lw        $s3, ($s0)
/* 448978 80219538 46220003 */  div.d     $f0, $f0, $f2
/* 44897C 8021953C 462007A0 */  cvt.s.d   $f30, $f0
/* 448980 80219540 4614F502 */  mul.s     $f20, $f30, $f20
/* 448984 80219544 00000000 */  nop
/* 448988 80219548 26100004 */  addiu     $s0, $s0, 4
/* 44898C 8021954C 8E120000 */  lw        $s2, ($s0)
/* 448990 80219550 3C0143B4 */  lui       $at, 0x43b4
/* 448994 80219554 44810000 */  mtc1      $at, $f0
/* 448998 80219558 8E100004 */  lw        $s0, 4($s0)
/* 44899C 8021955C 4600A503 */  div.s     $f20, $f20, $f0
/* 4489A0 80219560 0C00A85B */  jal       sin_rad
/* 4489A4 80219564 4600A306 */   mov.s    $f12, $f20
/* 4489A8 80219568 3C014100 */  lui       $at, 0x4100
/* 4489AC 8021956C 44816000 */  mtc1      $at, $f12
/* 4489B0 80219570 00000000 */  nop
/* 4489B4 80219574 460CA302 */  mul.s     $f12, $f20, $f12
/* 4489B8 80219578 00000000 */  nop
/* 4489BC 8021957C 3C014316 */  lui       $at, 0x4316
/* 4489C0 80219580 4481E000 */  mtc1      $at, $f28
/* 4489C4 80219584 00000000 */  nop
/* 4489C8 80219588 461C0582 */  mul.s     $f22, $f0, $f28
/* 4489CC 8021958C 00000000 */  nop
/* 4489D0 80219590 4480D000 */  mtc1      $zero, $f26
/* 4489D4 80219594 0C00A85B */  jal       sin_rad
/* 4489D8 80219598 461AB580 */   add.s    $f22, $f22, $f26
/* 4489DC 8021959C 3C014120 */  lui       $at, 0x4120
/* 4489E0 802195A0 44811000 */  mtc1      $at, $f2
/* 4489E4 802195A4 00000000 */  nop
/* 4489E8 802195A8 46020602 */  mul.s     $f24, $f0, $f2
/* 4489EC 802195AC 00000000 */  nop
/* 4489F0 802195B0 4600A306 */  mov.s     $f12, $f20
/* 4489F4 802195B4 0C00A874 */  jal       cos_rad
/* 4489F8 802195B8 461AC600 */   add.s    $f24, $f24, $f26
/* 4489FC 802195BC 0280202D */  daddu     $a0, $s4, $zero
/* 448A00 802195C0 461C0502 */  mul.s     $f20, $f0, $f28
/* 448A04 802195C4 00000000 */  nop
/* 448A08 802195C8 0220282D */  daddu     $a1, $s1, $zero
/* 448A0C 802195CC 4406B000 */  mfc1      $a2, $f22
/* 448A10 802195D0 3C0141A0 */  lui       $at, 0x41a0
/* 448A14 802195D4 44810000 */  mtc1      $at, $f0
/* 448A18 802195D8 3C01C248 */  lui       $at, 0xc248
/* 448A1C 802195DC 44811000 */  mtc1      $at, $f2
/* 448A20 802195E0 4600A503 */  div.s     $f20, $f20, $f0
/* 448A24 802195E4 0C0B2190 */  jal       set_float_variable
/* 448A28 802195E8 4602A500 */   add.s    $f20, $f20, $f2
/* 448A2C 802195EC 0280202D */  daddu     $a0, $s4, $zero
/* 448A30 802195F0 4406C000 */  mfc1      $a2, $f24
/* 448A34 802195F4 0C0B2190 */  jal       set_float_variable
/* 448A38 802195F8 0260282D */   daddu    $a1, $s3, $zero
/* 448A3C 802195FC 0280202D */  daddu     $a0, $s4, $zero
/* 448A40 80219600 4406A000 */  mfc1      $a2, $f20
/* 448A44 80219604 0C0B2190 */  jal       set_float_variable
/* 448A48 80219608 0240282D */   daddu    $a1, $s2, $zero
/* 448A4C 8021960C 3C0142B4 */  lui       $at, 0x42b4
/* 448A50 80219610 44810000 */  mtc1      $at, $f0
/* 448A54 80219614 00000000 */  nop
/* 448A58 80219618 461E003C */  c.lt.s    $f0, $f30
/* 448A5C 8021961C 00000000 */  nop
/* 448A60 80219620 4500000B */  bc1f      .L80219650
/* 448A64 80219624 0000302D */   daddu    $a2, $zero, $zero
/* 448A68 80219628 3C014387 */  lui       $at, 0x4387
/* 448A6C 8021962C 44810000 */  mtc1      $at, $f0
/* 448A70 80219630 00000000 */  nop
/* 448A74 80219634 4600F03C */  c.lt.s    $f30, $f0
/* 448A78 80219638 00000000 */  nop
/* 448A7C 8021963C 45030001 */  bc1tl     .L80219644
/* 448A80 80219640 240600B4 */   addiu    $a2, $zero, 0xb4
.L80219644:
/* 448A84 80219644 3C0142B4 */  lui       $at, 0x42b4
/* 448A88 80219648 44810000 */  mtc1      $at, $f0
/* 448A8C 8021964C 00000000 */  nop
.L80219650:
/* 448A90 80219650 461E0001 */  sub.s     $f0, $f0, $f30
/* 448A94 80219654 46000005 */  abs.s     $f0, $f0
/* 448A98 80219658 4600010D */  trunc.w.s $f4, $f0
/* 448A9C 8021965C 44022000 */  mfc1      $v0, $f4
/* 448AA0 80219660 00000000 */  nop
/* 448AA4 80219664 2842002D */  slti      $v0, $v0, 0x2d
/* 448AA8 80219668 10400008 */  beqz      $v0, .L8021968C
/* 448AAC 8021966C 00000000 */   nop
/* 448AB0 80219670 3C014234 */  lui       $at, 0x4234
/* 448AB4 80219674 44810000 */  mtc1      $at, $f0
/* 448AB8 80219678 00000000 */  nop
/* 448ABC 8021967C 4600F001 */  sub.s     $f0, $f30, $f0
/* 448AC0 80219680 46000000 */  add.s     $f0, $f0, $f0
/* 448AC4 80219684 4600010D */  trunc.w.s $f4, $f0
/* 448AC8 80219688 44062000 */  mfc1      $a2, $f4
.L8021968C:
/* 448ACC 8021968C 3C014387 */  lui       $at, 0x4387
/* 448AD0 80219690 44810000 */  mtc1      $at, $f0
/* 448AD4 80219694 00000000 */  nop
/* 448AD8 80219698 461E0001 */  sub.s     $f0, $f0, $f30
/* 448ADC 8021969C 46000005 */  abs.s     $f0, $f0
/* 448AE0 802196A0 4600010D */  trunc.w.s $f4, $f0
/* 448AE4 802196A4 44022000 */  mfc1      $v0, $f4
/* 448AE8 802196A8 00000000 */  nop
/* 448AEC 802196AC 2842002D */  slti      $v0, $v0, 0x2d
/* 448AF0 802196B0 1040000C */  beqz      $v0, .L802196E4
/* 448AF4 802196B4 0280202D */   daddu    $a0, $s4, $zero
/* 448AF8 802196B8 3C014361 */  lui       $at, 0x4361
/* 448AFC 802196BC 44810000 */  mtc1      $at, $f0
/* 448B00 802196C0 00000000 */  nop
/* 448B04 802196C4 4600F001 */  sub.s     $f0, $f30, $f0
/* 448B08 802196C8 46000000 */  add.s     $f0, $f0, $f0
/* 448B0C 802196CC 3C014334 */  lui       $at, 0x4334
/* 448B10 802196D0 44811000 */  mtc1      $at, $f2
/* 448B14 802196D4 00000000 */  nop
/* 448B18 802196D8 46020000 */  add.s     $f0, $f0, $f2
/* 448B1C 802196DC 4600010D */  trunc.w.s $f4, $f0
/* 448B20 802196E0 44062000 */  mfc1      $a2, $f4
.L802196E4:
/* 448B24 802196E4 0C0B2026 */  jal       set_variable
/* 448B28 802196E8 0200282D */   daddu    $a1, $s0, $zero
/* 448B2C 802196EC 8FBF0024 */  lw        $ra, 0x24($sp)
/* 448B30 802196F0 8FB40020 */  lw        $s4, 0x20($sp)
/* 448B34 802196F4 8FB3001C */  lw        $s3, 0x1c($sp)
/* 448B38 802196F8 8FB20018 */  lw        $s2, 0x18($sp)
/* 448B3C 802196FC 8FB10014 */  lw        $s1, 0x14($sp)
/* 448B40 80219700 8FB00010 */  lw        $s0, 0x10($sp)
/* 448B44 80219704 D7BE0050 */  ldc1      $f30, 0x50($sp)
/* 448B48 80219708 D7BC0048 */  ldc1      $f28, 0x48($sp)
/* 448B4C 8021970C D7BA0040 */  ldc1      $f26, 0x40($sp)
/* 448B50 80219710 D7B80038 */  ldc1      $f24, 0x38($sp)
/* 448B54 80219714 D7B60030 */  ldc1      $f22, 0x30($sp)
/* 448B58 80219718 D7B40028 */  ldc1      $f20, 0x28($sp)
/* 448B5C 8021971C 24020002 */  addiu     $v0, $zero, 2
/* 448B60 80219720 03E00008 */  jr        $ra
/* 448B64 80219724 27BD0058 */   addiu    $sp, $sp, 0x58
/* 448B68 80219728 00000000 */  nop
/* 448B6C 8021972C 00000000 */  nop
