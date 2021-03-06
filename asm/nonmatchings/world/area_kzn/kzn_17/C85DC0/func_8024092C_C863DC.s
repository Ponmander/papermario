.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024092C_C863DC
/* C863DC 8024092C 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* C863E0 80240930 AFB20038 */  sw        $s2, 0x38($sp)
/* C863E4 80240934 0080902D */  daddu     $s2, $a0, $zero
/* C863E8 80240938 AFBF0048 */  sw        $ra, 0x48($sp)
/* C863EC 8024093C AFB50044 */  sw        $s5, 0x44($sp)
/* C863F0 80240940 AFB40040 */  sw        $s4, 0x40($sp)
/* C863F4 80240944 AFB3003C */  sw        $s3, 0x3c($sp)
/* C863F8 80240948 AFB10034 */  sw        $s1, 0x34($sp)
/* C863FC 8024094C AFB00030 */  sw        $s0, 0x30($sp)
/* C86400 80240950 8E510148 */  lw        $s1, 0x148($s2)
/* C86404 80240954 86240008 */  lh        $a0, 8($s1)
/* C86408 80240958 0C00EABB */  jal       get_npc_unsafe
/* C8640C 8024095C 00A0802D */   daddu    $s0, $a1, $zero
/* C86410 80240960 8E43000C */  lw        $v1, 0xc($s2)
/* C86414 80240964 0240202D */  daddu     $a0, $s2, $zero
/* C86418 80240968 8C650000 */  lw        $a1, ($v1)
/* C8641C 8024096C 0C0B1EAF */  jal       get_variable
/* C86420 80240970 0040A82D */   daddu    $s5, $v0, $zero
/* C86424 80240974 AFA00010 */  sw        $zero, 0x10($sp)
/* C86428 80240978 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C8642C 8024097C 8C630030 */  lw        $v1, 0x30($v1)
/* C86430 80240980 AFA30014 */  sw        $v1, 0x14($sp)
/* C86434 80240984 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C86438 80240988 8C63001C */  lw        $v1, 0x1c($v1)
/* C8643C 8024098C AFA30018 */  sw        $v1, 0x18($sp)
/* C86440 80240990 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C86444 80240994 8C630024 */  lw        $v1, 0x24($v1)
/* C86448 80240998 AFA3001C */  sw        $v1, 0x1c($sp)
/* C8644C 8024099C 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C86450 802409A0 8C630028 */  lw        $v1, 0x28($v1)
/* C86454 802409A4 27B40010 */  addiu     $s4, $sp, 0x10
/* C86458 802409A8 AFA30020 */  sw        $v1, 0x20($sp)
/* C8645C 802409AC 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C86460 802409B0 3C014282 */  lui       $at, 0x4282
/* C86464 802409B4 44810000 */  mtc1      $at, $f0
/* C86468 802409B8 8C63002C */  lw        $v1, 0x2c($v1)
/* C8646C 802409BC 0040982D */  daddu     $s3, $v0, $zero
/* C86470 802409C0 E7A00028 */  swc1      $f0, 0x28($sp)
/* C86474 802409C4 A7A0002C */  sh        $zero, 0x2c($sp)
/* C86478 802409C8 16000005 */  bnez      $s0, .L802409E0
/* C8647C 802409CC AFA30024 */   sw       $v1, 0x24($sp)
/* C86480 802409D0 8E2200B0 */  lw        $v0, 0xb0($s1)
/* C86484 802409D4 30420004 */  andi      $v0, $v0, 4
/* C86488 802409D8 10400020 */  beqz      $v0, .L80240A5C
/* C8648C 802409DC 00000000 */   nop
.L802409E0:
/* C86490 802409E0 2404F7FF */  addiu     $a0, $zero, -0x801
/* C86494 802409E4 AE400070 */  sw        $zero, 0x70($s2)
/* C86498 802409E8 A6A0008E */  sh        $zero, 0x8e($s5)
/* C8649C 802409EC 8E2200CC */  lw        $v0, 0xcc($s1)
/* C864A0 802409F0 8EA30000 */  lw        $v1, ($s5)
/* C864A4 802409F4 8C420000 */  lw        $v0, ($v0)
/* C864A8 802409F8 00641824 */  and       $v1, $v1, $a0
/* C864AC 802409FC AEA30000 */  sw        $v1, ($s5)
/* C864B0 80240A00 AEA20028 */  sw        $v0, 0x28($s5)
/* C864B4 80240A04 8E2200D0 */  lw        $v0, 0xd0($s1)
/* C864B8 80240A08 8C420034 */  lw        $v0, 0x34($v0)
/* C864BC 80240A0C 54400005 */  bnel      $v0, $zero, .L80240A24
/* C864C0 80240A10 2402FDFF */   addiu    $v0, $zero, -0x201
/* C864C4 80240A14 34620200 */  ori       $v0, $v1, 0x200
/* C864C8 80240A18 2403FFF7 */  addiu     $v1, $zero, -9
/* C864CC 80240A1C 0809028B */  j         .L80240A2C
/* C864D0 80240A20 00431024 */   and      $v0, $v0, $v1
.L80240A24:
/* C864D4 80240A24 00621024 */  and       $v0, $v1, $v0
/* C864D8 80240A28 34420008 */  ori       $v0, $v0, 8
.L80240A2C:
/* C864DC 80240A2C AEA20000 */  sw        $v0, ($s5)
/* C864E0 80240A30 8E2200B0 */  lw        $v0, 0xb0($s1)
/* C864E4 80240A34 30420004 */  andi      $v0, $v0, 4
/* C864E8 80240A38 10400007 */  beqz      $v0, .L80240A58
/* C864EC 80240A3C 24020063 */   addiu    $v0, $zero, 0x63
/* C864F0 80240A40 AE420070 */  sw        $v0, 0x70($s2)
/* C864F4 80240A44 AE400074 */  sw        $zero, 0x74($s2)
/* C864F8 80240A48 8E2200B0 */  lw        $v0, 0xb0($s1)
/* C864FC 80240A4C 2403FFFB */  addiu     $v1, $zero, -5
/* C86500 80240A50 00431024 */  and       $v0, $v0, $v1
/* C86504 80240A54 AE2200B0 */  sw        $v0, 0xb0($s1)
.L80240A58:
/* C86508 80240A58 AE20006C */  sw        $zero, 0x6c($s1)
.L80240A5C:
/* C8650C 80240A5C 8E420070 */  lw        $v0, 0x70($s2)
/* C86510 80240A60 2842001E */  slti      $v0, $v0, 0x1e
/* C86514 80240A64 10400009 */  beqz      $v0, .L80240A8C
/* C86518 80240A68 00000000 */   nop
/* C8651C 80240A6C 8E22006C */  lw        $v0, 0x6c($s1)
/* C86520 80240A70 14400006 */  bnez      $v0, .L80240A8C
/* C86524 80240A74 00000000 */   nop
/* C86528 80240A78 0C090146 */  jal       func_80240518_C85FC8
/* C8652C 80240A7C 0240202D */   daddu    $a0, $s2, $zero
/* C86530 80240A80 10400002 */  beqz      $v0, .L80240A8C
/* C86534 80240A84 2402001E */   addiu    $v0, $zero, 0x1e
/* C86538 80240A88 AE420070 */  sw        $v0, 0x70($s2)
.L80240A8C:
/* C8653C 80240A8C 8E430070 */  lw        $v1, 0x70($s2)
/* C86540 80240A90 2C620064 */  sltiu     $v0, $v1, 0x64
/* C86544 80240A94 10400048 */  beqz      $v0, .L80240BB8
/* C86548 80240A98 00031080 */   sll      $v0, $v1, 2
/* C8654C 80240A9C 3C018024 */  lui       $at, %hi(jtbl_802463A8_C8BE58)
/* C86550 80240AA0 00220821 */  addu      $at, $at, $v0
/* C86554 80240AA4 8C2263A8 */  lw        $v0, %lo(jtbl_802463A8_C8BE58)($at)
/* C86558 80240AA8 00400008 */  jr        $v0
/* C8655C 80240AAC 00000000 */   nop
glabel L80240AB0_C86560
/* C86560 80240AB0 0240202D */  daddu     $a0, $s2, $zero
/* C86564 80240AB4 0260282D */  daddu     $a1, $s3, $zero
/* C86568 80240AB8 0C012568 */  jal       func_800495A0
/* C8656C 80240ABC 0280302D */   daddu    $a2, $s4, $zero
glabel L80240AC0_C86570
/* C86570 80240AC0 0240202D */  daddu     $a0, $s2, $zero
/* C86574 80240AC4 0260282D */  daddu     $a1, $s3, $zero
/* C86578 80240AC8 0C0125AE */  jal       func_800496B8
/* C8657C 80240ACC 0280302D */   daddu    $a2, $s4, $zero
/* C86580 80240AD0 080902EE */  j         .L80240BB8
/* C86584 80240AD4 00000000 */   nop
glabel L80240AD8_C86588
/* C86588 80240AD8 0240202D */  daddu     $a0, $s2, $zero
/* C8658C 80240ADC 0260282D */  daddu     $a1, $s3, $zero
/* C86590 80240AE0 0C0126D1 */  jal       base_UnkNpcAIFunc1
/* C86594 80240AE4 0280302D */   daddu    $a2, $s4, $zero
glabel L80240AE8_C86598
/* C86598 80240AE8 0240202D */  daddu     $a0, $s2, $zero
/* C8659C 80240AEC 0260282D */  daddu     $a1, $s3, $zero
/* C865A0 80240AF0 0C012701 */  jal       func_80049C04
/* C865A4 80240AF4 0280302D */   daddu    $a2, $s4, $zero
/* C865A8 80240AF8 080902EE */  j         .L80240BB8
/* C865AC 80240AFC 00000000 */   nop
glabel L80240B00_C865B0
/* C865B0 80240B00 0240202D */  daddu     $a0, $s2, $zero
/* C865B4 80240B04 0260282D */  daddu     $a1, $s3, $zero
/* C865B8 80240B08 0C01278F */  jal       func_80049E3C
/* C865BC 80240B0C 0280302D */   daddu    $a2, $s4, $zero
glabel L80240B10_C865C0
/* C865C0 80240B10 0240202D */  daddu     $a0, $s2, $zero
/* C865C4 80240B14 0260282D */  daddu     $a1, $s3, $zero
/* C865C8 80240B18 0C0127B3 */  jal       func_80049ECC
/* C865CC 80240B1C 0280302D */   daddu    $a2, $s4, $zero
/* C865D0 80240B20 080902EE */  j         .L80240BB8
/* C865D4 80240B24 00000000 */   nop
glabel L80240B28_C865D8
/* C865D8 80240B28 0240202D */  daddu     $a0, $s2, $zero
/* C865DC 80240B2C 0260282D */  daddu     $a1, $s3, $zero
/* C865E0 80240B30 0C0127DF */  jal       func_80049F7C
/* C865E4 80240B34 0280302D */   daddu    $a2, $s4, $zero
glabel L80240B38_C865E8
/* C865E8 80240B38 0240202D */  daddu     $a0, $s2, $zero
/* C865EC 80240B3C 0260282D */  daddu     $a1, $s3, $zero
/* C865F0 80240B40 0C012849 */  jal       func_8004A124
/* C865F4 80240B44 0280302D */   daddu    $a2, $s4, $zero
/* C865F8 80240B48 080902EE */  j         .L80240BB8
/* C865FC 80240B4C 00000000 */   nop
glabel L80240B50_C86600
/* C86600 80240B50 0240202D */  daddu     $a0, $s2, $zero
/* C86604 80240B54 0260282D */  daddu     $a1, $s3, $zero
/* C86608 80240B58 0C0128FA */  jal       func_8004A3E8
/* C8660C 80240B5C 0280302D */   daddu    $a2, $s4, $zero
/* C86610 80240B60 080902EE */  j         .L80240BB8
/* C86614 80240B64 00000000 */   nop
glabel L80240B68_C86618
/* C86618 80240B68 0C0900C4 */  jal       kzn_17_UnkNpcAIFunc6
/* C8661C 80240B6C 0240202D */   daddu    $a0, $s2, $zero
glabel L80240B70_C86620
/* C86620 80240B70 0C0900DF */  jal       kzn_17_UnkNpcAIFunc7
/* C86624 80240B74 0240202D */   daddu    $a0, $s2, $zero
/* C86628 80240B78 8E430070 */  lw        $v1, 0x70($s2)
/* C8662C 80240B7C 24020020 */  addiu     $v0, $zero, 0x20
/* C86630 80240B80 1462000D */  bne       $v1, $v0, .L80240BB8
/* C86634 80240B84 00000000 */   nop
glabel L80240B88_C86638
/* C86638 80240B88 0C0900FB */  jal       kzn_17_UnkNpcAIFunc8
/* C8663C 80240B8C 0240202D */   daddu    $a0, $s2, $zero
/* C86640 80240B90 8E430070 */  lw        $v1, 0x70($s2)
/* C86644 80240B94 24020021 */  addiu     $v0, $zero, 0x21
/* C86648 80240B98 14620007 */  bne       $v1, $v0, .L80240BB8
/* C8664C 80240B9C 00000000 */   nop
glabel L80240BA0_C86650
/* C86650 80240BA0 0C090131 */  jal       kzn_17_UnkNpcAIFunc5
/* C86654 80240BA4 0240202D */   daddu    $a0, $s2, $zero
/* C86658 80240BA8 080902EE */  j         .L80240BB8
/* C8665C 80240BAC 00000000 */   nop
glabel L80240BB0_C86660
/* C86660 80240BB0 0C0129CF */  jal       func_8004A73C
/* C86664 80240BB4 0240202D */   daddu    $a0, $s2, $zero
.L80240BB8:
glabel L80240BB8_C86668
/* C86668 80240BB8 8FBF0048 */  lw        $ra, 0x48($sp)
/* C8666C 80240BBC 8FB50044 */  lw        $s5, 0x44($sp)
/* C86670 80240BC0 8FB40040 */  lw        $s4, 0x40($sp)
/* C86674 80240BC4 8FB3003C */  lw        $s3, 0x3c($sp)
/* C86678 80240BC8 8FB20038 */  lw        $s2, 0x38($sp)
/* C8667C 80240BCC 8FB10034 */  lw        $s1, 0x34($sp)
/* C86680 80240BD0 8FB00030 */  lw        $s0, 0x30($sp)
/* C86684 80240BD4 0000102D */  daddu     $v0, $zero, $zero
/* C86688 80240BD8 03E00008 */  jr        $ra
/* C8668C 80240BDC 27BD0050 */   addiu    $sp, $sp, 0x50
