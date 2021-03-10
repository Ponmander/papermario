.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_E00321D8
/* 343858 E00321D8 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 34385C E00321DC AFBF0024 */  sw        $ra, 0x24($sp)
/* 343860 E00321E0 AFB20020 */  sw        $s2, 0x20($sp)
/* 343864 E00321E4 AFB1001C */  sw        $s1, 0x1c($sp)
/* 343868 E00321E8 AFB00018 */  sw        $s0, 0x18($sp)
/* 34386C E00321EC 8C90000C */  lw        $s0, 0xc($a0)
/* 343870 E00321F0 8E020030 */  lw        $v0, 0x30($s0)
/* 343874 E00321F4 2442FFFF */  addiu     $v0, $v0, -1
/* 343878 E00321F8 04410005 */  bgez      $v0, .LE0032210
/* 34387C E00321FC AE020030 */   sw       $v0, 0x30($s0)
/* 343880 E0032200 0C080128 */  jal       func_E02004A0
/* 343884 E0032204 00000000 */   nop
/* 343888 E0032208 0800C902 */  j         .LE0032408
/* 34388C E003220C 00000000 */   nop
.LE0032210:
/* 343890 E0032210 8E020034 */  lw        $v0, 0x34($s0)
/* 343894 E0032214 8E110000 */  lw        $s1, ($s0)
/* 343898 E0032218 24420001 */  addiu     $v0, $v0, 1
/* 34389C E003221C 0040902D */  daddu     $s2, $v0, $zero
/* 3438A0 E0032220 AE020034 */  sw        $v0, 0x34($s0)
/* 3438A4 E0032224 24020007 */  addiu     $v0, $zero, 7
/* 3438A8 E0032228 1642000A */  bne       $s2, $v0, .LE0032254
/* 3438AC E003222C 24020001 */   addiu    $v0, $zero, 1
/* 3438B0 E0032230 0C080150 */  jal       func_E0200540
/* 3438B4 E0032234 24040017 */   addiu    $a0, $zero, 0x17
/* 3438B8 E0032238 8E050004 */  lw        $a1, 4($s0)
/* 3438BC E003223C 8E060008 */  lw        $a2, 8($s0)
/* 3438C0 E0032240 8E07000C */  lw        $a3, 0xc($s0)
/* 3438C4 E0032244 0C00B800 */  jal       func_E002E000
/* 3438C8 E0032248 0220202D */   daddu    $a0, $s1, $zero
/* 3438CC E003224C 0800C8A4 */  j         .LE0032290
/* 3438D0 E0032250 2610003C */   addiu    $s0, $s0, 0x3c
.LE0032254:
/* 3438D4 E0032254 5642000E */  bnel      $s2, $v0, .LE0032290
/* 3438D8 E0032258 2610003C */   addiu    $s0, $s0, 0x3c
/* 3438DC E003225C 0C080150 */  jal       func_E0200540
/* 3438E0 E0032260 24040044 */   addiu    $a0, $zero, 0x44
/* 3438E4 E0032264 3C013F80 */  lui       $at, 0x3f80
/* 3438E8 E0032268 44810000 */  mtc1      $at, $f0
/* 3438EC E003226C 24020032 */  addiu     $v0, $zero, 0x32
/* 3438F0 E0032270 AFA20014 */  sw        $v0, 0x14($sp)
/* 3438F4 E0032274 E7A00010 */  swc1      $f0, 0x10($sp)
/* 3438F8 E0032278 8E050004 */  lw        $a1, 4($s0)
/* 3438FC E003227C 8E060008 */  lw        $a2, 8($s0)
/* 343900 E0032280 8E07000C */  lw        $a3, 0xc($s0)
/* 343904 E0032284 0C02205F */  jal       func_E008817C
/* 343908 E0032288 26240004 */   addiu    $a0, $s1, 4
/* 34390C E003228C 2610003C */  addiu     $s0, $s0, 0x3c
.LE0032290:
/* 343910 E0032290 C6000020 */  lwc1      $f0, 0x20($s0)
/* 343914 E0032294 C6020024 */  lwc1      $f2, 0x24($s0)
/* 343918 E0032298 46020000 */  add.s     $f0, $f0, $f2
/* 34391C E003229C 26030024 */  addiu     $v1, $s0, 0x24
/* 343920 E00322A0 2A420008 */  slti      $v0, $s2, 8
/* 343924 E00322A4 1040001D */  beqz      $v0, .LE003231C
/* 343928 E00322A8 E6000020 */   swc1     $f0, 0x20($s0)
/* 34392C E00322AC 46001006 */  mov.s     $f0, $f2
/* 343930 E00322B0 460000A1 */  cvt.d.s   $f2, $f0
/* 343934 E00322B4 24020002 */  addiu     $v0, $zero, 2
/* 343938 E00322B8 3C01E003 */  lui       $at, %hi(D_E00328C0)
/* 34393C E00322BC D42028C0 */  ldc1      $f0, %lo(D_E00328C0)($at)
/* 343940 E00322C0 56220006 */  bnel      $s1, $v0, .LE00322DC
/* 343944 E00322C4 46201000 */   add.d    $f0, $f2, $f0
/* 343948 E00322C8 3C013FF0 */  lui       $at, 0x3ff0
/* 34394C E00322CC 44810800 */  mtc1      $at, $f1
/* 343950 E00322D0 44800000 */  mtc1      $zero, $f0
/* 343954 E00322D4 00000000 */  nop
/* 343958 E00322D8 46201000 */  add.d     $f0, $f2, $f0
.LE00322DC:
/* 34395C E00322DC 46200020 */  cvt.s.d   $f0, $f0
/* 343960 E00322E0 240200FF */  addiu     $v0, $zero, 0xff
/* 343964 E00322E4 E4600000 */  swc1      $f0, ($v1)
/* 343968 E00322E8 8E030038 */  lw        $v1, 0x38($s0)
/* 34396C E00322EC 3C01E003 */  lui       $at, %hi(D_E00328C8)
/* 343970 E00322F0 D42228C8 */  ldc1      $f2, %lo(D_E00328C8)($at)
/* 343974 E00322F4 00431023 */  subu      $v0, $v0, $v1
/* 343978 E00322F8 44820000 */  mtc1      $v0, $f0
/* 34397C E00322FC 00000000 */  nop
/* 343980 E0032300 46800021 */  cvt.d.w   $f0, $f0
/* 343984 E0032304 46220002 */  mul.d     $f0, $f0, $f2
/* 343988 E0032308 00000000 */  nop
/* 34398C E003230C 4620018D */  trunc.w.d $f6, $f0
/* 343990 E0032310 E6060038 */  swc1      $f6, 0x38($s0)
/* 343994 E0032314 0800C8D8 */  j         .LE0032360
/* 343998 E0032318 2610003C */   addiu    $s0, $s0, 0x3c
.LE003231C:
/* 34399C E003231C 3C01E003 */  lui       $at, %hi(D_E00328D0)
/* 3439A0 E0032320 D42028D0 */  ldc1      $f0, %lo(D_E00328D0)($at)
/* 3439A4 E0032324 C6020038 */  lwc1      $f2, 0x38($s0)
/* 3439A8 E0032328 468010A1 */  cvt.d.w   $f2, $f2
/* 3439AC E003232C 46201082 */  mul.d     $f2, $f2, $f0
/* 3439B0 E0032330 00000000 */  nop
/* 3439B4 E0032334 C6000024 */  lwc1      $f0, 0x24($s0)
/* 3439B8 E0032338 3C01E003 */  lui       $at, %hi(D_E00328D8)
/* 3439BC E003233C D42428D8 */  ldc1      $f4, %lo(D_E00328D8)($at)
/* 3439C0 E0032340 46000021 */  cvt.d.s   $f0, $f0
/* 3439C4 E0032344 46240002 */  mul.d     $f0, $f0, $f4
/* 3439C8 E0032348 00000000 */  nop
/* 3439CC E003234C 4620118D */  trunc.w.d $f6, $f2
/* 3439D0 E0032350 E6060038 */  swc1      $f6, 0x38($s0)
/* 3439D4 E0032354 46200020 */  cvt.s.d   $f0, $f0
/* 3439D8 E0032358 E6000024 */  swc1      $f0, 0x24($s0)
/* 3439DC E003235C 2610003C */  addiu     $s0, $s0, 0x3c
.LE0032360:
/* 3439E0 E0032360 2A420003 */  slti      $v0, $s2, 3
/* 3439E4 E0032364 14400024 */  bnez      $v0, .LE00323F8
/* 3439E8 E0032368 24020003 */   addiu    $v0, $zero, 3
/* 3439EC E003236C 16420005 */  bne       $s2, $v0, .LE0032384
/* 3439F0 E0032370 00000000 */   nop
/* 3439F4 E0032374 3C013F80 */  lui       $at, 0x3f80
/* 3439F8 E0032378 44810000 */  mtc1      $at, $f0
/* 3439FC E003237C 00000000 */  nop
/* 343A00 E0032380 E6000020 */  swc1      $f0, 0x20($s0)
.LE0032384:
/* 343A04 E0032384 C6000020 */  lwc1      $f0, 0x20($s0)
/* 343A08 E0032388 C6020024 */  lwc1      $f2, 0x24($s0)
/* 343A0C E003238C 46020000 */  add.s     $f0, $f0, $f2
/* 343A10 E0032390 2A420006 */  slti      $v0, $s2, 6
/* 343A14 E0032394 10400007 */  beqz      $v0, .LE00323B4
/* 343A18 E0032398 E6000020 */   swc1     $f0, 0x20($s0)
/* 343A1C E003239C 46001006 */  mov.s     $f0, $f2
/* 343A20 E00323A0 3C01E003 */  lui       $at, %hi(D_E00328E0)
/* 343A24 E00323A4 D42228E0 */  ldc1      $f2, %lo(D_E00328E0)($at)
/* 343A28 E00323A8 46000021 */  cvt.d.s   $f0, $f0
/* 343A2C E00323AC 0800C8FC */  j         .LE00323F0
/* 343A30 E00323B0 46220000 */   add.d    $f0, $f0, $f2
.LE00323B4:
/* 343A34 E00323B4 3C01E003 */  lui       $at, %hi(D_E00328E8)
/* 343A38 E00323B8 D42028E8 */  ldc1      $f0, %lo(D_E00328E8)($at)
/* 343A3C E00323BC C6020038 */  lwc1      $f2, 0x38($s0)
/* 343A40 E00323C0 468010A1 */  cvt.d.w   $f2, $f2
/* 343A44 E00323C4 46201082 */  mul.d     $f2, $f2, $f0
/* 343A48 E00323C8 00000000 */  nop
/* 343A4C E00323CC C6000024 */  lwc1      $f0, 0x24($s0)
/* 343A50 E00323D0 3C013FE0 */  lui       $at, 0x3fe0
/* 343A54 E00323D4 44812800 */  mtc1      $at, $f5
/* 343A58 E00323D8 44802000 */  mtc1      $zero, $f4
/* 343A5C E00323DC 46000021 */  cvt.d.s   $f0, $f0
/* 343A60 E00323E0 46240002 */  mul.d     $f0, $f0, $f4
/* 343A64 E00323E4 00000000 */  nop
/* 343A68 E00323E8 4620118D */  trunc.w.d $f6, $f2
/* 343A6C E00323EC E6060038 */  swc1      $f6, 0x38($s0)
.LE00323F0:
/* 343A70 E00323F0 46200020 */  cvt.s.d   $f0, $f0
/* 343A74 E00323F4 E6000024 */  swc1      $f0, 0x24($s0)
.LE00323F8:
/* 343A78 E00323F8 C6000028 */  lwc1      $f0, 0x28($s0)
/* 343A7C E00323FC C602002C */  lwc1      $f2, 0x2c($s0)
/* 343A80 E0032400 46020000 */  add.s     $f0, $f0, $f2
/* 343A84 E0032404 E6000028 */  swc1      $f0, 0x28($s0)
.LE0032408:
/* 343A88 E0032408 8FBF0024 */  lw        $ra, 0x24($sp)
/* 343A8C E003240C 8FB20020 */  lw        $s2, 0x20($sp)
/* 343A90 E0032410 8FB1001C */  lw        $s1, 0x1c($sp)
/* 343A94 E0032414 8FB00018 */  lw        $s0, 0x18($sp)
/* 343A98 E0032418 03E00008 */  jr        $ra
/* 343A9C E003241C 27BD0028 */   addiu    $sp, $sp, 0x28