.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802A116C_789FCC
/* 789FCC 802A116C 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 789FD0 802A1170 AFB1001C */  sw        $s1, 0x1c($sp)
/* 789FD4 802A1174 0080882D */  daddu     $s1, $a0, $zero
/* 789FD8 802A1178 AFBF0024 */  sw        $ra, 0x24($sp)
/* 789FDC 802A117C AFB20020 */  sw        $s2, 0x20($sp)
/* 789FE0 802A1180 AFB00018 */  sw        $s0, 0x18($sp)
/* 789FE4 802A1184 8E30000C */  lw        $s0, 0xc($s1)
/* 789FE8 802A1188 8E050000 */  lw        $a1, ($s0)
/* 789FEC 802A118C 0C0B1EAF */  jal       get_variable
/* 789FF0 802A1190 26100004 */   addiu    $s0, $s0, 4
/* 789FF4 802A1194 8E050000 */  lw        $a1, ($s0)
/* 789FF8 802A1198 26100004 */  addiu     $s0, $s0, 4
/* 789FFC 802A119C 0220202D */  daddu     $a0, $s1, $zero
/* 78A000 802A11A0 0C0B1EAF */  jal       get_variable
/* 78A004 802A11A4 0040902D */   daddu    $s2, $v0, $zero
/* 78A008 802A11A8 0220202D */  daddu     $a0, $s1, $zero
/* 78A00C 802A11AC 8E050000 */  lw        $a1, ($s0)
/* 78A010 802A11B0 0C0B1EAF */  jal       get_variable
/* 78A014 802A11B4 0040802D */   daddu    $s0, $v0, $zero
/* 78A018 802A11B8 44921000 */  mtc1      $s2, $f2
/* 78A01C 802A11BC 00000000 */  nop
/* 78A020 802A11C0 468010A0 */  cvt.s.w   $f2, $f2
/* 78A024 802A11C4 44051000 */  mfc1      $a1, $f2
/* 78A028 802A11C8 44901000 */  mtc1      $s0, $f2
/* 78A02C 802A11CC 00000000 */  nop
/* 78A030 802A11D0 468010A0 */  cvt.s.w   $f2, $f2
/* 78A034 802A11D4 44061000 */  mfc1      $a2, $f2
/* 78A038 802A11D8 44821000 */  mtc1      $v0, $f2
/* 78A03C 802A11DC 00000000 */  nop
/* 78A040 802A11E0 468010A0 */  cvt.s.w   $f2, $f2
/* 78A044 802A11E4 3C0141F0 */  lui       $at, 0x41f0
/* 78A048 802A11E8 44810000 */  mtc1      $at, $f0
/* 78A04C 802A11EC 44071000 */  mfc1      $a3, $f2
/* 78A050 802A11F0 0000202D */  daddu     $a0, $zero, $zero
/* 78A054 802A11F4 0C01BFBC */  jal       func_8006FEF0
/* 78A058 802A11F8 E7A00010 */   swc1     $f0, 0x10($sp)
/* 78A05C 802A11FC 8FBF0024 */  lw        $ra, 0x24($sp)
/* 78A060 802A1200 8FB20020 */  lw        $s2, 0x20($sp)
/* 78A064 802A1204 8FB1001C */  lw        $s1, 0x1c($sp)
/* 78A068 802A1208 8FB00018 */  lw        $s0, 0x18($sp)
/* 78A06C 802A120C 24020002 */  addiu     $v0, $zero, 2
/* 78A070 802A1210 03E00008 */  jr        $ra
/* 78A074 802A1214 27BD0028 */   addiu    $sp, $sp, 0x28
