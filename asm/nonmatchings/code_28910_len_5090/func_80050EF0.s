.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80050EF0
/* 2C2F0 80050EF0 00041100 */  sll       $v0, $a0, 4
/* 2C2F4 80050EF4 00441023 */  subu      $v0, $v0, $a0
/* 2C2F8 80050EF8 000210C0 */  sll       $v0, $v0, 3
/* 2C2FC 80050EFC 00441021 */  addu      $v0, $v0, $a0
/* 2C300 80050F00 00021080 */  sll       $v0, $v0, 2
/* 2C304 80050F04 3C03800A */  lui       $v1, 0x800a
/* 2C308 80050F08 8C63A628 */  lw        $v1, -0x59d8($v1)
/* 2C30C 80050F0C 24420024 */  addiu     $v0, $v0, 0x24
/* 2C310 80050F10 00621821 */  addu      $v1, $v1, $v0
/* 2C314 80050F14 8C620004 */  lw        $v0, 4($v1)
/* 2C318 80050F18 10400010 */  beqz      $v0, .L80050F5C
/* 2C31C 80050F1C 00000000 */   nop      
/* 2C320 80050F20 8C620008 */  lw        $v0, 8($v1)
/* 2C324 80050F24 1040000D */  beqz      $v0, .L80050F5C
/* 2C328 80050F28 00000000 */   nop      
/* 2C32C 80050F2C 90620024 */  lbu       $v0, 0x24($v1)
/* 2C330 80050F30 10400005 */  beqz      $v0, .L80050F48
/* 2C334 80050F34 00000000 */   nop      
/* 2C338 80050F38 AC600008 */  sw        $zero, 8($v1)
/* 2C33C 80050F3C AC600020 */  sw        $zero, 0x20($v1)
/* 2C340 80050F40 03E00008 */  jr        $ra
/* 2C344 80050F44 A0600024 */   sb       $zero, 0x24($v1)
.L80050F48:
/* 2C348 80050F48 3C028008 */  lui       $v0, 0x8008
/* 2C34C 80050F4C 24428520 */  addiu     $v0, $v0, -0x7ae0
/* 2C350 80050F50 AC620008 */  sw        $v0, 8($v1)
/* 2C354 80050F54 24020001 */  addiu     $v0, $zero, 1
/* 2C358 80050F58 AC620018 */  sw        $v0, 0x18($v1)
.L80050F5C:
/* 2C35C 80050F5C 03E00008 */  jr        $ra
/* 2C360 80050F60 00000000 */   nop      
