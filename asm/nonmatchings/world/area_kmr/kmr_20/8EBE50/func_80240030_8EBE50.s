.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240030_8EBE50
/* 8EBE50 80240030 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* 8EBE54 80240034 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* 8EBE58 80240038 8C430004 */  lw        $v1, 4($v0)
/* 8EBE5C 8024003C 3C040010 */  lui       $a0, 0x10
/* 8EBE60 80240040 00641825 */  or        $v1, $v1, $a0
/* 8EBE64 80240044 AC430004 */  sw        $v1, 4($v0)
/* 8EBE68 80240048 03E00008 */  jr        $ra
/* 8EBE6C 8024004C 24020002 */   addiu    $v0, $zero, 2