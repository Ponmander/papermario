.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800521E8
/* 2D5E8 800521E8 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 2D5EC 800521EC AFB3001C */  sw        $s3, 0x1c($sp)
/* 2D5F0 800521F0 00A0982D */  daddu     $s3, $a1, $zero
/* 2D5F4 800521F4 AFBF0024 */  sw        $ra, 0x24($sp)
/* 2D5F8 800521F8 AFB40020 */  sw        $s4, 0x20($sp)
/* 2D5FC 800521FC AFB20018 */  sw        $s2, 0x18($sp)
/* 2D600 80052200 AFB10014 */  sw        $s1, 0x14($sp)
/* 2D604 80052204 AFB00010 */  sw        $s0, 0x10($sp)
/* 2D608 80052208 8E700030 */  lw        $s0, 0x30($s3)
/* 2D60C 8005220C 8E620034 */  lw        $v0, 0x34($s3)
/* 2D610 80052210 0202102B */  sltu      $v0, $s0, $v0
/* 2D614 80052214 1040001C */  beqz      $v0, .L80052288
/* 2D618 80052218 0080A02D */   daddu    $s4, $a0, $zero
/* 2D61C 8005221C 001010C0 */  sll       $v0, $s0, 3
/* 2D620 80052220 00501021 */  addu      $v0, $v0, $s0
/* 2D624 80052224 000210C0 */  sll       $v0, $v0, 3
/* 2D628 80052228 24521320 */  addiu     $s2, $v0, 0x1320
.L8005222C:
/* 2D62C 8005222C 8E620030 */  lw        $v0, 0x30($s3)
/* 2D630 80052230 02021023 */  subu      $v0, $s0, $v0
/* 2D634 80052234 000210C0 */  sll       $v0, $v0, 3
/* 2D638 80052238 244207B4 */  addiu     $v0, $v0, 0x7b4
/* 2D63C 8005223C 02828821 */  addu      $s1, $s4, $v0
/* 2D640 80052240 92230000 */  lbu       $v1, ($s1)
/* 2D644 80052244 92620014 */  lbu       $v0, 0x14($s3)
/* 2D648 80052248 1462000A */  bne       $v1, $v0, .L80052274
/* 2D64C 8005224C 00000000 */   nop      
/* 2D650 80052250 8E820000 */  lw        $v0, ($s4)
/* 2D654 80052254 00522021 */  addu      $a0, $v0, $s2
/* 2D658 80052258 90830045 */  lbu       $v1, 0x45($a0)
/* 2D65C 8005225C 92820022 */  lbu       $v0, 0x22($s4)
/* 2D660 80052260 54620004 */  bnel      $v1, $v0, .L80052274
/* 2D664 80052264 AE200000 */   sw       $zero, ($s1)
/* 2D668 80052268 0C014E31 */  jal       func_800538C4
/* 2D66C 8005226C 320500FF */   andi     $a1, $s0, 0xff
/* 2D670 80052270 AE200000 */  sw        $zero, ($s1)
.L80052274:
/* 2D674 80052274 8E620034 */  lw        $v0, 0x34($s3)
/* 2D678 80052278 26100001 */  addiu     $s0, $s0, 1
/* 2D67C 8005227C 0202102B */  sltu      $v0, $s0, $v0
/* 2D680 80052280 1440FFEA */  bnez      $v0, .L8005222C
/* 2D684 80052284 26520048 */   addiu    $s2, $s2, 0x48
.L80052288:
/* 2D688 80052288 8FBF0024 */  lw        $ra, 0x24($sp)
/* 2D68C 8005228C 8FB40020 */  lw        $s4, 0x20($sp)
/* 2D690 80052290 8FB3001C */  lw        $s3, 0x1c($sp)
/* 2D694 80052294 8FB20018 */  lw        $s2, 0x18($sp)
/* 2D698 80052298 8FB10014 */  lw        $s1, 0x14($sp)
/* 2D69C 8005229C 8FB00010 */  lw        $s0, 0x10($sp)
/* 2D6A0 800522A0 03E00008 */  jr        $ra
/* 2D6A4 800522A4 27BD0028 */   addiu    $sp, $sp, 0x28