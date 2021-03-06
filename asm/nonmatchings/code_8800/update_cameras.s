.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel update_cameras
/* 8800 8002D400 27BDFF90 */  addiu     $sp, $sp, -0x70
/* 8804 8002D404 F7B60068 */  sdc1      $f22, 0x68($sp)
/* 8808 8002D408 3C013F80 */  lui       $at, 0x3f80
/* 880C 8002D40C 4481B000 */  mtc1      $at, $f22
/* 8810 8002D410 F7B40060 */  sdc1      $f20, 0x60($sp)
/* 8814 8002D414 3C013FE0 */  lui       $at, 0x3fe0
/* 8818 8002D418 4481A800 */  mtc1      $at, $f21
/* 881C 8002D41C 4480A000 */  mtc1      $zero, $f20
/* 8820 8002D420 AFB3004C */  sw        $s3, 0x4c($sp)
/* 8824 8002D424 0000982D */  daddu     $s3, $zero, $zero
/* 8828 8002D428 AFB60058 */  sw        $s6, 0x58($sp)
/* 882C 8002D42C 27B60030 */  addiu     $s6, $sp, 0x30
/* 8830 8002D430 AFB50054 */  sw        $s5, 0x54($sp)
/* 8834 8002D434 27B50034 */  addiu     $s5, $sp, 0x34
/* 8838 8002D438 AFB40050 */  sw        $s4, 0x50($sp)
/* 883C 8002D43C 27B40038 */  addiu     $s4, $sp, 0x38
/* 8840 8002D440 AFB00040 */  sw        $s0, 0x40($sp)
/* 8844 8002D444 3C10800B */  lui       $s0, %hi(gCameras)
/* 8848 8002D448 26101D80 */  addiu     $s0, $s0, %lo(gCameras)
/* 884C 8002D44C AFBF005C */  sw        $ra, 0x5c($sp)
/* 8850 8002D450 AFB20048 */  sw        $s2, 0x48($sp)
/* 8854 8002D454 AFB10044 */  sw        $s1, 0x44($sp)
.L8002D458:
/* 8858 8002D458 96020000 */  lhu       $v0, ($s0)
/* 885C 8002D45C 104000A5 */  beqz      $v0, .L8002D6F4
/* 8860 8002D460 30420002 */   andi     $v0, $v0, 2
/* 8864 8002D464 544000A4 */  bnel      $v0, $zero, .L8002D6F8
/* 8868 8002D468 26730001 */   addiu    $s3, $s3, 1
/* 886C 8002D46C 86030004 */  lh        $v1, 4($s0)
/* 8870 8002D470 3C01800A */  lui       $at, %hi(D_8009A634)
/* 8874 8002D474 A433A634 */  sh        $s3, %lo(D_8009A634)($at)
/* 8878 8002D478 2C620007 */  sltiu     $v0, $v1, 7
/* 887C 8002D47C 1040001E */  beqz      $v0, .L8002D4F8
/* 8880 8002D480 00031080 */   sll      $v0, $v1, 2
/* 8884 8002D484 3C01800A */  lui       $at, %hi(jtbl_800981E0)
/* 8888 8002D488 00220821 */  addu      $at, $at, $v0
/* 888C 8002D48C 8C2281E0 */  lw        $v0, %lo(jtbl_800981E0)($at)
/* 8890 8002D490 00400008 */  jr        $v0
/* 8894 8002D494 00000000 */   nop
glabel L8002D498_8898
/* 8898 8002D498 0C00C525 */  jal       do_camera_type_3
/* 889C 8002D49C 0200202D */   daddu    $a0, $s0, $zero
/* 88A0 8002D4A0 0800B540 */  j         .L8002D500
/* 88A4 8002D4A4 00000000 */   nop
glabel L8002D4A8_88A8
/* 88A8 8002D4A8 0C00BE14 */  jal       do_camera_type_0
/* 88AC 8002D4AC 0200202D */   daddu    $a0, $s0, $zero
/* 88B0 8002D4B0 0800B540 */  j         .L8002D500
/* 88B4 8002D4B4 00000000 */   nop
glabel L8002D4B8_88B8
/* 88B8 8002D4B8 0C00BCA4 */  jal       do_camera_type_1
/* 88BC 8002D4BC 0200202D */   daddu    $a0, $s0, $zero
/* 88C0 8002D4C0 0800B540 */  j         .L8002D500
/* 88C4 8002D4C4 00000000 */   nop
glabel L8002D4C8_88C8
/* 88C8 8002D4C8 0C00BB3E */  jal       do_camera_type_2
/* 88CC 8002D4CC 0200202D */   daddu    $a0, $s0, $zero
/* 88D0 8002D4D0 0800B540 */  j         .L8002D500
/* 88D4 8002D4D4 00000000 */   nop
glabel L8002D4D8_88D8
/* 88D8 8002D4D8 0C00BA44 */  jal       do_camera_type_4
/* 88DC 8002D4DC 0200202D */   daddu    $a0, $s0, $zero
/* 88E0 8002D4E0 0800B540 */  j         .L8002D500
/* 88E4 8002D4E4 00000000 */   nop
glabel L8002D4E8_88E8
/* 88E8 8002D4E8 0C00C000 */  jal       do_camera_type_5
/* 88EC 8002D4EC 0200202D */   daddu    $a0, $s0, $zero
/* 88F0 8002D4F0 0800B540 */  j         .L8002D500
/* 88F4 8002D4F4 00000000 */   nop
.L8002D4F8:
glabel L8002D4F8_88F8
/* 88F8 8002D4F8 0C00BE64 */  jal       do_camera_type_6
/* 88FC 8002D4FC 0200202D */   daddu    $a0, $s0, $zero
.L8002D500:
/* 8900 8002D500 C6000044 */  lwc1      $f0, 0x44($s0)
/* 8904 8002D504 3C05800A */  lui       $a1, %hi(gDisplayContext)
/* 8908 8002D508 8CA5A674 */  lw        $a1, %lo(gDisplayContext)($a1)
/* 890C 8002D50C E7A00010 */  swc1      $f0, 0x10($sp)
/* 8910 8002D510 C6000048 */  lwc1      $f0, 0x48($s0)
/* 8914 8002D514 E7A00014 */  swc1      $f0, 0x14($sp)
/* 8918 8002D518 C600004C */  lwc1      $f0, 0x4c($s0)
/* 891C 8002D51C E7A00018 */  swc1      $f0, 0x18($sp)
/* 8920 8002D520 C6000050 */  lwc1      $f0, 0x50($s0)
/* 8924 8002D524 26120114 */  addiu     $s2, $s0, 0x114
/* 8928 8002D528 AFA00020 */  sw        $zero, 0x20($sp)
/* 892C 8002D52C E7B60024 */  swc1      $f22, 0x24($sp)
/* 8930 8002D530 AFA00028 */  sw        $zero, 0x28($sp)
/* 8934 8002D534 E7A0001C */  swc1      $f0, 0x1c($sp)
/* 8938 8002D538 8E06003C */  lw        $a2, 0x3c($s0)
/* 893C 8002D53C 8E070040 */  lw        $a3, 0x40($s0)
/* 8940 8002D540 0C018CC8 */  jal       guLookAtReflectF
/* 8944 8002D544 0240202D */   daddu    $a0, $s2, $zero
/* 8948 8002D548 96030000 */  lhu       $v1, ($s0)
/* 894C 8002D54C 30620010 */  andi      $v0, $v1, 0x10
/* 8950 8002D550 14400034 */  bnez      $v0, .L8002D624
/* 8954 8002D554 260400D4 */   addiu    $a0, $s0, 0xd4
/* 8958 8002D558 30620004 */  andi      $v0, $v1, 4
/* 895C 8002D55C 10400004 */  beqz      $v0, .L8002D570
/* 8960 8002D560 261100D4 */   addiu    $s1, $s0, 0xd4
/* 8964 8002D564 0C00CCE5 */  jal       create_camera_lead_player_mtx
/* 8968 8002D568 0200202D */   daddu    $a0, $s0, $zero
/* 896C 8002D56C 261100D4 */  addiu     $s1, $s0, 0xd4
.L8002D570:
/* 8970 8002D570 0220202D */  daddu     $a0, $s1, $zero
/* 8974 8002D574 8607000A */  lh        $a3, 0xa($s0)
/* 8978 8002D578 86020012 */  lh        $v0, 0x12($s0)
/* 897C 8002D57C 8603000C */  lh        $v1, 0xc($s0)
/* 8980 8002D580 44820000 */  mtc1      $v0, $f0
/* 8984 8002D584 00000000 */  nop
/* 8988 8002D588 46800020 */  cvt.s.w   $f0, $f0
/* 898C 8002D58C E7A00010 */  swc1      $f0, 0x10($sp)
/* 8990 8002D590 86020014 */  lh        $v0, 0x14($s0)
/* 8994 8002D594 44871000 */  mtc1      $a3, $f2
/* 8998 8002D598 00000000 */  nop
/* 899C 8002D59C 468010A0 */  cvt.s.w   $f2, $f2
/* 89A0 8002D5A0 E7B60018 */  swc1      $f22, 0x18($sp)
/* 89A4 8002D5A4 44820000 */  mtc1      $v0, $f0
/* 89A8 8002D5A8 00000000 */  nop
/* 89AC 8002D5AC 46800020 */  cvt.s.w   $f0, $f0
/* 89B0 8002D5B0 E7A00014 */  swc1      $f0, 0x14($sp)
/* 89B4 8002D5B4 44830000 */  mtc1      $v1, $f0
/* 89B8 8002D5B8 00000000 */  nop
/* 89BC 8002D5BC 46800020 */  cvt.s.w   $f0, $f0
/* 89C0 8002D5C0 46001083 */  div.s     $f2, $f2, $f0
/* 89C4 8002D5C4 8E060018 */  lw        $a2, 0x18($s0)
/* 89C8 8002D5C8 44071000 */  mfc1      $a3, $f2
/* 89CC 8002D5CC 0C018EE4 */  jal       guPerspectiveF
/* 89D0 8002D5D0 26050038 */   addiu    $a1, $s0, 0x38
/* 89D4 8002D5D4 96020000 */  lhu       $v0, ($s0)
/* 89D8 8002D5D8 30420008 */  andi      $v0, $v0, 8
/* 89DC 8002D5DC 10400004 */  beqz      $v0, .L8002D5F0
/* 89E0 8002D5E0 26040194 */   addiu    $a0, $s0, 0x194
/* 89E4 8002D5E4 0220282D */  daddu     $a1, $s1, $zero
/* 89E8 8002D5E8 0C019D80 */  jal       guMtxCatF
/* 89EC 8002D5EC 0220302D */   daddu    $a2, $s1, $zero
.L8002D5F0:
/* 89F0 8002D5F0 96020000 */  lhu       $v0, ($s0)
/* 89F4 8002D5F4 30420004 */  andi      $v0, $v0, 4
/* 89F8 8002D5F8 10400004 */  beqz      $v0, .L8002D60C
/* 89FC 8002D5FC 26040154 */   addiu    $a0, $s0, 0x154
/* 8A00 8002D600 0220282D */  daddu     $a1, $s1, $zero
/* 8A04 8002D604 0C019D80 */  jal       guMtxCatF
/* 8A08 8002D608 0220302D */   daddu    $a2, $s1, $zero
.L8002D60C:
/* 8A0C 8002D60C 0240202D */  daddu     $a0, $s2, $zero
/* 8A10 8002D610 0220282D */  daddu     $a1, $s1, $zero
/* 8A14 8002D614 0C019D80 */  jal       guMtxCatF
/* 8A18 8002D618 00A0302D */   daddu    $a2, $a1, $zero
/* 8A1C 8002D61C 0800B5B0 */  j         .L8002D6C0
/* 8A20 8002D620 AFB60010 */   sw       $s6, 0x10($sp)
.L8002D624:
/* 8A24 8002D624 8602000A */  lh        $v0, 0xa($s0)
/* 8A28 8002D628 44822000 */  mtc1      $v0, $f4
/* 8A2C 8002D62C 00000000 */  nop
/* 8A30 8002D630 46802120 */  cvt.s.w   $f4, $f4
/* 8A34 8002D634 46002187 */  neg.s     $f6, $f4
/* 8A38 8002D638 460031A1 */  cvt.d.s   $f6, $f6
/* 8A3C 8002D63C 46343182 */  mul.d     $f6, $f6, $f20
/* 8A40 8002D640 00000000 */  nop
/* 8A44 8002D644 46002121 */  cvt.d.s   $f4, $f4
/* 8A48 8002D648 46342102 */  mul.d     $f4, $f4, $f20
/* 8A4C 8002D64C 00000000 */  nop
/* 8A50 8002D650 8602000C */  lh        $v0, 0xc($s0)
/* 8A54 8002D654 44820000 */  mtc1      $v0, $f0
/* 8A58 8002D658 00000000 */  nop
/* 8A5C 8002D65C 46800020 */  cvt.s.w   $f0, $f0
/* 8A60 8002D660 46000087 */  neg.s     $f2, $f0
/* 8A64 8002D664 460010A1 */  cvt.d.s   $f2, $f2
/* 8A68 8002D668 46341082 */  mul.d     $f2, $f2, $f20
/* 8A6C 8002D66C 00000000 */  nop
/* 8A70 8002D670 3C01C47A */  lui       $at, 0xc47a
/* 8A74 8002D674 44814000 */  mtc1      $at, $f8
/* 8A78 8002D678 3C01447A */  lui       $at, 0x447a
/* 8A7C 8002D67C 44815000 */  mtc1      $at, $f10
/* 8A80 8002D680 E7B6001C */  swc1      $f22, 0x1c($sp)
/* 8A84 8002D684 E7A80014 */  swc1      $f8, 0x14($sp)
/* 8A88 8002D688 46000021 */  cvt.d.s   $f0, $f0
/* 8A8C 8002D68C 46340002 */  mul.d     $f0, $f0, $f20
/* 8A90 8002D690 00000000 */  nop
/* 8A94 8002D694 E7AA0018 */  swc1      $f10, 0x18($sp)
/* 8A98 8002D698 462031A0 */  cvt.s.d   $f6, $f6
/* 8A9C 8002D69C 46202120 */  cvt.s.d   $f4, $f4
/* 8AA0 8002D6A0 44053000 */  mfc1      $a1, $f6
/* 8AA4 8002D6A4 44062000 */  mfc1      $a2, $f4
/* 8AA8 8002D6A8 462010A0 */  cvt.s.d   $f2, $f2
/* 8AAC 8002D6AC 44071000 */  mfc1      $a3, $f2
/* 8AB0 8002D6B0 46200020 */  cvt.s.d   $f0, $f0
/* 8AB4 8002D6B4 0C018E44 */  jal       guOrthoF
/* 8AB8 8002D6B8 E7A00010 */   swc1     $f0, 0x10($sp)
/* 8ABC 8002D6BC AFB60010 */  sw        $s6, 0x10($sp)
.L8002D6C0:
/* 8AC0 8002D6C0 AFB50014 */  sw        $s5, 0x14($sp)
/* 8AC4 8002D6C4 AFB40018 */  sw        $s4, 0x18($sp)
/* 8AC8 8002D6C8 8E050060 */  lw        $a1, 0x60($s0)
/* 8ACC 8002D6CC 8E060064 */  lw        $a2, 0x64($s0)
/* 8AD0 8002D6D0 8E070068 */  lw        $a3, 0x68($s0)
/* 8AD4 8002D6D4 0C00B94E */  jal       get_screen_coords
/* 8AD8 8002D6D8 0000202D */   daddu    $a0, $zero, $zero
/* 8ADC 8002D6DC 96C20002 */  lhu       $v0, 2($s6)
/* 8AE0 8002D6E0 A6020032 */  sh        $v0, 0x32($s0)
/* 8AE4 8002D6E4 96A20002 */  lhu       $v0, 2($s5)
/* 8AE8 8002D6E8 A6020034 */  sh        $v0, 0x34($s0)
/* 8AEC 8002D6EC 96820002 */  lhu       $v0, 2($s4)
/* 8AF0 8002D6F0 A6020036 */  sh        $v0, 0x36($s0)
.L8002D6F4:
/* 8AF4 8002D6F4 26730001 */  addiu     $s3, $s3, 1
.L8002D6F8:
/* 8AF8 8002D6F8 2A620004 */  slti      $v0, $s3, 4
/* 8AFC 8002D6FC 1440FF56 */  bnez      $v0, .L8002D458
/* 8B00 8002D700 26100558 */   addiu    $s0, $s0, 0x558
/* 8B04 8002D704 8FBF005C */  lw        $ra, 0x5c($sp)
/* 8B08 8002D708 8FB60058 */  lw        $s6, 0x58($sp)
/* 8B0C 8002D70C 8FB50054 */  lw        $s5, 0x54($sp)
/* 8B10 8002D710 8FB40050 */  lw        $s4, 0x50($sp)
/* 8B14 8002D714 8FB3004C */  lw        $s3, 0x4c($sp)
/* 8B18 8002D718 8FB20048 */  lw        $s2, 0x48($sp)
/* 8B1C 8002D71C 8FB10044 */  lw        $s1, 0x44($sp)
/* 8B20 8002D720 8FB00040 */  lw        $s0, 0x40($sp)
/* 8B24 8002D724 D7B60068 */  ldc1      $f22, 0x68($sp)
/* 8B28 8002D728 D7B40060 */  ldc1      $f20, 0x60($sp)
/* 8B2C 8002D72C 3C01800A */  lui       $at, %hi(D_8009A634)
/* 8B30 8002D730 A420A634 */  sh        $zero, %lo(D_8009A634)($at)
/* 8B34 8002D734 03E00008 */  jr        $ra
/* 8B38 8002D738 27BD0070 */   addiu    $sp, $sp, 0x70
