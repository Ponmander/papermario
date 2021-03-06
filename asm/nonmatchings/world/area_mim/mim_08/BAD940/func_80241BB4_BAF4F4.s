.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241BB4_BAF4F4
/* BAF4F4 80241BB4 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* BAF4F8 80241BB8 AFB20038 */  sw        $s2, 0x38($sp)
/* BAF4FC 80241BBC 0080902D */  daddu     $s2, $a0, $zero
/* BAF500 80241BC0 AFBF0048 */  sw        $ra, 0x48($sp)
/* BAF504 80241BC4 AFB50044 */  sw        $s5, 0x44($sp)
/* BAF508 80241BC8 AFB40040 */  sw        $s4, 0x40($sp)
/* BAF50C 80241BCC AFB3003C */  sw        $s3, 0x3c($sp)
/* BAF510 80241BD0 AFB10034 */  sw        $s1, 0x34($sp)
/* BAF514 80241BD4 AFB00030 */  sw        $s0, 0x30($sp)
/* BAF518 80241BD8 8E510148 */  lw        $s1, 0x148($s2)
/* BAF51C 80241BDC 86240008 */  lh        $a0, 8($s1)
/* BAF520 80241BE0 0C00EABB */  jal       get_npc_unsafe
/* BAF524 80241BE4 00A0802D */   daddu    $s0, $a1, $zero
/* BAF528 80241BE8 8E43000C */  lw        $v1, 0xc($s2)
/* BAF52C 80241BEC 0240202D */  daddu     $a0, $s2, $zero
/* BAF530 80241BF0 8C650000 */  lw        $a1, ($v1)
/* BAF534 80241BF4 0C0B1EAF */  jal       get_variable
/* BAF538 80241BF8 0040A82D */   daddu    $s5, $v0, $zero
/* BAF53C 80241BFC AFA00010 */  sw        $zero, 0x10($sp)
/* BAF540 80241C00 8E2300D0 */  lw        $v1, 0xd0($s1)
/* BAF544 80241C04 8C630030 */  lw        $v1, 0x30($v1)
/* BAF548 80241C08 AFA30014 */  sw        $v1, 0x14($sp)
/* BAF54C 80241C0C 8E2300D0 */  lw        $v1, 0xd0($s1)
/* BAF550 80241C10 8C63001C */  lw        $v1, 0x1c($v1)
/* BAF554 80241C14 AFA30018 */  sw        $v1, 0x18($sp)
/* BAF558 80241C18 8E2300D0 */  lw        $v1, 0xd0($s1)
/* BAF55C 80241C1C 8C630024 */  lw        $v1, 0x24($v1)
/* BAF560 80241C20 AFA3001C */  sw        $v1, 0x1c($sp)
/* BAF564 80241C24 8E2300D0 */  lw        $v1, 0xd0($s1)
/* BAF568 80241C28 8C630028 */  lw        $v1, 0x28($v1)
/* BAF56C 80241C2C 27B40010 */  addiu     $s4, $sp, 0x10
/* BAF570 80241C30 AFA30020 */  sw        $v1, 0x20($sp)
/* BAF574 80241C34 8E2300D0 */  lw        $v1, 0xd0($s1)
/* BAF578 80241C38 3C014282 */  lui       $at, 0x4282
/* BAF57C 80241C3C 44810000 */  mtc1      $at, $f0
/* BAF580 80241C40 8C63002C */  lw        $v1, 0x2c($v1)
/* BAF584 80241C44 0040982D */  daddu     $s3, $v0, $zero
/* BAF588 80241C48 E7A00028 */  swc1      $f0, 0x28($sp)
/* BAF58C 80241C4C A7A0002C */  sh        $zero, 0x2c($sp)
/* BAF590 80241C50 16000005 */  bnez      $s0, .L80241C68
/* BAF594 80241C54 AFA30024 */   sw       $v1, 0x24($sp)
/* BAF598 80241C58 8E2200B0 */  lw        $v0, 0xb0($s1)
/* BAF59C 80241C5C 30420004 */  andi      $v0, $v0, 4
/* BAF5A0 80241C60 10400020 */  beqz      $v0, .L80241CE4
/* BAF5A4 80241C64 00000000 */   nop
.L80241C68:
/* BAF5A8 80241C68 2404F7FF */  addiu     $a0, $zero, -0x801
/* BAF5AC 80241C6C AE400070 */  sw        $zero, 0x70($s2)
/* BAF5B0 80241C70 A6A0008E */  sh        $zero, 0x8e($s5)
/* BAF5B4 80241C74 8E2200CC */  lw        $v0, 0xcc($s1)
/* BAF5B8 80241C78 8EA30000 */  lw        $v1, ($s5)
/* BAF5BC 80241C7C 8C420000 */  lw        $v0, ($v0)
/* BAF5C0 80241C80 00641824 */  and       $v1, $v1, $a0
/* BAF5C4 80241C84 AEA30000 */  sw        $v1, ($s5)
/* BAF5C8 80241C88 AEA20028 */  sw        $v0, 0x28($s5)
/* BAF5CC 80241C8C 8E2200D0 */  lw        $v0, 0xd0($s1)
/* BAF5D0 80241C90 8C420034 */  lw        $v0, 0x34($v0)
/* BAF5D4 80241C94 54400005 */  bnel      $v0, $zero, .L80241CAC
/* BAF5D8 80241C98 2402FDFF */   addiu    $v0, $zero, -0x201
/* BAF5DC 80241C9C 34620200 */  ori       $v0, $v1, 0x200
/* BAF5E0 80241CA0 2403FFF7 */  addiu     $v1, $zero, -9
/* BAF5E4 80241CA4 0809072D */  j         .L80241CB4
/* BAF5E8 80241CA8 00431024 */   and      $v0, $v0, $v1
.L80241CAC:
/* BAF5EC 80241CAC 00621024 */  and       $v0, $v1, $v0
/* BAF5F0 80241CB0 34420008 */  ori       $v0, $v0, 8
.L80241CB4:
/* BAF5F4 80241CB4 AEA20000 */  sw        $v0, ($s5)
/* BAF5F8 80241CB8 8E2200B0 */  lw        $v0, 0xb0($s1)
/* BAF5FC 80241CBC 30420004 */  andi      $v0, $v0, 4
/* BAF600 80241CC0 10400007 */  beqz      $v0, .L80241CE0
/* BAF604 80241CC4 24020063 */   addiu    $v0, $zero, 0x63
/* BAF608 80241CC8 AE420070 */  sw        $v0, 0x70($s2)
/* BAF60C 80241CCC AE400074 */  sw        $zero, 0x74($s2)
/* BAF610 80241CD0 8E2200B0 */  lw        $v0, 0xb0($s1)
/* BAF614 80241CD4 2403FFFB */  addiu     $v1, $zero, -5
/* BAF618 80241CD8 00431024 */  and       $v0, $v0, $v1
/* BAF61C 80241CDC AE2200B0 */  sw        $v0, 0xb0($s1)
.L80241CE0:
/* BAF620 80241CE0 AE20006C */  sw        $zero, 0x6c($s1)
.L80241CE4:
/* BAF624 80241CE4 8E420070 */  lw        $v0, 0x70($s2)
/* BAF628 80241CE8 2842001E */  slti      $v0, $v0, 0x1e
/* BAF62C 80241CEC 10400009 */  beqz      $v0, .L80241D14
/* BAF630 80241CF0 00000000 */   nop
/* BAF634 80241CF4 8E22006C */  lw        $v0, 0x6c($s1)
/* BAF638 80241CF8 14400006 */  bnez      $v0, .L80241D14
/* BAF63C 80241CFC 00000000 */   nop
/* BAF640 80241D00 0C0905E8 */  jal       func_802417A0_BAF0E0
/* BAF644 80241D04 0240202D */   daddu    $a0, $s2, $zero
/* BAF648 80241D08 10400002 */  beqz      $v0, .L80241D14
/* BAF64C 80241D0C 2402001E */   addiu    $v0, $zero, 0x1e
/* BAF650 80241D10 AE420070 */  sw        $v0, 0x70($s2)
.L80241D14:
/* BAF654 80241D14 8E430070 */  lw        $v1, 0x70($s2)
/* BAF658 80241D18 2C620064 */  sltiu     $v0, $v1, 0x64
/* BAF65C 80241D1C 10400048 */  beqz      $v0, .L80241E40
/* BAF660 80241D20 00031080 */   sll      $v0, $v1, 2
/* BAF664 80241D24 3C018024 */  lui       $at, %hi(jtbl_80245300_BB2C40)
/* BAF668 80241D28 00220821 */  addu      $at, $at, $v0
/* BAF66C 80241D2C 8C225300 */  lw        $v0, %lo(jtbl_80245300_BB2C40)($at)
/* BAF670 80241D30 00400008 */  jr        $v0
/* BAF674 80241D34 00000000 */   nop
glabel L80241D38_BAF678
/* BAF678 80241D38 0240202D */  daddu     $a0, $s2, $zero
/* BAF67C 80241D3C 0260282D */  daddu     $a1, $s3, $zero
/* BAF680 80241D40 0C012568 */  jal       func_800495A0
/* BAF684 80241D44 0280302D */   daddu    $a2, $s4, $zero
glabel L80241D48_BAF688
/* BAF688 80241D48 0240202D */  daddu     $a0, $s2, $zero
/* BAF68C 80241D4C 0260282D */  daddu     $a1, $s3, $zero
/* BAF690 80241D50 0C0125AE */  jal       func_800496B8
/* BAF694 80241D54 0280302D */   daddu    $a2, $s4, $zero
/* BAF698 80241D58 08090790 */  j         .L80241E40
/* BAF69C 80241D5C 00000000 */   nop
glabel L80241D60_BAF6A0
/* BAF6A0 80241D60 0240202D */  daddu     $a0, $s2, $zero
/* BAF6A4 80241D64 0260282D */  daddu     $a1, $s3, $zero
/* BAF6A8 80241D68 0C0126D1 */  jal       base_UnkNpcAIFunc1
/* BAF6AC 80241D6C 0280302D */   daddu    $a2, $s4, $zero
glabel L80241D70_BAF6B0
/* BAF6B0 80241D70 0240202D */  daddu     $a0, $s2, $zero
/* BAF6B4 80241D74 0260282D */  daddu     $a1, $s3, $zero
/* BAF6B8 80241D78 0C012701 */  jal       func_80049C04
/* BAF6BC 80241D7C 0280302D */   daddu    $a2, $s4, $zero
/* BAF6C0 80241D80 08090790 */  j         .L80241E40
/* BAF6C4 80241D84 00000000 */   nop
glabel L80241D88_BAF6C8
/* BAF6C8 80241D88 0240202D */  daddu     $a0, $s2, $zero
/* BAF6CC 80241D8C 0260282D */  daddu     $a1, $s3, $zero
/* BAF6D0 80241D90 0C01278F */  jal       func_80049E3C
/* BAF6D4 80241D94 0280302D */   daddu    $a2, $s4, $zero
glabel L80241D98_BAF6D8
/* BAF6D8 80241D98 0240202D */  daddu     $a0, $s2, $zero
/* BAF6DC 80241D9C 0260282D */  daddu     $a1, $s3, $zero
/* BAF6E0 80241DA0 0C0127B3 */  jal       func_80049ECC
/* BAF6E4 80241DA4 0280302D */   daddu    $a2, $s4, $zero
/* BAF6E8 80241DA8 08090790 */  j         .L80241E40
/* BAF6EC 80241DAC 00000000 */   nop
glabel L80241DB0_BAF6F0
/* BAF6F0 80241DB0 0240202D */  daddu     $a0, $s2, $zero
/* BAF6F4 80241DB4 0260282D */  daddu     $a1, $s3, $zero
/* BAF6F8 80241DB8 0C0127DF */  jal       func_80049F7C
/* BAF6FC 80241DBC 0280302D */   daddu    $a2, $s4, $zero
glabel L80241DC0_BAF700
/* BAF700 80241DC0 0240202D */  daddu     $a0, $s2, $zero
/* BAF704 80241DC4 0260282D */  daddu     $a1, $s3, $zero
/* BAF708 80241DC8 0C012849 */  jal       func_8004A124
/* BAF70C 80241DCC 0280302D */   daddu    $a2, $s4, $zero
/* BAF710 80241DD0 08090790 */  j         .L80241E40
/* BAF714 80241DD4 00000000 */   nop
glabel L80241DD8_BAF718
/* BAF718 80241DD8 0240202D */  daddu     $a0, $s2, $zero
/* BAF71C 80241DDC 0260282D */  daddu     $a1, $s3, $zero
/* BAF720 80241DE0 0C0128FA */  jal       func_8004A3E8
/* BAF724 80241DE4 0280302D */   daddu    $a2, $s4, $zero
/* BAF728 80241DE8 08090790 */  j         .L80241E40
/* BAF72C 80241DEC 00000000 */   nop
glabel L80241DF0_BAF730
/* BAF730 80241DF0 0C090566 */  jal       mim_08_UnkNpcAIFunc6
/* BAF734 80241DF4 0240202D */   daddu    $a0, $s2, $zero
glabel L80241DF8_BAF738
/* BAF738 80241DF8 0C090581 */  jal       mim_08_UnkNpcAIFunc7
/* BAF73C 80241DFC 0240202D */   daddu    $a0, $s2, $zero
/* BAF740 80241E00 8E430070 */  lw        $v1, 0x70($s2)
/* BAF744 80241E04 24020020 */  addiu     $v0, $zero, 0x20
/* BAF748 80241E08 1462000D */  bne       $v1, $v0, .L80241E40
/* BAF74C 80241E0C 00000000 */   nop
glabel L80241E10_BAF750
/* BAF750 80241E10 0C09059D */  jal       mim_08_UnkNpcAIFunc8
/* BAF754 80241E14 0240202D */   daddu    $a0, $s2, $zero
/* BAF758 80241E18 8E430070 */  lw        $v1, 0x70($s2)
/* BAF75C 80241E1C 24020021 */  addiu     $v0, $zero, 0x21
/* BAF760 80241E20 14620007 */  bne       $v1, $v0, .L80241E40
/* BAF764 80241E24 00000000 */   nop
glabel L80241E28_BAF768
/* BAF768 80241E28 0C0905D3 */  jal       mim_08_UnkNpcAIFunc5
/* BAF76C 80241E2C 0240202D */   daddu    $a0, $s2, $zero
/* BAF770 80241E30 08090790 */  j         .L80241E40
/* BAF774 80241E34 00000000 */   nop
glabel L80241E38_BAF778
/* BAF778 80241E38 0C0129CF */  jal       func_8004A73C
/* BAF77C 80241E3C 0240202D */   daddu    $a0, $s2, $zero
.L80241E40:
glabel L80241E40_BAF780
/* BAF780 80241E40 8FBF0048 */  lw        $ra, 0x48($sp)
/* BAF784 80241E44 8FB50044 */  lw        $s5, 0x44($sp)
/* BAF788 80241E48 8FB40040 */  lw        $s4, 0x40($sp)
/* BAF78C 80241E4C 8FB3003C */  lw        $s3, 0x3c($sp)
/* BAF790 80241E50 8FB20038 */  lw        $s2, 0x38($sp)
/* BAF794 80241E54 8FB10034 */  lw        $s1, 0x34($sp)
/* BAF798 80241E58 8FB00030 */  lw        $s0, 0x30($sp)
/* BAF79C 80241E5C 0000102D */  daddu     $v0, $zero, $zero
/* BAF7A0 80241E60 03E00008 */  jr        $ra
/* BAF7A4 80241E64 27BD0050 */   addiu    $sp, $sp, 0x50
