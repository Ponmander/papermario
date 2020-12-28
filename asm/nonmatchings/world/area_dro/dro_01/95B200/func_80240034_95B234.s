.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240034_95B234
/* 95B234 80240034 3C038016 */  lui       $v1, %hi(gCollisionStatus+0x2)
/* 95B238 80240038 8463A552 */  lh        $v1, %lo(gCollisionStatus+0x2)($v1)
/* 95B23C 8024003C 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 95B240 80240040 AFB00010 */  sw        $s0, 0x10($sp)
/* 95B244 80240044 0080802D */  daddu     $s0, $a0, $zero
/* 95B248 80240048 AFBF0014 */  sw        $ra, 0x14($sp)
/* 95B24C 8024004C 8E0200B0 */  lw        $v0, 0xb0($s0)
/* 95B250 80240050 10620003 */  beq       $v1, $v0, .L80240060
/* 95B254 80240054 24020002 */   addiu    $v0, $zero, 2
/* 95B258 80240058 08090038 */  j         .L802400E0
/* 95B25C 8024005C AE000084 */   sw       $zero, 0x84($s0)
.L80240060:
/* 95B260 80240060 3C038007 */  lui       $v1, %hi(gGameStatusPtr)
/* 95B264 80240064 8C63419C */  lw        $v1, %lo(gGameStatusPtr)($v1)
/* 95B268 80240068 80620040 */  lb        $v0, 0x40($v1)
/* 95B26C 8024006C 80670044 */  lb        $a3, 0x44($v1)
/* 95B270 80240070 04420001 */  bltzl     $v0, .L80240078
/* 95B274 80240074 00021023 */   negu     $v0, $v0
.L80240078:
/* 95B278 80240078 14400003 */  bnez      $v0, .L80240088
/* 95B27C 8024007C 00000000 */   nop      
/* 95B280 80240080 50E00017 */  beql      $a3, $zero, .L802400E0
/* 95B284 80240084 0000102D */   daddu    $v0, $zero, $zero
.L80240088:
/* 95B288 80240088 44822000 */  mtc1      $v0, $f4
/* 95B28C 8024008C 00000000 */  nop       
/* 95B290 80240090 46802120 */  cvt.s.w   $f4, $f4
/* 95B294 80240094 44062000 */  mfc1      $a2, $f4
/* 95B298 80240098 44872000 */  mtc1      $a3, $f4
/* 95B29C 8024009C 00000000 */  nop       
/* 95B2A0 802400A0 46802120 */  cvt.s.w   $f4, $f4
/* 95B2A4 802400A4 44806000 */  mtc1      $zero, $f12
/* 95B2A8 802400A8 44072000 */  mfc1      $a3, $f4
/* 95B2AC 802400AC 0C00A720 */  jal       atan2
/* 95B2B0 802400B0 46006386 */   mov.s    $f14, $f12
/* 95B2B4 802400B4 3C014270 */  lui       $at, 0x4270
/* 95B2B8 802400B8 44811000 */  mtc1      $at, $f2
/* 95B2BC 802400BC 00000000 */  nop       
/* 95B2C0 802400C0 4602003C */  c.lt.s    $f0, $f2
/* 95B2C4 802400C4 00000000 */  nop       
/* 95B2C8 802400C8 45000004 */  bc1f      .L802400DC
/* 95B2CC 802400CC 24020001 */   addiu    $v0, $zero, 1
/* 95B2D0 802400D0 AE020084 */  sw        $v0, 0x84($s0)
/* 95B2D4 802400D4 08090038 */  j         .L802400E0
/* 95B2D8 802400D8 24020002 */   addiu    $v0, $zero, 2
.L802400DC:
/* 95B2DC 802400DC 0000102D */  daddu     $v0, $zero, $zero
.L802400E0:
/* 95B2E0 802400E0 8FBF0014 */  lw        $ra, 0x14($sp)
/* 95B2E4 802400E4 8FB00010 */  lw        $s0, 0x10($sp)
/* 95B2E8 802400E8 03E00008 */  jr        $ra
/* 95B2EC 802400EC 27BD0018 */   addiu    $sp, $sp, 0x18