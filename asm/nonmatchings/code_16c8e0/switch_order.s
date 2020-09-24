.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel switch_order
/* 1721F8 80243918 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 1721FC 8024391C 3C040041 */  lui       $a0, 0x41
/* 172200 80243920 24845D90 */  addiu     $a0, $a0, 0x5d90
/* 172204 80243924 AFB00010 */  sw        $s0, 0x10($sp)
/* 172208 80243928 3C10800E */  lui       $s0, 0x800e
/* 17220C 8024392C 2610C070 */  addiu     $s0, $s0, -0x3f90
/* 172210 80243930 2402FFFF */  addiu     $v0, $zero, -1
/* 172214 80243934 3C050042 */  lui       $a1, 0x42
/* 172218 80243938 24A519F0 */  addiu     $a1, $a1, 0x19f0
/* 17221C 8024393C 3C06802A */  lui       $a2, 0x802a
/* 172220 80243940 24C61000 */  addiu     $a2, $a2, 0x1000
/* 172224 80243944 AFBF0018 */  sw        $ra, 0x18($sp)
/* 172228 80243948 AFB10014 */  sw        $s1, 0x14($sp)
/* 17222C 8024394C A202004D */  sb        $v0, 0x4d($s0)
/* 172230 80243950 A202004E */  sb        $v0, 0x4e($s0)
/* 172234 80243954 A202004F */  sb        $v0, 0x4f($s0)
/* 172238 80243958 A2020050 */  sb        $v0, 0x50($s0)
/* 17223C 8024395C A2020051 */  sb        $v0, 0x51($s0)
/* 172240 80243960 A2020052 */  sb        $v0, 0x52($s0)
/* 172244 80243964 A2020053 */  sb        $v0, 0x53($s0)
/* 172248 80243968 A202005D */  sb        $v0, 0x5d($s0)
/* 17224C 8024396C A2020062 */  sb        $v0, 0x62($s0)
/* 172250 80243970 0C00A5CF */  jal       dma_copy
/* 172254 80243974 A2020063 */   sb       $v0, 0x63($s0)
/* 172258 80243978 8E020000 */  lw        $v0, ($s0)
/* 17225C 8024397C 3C030008 */  lui       $v1, 8
/* 172260 80243980 00431024 */  and       $v0, $v0, $v1
/* 172264 80243984 1440000B */  bnez      $v0, .L802439B4
/* 172268 80243988 2404000E */   addiu    $a0, $zero, 0xe
/* 17226C 8024398C 3C11800E */  lui       $s1, 0x800e
/* 172270 80243990 2631C4DC */  addiu     $s1, $s1, -0x3b24
/* 172274 80243994 8E300000 */  lw        $s0, ($s1)
/* 172278 80243998 24020046 */  addiu     $v0, $zero, 0x46
/* 17227C 8024399C 16020005 */  bne       $s0, $v0, .L802439B4
/* 172280 802439A0 2404000D */   addiu    $a0, $zero, 0xd
/* 172284 802439A4 0C090464 */  jal       func_80241190
/* 172288 802439A8 2404000D */   addiu    $a0, $zero, 0xd
/* 17228C 802439AC 08090E6F */  j         .L802439BC
/* 172290 802439B0 AE300000 */   sw       $s0, ($s1)
.L802439B4:
/* 172294 802439B4 0C090464 */  jal       func_80241190
/* 172298 802439B8 00000000 */   nop      
.L802439BC:
/* 17229C 802439BC 8FBF0018 */  lw        $ra, 0x18($sp)
/* 1722A0 802439C0 8FB10014 */  lw        $s1, 0x14($sp)
/* 1722A4 802439C4 8FB00010 */  lw        $s0, 0x10($sp)
/* 1722A8 802439C8 03E00008 */  jr        $ra
/* 1722AC 802439CC 27BD0020 */   addiu    $sp, $sp, 0x20
