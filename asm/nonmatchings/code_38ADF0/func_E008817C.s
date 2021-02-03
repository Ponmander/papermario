.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_E008817C
/* 38AF6C E008817C 27BDFF78 */  addiu     $sp, $sp, -0x88
/* 38AF70 E0088180 F7B40058 */  sdc1      $f20, 0x58($sp)
/* 38AF74 E0088184 4485A000 */  mtc1      $a1, $f20
/* 38AF78 E0088188 AFB50044 */  sw        $s5, 0x44($sp)
/* 38AF7C E008818C 0080A82D */  daddu     $s5, $a0, $zero
/* 38AF80 E0088190 F7B60060 */  sdc1      $f22, 0x60($sp)
/* 38AF84 E0088194 4486B000 */  mtc1      $a2, $f22
/* 38AF88 E0088198 F7B80068 */  sdc1      $f24, 0x68($sp)
/* 38AF8C E008819C 4487C000 */  mtc1      $a3, $f24
/* 38AF90 E00881A0 2EA20007 */  sltiu     $v0, $s5, 7
/* 38AF94 E00881A4 AFBF0054 */  sw        $ra, 0x54($sp)
/* 38AF98 E00881A8 AFBE0050 */  sw        $fp, 0x50($sp)
/* 38AF9C E00881AC AFB7004C */  sw        $s7, 0x4c($sp)
/* 38AFA0 E00881B0 AFB60048 */  sw        $s6, 0x48($sp)
/* 38AFA4 E00881B4 AFB40040 */  sw        $s4, 0x40($sp)
/* 38AFA8 E00881B8 AFB3003C */  sw        $s3, 0x3c($sp)
/* 38AFAC E00881BC AFB20038 */  sw        $s2, 0x38($sp)
/* 38AFB0 E00881C0 AFB10034 */  sw        $s1, 0x34($sp)
/* 38AFB4 E00881C4 AFB00030 */  sw        $s0, 0x30($sp)
/* 38AFB8 E00881C8 F7BE0080 */  sdc1      $f30, 0x80($sp)
/* 38AFBC E00881CC F7BC0078 */  sdc1      $f28, 0x78($sp)
/* 38AFC0 E00881D0 F7BA0070 */  sdc1      $f26, 0x70($sp)
/* 38AFC4 E00881D4 1040000D */  beqz      $v0, .LE008820C
/* 38AFC8 E00881D8 27A40010 */   addiu    $a0, $sp, 0x10
/* 38AFCC E00881DC 00151080 */  sll       $v0, $s5, 2
/* 38AFD0 E00881E0 3C01E009 */  lui       $at, %hi(jtbl_E0088D30)
/* 38AFD4 E00881E4 00220821 */  addu      $at, $at, $v0
/* 38AFD8 E00881E8 8C228D30 */  lw        $v0, %lo(jtbl_E0088D30)($at)
/* 38AFDC E00881EC 00400008 */  jr        $v0
/* 38AFE0 E00881F0 00000000 */   nop
glabel LE00881F4_38AFE4
/* 38AFE4 E00881F4 08022084 */  j         .LE0088210
/* 38AFE8 E00881F8 2413000C */   addiu    $s3, $zero, 0xc
glabel LE00881FC_38AFEC
/* 38AFEC E00881FC 08022084 */  j         .LE0088210
/* 38AFF0 E0088200 24130012 */   addiu    $s3, $zero, 0x12
glabel LE0088204_38AFF4
/* 38AFF4 E0088204 08022084 */  j         .LE0088210
/* 38AFF8 E0088208 24130018 */   addiu    $s3, $zero, 0x18
.LE008820C:
glabel LE008820C_38AFFC
/* 38AFFC E008820C 24130030 */  addiu     $s3, $zero, 0x30
.LE0088210:
/* 38B000 E0088210 2EA20007 */  sltiu     $v0, $s5, 7
/* 38B004 E0088214 1040000E */  beqz      $v0, .LE0088250
/* 38B008 E0088218 00151080 */   sll      $v0, $s5, 2
/* 38B00C E008821C 3C01E009 */  lui       $at, %hi(jtbl_E0088D50)
/* 38B010 E0088220 00220821 */  addu      $at, $at, $v0
/* 38B014 E0088224 8C228D50 */  lw        $v0, %lo(jtbl_E0088D50)($at)
/* 38B018 E0088228 00400008 */  jr        $v0
/* 38B01C E008822C 00000000 */   nop
glabel LE0088230_38B020
/* 38B020 E0088230 3C014040 */  lui       $at, 0x4040
/* 38B024 E0088234 44818000 */  mtc1      $at, $f16
/* 38B028 E0088238 08022098 */  j         .LE0088260
/* 38B02C E008823C E7B00028 */   swc1     $f16, 0x28($sp)
glabel LE0088240_38B030
/* 38B030 E0088240 3C014080 */  lui       $at, 0x4080
/* 38B034 E0088244 44818000 */  mtc1      $at, $f16
/* 38B038 E0088248 08022098 */  j         .LE0088260
/* 38B03C E008824C E7B00028 */   swc1     $f16, 0x28($sp)
.LE0088250:
glabel LE0088250_38B040
/* 38B040 E0088250 3C0140A0 */  lui       $at, 0x40a0
/* 38B044 E0088254 44818000 */  mtc1      $at, $f16
/* 38B048 E0088258 00000000 */  nop
/* 38B04C E008825C E7B00028 */  swc1      $f16, 0x28($sp)
.LE0088260:
/* 38B050 E0088260 3C02E009 */  lui       $v0, %hi(func_E00885A0)
/* 38B054 E0088264 244285A0 */  addiu     $v0, $v0, %lo(func_E00885A0)
/* 38B058 E0088268 AC820008 */  sw        $v0, 8($a0)
/* 38B05C E008826C 3C02E009 */  lui       $v0, %hi(func_E00885A8)
/* 38B060 E0088270 244285A8 */  addiu     $v0, $v0, %lo(func_E00885A8)
/* 38B064 E0088274 AC82000C */  sw        $v0, 0xc($a0)
/* 38B068 E0088278 3C02E009 */  lui       $v0, %hi(func_E00887A8)
/* 38B06C E008827C 244287A8 */  addiu     $v0, $v0, %lo(func_E00887A8)
/* 38B070 E0088280 AC820010 */  sw        $v0, 0x10($a0)
/* 38B074 E0088284 24020044 */  addiu     $v0, $zero, 0x44
/* 38B078 E0088288 AC800000 */  sw        $zero, ($a0)
/* 38B07C E008828C AC800014 */  sw        $zero, 0x14($a0)
/* 38B080 E0088290 0C080124 */  jal       func_E0200490
/* 38B084 E0088294 AC820004 */   sw       $v0, 4($a0)
/* 38B088 E0088298 26630001 */  addiu     $v1, $s3, 1
/* 38B08C E008829C 00032040 */  sll       $a0, $v1, 1
/* 38B090 E00882A0 00832021 */  addu      $a0, $a0, $v1
/* 38B094 E00882A4 00042080 */  sll       $a0, $a0, 2
/* 38B098 E00882A8 00832021 */  addu      $a0, $a0, $v1
/* 38B09C E00882AC 00042080 */  sll       $a0, $a0, 2
/* 38B0A0 E00882B0 0040B02D */  daddu     $s6, $v0, $zero
/* 38B0A4 E00882B4 0C08012C */  jal       func_E02004B0
/* 38B0A8 E00882B8 AEC30008 */   sw       $v1, 8($s6)
/* 38B0AC E00882BC 0040902D */  daddu     $s2, $v0, $zero
/* 38B0B0 E00882C0 16400003 */  bnez      $s2, .LE00882D0
/* 38B0B4 E00882C4 AED2000C */   sw       $s2, 0xc($s6)
.LE00882C8:
/* 38B0B8 E00882C8 080220B2 */  j         .LE00882C8
/* 38B0BC E00882CC 00000000 */   nop
.LE00882D0:
/* 38B0C0 E00882D0 E6540004 */  swc1      $f20, 4($s2)
/* 38B0C4 E00882D4 E6560008 */  swc1      $f22, 8($s2)
/* 38B0C8 E00882D8 E658000C */  swc1      $f24, 0xc($s2)
/* 38B0CC E00882DC AE400024 */  sw        $zero, 0x24($s2)
/* 38B0D0 E00882E0 8FA2009C */  lw        $v0, 0x9c($sp)
/* 38B0D4 E00882E4 24040168 */  addiu     $a0, $zero, 0x168
/* 38B0D8 E00882E8 AE550000 */  sw        $s5, ($s2)
/* 38B0DC E00882EC AE53002C */  sw        $s3, 0x2c($s2)
/* 38B0E0 E00882F0 AE420020 */  sw        $v0, 0x20($s2)
/* 38B0E4 E00882F4 240200FF */  addiu     $v0, $zero, 0xff
/* 38B0E8 E00882F8 AE420028 */  sw        $v0, 0x28($s2)
/* 38B0EC E00882FC 0C080138 */  jal       func_E02004E0
/* 38B0F0 E0088300 26520034 */   addiu    $s2, $s2, 0x34
/* 38B0F4 E0088304 0000882D */  daddu     $s1, $zero, $zero
/* 38B0F8 E0088308 12600092 */  beqz      $s3, .LE0088554
/* 38B0FC E008830C 0040F02D */   daddu    $fp, $v0, $zero
/* 38B100 E0088310 3C03E009 */  lui       $v1, %hi(D_E0088D70)
/* 38B104 E0088314 24638D70 */  addiu     $v1, $v1, %lo(D_E0088D70)
/* 38B108 E0088318 00151080 */  sll       $v0, $s5, 2
/* 38B10C E008831C 0043B821 */  addu      $s7, $v0, $v1
/* 38B110 E0088320 26500030 */  addiu     $s0, $s2, 0x30
/* 38B114 E0088324 0220A02D */  daddu     $s4, $s1, $zero
.LE0088328:
/* 38B118 E0088328 0C080000 */  jal       func_E0200000
/* 38B11C E008832C 24040064 */   addiu    $a0, $zero, 0x64
/* 38B120 E0088330 3C013C23 */  lui       $at, 0x3c23
/* 38B124 E0088334 3421D70A */  ori       $at, $at, 0xd70a
/* 38B128 E0088338 44810000 */  mtc1      $at, $f0
/* 38B12C E008833C 44821000 */  mtc1      $v0, $f2
/* 38B130 E0088340 00000000 */  nop
/* 38B134 E0088344 468010A0 */  cvt.s.w   $f2, $f2
/* 38B138 E0088348 46001082 */  mul.s     $f2, $f2, $f0
/* 38B13C E008834C 00000000 */  nop
/* 38B140 E0088350 C7B00028 */  lwc1      $f16, 0x28($sp)
/* 38B144 E0088354 2EA20007 */  sltiu     $v0, $s5, 7
/* 38B148 E0088358 46028782 */  mul.s     $f30, $f16, $f2
/* 38B14C E008835C 00000000 */  nop
/* 38B150 E0088360 10400006 */  beqz      $v0, .LE008837C
/* 38B154 E0088364 46008021 */   cvt.d.s  $f0, $f16
/* 38B158 E0088368 8EE20000 */  lw        $v0, ($s7)
/* 38B15C E008836C 080220DF */  j         .LE008837C
/* 38B160 E0088370 00000000 */   nop
/* 38B164 E0088374 C7B00028 */  lwc1      $f16, 0x28($sp)
/* 38B168 E0088378 46008021 */  cvt.d.s   $f0, $f16
.LE008837C:
/* 38B16C E008837C 3C013FE0 */  lui       $at, 0x3fe0
/* 38B170 E0088380 44818800 */  mtc1      $at, $f17
/* 38B174 E0088384 44808000 */  mtc1      $zero, $f16
/* 38B178 E0088388 00000000 */  nop
/* 38B17C E008838C 46300002 */  mul.d     $f0, $f0, $f16
/* 38B180 E0088390 00000000 */  nop
/* 38B184 E0088394 46200000 */  add.d     $f0, $f0, $f0
/* 38B188 E0088398 0220102D */  daddu     $v0, $s1, $zero
/* 38B18C E008839C 06210002 */  bgez      $s1, .LE00883A8
/* 38B190 E00883A0 46200720 */   cvt.s.d  $f28, $f0
/* 38B194 E00883A4 26220003 */  addiu     $v0, $s1, 3
.LE00883A8:
/* 38B198 E00883A8 00021083 */  sra       $v0, $v0, 2
/* 38B19C E00883AC 4491A000 */  mtc1      $s1, $f20
/* 38B1A0 E00883B0 00000000 */  nop
/* 38B1A4 E00883B4 4680A520 */  cvt.s.w   $f20, $f20
/* 38B1A8 E00883B8 00021080 */  sll       $v0, $v0, 2
/* 38B1AC E00883BC 3C0143B4 */  lui       $at, 0x43b4
/* 38B1B0 E00883C0 44810000 */  mtc1      $at, $f0
/* 38B1B4 E00883C4 02221023 */  subu      $v0, $s1, $v0
/* 38B1B8 E00883C8 4600A502 */  mul.s     $f20, $f20, $f0
/* 38B1BC E00883CC 00000000 */  nop
/* 38B1C0 E00883D0 3C08E009 */  lui       $t0, %hi(D_E0088D08)
/* 38B1C4 E00883D4 25088D08 */  addiu     $t0, $t0, %lo(D_E0088D08)
/* 38B1C8 E00883D8 00481021 */  addu      $v0, $v0, $t0
/* 38B1CC E00883DC 90420000 */  lbu       $v0, ($v0)
/* 38B1D0 E00883E0 44930000 */  mtc1      $s3, $f0
/* 38B1D4 E00883E4 00000000 */  nop
/* 38B1D8 E00883E8 46800020 */  cvt.s.w   $f0, $f0
/* 38B1DC E00883EC 4600A503 */  div.s     $f20, $f20, $f0
/* 38B1E0 E00883F0 449E0000 */  mtc1      $fp, $f0
/* 38B1E4 E00883F4 00000000 */  nop
/* 38B1E8 E00883F8 46800020 */  cvt.s.w   $f0, $f0
/* 38B1EC E00883FC 4600A500 */  add.s     $f20, $f20, $f0
/* 38B1F0 E0088400 AE550000 */  sw        $s5, ($s2)
/* 38B1F4 E0088404 4482B000 */  mtc1      $v0, $f22
/* 38B1F8 E0088408 00000000 */  nop
/* 38B1FC E008840C 4680B5A0 */  cvt.s.w   $f22, $f22
/* 38B200 E0088410 0C080140 */  jal       func_E0200500
/* 38B204 E0088414 4600A306 */   mov.s    $f12, $f20
/* 38B208 E0088418 4600A306 */  mov.s     $f12, $f20
/* 38B20C E008841C 0C080144 */  jal       func_E0200510
/* 38B210 E0088420 46000606 */   mov.s    $f24, $f0
/* 38B214 E0088424 4600B306 */  mov.s     $f12, $f22
/* 38B218 E0088428 0C080140 */  jal       func_E0200500
/* 38B21C E008842C 46000686 */   mov.s    $f26, $f0
/* 38B220 E0088430 4600B306 */  mov.s     $f12, $f22
/* 38B224 E0088434 0C080144 */  jal       func_E0200510
/* 38B228 E0088438 46000506 */   mov.s    $f20, $f0
/* 38B22C E008843C 24020003 */  addiu     $v0, $zero, 3
/* 38B230 E0088440 16A20005 */  bne       $s5, $v0, .LE0088458
/* 38B234 E0088444 46000386 */   mov.s    $f14, $f0
/* 38B238 E0088448 0C022000 */  jal       func_E0088000
/* 38B23C E008844C 0240202D */   daddu    $a0, $s2, $zero
/* 38B240 E0088450 0802214F */  j         .LE008853C
/* 38B244 E0088454 AE140000 */   sw       $s4, ($s0)
.LE0088458:
/* 38B248 E0088458 4618F182 */  mul.s     $f6, $f30, $f24
/* 38B24C E008845C 00000000 */  nop
/* 38B250 E0088460 461AF202 */  mul.s     $f8, $f30, $f26
/* 38B254 E0088464 00000000 */  nop
/* 38B258 E0088468 4618E082 */  mul.s     $f2, $f28, $f24
/* 38B25C E008846C 00000000 */  nop
/* 38B260 E0088470 4614F302 */  mul.s     $f12, $f30, $f20
/* 38B264 E0088474 00000000 */  nop
/* 38B268 E0088478 461AE002 */  mul.s     $f0, $f28, $f26
/* 38B26C E008847C 00000000 */  nop
/* 38B270 E0088480 4614E102 */  mul.s     $f4, $f28, $f20
/* 38B274 E0088484 00000000 */  nop
/* 38B278 E0088488 460E3182 */  mul.s     $f6, $f6, $f14
/* 38B27C E008848C 00000000 */  nop
/* 38B280 E0088490 460E4202 */  mul.s     $f8, $f8, $f14
/* 38B284 E0088494 00000000 */  nop
/* 38B288 E0088498 460E1082 */  mul.s     $f2, $f2, $f14
/* 38B28C E008849C 00000000 */  nop
/* 38B290 E00884A0 3C013F80 */  lui       $at, 0x3f80
/* 38B294 E00884A4 44815000 */  mtc1      $at, $f10
/* 38B298 E00884A8 460E0002 */  mul.s     $f0, $f0, $f14
/* 38B29C E00884AC 00000000 */  nop
/* 38B2A0 E00884B0 2AA20004 */  slti      $v0, $s5, 4
/* 38B2A4 E00884B4 E60CFFDC */  swc1      $f12, -0x24($s0)
/* 38B2A8 E00884B8 E604FFE8 */  swc1      $f4, -0x18($s0)
/* 38B2AC E00884BC E606FFD4 */  swc1      $f6, -0x2c($s0)
/* 38B2B0 E00884C0 460A0000 */  add.s     $f0, $f0, $f10
/* 38B2B4 E00884C4 E608FFD8 */  swc1      $f8, -0x28($s0)
/* 38B2B8 E00884C8 E602FFE0 */  swc1      $f2, -0x20($s0)
/* 38B2BC E00884CC 14400018 */  bnez      $v0, .LE0088530
/* 38B2C0 E00884D0 E600FFE4 */   swc1     $f0, -0x1c($s0)
/* 38B2C4 E00884D4 3C025555 */  lui       $v0, 0x5555
/* 38B2C8 E00884D8 34425556 */  ori       $v0, $v0, 0x5556
/* 38B2CC E00884DC 26240001 */  addiu     $a0, $s1, 1
/* 38B2D0 E00884E0 00820018 */  mult      $a0, $v0
/* 38B2D4 E00884E4 00041FC3 */  sra       $v1, $a0, 0x1f
/* 38B2D8 E00884E8 3C01E009 */  lui       $at, %hi(D_E0088D90)
/* 38B2DC E00884EC D4208D90 */  ldc1      $f0, %lo(D_E0088D90)($at)
/* 38B2E0 E00884F0 00004010 */  mfhi      $t0
/* 38B2E4 E00884F4 01031823 */  subu      $v1, $t0, $v1
/* 38B2E8 E00884F8 00031040 */  sll       $v0, $v1, 1
/* 38B2EC E00884FC 00431021 */  addu      $v0, $v0, $v1
/* 38B2F0 E0088500 00822023 */  subu      $a0, $a0, $v0
/* 38B2F4 E0088504 44841000 */  mtc1      $a0, $f2
/* 38B2F8 E0088508 00000000 */  nop
/* 38B2FC E008850C 468010A1 */  cvt.d.w   $f2, $f2
/* 38B300 E0088510 46201082 */  mul.d     $f2, $f2, $f0
/* 38B304 E0088514 00000000 */  nop
/* 38B308 E0088518 3C01E009 */  lui       $at, %hi(D_E0088D98)
/* 38B30C E008851C D4208D98 */  ldc1      $f0, %lo(D_E0088D98)($at)
/* 38B310 E0088520 46220001 */  sub.d     $f0, $f0, $f2
/* 38B314 E0088524 46200020 */  cvt.s.d   $f0, $f0
/* 38B318 E0088528 0802214D */  j         .LE0088534
/* 38B31C E008852C E600FFEC */   swc1     $f0, -0x14($s0)
.LE0088530:
/* 38B320 E0088530 AE00FFEC */  sw        $zero, -0x14($s0)
.LE0088534:
/* 38B324 E0088534 32220003 */  andi      $v0, $s1, 3
/* 38B328 E0088538 AE020000 */  sw        $v0, ($s0)
.LE008853C:
/* 38B32C E008853C 26940003 */  addiu     $s4, $s4, 3
/* 38B330 E0088540 26310001 */  addiu     $s1, $s1, 1
/* 38B334 E0088544 26100034 */  addiu     $s0, $s0, 0x34
/* 38B338 E0088548 0233102A */  slt       $v0, $s1, $s3
/* 38B33C E008854C 1440FF76 */  bnez      $v0, .LE0088328
/* 38B340 E0088550 26520034 */   addiu    $s2, $s2, 0x34
.LE0088554:
/* 38B344 E0088554 02C0102D */  daddu     $v0, $s6, $zero
/* 38B348 E0088558 8FBF0054 */  lw        $ra, 0x54($sp)
/* 38B34C E008855C 8FBE0050 */  lw        $fp, 0x50($sp)
/* 38B350 E0088560 8FB7004C */  lw        $s7, 0x4c($sp)
/* 38B354 E0088564 8FB60048 */  lw        $s6, 0x48($sp)
/* 38B358 E0088568 8FB50044 */  lw        $s5, 0x44($sp)
/* 38B35C E008856C 8FB40040 */  lw        $s4, 0x40($sp)
/* 38B360 E0088570 8FB3003C */  lw        $s3, 0x3c($sp)
/* 38B364 E0088574 8FB20038 */  lw        $s2, 0x38($sp)
/* 38B368 E0088578 8FB10034 */  lw        $s1, 0x34($sp)
/* 38B36C E008857C 8FB00030 */  lw        $s0, 0x30($sp)
/* 38B370 E0088580 D7BE0080 */  ldc1      $f30, 0x80($sp)
/* 38B374 E0088584 D7BC0078 */  ldc1      $f28, 0x78($sp)
/* 38B378 E0088588 D7BA0070 */  ldc1      $f26, 0x70($sp)
/* 38B37C E008858C D7B80068 */  ldc1      $f24, 0x68($sp)
/* 38B380 E0088590 D7B60060 */  ldc1      $f22, 0x60($sp)
/* 38B384 E0088594 D7B40058 */  ldc1      $f20, 0x58($sp)
/* 38B388 E0088598 03E00008 */  jr        $ra
/* 38B38C E008859C 27BD0088 */   addiu    $sp, $sp, 0x88
