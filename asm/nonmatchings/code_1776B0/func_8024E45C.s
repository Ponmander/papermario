.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024E45C
/* 17CD3C 8024E45C 3C028028 */  lui       $v0, %hi(D_80280CE0)
/* 17CD40 8024E460 80420CE0 */  lb        $v0, %lo(D_80280CE0)($v0)
/* 17CD44 8024E464 14400005 */  bnez      $v0, .L8024E47C
/* 17CD48 8024E468 00000000 */   nop
/* 17CD4C 8024E46C 3C01802A */  lui       $at, %hi(D_8029F27C)
/* 17CD50 8024E470 A424F27C */  sh        $a0, %lo(D_8029F27C)($at)
/* 17CD54 8024E474 3C01802A */  lui       $at, %hi(D_8029F27E)
/* 17CD58 8024E478 A425F27E */  sh        $a1, %lo(D_8029F27E)($at)
.L8024E47C:
/* 17CD5C 8024E47C 03E00008 */  jr        $ra
/* 17CD60 8024E480 00000000 */   nop
