.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802415E0_910C90
/* 910C90 802415E0 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 910C94 802415E4 AFB3001C */  sw        $s3, 0x1c($sp)
/* 910C98 802415E8 0080982D */  daddu     $s3, $a0, $zero
/* 910C9C 802415EC AFBF0020 */  sw        $ra, 0x20($sp)
/* 910CA0 802415F0 AFB20018 */  sw        $s2, 0x18($sp)
/* 910CA4 802415F4 AFB10014 */  sw        $s1, 0x14($sp)
/* 910CA8 802415F8 AFB00010 */  sw        $s0, 0x10($sp)
/* 910CAC 802415FC 8E710148 */  lw        $s1, 0x148($s3)
/* 910CB0 80241600 86240008 */  lh        $a0, 8($s1)
/* 910CB4 80241604 0C00EABB */  jal       get_npc_unsafe
/* 910CB8 80241608 00A0902D */   daddu    $s2, $a1, $zero
/* 910CBC 8024160C 8E440004 */  lw        $a0, 4($s2)
/* 910CC0 80241610 0040802D */  daddu     $s0, $v0, $zero
/* 910CC4 80241614 00041FC2 */  srl       $v1, $a0, 0x1f
/* 910CC8 80241618 00832021 */  addu      $a0, $a0, $v1
/* 910CCC 8024161C 00042043 */  sra       $a0, $a0, 1
/* 910CD0 80241620 0C00A67F */  jal       rand_int
/* 910CD4 80241624 24840001 */   addiu    $a0, $a0, 1
/* 910CD8 80241628 8E430004 */  lw        $v1, 4($s2)
/* 910CDC 8024162C 2404003C */  addiu     $a0, $zero, 0x3c
/* 910CE0 80241630 00032FC2 */  srl       $a1, $v1, 0x1f
/* 910CE4 80241634 00651821 */  addu      $v1, $v1, $a1
/* 910CE8 80241638 00031843 */  sra       $v1, $v1, 1
/* 910CEC 8024163C 00621821 */  addu      $v1, $v1, $v0
/* 910CF0 80241640 0C00A67F */  jal       rand_int
/* 910CF4 80241644 A603008E */   sh       $v1, 0x8e($s0)
/* 910CF8 80241648 C60C000C */  lwc1      $f12, 0xc($s0)
/* 910CFC 8024164C 44820000 */  mtc1      $v0, $f0
/* 910D00 80241650 00000000 */  nop
/* 910D04 80241654 46800020 */  cvt.s.w   $f0, $f0
/* 910D08 80241658 46006300 */  add.s     $f12, $f12, $f0
/* 910D0C 8024165C 3C0141F0 */  lui       $at, 0x41f0
/* 910D10 80241660 44810000 */  mtc1      $at, $f0
/* 910D14 80241664 0C00A6C9 */  jal       clamp_angle
/* 910D18 80241668 46006301 */   sub.s    $f12, $f12, $f0
/* 910D1C 8024166C E600000C */  swc1      $f0, 0xc($s0)
/* 910D20 80241670 8E2200D0 */  lw        $v0, 0xd0($s1)
/* 910D24 80241674 8C420014 */  lw        $v0, 0x14($v0)
/* 910D28 80241678 04410004 */  bgez      $v0, .L8024168C
/* 910D2C 8024167C 00000000 */   nop
/* 910D30 80241680 C6400000 */  lwc1      $f0, ($s2)
/* 910D34 80241684 080905AB */  j         .L802416AC
/* 910D38 80241688 E6000018 */   swc1     $f0, 0x18($s0)
.L8024168C:
/* 910D3C 8024168C 3C018024 */  lui       $at, %hi(D_802463C8_915A78)
/* 910D40 80241690 D42263C8 */  ldc1      $f2, %lo(D_802463C8_915A78)($at)
/* 910D44 80241694 44820000 */  mtc1      $v0, $f0
/* 910D48 80241698 00000000 */  nop
/* 910D4C 8024169C 46800021 */  cvt.d.w   $f0, $f0
/* 910D50 802416A0 46220003 */  div.d     $f0, $f0, $f2
/* 910D54 802416A4 46200020 */  cvt.s.d   $f0, $f0
/* 910D58 802416A8 E6000018 */  swc1      $f0, 0x18($s0)
.L802416AC:
/* 910D5C 802416AC 8E220000 */  lw        $v0, ($s1)
/* 910D60 802416B0 3C031F10 */  lui       $v1, 0x1f10
/* 910D64 802416B4 00431025 */  or        $v0, $v0, $v1
/* 910D68 802416B8 AE220000 */  sw        $v0, ($s1)
/* 910D6C 802416BC 8E020000 */  lw        $v0, ($s0)
/* 910D70 802416C0 34420002 */  ori       $v0, $v0, 2
/* 910D74 802416C4 AE020000 */  sw        $v0, ($s0)
/* 910D78 802416C8 24020001 */  addiu     $v0, $zero, 1
/* 910D7C 802416CC AE600074 */  sw        $zero, 0x74($s3)
/* 910D80 802416D0 AE620070 */  sw        $v0, 0x70($s3)
/* 910D84 802416D4 8FBF0020 */  lw        $ra, 0x20($sp)
/* 910D88 802416D8 8FB3001C */  lw        $s3, 0x1c($sp)
/* 910D8C 802416DC 8FB20018 */  lw        $s2, 0x18($sp)
/* 910D90 802416E0 8FB10014 */  lw        $s1, 0x14($sp)
/* 910D94 802416E4 8FB00010 */  lw        $s0, 0x10($sp)
/* 910D98 802416E8 03E00008 */  jr        $ra
/* 910D9C 802416EC 27BD0028 */   addiu    $sp, $sp, 0x28
