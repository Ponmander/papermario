.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80141704
/* D7E04 80141704 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* D7E08 80141708 AFB3001C */  sw        $s3, 0x1c($sp)
/* D7E0C 8014170C 0080982D */  daddu     $s3, $a0, $zero
/* D7E10 80141710 AFBF0020 */  sw        $ra, 0x20($sp)
/* D7E14 80141714 AFB20018 */  sw        $s2, 0x18($sp)
/* D7E18 80141718 AFB10014 */  sw        $s1, 0x14($sp)
/* D7E1C 8014171C AFB00010 */  sw        $s0, 0x10($sp)
/* D7E20 80141720 8E700004 */  lw        $s0, 4($s3)
/* D7E24 80141724 8E64001C */  lw        $a0, 0x1c($s3)
/* D7E28 80141728 8E030000 */  lw        $v1, ($s0)
/* D7E2C 8014172C 2C62001C */  sltiu     $v0, $v1, 0x1c
/* D7E30 80141730 104002AF */  beqz      $v0, .L801421F0
/* D7E34 80141734 26100004 */   addiu    $s0, $s0, 4
/* D7E38 80141738 00031080 */  sll       $v0, $v1, 2
/* D7E3C 8014173C 3C018015 */  lui       $at, %hi(jtbl_801511B0)
/* D7E40 80141740 00220821 */  addu      $at, $at, $v0
/* D7E44 80141744 8C2211B0 */  lw        $v0, %lo(jtbl_801511B0)($at)
/* D7E48 80141748 00400008 */  jr        $v0
/* D7E4C 8014174C 00000000 */   nop
glabel L80141750_D7E50
/* D7E50 80141750 8E620000 */  lw        $v0, ($s3)
/* D7E54 80141754 2403003C */  addiu     $v1, $zero, 0x3c
/* D7E58 80141758 A2630047 */  sb        $v1, 0x47($s3)
/* D7E5C 8014175C 34420004 */  ori       $v0, $v0, 4
/* D7E60 80141760 0805087C */  j         .L801421F0
/* D7E64 80141764 AE620000 */   sw       $v0, ($s3)
glabel L80141768_D7E68
/* D7E68 80141768 2402003C */  addiu     $v0, $zero, 0x3c
/* D7E6C 8014176C A2620047 */  sb        $v0, 0x47($s3)
/* D7E70 80141770 8E620000 */  lw        $v0, ($s3)
/* D7E74 80141774 3C030004 */  lui       $v1, 4
/* D7E78 80141778 00431025 */  or        $v0, $v0, $v1
/* D7E7C 8014177C 0805087C */  j         .L801421F0
/* D7E80 80141780 AE620000 */   sw       $v0, ($s3)
glabel L80141784_D7E84
/* D7E84 80141784 24020001 */  addiu     $v0, $zero, 1
/* D7E88 80141788 8E630000 */  lw        $v1, ($s3)
/* D7E8C 8014178C 3C040008 */  lui       $a0, 8
/* D7E90 80141790 AE700004 */  sw        $s0, 4($s3)
/* D7E94 80141794 00641825 */  or        $v1, $v1, $a0
/* D7E98 80141798 0805087D */  j         .L801421F4
/* D7E9C 8014179C AE630000 */   sw       $v1, ($s3)
glabel L801417A0_D7EA0
/* D7EA0 801417A0 8E630000 */  lw        $v1, ($s3)
/* D7EA4 801417A4 24020001 */  addiu     $v0, $zero, 1
/* D7EA8 801417A8 AE700004 */  sw        $s0, 4($s3)
/* D7EAC 801417AC 34634000 */  ori       $v1, $v1, 0x4000
/* D7EB0 801417B0 0805087D */  j         .L801421F4
/* D7EB4 801417B4 AE630000 */   sw       $v1, ($s3)
glabel L801417B8_D7EB8
/* D7EB8 801417B8 24020001 */  addiu     $v0, $zero, 1
/* D7EBC 801417BC 8E630000 */  lw        $v1, ($s3)
/* D7EC0 801417C0 2404BFFF */  addiu     $a0, $zero, -0x4001
/* D7EC4 801417C4 0805073C */  j         .L80141CF0
/* D7EC8 801417C8 AE700004 */   sw       $s0, 4($s3)
glabel L801417CC_D7ECC
/* D7ECC 801417CC 8E110000 */  lw        $s1, ($s0)
/* D7ED0 801417D0 26100004 */  addiu     $s0, $s0, 4
/* D7ED4 801417D4 8E630000 */  lw        $v1, ($s3)
/* D7ED8 801417D8 24020001 */  addiu     $v0, $zero, 1
/* D7EDC 801417DC AE700004 */  sw        $s0, 4($s3)
/* D7EE0 801417E0 00711825 */  or        $v1, $v1, $s1
/* D7EE4 801417E4 0805087D */  j         .L801421F4
/* D7EE8 801417E8 AE630000 */   sw       $v1, ($s3)
glabel L801417EC_D7EEC
/* D7EEC 801417EC 8E110000 */  lw        $s1, ($s0)
/* D7EF0 801417F0 26100004 */  addiu     $s0, $s0, 4
/* D7EF4 801417F4 8E630000 */  lw        $v1, ($s3)
/* D7EF8 801417F8 24020001 */  addiu     $v0, $zero, 1
/* D7EFC 801417FC AE700004 */  sw        $s0, 4($s3)
/* D7F00 80141800 0805073C */  j         .L80141CF0
/* D7F04 80141804 00112027 */   nor      $a0, $zero, $s1
glabel L80141808_D7F08
/* D7F08 80141808 92020003 */  lbu       $v0, 3($s0)
/* D7F0C 8014180C 26100004 */  addiu     $s0, $s0, 4
/* D7F10 80141810 A2620047 */  sb        $v0, 0x47($s3)
/* D7F14 80141814 8E020000 */  lw        $v0, ($s0)
/* D7F18 80141818 3C030040 */  lui       $v1, 0x40
/* D7F1C 8014181C AE620010 */  sw        $v0, 0x10($s3)
/* D7F20 80141820 8E620000 */  lw        $v0, ($s3)
/* D7F24 80141824 26100004 */  addiu     $s0, $s0, 4
/* D7F28 80141828 00431024 */  and       $v0, $v0, $v1
/* D7F2C 8014182C 10400005 */  beqz      $v0, .L80141844
/* D7F30 80141830 AE700004 */   sw       $s0, 4($s3)
/* D7F34 80141834 8E620010 */  lw        $v0, 0x10($s3)
/* D7F38 80141838 8E630018 */  lw        $v1, 0x18($s3)
/* D7F3C 8014183C 00431021 */  addu      $v0, $v0, $v1
/* D7F40 80141840 AE620010 */  sw        $v0, 0x10($s3)
.L80141844:
/* D7F44 80141844 8E630000 */  lw        $v1, ($s3)
/* D7F48 80141848 30620100 */  andi      $v0, $v1, 0x100
/* D7F4C 8014184C 10400268 */  beqz      $v0, .L801421F0
/* D7F50 80141850 3C020010 */   lui      $v0, 0x10
/* D7F54 80141854 00621024 */  and       $v0, $v1, $v0
/* D7F58 80141858 14400012 */  bnez      $v0, .L801418A4
/* D7F5C 8014185C 00000000 */   nop
/* D7F60 80141860 3C028015 */  lui       $v0, %hi(D_8014EFCC)
/* D7F64 80141864 2442EFCC */  addiu     $v0, $v0, %lo(D_8014EFCC)
/* D7F68 80141868 82650046 */  lb        $a1, 0x46($s3)
/* D7F6C 8014186C 82660045 */  lb        $a2, 0x45($s3)
/* D7F70 80141870 00051840 */  sll       $v1, $a1, 1
/* D7F74 80141874 00651821 */  addu      $v1, $v1, $a1
/* D7F78 80141878 00031840 */  sll       $v1, $v1, 1
/* D7F7C 8014187C 00621821 */  addu      $v1, $v1, $v0
/* D7F80 80141880 84670000 */  lh        $a3, ($v1)
/* D7F84 80141884 84680002 */  lh        $t0, 2($v1)
/* D7F88 80141888 00061840 */  sll       $v1, $a2, 1
/* D7F8C 8014188C 00661821 */  addu      $v1, $v1, $a2
/* D7F90 80141890 00031840 */  sll       $v1, $v1, 1
/* D7F94 80141894 00621821 */  addu      $v1, $v1, $v0
/* D7F98 80141898 84640000 */  lh        $a0, ($v1)
/* D7F9C 8014189C 0805062D */  j         .L801418B4
/* D7FA0 801418A0 84650002 */   lh       $a1, 2($v1)
.L801418A4:
/* D7FA4 801418A4 9267004E */  lbu       $a3, 0x4e($s3)
/* D7FA8 801418A8 9268004F */  lbu       $t0, 0x4f($s3)
/* D7FAC 801418AC 92640050 */  lbu       $a0, 0x50($s3)
/* D7FB0 801418B0 92650051 */  lbu       $a1, 0x51($s3)
.L801418B4:
/* D7FB4 801418B4 8E630000 */  lw        $v1, ($s3)
/* D7FB8 801418B8 30620200 */  andi      $v0, $v1, 0x200
/* D7FBC 801418BC 144000CD */  bnez      $v0, .L80141BF4
/* D7FC0 801418C0 2402FDFF */   addiu    $v0, $zero, -0x201
/* D7FC4 801418C4 34620200 */  ori       $v0, $v1, 0x200
/* D7FC8 801418C8 44870000 */  mtc1      $a3, $f0
/* D7FCC 801418CC 00000000 */  nop
/* D7FD0 801418D0 46800020 */  cvt.s.w   $f0, $f0
/* D7FD4 801418D4 44882000 */  mtc1      $t0, $f4
/* D7FD8 801418D8 00000000 */  nop
/* D7FDC 801418DC 46802120 */  cvt.s.w   $f4, $f4
/* D7FE0 801418E0 44841000 */  mtc1      $a0, $f2
/* D7FE4 801418E4 00000000 */  nop
/* D7FE8 801418E8 468010A0 */  cvt.s.w   $f2, $f2
/* D7FEC 801418EC AE620000 */  sw        $v0, ($s3)
/* D7FF0 801418F0 82620047 */  lb        $v0, 0x47($s3)
/* D7FF4 801418F4 46001081 */  sub.s     $f2, $f2, $f0
/* D7FF8 801418F8 E6600028 */  swc1      $f0, 0x28($s3)
/* D7FFC 801418FC 44820000 */  mtc1      $v0, $f0
/* D8000 80141900 00000000 */  nop
/* D8004 80141904 46800020 */  cvt.s.w   $f0, $f0
/* D8008 80141908 46001083 */  div.s     $f2, $f2, $f0
/* D800C 8014190C 44850000 */  mtc1      $a1, $f0
/* D8010 80141910 00000000 */  nop
/* D8014 80141914 46800020 */  cvt.s.w   $f0, $f0
/* D8018 80141918 08050713 */  j         .L80141C4C
/* D801C 8014191C E664002C */   swc1     $f4, 0x2c($s3)
glabel L80141920_D8020
/* D8020 80141920 92020003 */  lbu       $v0, 3($s0)
/* D8024 80141924 26100004 */  addiu     $s0, $s0, 4
/* D8028 80141928 A2620047 */  sb        $v0, 0x47($s3)
/* D802C 8014192C 8E020000 */  lw        $v0, ($s0)
/* D8030 80141930 26100004 */  addiu     $s0, $s0, 4
/* D8034 80141934 AE620010 */  sw        $v0, 0x10($s3)
/* D8038 80141938 8E020000 */  lw        $v0, ($s0)
/* D803C 8014193C 3C030040 */  lui       $v1, 0x40
/* D8040 80141940 AE620014 */  sw        $v0, 0x14($s3)
/* D8044 80141944 8E620000 */  lw        $v0, ($s3)
/* D8048 80141948 26100004 */  addiu     $s0, $s0, 4
/* D804C 8014194C 00431024 */  and       $v0, $v0, $v1
/* D8050 80141950 10400009 */  beqz      $v0, .L80141978
/* D8054 80141954 AE700004 */   sw       $s0, 4($s3)
/* D8058 80141958 8E620010 */  lw        $v0, 0x10($s3)
/* D805C 8014195C 8E640018 */  lw        $a0, 0x18($s3)
/* D8060 80141960 8E630014 */  lw        $v1, 0x14($s3)
/* D8064 80141964 0080282D */  daddu     $a1, $a0, $zero
/* D8068 80141968 00441021 */  addu      $v0, $v0, $a0
/* D806C 8014196C 00651821 */  addu      $v1, $v1, $a1
/* D8070 80141970 AE620010 */  sw        $v0, 0x10($s3)
/* D8074 80141974 AE630014 */  sw        $v1, 0x14($s3)
.L80141978:
/* D8078 80141978 8E630000 */  lw        $v1, ($s3)
/* D807C 8014197C 30620100 */  andi      $v0, $v1, 0x100
/* D8080 80141980 1040021B */  beqz      $v0, .L801421F0
/* D8084 80141984 3C020010 */   lui      $v0, 0x10
/* D8088 80141988 00621024 */  and       $v0, $v1, $v0
/* D808C 8014198C 14400012 */  bnez      $v0, .L801419D8
/* D8090 80141990 00000000 */   nop
/* D8094 80141994 3C028015 */  lui       $v0, %hi(D_8014EFCC)
/* D8098 80141998 2442EFCC */  addiu     $v0, $v0, %lo(D_8014EFCC)
/* D809C 8014199C 82650046 */  lb        $a1, 0x46($s3)
/* D80A0 801419A0 82660045 */  lb        $a2, 0x45($s3)
/* D80A4 801419A4 00051840 */  sll       $v1, $a1, 1
/* D80A8 801419A8 00651821 */  addu      $v1, $v1, $a1
/* D80AC 801419AC 00031840 */  sll       $v1, $v1, 1
/* D80B0 801419B0 00621821 */  addu      $v1, $v1, $v0
/* D80B4 801419B4 84670000 */  lh        $a3, ($v1)
/* D80B8 801419B8 84680002 */  lh        $t0, 2($v1)
/* D80BC 801419BC 00061840 */  sll       $v1, $a2, 1
/* D80C0 801419C0 00661821 */  addu      $v1, $v1, $a2
/* D80C4 801419C4 00031840 */  sll       $v1, $v1, 1
/* D80C8 801419C8 00621821 */  addu      $v1, $v1, $v0
/* D80CC 801419CC 84640000 */  lh        $a0, ($v1)
/* D80D0 801419D0 0805067A */  j         .L801419E8
/* D80D4 801419D4 84650002 */   lh       $a1, 2($v1)
.L801419D8:
/* D80D8 801419D8 9267004E */  lbu       $a3, 0x4e($s3)
/* D80DC 801419DC 9268004F */  lbu       $t0, 0x4f($s3)
/* D80E0 801419E0 92640050 */  lbu       $a0, 0x50($s3)
/* D80E4 801419E4 92650051 */  lbu       $a1, 0x51($s3)
.L801419E8:
/* D80E8 801419E8 8E630000 */  lw        $v1, ($s3)
/* D80EC 801419EC 30620200 */  andi      $v0, $v1, 0x200
/* D80F0 801419F0 14400080 */  bnez      $v0, .L80141BF4
/* D80F4 801419F4 2402FDFF */   addiu    $v0, $zero, -0x201
/* D80F8 801419F8 34620200 */  ori       $v0, $v1, 0x200
/* D80FC 801419FC 44870000 */  mtc1      $a3, $f0
/* D8100 80141A00 00000000 */  nop
/* D8104 80141A04 46800020 */  cvt.s.w   $f0, $f0
/* D8108 80141A08 44882000 */  mtc1      $t0, $f4
/* D810C 80141A0C 00000000 */  nop
/* D8110 80141A10 46802120 */  cvt.s.w   $f4, $f4
/* D8114 80141A14 44841000 */  mtc1      $a0, $f2
/* D8118 80141A18 00000000 */  nop
/* D811C 80141A1C 468010A0 */  cvt.s.w   $f2, $f2
/* D8120 80141A20 AE620000 */  sw        $v0, ($s3)
/* D8124 80141A24 82620047 */  lb        $v0, 0x47($s3)
/* D8128 80141A28 46001081 */  sub.s     $f2, $f2, $f0
/* D812C 80141A2C E6600028 */  swc1      $f0, 0x28($s3)
/* D8130 80141A30 44820000 */  mtc1      $v0, $f0
/* D8134 80141A34 00000000 */  nop
/* D8138 80141A38 46800020 */  cvt.s.w   $f0, $f0
/* D813C 80141A3C 46001083 */  div.s     $f2, $f2, $f0
/* D8140 80141A40 44850000 */  mtc1      $a1, $f0
/* D8144 80141A44 00000000 */  nop
/* D8148 80141A48 46800020 */  cvt.s.w   $f0, $f0
/* D814C 80141A4C 08050713 */  j         .L80141C4C
/* D8150 80141A50 E664002C */   swc1     $f4, 0x2c($s3)
glabel L80141A54_D8154
/* D8154 80141A54 92030003 */  lbu       $v1, 3($s0)
/* D8158 80141A58 8E620000 */  lw        $v0, ($s3)
/* D815C 80141A5C 26100004 */  addiu     $s0, $s0, 4
/* D8160 80141A60 30420400 */  andi      $v0, $v0, 0x400
/* D8164 80141A64 14400007 */  bnez      $v0, .L80141A84
/* D8168 80141A68 A2630047 */   sb       $v1, 0x47($s3)
/* D816C 80141A6C 3C058015 */  lui       $a1, %hi(D_80157970)
/* D8170 80141A70 24A57970 */  addiu     $a1, $a1, %lo(D_80157970)
/* D8174 80141A74 3C078015 */  lui       $a3, %hi(D_80157F70)
/* D8178 80141A78 24E77F70 */  addiu     $a3, $a3, %lo(D_80157F70)
/* D817C 80141A7C 080506A6 */  j         .L80141A98
/* D8180 80141A80 0000182D */   daddu    $v1, $zero, $zero
.L80141A84:
/* D8184 80141A84 3C058016 */  lui       $a1, %hi(D_80158580)
/* D8188 80141A88 24A58580 */  addiu     $a1, $a1, %lo(D_80158580)
/* D818C 80141A8C 3C078016 */  lui       $a3, %hi(D_80158B80)
/* D8190 80141A90 24E78B80 */  addiu     $a3, $a3, %lo(D_80158B80)
/* D8194 80141A94 0000182D */  daddu     $v1, $zero, $zero
.L80141A98:
/* D8198 80141A98 8E060000 */  lw        $a2, ($s0)
/* D819C 80141A9C 00A0202D */  daddu     $a0, $a1, $zero
.L80141AA0:
/* D81A0 80141AA0 8C820000 */  lw        $v0, ($a0)
/* D81A4 80141AA4 50460007 */  beql      $v0, $a2, .L80141AC4
/* D81A8 80141AA8 26100004 */   addiu    $s0, $s0, 4
/* D81AC 80141AAC 24630001 */  addiu     $v1, $v1, 1
/* D81B0 80141AB0 286200C0 */  slti      $v0, $v1, 0xc0
/* D81B4 80141AB4 1440FFFA */  bnez      $v0, .L80141AA0
/* D81B8 80141AB8 24840008 */   addiu    $a0, $a0, 8
.L80141ABC:
/* D81BC 80141ABC 080506AF */  j         .L80141ABC
/* D81C0 80141AC0 00000000 */   nop
.L80141AC4:
/* D81C4 80141AC4 000310C0 */  sll       $v0, $v1, 3
/* D81C8 80141AC8 0000182D */  daddu     $v1, $zero, $zero
/* D81CC 80141ACC 00451021 */  addu      $v0, $v0, $a1
/* D81D0 80141AD0 8C420004 */  lw        $v0, 4($v0)
/* D81D4 80141AD4 00E0202D */  daddu     $a0, $a3, $zero
/* D81D8 80141AD8 AE620010 */  sw        $v0, 0x10($s3)
/* D81DC 80141ADC 8E050000 */  lw        $a1, ($s0)
.L80141AE0:
/* D81E0 80141AE0 8C820000 */  lw        $v0, ($a0)
/* D81E4 80141AE4 10450007 */  beq       $v0, $a1, .L80141B04
/* D81E8 80141AE8 000310C0 */   sll      $v0, $v1, 3
/* D81EC 80141AEC 24630001 */  addiu     $v1, $v1, 1
/* D81F0 80141AF0 286200C0 */  slti      $v0, $v1, 0xc0
/* D81F4 80141AF4 1440FFFA */  bnez      $v0, .L80141AE0
/* D81F8 80141AF8 24840008 */   addiu    $a0, $a0, 8
.L80141AFC:
/* D81FC 80141AFC 080506BF */  j         .L80141AFC
/* D8200 80141B00 00000000 */   nop
.L80141B04:
/* D8204 80141B04 00471021 */  addu      $v0, $v0, $a3
/* D8208 80141B08 8C420004 */  lw        $v0, 4($v0)
/* D820C 80141B0C 8E630000 */  lw        $v1, ($s3)
/* D8210 80141B10 2610000C */  addiu     $s0, $s0, 0xc
/* D8214 80141B14 AE700004 */  sw        $s0, 4($s3)
/* D8218 80141B18 AE620014 */  sw        $v0, 0x14($s3)
/* D821C 80141B1C 30620100 */  andi      $v0, $v1, 0x100
/* D8220 80141B20 104001B3 */  beqz      $v0, .L801421F0
/* D8224 80141B24 3C020010 */   lui      $v0, 0x10
/* D8228 80141B28 00621024 */  and       $v0, $v1, $v0
/* D822C 80141B2C 14400012 */  bnez      $v0, .L80141B78
/* D8230 80141B30 00000000 */   nop
/* D8234 80141B34 3C028015 */  lui       $v0, %hi(D_8014EFCC)
/* D8238 80141B38 2442EFCC */  addiu     $v0, $v0, %lo(D_8014EFCC)
/* D823C 80141B3C 82650046 */  lb        $a1, 0x46($s3)
/* D8240 80141B40 82660045 */  lb        $a2, 0x45($s3)
/* D8244 80141B44 00051840 */  sll       $v1, $a1, 1
/* D8248 80141B48 00651821 */  addu      $v1, $v1, $a1
/* D824C 80141B4C 00031840 */  sll       $v1, $v1, 1
/* D8250 80141B50 00621821 */  addu      $v1, $v1, $v0
/* D8254 80141B54 84670000 */  lh        $a3, ($v1)
/* D8258 80141B58 84680002 */  lh        $t0, 2($v1)
/* D825C 80141B5C 00061840 */  sll       $v1, $a2, 1
/* D8260 80141B60 00661821 */  addu      $v1, $v1, $a2
/* D8264 80141B64 00031840 */  sll       $v1, $v1, 1
/* D8268 80141B68 00621821 */  addu      $v1, $v1, $v0
/* D826C 80141B6C 84640000 */  lh        $a0, ($v1)
/* D8270 80141B70 080506E2 */  j         .L80141B88
/* D8274 80141B74 84650002 */   lh       $a1, 2($v1)
.L80141B78:
/* D8278 80141B78 9267004E */  lbu       $a3, 0x4e($s3)
/* D827C 80141B7C 9268004F */  lbu       $t0, 0x4f($s3)
/* D8280 80141B80 92640050 */  lbu       $a0, 0x50($s3)
/* D8284 80141B84 92650051 */  lbu       $a1, 0x51($s3)
.L80141B88:
/* D8288 80141B88 8E630000 */  lw        $v1, ($s3)
/* D828C 80141B8C 30620200 */  andi      $v0, $v1, 0x200
/* D8290 80141B90 14400018 */  bnez      $v0, .L80141BF4
/* D8294 80141B94 2402FDFF */   addiu    $v0, $zero, -0x201
/* D8298 80141B98 34620200 */  ori       $v0, $v1, 0x200
/* D829C 80141B9C 44870000 */  mtc1      $a3, $f0
/* D82A0 80141BA0 00000000 */  nop
/* D82A4 80141BA4 46800020 */  cvt.s.w   $f0, $f0
/* D82A8 80141BA8 44882000 */  mtc1      $t0, $f4
/* D82AC 80141BAC 00000000 */  nop
/* D82B0 80141BB0 46802120 */  cvt.s.w   $f4, $f4
/* D82B4 80141BB4 44841000 */  mtc1      $a0, $f2
/* D82B8 80141BB8 00000000 */  nop
/* D82BC 80141BBC 468010A0 */  cvt.s.w   $f2, $f2
/* D82C0 80141BC0 AE620000 */  sw        $v0, ($s3)
/* D82C4 80141BC4 82620047 */  lb        $v0, 0x47($s3)
/* D82C8 80141BC8 46001081 */  sub.s     $f2, $f2, $f0
/* D82CC 80141BCC E6600028 */  swc1      $f0, 0x28($s3)
/* D82D0 80141BD0 44820000 */  mtc1      $v0, $f0
/* D82D4 80141BD4 00000000 */  nop
/* D82D8 80141BD8 46800020 */  cvt.s.w   $f0, $f0
/* D82DC 80141BDC 46001083 */  div.s     $f2, $f2, $f0
/* D82E0 80141BE0 44850000 */  mtc1      $a1, $f0
/* D82E4 80141BE4 00000000 */  nop
/* D82E8 80141BE8 46800020 */  cvt.s.w   $f0, $f0
/* D82EC 80141BEC 08050713 */  j         .L80141C4C
/* D82F0 80141BF0 E664002C */   swc1     $f4, 0x2c($s3)
.L80141BF4:
/* D82F4 80141BF4 00621024 */  and       $v0, $v1, $v0
/* D82F8 80141BF8 44840000 */  mtc1      $a0, $f0
/* D82FC 80141BFC 00000000 */  nop
/* D8300 80141C00 46800020 */  cvt.s.w   $f0, $f0
/* D8304 80141C04 44852000 */  mtc1      $a1, $f4
/* D8308 80141C08 00000000 */  nop
/* D830C 80141C0C 46802120 */  cvt.s.w   $f4, $f4
/* D8310 80141C10 44871000 */  mtc1      $a3, $f2
/* D8314 80141C14 00000000 */  nop
/* D8318 80141C18 468010A0 */  cvt.s.w   $f2, $f2
/* D831C 80141C1C AE620000 */  sw        $v0, ($s3)
/* D8320 80141C20 82620047 */  lb        $v0, 0x47($s3)
/* D8324 80141C24 46001081 */  sub.s     $f2, $f2, $f0
/* D8328 80141C28 E6600028 */  swc1      $f0, 0x28($s3)
/* D832C 80141C2C E664002C */  swc1      $f4, 0x2c($s3)
/* D8330 80141C30 44820000 */  mtc1      $v0, $f0
/* D8334 80141C34 00000000 */  nop
/* D8338 80141C38 46800020 */  cvt.s.w   $f0, $f0
/* D833C 80141C3C 46001083 */  div.s     $f2, $f2, $f0
/* D8340 80141C40 44880000 */  mtc1      $t0, $f0
/* D8344 80141C44 00000000 */  nop
/* D8348 80141C48 46800020 */  cvt.s.w   $f0, $f0
.L80141C4C:
/* D834C 80141C4C 46040001 */  sub.s     $f0, $f0, $f4
/* D8350 80141C50 E6620020 */  swc1      $f2, 0x20($s3)
/* D8354 80141C54 44821000 */  mtc1      $v0, $f2
/* D8358 80141C58 00000000 */  nop
/* D835C 80141C5C 468010A0 */  cvt.s.w   $f2, $f2
/* D8360 80141C60 46020003 */  div.s     $f0, $f0, $f2
/* D8364 80141C64 0805087C */  j         .L801421F0
/* D8368 80141C68 E6600024 */   swc1     $f0, 0x24($s3)
glabel L80141C6C_D836C
/* D836C 80141C6C 8E63000C */  lw        $v1, 0xc($s3)
/* D8370 80141C70 24020001 */  addiu     $v0, $zero, 1
/* D8374 80141C74 0805087D */  j         .L801421F4
/* D8378 80141C78 AE630004 */   sw       $v1, 4($s3)
glabel L80141C7C_D837C
/* D837C 80141C7C 24020001 */  addiu     $v0, $zero, 1
/* D8380 80141C80 AE70000C */  sw        $s0, 0xc($s3)
/* D8384 80141C84 0805087D */  j         .L801421F4
/* D8388 80141C88 AE700004 */   sw       $s0, 4($s3)
glabel L80141C8C_D838C
/* D838C 80141C8C 8E110000 */  lw        $s1, ($s0)
/* D8390 80141C90 26100004 */  addiu     $s0, $s0, 4
/* D8394 80141C94 8E120000 */  lw        $s2, ($s0)
/* D8398 80141C98 26100004 */  addiu     $s0, $s0, 4
/* D839C 80141C9C 0C00A67F */  jal       rand_int
/* D83A0 80141CA0 0220202D */   daddu    $a0, $s1, $zero
/* D83A4 80141CA4 0052102A */  slt       $v0, $v0, $s2
/* D83A8 80141CA8 50400102 */  beql      $v0, $zero, .L801420B4
/* D83AC 80141CAC AE700004 */   sw       $s0, 4($s3)
/* D83B0 80141CB0 8E62000C */  lw        $v0, 0xc($s3)
/* D83B4 80141CB4 0805082D */  j         .L801420B4
/* D83B8 80141CB8 AE620004 */   sw       $v0, 4($s3)
glabel L80141CBC_D83BC
/* D83BC 80141CBC 92040003 */  lbu       $a0, 3($s0)
/* D83C0 80141CC0 26100004 */  addiu     $s0, $s0, 4
/* D83C4 80141CC4 24030400 */  addiu     $v1, $zero, 0x400
/* D83C8 80141CC8 AE630034 */  sw        $v1, 0x34($s3)
/* D83CC 80141CCC AE630038 */  sw        $v1, 0x38($s3)
/* D83D0 80141CD0 8E630000 */  lw        $v1, ($s3)
/* D83D4 80141CD4 24020001 */  addiu     $v0, $zero, 1
/* D83D8 80141CD8 AE700004 */  sw        $s0, 4($s3)
/* D83DC 80141CDC A2640045 */  sb        $a0, 0x45($s3)
/* D83E0 80141CE0 A2640046 */  sb        $a0, 0x46($s3)
/* D83E4 80141CE4 2404FEFF */  addiu     $a0, $zero, -0x101
/* D83E8 80141CE8 00641824 */  and       $v1, $v1, $a0
/* D83EC 80141CEC 2404F7FF */  addiu     $a0, $zero, -0x801
.L80141CF0:
/* D83F0 80141CF0 00641824 */  and       $v1, $v1, $a0
/* D83F4 80141CF4 0805087D */  j         .L801421F4
/* D83F8 80141CF8 AE630000 */   sw       $v1, ($s3)
glabel L80141CFC_D83FC
/* D83FC 80141CFC 8E050000 */  lw        $a1, ($s0)
/* D8400 80141D00 26100004 */  addiu     $s0, $s0, 4
/* D8404 80141D04 8E060000 */  lw        $a2, ($s0)
/* D8408 80141D08 26100004 */  addiu     $s0, $s0, 4
/* D840C 80141D0C 24020001 */  addiu     $v0, $zero, 1
/* D8410 80141D10 3C013F80 */  lui       $at, 0x3f80
/* D8414 80141D14 44813000 */  mtc1      $at, $f6
/* D8418 80141D18 3C048015 */  lui       $a0, %hi(D_8014EFCC)
/* D841C 80141D1C 2484EFCC */  addiu     $a0, $a0, %lo(D_8014EFCC)
/* D8420 80141D20 AE700004 */  sw        $s0, 4($s3)
/* D8424 80141D24 00451804 */  sllv      $v1, $a1, $v0
/* D8428 80141D28 00651821 */  addu      $v1, $v1, $a1
/* D842C 80141D2C 00431804 */  sllv      $v1, $v1, $v0
/* D8430 80141D30 00641821 */  addu      $v1, $v1, $a0
/* D8434 80141D34 A2650046 */  sb        $a1, 0x46($s3)
/* D8438 80141D38 A2660045 */  sb        $a2, 0x45($s3)
/* D843C 80141D3C 84670000 */  lh        $a3, ($v1)
/* D8440 80141D40 84680002 */  lh        $t0, 2($v1)
/* D8444 80141D44 00461804 */  sllv      $v1, $a2, $v0
/* D8448 80141D48 00661821 */  addu      $v1, $v1, $a2
/* D844C 80141D4C 00431804 */  sllv      $v1, $v1, $v0
/* D8450 80141D50 00641821 */  addu      $v1, $v1, $a0
/* D8454 80141D54 84640000 */  lh        $a0, ($v1)
/* D8458 80141D58 84650002 */  lh        $a1, 2($v1)
/* D845C 80141D5C 8E630000 */  lw        $v1, ($s3)
/* D8460 80141D60 44841000 */  mtc1      $a0, $f2
/* D8464 80141D64 00000000 */  nop
/* D8468 80141D68 468010A0 */  cvt.s.w   $f2, $f2
/* D846C 80141D6C 44870000 */  mtc1      $a3, $f0
/* D8470 80141D70 00000000 */  nop
/* D8474 80141D74 46800020 */  cvt.s.w   $f0, $f0
/* D8478 80141D78 46001203 */  div.s     $f8, $f2, $f0
/* D847C 80141D7C 46083203 */  div.s     $f8, $f6, $f8
/* D8480 80141D80 3C014480 */  lui       $at, 0x4480
/* D8484 80141D84 44811000 */  mtc1      $at, $f2
/* D8488 80141D88 44852000 */  mtc1      $a1, $f4
/* D848C 80141D8C 00000000 */  nop
/* D8490 80141D90 46802120 */  cvt.s.w   $f4, $f4
/* D8494 80141D94 46024202 */  mul.s     $f8, $f8, $f2
/* D8498 80141D98 00000000 */  nop
/* D849C 80141D9C 44880000 */  mtc1      $t0, $f0
/* D84A0 80141DA0 00000000 */  nop
/* D84A4 80141DA4 46800020 */  cvt.s.w   $f0, $f0
/* D84A8 80141DA8 46002283 */  div.s     $f10, $f4, $f0
/* D84AC 80141DAC 460A3283 */  div.s     $f10, $f6, $f10
/* D84B0 80141DB0 2404FEFF */  addiu     $a0, $zero, -0x101
/* D84B4 80141DB4 46025082 */  mul.s     $f2, $f10, $f2
/* D84B8 80141DB8 00000000 */  nop
/* D84BC 80141DBC 00641824 */  and       $v1, $v1, $a0
/* D84C0 80141DC0 34630800 */  ori       $v1, $v1, 0x800
/* D84C4 80141DC4 AE630000 */  sw        $v1, ($s3)
/* D84C8 80141DC8 4600430D */  trunc.w.s $f12, $f8
/* D84CC 80141DCC E66C0034 */  swc1      $f12, 0x34($s3)
/* D84D0 80141DD0 4600130D */  trunc.w.s $f12, $f2
/* D84D4 80141DD4 0805087D */  j         .L801421F4
/* D84D8 80141DD8 E66C0038 */   swc1     $f12, 0x38($s3)
glabel L80141DDC_D84DC
/* D84DC 80141DDC 8E050000 */  lw        $a1, ($s0)
/* D84E0 80141DE0 26100004 */  addiu     $s0, $s0, 4
/* D84E4 80141DE4 8E060000 */  lw        $a2, ($s0)
/* D84E8 80141DE8 26100004 */  addiu     $s0, $s0, 4
/* D84EC 80141DEC 24020001 */  addiu     $v0, $zero, 1
/* D84F0 80141DF0 8E630000 */  lw        $v1, ($s3)
/* D84F4 80141DF4 24040400 */  addiu     $a0, $zero, 0x400
/* D84F8 80141DF8 AE640034 */  sw        $a0, 0x34($s3)
/* D84FC 80141DFC AE640038 */  sw        $a0, 0x38($s3)
/* D8500 80141E00 2404F7FF */  addiu     $a0, $zero, -0x801
/* D8504 80141E04 AE700004 */  sw        $s0, 4($s3)
/* D8508 80141E08 34630100 */  ori       $v1, $v1, 0x100
/* D850C 80141E0C 00641824 */  and       $v1, $v1, $a0
/* D8510 80141E10 2404FDFF */  addiu     $a0, $zero, -0x201
/* D8514 80141E14 00641824 */  and       $v1, $v1, $a0
/* D8518 80141E18 A2650046 */  sb        $a1, 0x46($s3)
/* D851C 80141E1C A2660045 */  sb        $a2, 0x45($s3)
/* D8520 80141E20 0805087D */  j         .L801421F4
/* D8524 80141E24 AE630000 */   sw       $v1, ($s3)
glabel L80141E28_D8528
/* D8528 80141E28 8E110000 */  lw        $s1, ($s0)
/* D852C 80141E2C 26100004 */  addiu     $s0, $s0, 4
/* D8530 80141E30 92630040 */  lbu       $v1, 0x40($s3)
/* D8534 80141E34 24020001 */  addiu     $v0, $zero, 1
/* D8538 80141E38 AE700004 */  sw        $s0, 4($s3)
/* D853C 80141E3C 00711821 */  addu      $v1, $v1, $s1
/* D8540 80141E40 0805087D */  j         .L801421F4
/* D8544 80141E44 A2630040 */   sb       $v1, 0x40($s3)
glabel L80141E48_D8548
/* D8548 80141E48 8E120000 */  lw        $s2, ($s0)
/* D854C 80141E4C 8E620000 */  lw        $v0, ($s3)
/* D8550 80141E50 30422000 */  andi      $v0, $v0, 0x2000
/* D8554 80141E54 14400004 */  bnez      $v0, .L80141E68
/* D8558 80141E58 26100004 */   addiu    $s0, $s0, 4
/* D855C 80141E5C 92620041 */  lbu       $v0, 0x41($s3)
/* D8560 80141E60 080507A8 */  j         .L80141EA0
/* D8564 80141E64 00521021 */   addu     $v0, $v0, $s2
.L80141E68:
/* D8568 80141E68 92620041 */  lbu       $v0, 0x41($s3)
/* D856C 80141E6C 080507A8 */  j         .L80141EA0
/* D8570 80141E70 00521023 */   subu     $v0, $v0, $s2
glabel L80141E74_D8574
/* D8574 80141E74 8E110000 */  lw        $s1, ($s0)
/* D8578 80141E78 26100004 */  addiu     $s0, $s0, 4
/* D857C 80141E7C 8E120000 */  lw        $s2, ($s0)
/* D8580 80141E80 8E620000 */  lw        $v0, ($s3)
/* D8584 80141E84 26100004 */  addiu     $s0, $s0, 4
/* D8588 80141E88 30422000 */  andi      $v0, $v0, 0x2000
/* D858C 80141E8C 14400003 */  bnez      $v0, .L80141E9C
/* D8590 80141E90 A2710040 */   sb       $s1, 0x40($s3)
/* D8594 80141E94 0805082C */  j         .L801420B0
/* D8598 80141E98 A2720041 */   sb       $s2, 0x41($s3)
.L80141E9C:
/* D859C 80141E9C 00121023 */  negu      $v0, $s2
.L80141EA0:
/* D85A0 80141EA0 0805082C */  j         .L801420B0
/* D85A4 80141EA4 A2620041 */   sb       $v0, 0x41($s3)
glabel L80141EA8_D85A8
/* D85A8 80141EA8 3C013780 */  lui       $at, 0x3780
/* D85AC 80141EAC 44810000 */  mtc1      $at, $f0
/* D85B0 80141EB0 C6040000 */  lwc1      $f4, ($s0)
/* D85B4 80141EB4 46802120 */  cvt.s.w   $f4, $f4
/* D85B8 80141EB8 46002102 */  mul.s     $f4, $f4, $f0
/* D85BC 80141EBC 00000000 */  nop
/* D85C0 80141EC0 26100004 */  addiu     $s0, $s0, 4
/* D85C4 80141EC4 8E620000 */  lw        $v0, ($s3)
/* D85C8 80141EC8 3C030010 */  lui       $v1, 0x10
/* D85CC 80141ECC 00431024 */  and       $v0, $v0, $v1
/* D85D0 80141ED0 14400012 */  bnez      $v0, .L80141F1C
/* D85D4 80141ED4 E6640030 */   swc1     $f4, 0x30($s3)
/* D85D8 80141ED8 82630046 */  lb        $v1, 0x46($s3)
/* D85DC 80141EDC 3C048015 */  lui       $a0, %hi(D_8014EFCC)
/* D85E0 80141EE0 2484EFCC */  addiu     $a0, $a0, %lo(D_8014EFCC)
/* D85E4 80141EE4 00031040 */  sll       $v0, $v1, 1
/* D85E8 80141EE8 00431021 */  addu      $v0, $v0, $v1
/* D85EC 80141EEC 00021040 */  sll       $v0, $v0, 1
/* D85F0 80141EF0 00441021 */  addu      $v0, $v0, $a0
/* D85F4 80141EF4 84470000 */  lh        $a3, ($v0)
/* D85F8 80141EF8 82630045 */  lb        $v1, 0x45($s3)
/* D85FC 80141EFC 84480002 */  lh        $t0, 2($v0)
/* D8600 80141F00 00031040 */  sll       $v0, $v1, 1
/* D8604 80141F04 00431021 */  addu      $v0, $v0, $v1
/* D8608 80141F08 00021040 */  sll       $v0, $v0, 1
/* D860C 80141F0C 00441021 */  addu      $v0, $v0, $a0
/* D8610 80141F10 84440000 */  lh        $a0, ($v0)
/* D8614 80141F14 080507CB */  j         .L80141F2C
/* D8618 80141F18 84450002 */   lh       $a1, 2($v0)
.L80141F1C:
/* D861C 80141F1C 9267004E */  lbu       $a3, 0x4e($s3)
/* D8620 80141F20 9268004F */  lbu       $t0, 0x4f($s3)
/* D8624 80141F24 92640050 */  lbu       $a0, 0x50($s3)
/* D8628 80141F28 92650051 */  lbu       $a1, 0x51($s3)
.L80141F2C:
/* D862C 80141F2C 44840000 */  mtc1      $a0, $f0
/* D8630 80141F30 00000000 */  nop
/* D8634 80141F34 46800020 */  cvt.s.w   $f0, $f0
/* D8638 80141F38 46040002 */  mul.s     $f0, $f0, $f4
/* D863C 80141F3C 00000000 */  nop
/* D8640 80141F40 3C014F00 */  lui       $at, 0x4f00
/* D8644 80141F44 44811000 */  mtc1      $at, $f2
/* D8648 80141F48 00000000 */  nop
/* D864C 80141F4C 4600103E */  c.le.s    $f2, $f0
/* D8650 80141F50 00000000 */  nop
/* D8654 80141F54 45010005 */  bc1t      .L80141F6C
/* D8658 80141F58 26660048 */   addiu    $a2, $s3, 0x48
/* D865C 80141F5C 4600030D */  trunc.w.s $f12, $f0
/* D8660 80141F60 44036000 */  mfc1      $v1, $f12
/* D8664 80141F64 080507E1 */  j         .L80141F84
/* D8668 80141F68 00000000 */   nop
.L80141F6C:
/* D866C 80141F6C 46020001 */  sub.s     $f0, $f0, $f2
/* D8670 80141F70 3C028000 */  lui       $v0, 0x8000
/* D8674 80141F74 4600030D */  trunc.w.s $f12, $f0
/* D8678 80141F78 44036000 */  mfc1      $v1, $f12
/* D867C 80141F7C 00000000 */  nop
/* D8680 80141F80 00621825 */  or        $v1, $v1, $v0
.L80141F84:
/* D8684 80141F84 44850000 */  mtc1      $a1, $f0
/* D8688 80141F88 00000000 */  nop
/* D868C 80141F8C 46800020 */  cvt.s.w   $f0, $f0
/* D8690 80141F90 46040002 */  mul.s     $f0, $f0, $f4
/* D8694 80141F94 00000000 */  nop
/* D8698 80141F98 3C014F00 */  lui       $at, 0x4f00
/* D869C 80141F9C 44811000 */  mtc1      $at, $f2
/* D86A0 80141FA0 A0C30000 */  sb        $v1, ($a2)
/* D86A4 80141FA4 4600103E */  c.le.s    $f2, $f0
/* D86A8 80141FA8 00000000 */  nop
/* D86AC 80141FAC 45010005 */  bc1t      .L80141FC4
/* D86B0 80141FB0 26660049 */   addiu    $a2, $s3, 0x49
/* D86B4 80141FB4 4600030D */  trunc.w.s $f12, $f0
/* D86B8 80141FB8 44036000 */  mfc1      $v1, $f12
/* D86BC 80141FBC 080507F7 */  j         .L80141FDC
/* D86C0 80141FC0 00000000 */   nop
.L80141FC4:
/* D86C4 80141FC4 46020001 */  sub.s     $f0, $f0, $f2
/* D86C8 80141FC8 3C028000 */  lui       $v0, 0x8000
/* D86CC 80141FCC 4600030D */  trunc.w.s $f12, $f0
/* D86D0 80141FD0 44036000 */  mfc1      $v1, $f12
/* D86D4 80141FD4 00000000 */  nop
/* D86D8 80141FD8 00621825 */  or        $v1, $v1, $v0
.L80141FDC:
/* D86DC 80141FDC 44840000 */  mtc1      $a0, $f0
/* D86E0 80141FE0 00000000 */  nop
/* D86E4 80141FE4 46800020 */  cvt.s.w   $f0, $f0
/* D86E8 80141FE8 44871000 */  mtc1      $a3, $f2
/* D86EC 80141FEC 00000000 */  nop
/* D86F0 80141FF0 468010A0 */  cvt.s.w   $f2, $f2
/* D86F4 80141FF4 46020003 */  div.s     $f0, $f0, $f2
/* D86F8 80141FF8 46040202 */  mul.s     $f8, $f0, $f4
/* D86FC 80141FFC 00000000 */  nop
/* D8700 80142000 44850000 */  mtc1      $a1, $f0
/* D8704 80142004 00000000 */  nop
/* D8708 80142008 46800020 */  cvt.s.w   $f0, $f0
/* D870C 8014200C 44881000 */  mtc1      $t0, $f2
/* D8710 80142010 00000000 */  nop
/* D8714 80142014 468010A0 */  cvt.s.w   $f2, $f2
/* D8718 80142018 46020003 */  div.s     $f0, $f0, $f2
/* D871C 8014201C 3C013F80 */  lui       $at, 0x3f80
/* D8720 80142020 44811000 */  mtc1      $at, $f2
/* D8724 80142024 46040282 */  mul.s     $f10, $f0, $f4
/* D8728 80142028 00000000 */  nop
/* D872C 8014202C 3C014480 */  lui       $at, 0x4480
/* D8730 80142030 44810000 */  mtc1      $at, $f0
/* D8734 80142034 A0C30000 */  sb        $v1, ($a2)
/* D8738 80142038 46081203 */  div.s     $f8, $f2, $f8
/* D873C 8014203C 46004102 */  mul.s     $f4, $f8, $f0
/* D8740 80142040 00000000 */  nop
/* D8744 80142044 8E630000 */  lw        $v1, ($s3)
/* D8748 80142048 2404FEFF */  addiu     $a0, $zero, -0x101
/* D874C 8014204C AE700004 */  sw        $s0, 4($s3)
/* D8750 80142050 460A1283 */  div.s     $f10, $f2, $f10
/* D8754 80142054 46005002 */  mul.s     $f0, $f10, $f0
/* D8758 80142058 00000000 */  nop
/* D875C 8014205C 00641824 */  and       $v1, $v1, $a0
/* D8760 80142060 34630810 */  ori       $v1, $v1, 0x810
/* D8764 80142064 AE630000 */  sw        $v1, ($s3)
/* D8768 80142068 4600230D */  trunc.w.s $f12, $f4
/* D876C 8014206C E66C0034 */  swc1      $f12, 0x34($s3)
/* D8770 80142070 4600030D */  trunc.w.s $f12, $f0
/* D8774 80142074 E66C0038 */  swc1      $f12, 0x38($s3)
/* D8778 80142078 0805087D */  j         .L801421F4
/* D877C 8014207C 24020001 */   addiu    $v0, $zero, 1
glabel L80142080_D8780
/* D8780 80142080 8E110000 */  lw        $s1, ($s0)
/* D8784 80142084 8E620000 */  lw        $v0, ($s3)
/* D8788 80142088 26100004 */  addiu     $s0, $s0, 4
/* D878C 8014208C 34440020 */  ori       $a0, $v0, 0x20
/* D8790 80142090 A271004A */  sb        $s1, 0x4a($s3)
/* D8794 80142094 322300FF */  andi      $v1, $s1, 0xff
/* D8798 80142098 240200FF */  addiu     $v0, $zero, 0xff
/* D879C 8014209C 14620004 */  bne       $v1, $v0, .L801420B0
/* D87A0 801420A0 AE640000 */   sw       $a0, ($s3)
/* D87A4 801420A4 2402FFDF */  addiu     $v0, $zero, -0x21
/* D87A8 801420A8 00821024 */  and       $v0, $a0, $v0
/* D87AC 801420AC AE620000 */  sw        $v0, ($s3)
.L801420B0:
/* D87B0 801420B0 AE700004 */  sw        $s0, 4($s3)
.L801420B4:
/* D87B4 801420B4 0805087D */  j         .L801421F4
/* D87B8 801420B8 24020001 */   addiu    $v0, $zero, 1
glabel L801420BC_D87BC
/* D87BC 801420BC 8E110000 */  lw        $s1, ($s0)
/* D87C0 801420C0 26100004 */  addiu     $s0, $s0, 4
/* D87C4 801420C4 8E120000 */  lw        $s2, ($s0)
/* D87C8 801420C8 26100004 */  addiu     $s0, $s0, 4
/* D87CC 801420CC 0C00A67F */  jal       rand_int
/* D87D0 801420D0 02512023 */   subu     $a0, $s2, $s1
/* D87D4 801420D4 00511021 */  addu      $v0, $v0, $s1
/* D87D8 801420D8 A2620047 */  sb        $v0, 0x47($s3)
/* D87DC 801420DC 0805087C */  j         .L801421F0
/* D87E0 801420E0 AE700004 */   sw       $s0, 4($s3)
glabel L801420E4_D87E4
/* D87E4 801420E4 92030003 */  lbu       $v1, 3($s0)
/* D87E8 801420E8 26100004 */  addiu     $s0, $s0, 4
/* D87EC 801420EC 24020001 */  addiu     $v0, $zero, 1
/* D87F0 801420F0 2404FEFF */  addiu     $a0, $zero, -0x101
/* D87F4 801420F4 A263004E */  sb        $v1, 0x4e($s3)
/* D87F8 801420F8 A2630050 */  sb        $v1, 0x50($s3)
/* D87FC 801420FC 92050003 */  lbu       $a1, 3($s0)
/* D8800 80142100 24030400 */  addiu     $v1, $zero, 0x400
/* D8804 80142104 AE630034 */  sw        $v1, 0x34($s3)
/* D8808 80142108 AE630038 */  sw        $v1, 0x38($s3)
/* D880C 8014210C 8E630000 */  lw        $v1, ($s3)
/* D8810 80142110 26100004 */  addiu     $s0, $s0, 4
/* D8814 80142114 AE700004 */  sw        $s0, 4($s3)
/* D8818 80142118 A2600045 */  sb        $zero, 0x45($s3)
/* D881C 8014211C A2600046 */  sb        $zero, 0x46($s3)
/* D8820 80142120 00641824 */  and       $v1, $v1, $a0
/* D8824 80142124 2404F7FF */  addiu     $a0, $zero, -0x801
/* D8828 80142128 00641824 */  and       $v1, $v1, $a0
/* D882C 8014212C 3C040010 */  lui       $a0, 0x10
/* D8830 80142130 00641825 */  or        $v1, $v1, $a0
/* D8834 80142134 AE630000 */  sw        $v1, ($s3)
/* D8838 80142138 A265004F */  sb        $a1, 0x4f($s3)
/* D883C 8014213C 0805087D */  j         .L801421F4
/* D8840 80142140 A2650051 */   sb       $a1, 0x51($s3)
glabel L80142144_D8844
/* D8844 80142144 8E110000 */  lw        $s1, ($s0)
/* D8848 80142148 26100004 */  addiu     $s0, $s0, 4
/* D884C 8014214C 3C03F0FF */  lui       $v1, 0xf0ff
/* D8850 80142150 3463FFFF */  ori       $v1, $v1, 0xffff
/* D8854 80142154 8E640000 */  lw        $a0, ($s3)
/* D8858 80142158 24020001 */  addiu     $v0, $zero, 1
/* D885C 8014215C AE700004 */  sw        $s0, 4($s3)
/* D8860 80142160 00832024 */  and       $a0, $a0, $v1
/* D8864 80142164 00111E00 */  sll       $v1, $s1, 0x18
/* D8868 80142168 00832025 */  or        $a0, $a0, $v1
/* D886C 8014216C 0805087D */  j         .L801421F4
/* D8870 80142170 AE640000 */   sw       $a0, ($s3)
glabel L80142174_D8874
/* D8874 80142174 8E110000 */  lw        $s1, ($s0)
/* D8878 80142178 26100004 */  addiu     $s0, $s0, 4
/* D887C 8014217C 0C00A67F */  jal       rand_int
/* D8880 80142180 2624FFFF */   addiu    $a0, $s1, -1
/* D8884 80142184 00021080 */  sll       $v0, $v0, 2
/* D8888 80142188 00501021 */  addu      $v0, $v0, $s0
/* D888C 8014218C 8C450000 */  lw        $a1, ($v0)
/* D8890 80142190 0260202D */  daddu     $a0, $s3, $zero
/* D8894 80142194 0C04FCD4 */  jal       func_8013F350
/* D8898 80142198 AC850004 */   sw       $a1, 4($a0)
/* D889C 8014219C 0805087D */  j         .L801421F4
/* D88A0 801421A0 24020001 */   addiu    $v0, $zero, 1
glabel L801421A4_D88A4
/* D88A4 801421A4 8E060000 */  lw        $a2, ($s0)
/* D88A8 801421A8 26100004 */  addiu     $s0, $s0, 4
/* D88AC 801421AC 0C05272D */  jal       play_sound
/* D88B0 801421B0 00C0202D */   daddu    $a0, $a2, $zero
/* D88B4 801421B4 24020001 */  addiu     $v0, $zero, 1
/* D88B8 801421B8 0805087D */  j         .L801421F4
/* D88BC 801421BC AE700004 */   sw       $s0, 4($s3)
glabel L801421C0_D88C0
/* D88C0 801421C0 8E050000 */  lw        $a1, ($s0)
/* D88C4 801421C4 26100004 */  addiu     $s0, $s0, 4
/* D88C8 801421C8 8E060000 */  lw        $a2, ($s0)
/* D88CC 801421CC 26100004 */  addiu     $s0, $s0, 4
/* D88D0 801421D0 8E620000 */  lw        $v0, ($s3)
/* D88D4 801421D4 3C030001 */  lui       $v1, 1
/* D88D8 801421D8 00431024 */  and       $v0, $v0, $v1
/* D88DC 801421DC 1040FFB5 */  beqz      $v0, .L801420B4
/* D88E0 801421E0 AE700004 */   sw       $s0, 4($s3)
/* D88E4 801421E4 A4850028 */  sh        $a1, 0x28($a0)
/* D88E8 801421E8 0805082D */  j         .L801420B4
/* D88EC 801421EC A486002A */   sh       $a2, 0x2a($a0)
.L801421F0:
glabel L801421F0_D88F0
/* D88F0 801421F0 0000102D */  daddu     $v0, $zero, $zero
.L801421F4:
/* D88F4 801421F4 8FBF0020 */  lw        $ra, 0x20($sp)
/* D88F8 801421F8 8FB3001C */  lw        $s3, 0x1c($sp)
/* D88FC 801421FC 8FB20018 */  lw        $s2, 0x18($sp)
/* D8900 80142200 8FB10014 */  lw        $s1, 0x14($sp)
/* D8904 80142204 8FB00010 */  lw        $s0, 0x10($sp)
/* D8908 80142208 03E00008 */  jr        $ra
/* D890C 8014220C 27BD0028 */   addiu    $sp, $sp, 0x28
