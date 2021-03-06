.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240DA4_8937C4
/* 8937C4 80240DA4 3C038016 */  lui       $v1, %hi(gCollisionStatus+0x2)
/* 8937C8 80240DA8 8463A552 */  lh        $v1, %lo(gCollisionStatus+0x2)($v1)
/* 8937CC 80240DAC 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 8937D0 80240DB0 AFB00010 */  sw        $s0, 0x10($sp)
/* 8937D4 80240DB4 0080802D */  daddu     $s0, $a0, $zero
/* 8937D8 80240DB8 AFBF0014 */  sw        $ra, 0x14($sp)
/* 8937DC 80240DBC 8E0200B0 */  lw        $v0, 0xb0($s0)
/* 8937E0 80240DC0 10620003 */  beq       $v1, $v0, .L80240DD0
/* 8937E4 80240DC4 24020002 */   addiu    $v0, $zero, 2
/* 8937E8 80240DC8 08090394 */  j         .L80240E50
/* 8937EC 80240DCC AE000084 */   sw       $zero, 0x84($s0)
.L80240DD0:
/* 8937F0 80240DD0 3C038007 */  lui       $v1, %hi(gGameStatusPtr)
/* 8937F4 80240DD4 8C63419C */  lw        $v1, %lo(gGameStatusPtr)($v1)
/* 8937F8 80240DD8 80620040 */  lb        $v0, 0x40($v1)
/* 8937FC 80240DDC 80670044 */  lb        $a3, 0x44($v1)
/* 893800 80240DE0 04420001 */  bltzl     $v0, .L80240DE8
/* 893804 80240DE4 00021023 */   negu     $v0, $v0
.L80240DE8:
/* 893808 80240DE8 14400003 */  bnez      $v0, .L80240DF8
/* 89380C 80240DEC 00000000 */   nop
/* 893810 80240DF0 50E00017 */  beql      $a3, $zero, .L80240E50
/* 893814 80240DF4 0000102D */   daddu    $v0, $zero, $zero
.L80240DF8:
/* 893818 80240DF8 44822000 */  mtc1      $v0, $f4
/* 89381C 80240DFC 00000000 */  nop
/* 893820 80240E00 46802120 */  cvt.s.w   $f4, $f4
/* 893824 80240E04 44062000 */  mfc1      $a2, $f4
/* 893828 80240E08 44872000 */  mtc1      $a3, $f4
/* 89382C 80240E0C 00000000 */  nop
/* 893830 80240E10 46802120 */  cvt.s.w   $f4, $f4
/* 893834 80240E14 44806000 */  mtc1      $zero, $f12
/* 893838 80240E18 44072000 */  mfc1      $a3, $f4
/* 89383C 80240E1C 0C00A720 */  jal       atan2
/* 893840 80240E20 46006386 */   mov.s    $f14, $f12
/* 893844 80240E24 3C014270 */  lui       $at, 0x4270
/* 893848 80240E28 44811000 */  mtc1      $at, $f2
/* 89384C 80240E2C 00000000 */  nop
/* 893850 80240E30 4602003C */  c.lt.s    $f0, $f2
/* 893854 80240E34 00000000 */  nop
/* 893858 80240E38 45000004 */  bc1f      .L80240E4C
/* 89385C 80240E3C 24020001 */   addiu    $v0, $zero, 1
/* 893860 80240E40 AE020084 */  sw        $v0, 0x84($s0)
/* 893864 80240E44 08090394 */  j         .L80240E50
/* 893868 80240E48 24020002 */   addiu    $v0, $zero, 2
.L80240E4C:
/* 89386C 80240E4C 0000102D */  daddu     $v0, $zero, $zero
.L80240E50:
/* 893870 80240E50 8FBF0014 */  lw        $ra, 0x14($sp)
/* 893874 80240E54 8FB00010 */  lw        $s0, 0x10($sp)
/* 893878 80240E58 03E00008 */  jr        $ra
/* 89387C 80240E5C 27BD0018 */   addiu    $sp, $sp, 0x18
