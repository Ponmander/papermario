.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240A38_D19218
/* D19218 80240A38 27BDFF80 */  addiu     $sp, $sp, -0x80
/* D1921C 80240A3C AFBF0064 */  sw        $ra, 0x64($sp)
/* D19220 80240A40 AFBE0060 */  sw        $fp, 0x60($sp)
/* D19224 80240A44 AFB7005C */  sw        $s7, 0x5c($sp)
/* D19228 80240A48 AFB60058 */  sw        $s6, 0x58($sp)
/* D1922C 80240A4C AFB50054 */  sw        $s5, 0x54($sp)
/* D19230 80240A50 AFB40050 */  sw        $s4, 0x50($sp)
/* D19234 80240A54 AFB3004C */  sw        $s3, 0x4c($sp)
/* D19238 80240A58 AFB20048 */  sw        $s2, 0x48($sp)
/* D1923C 80240A5C AFB10044 */  sw        $s1, 0x44($sp)
/* D19240 80240A60 AFB00040 */  sw        $s0, 0x40($sp)
/* D19244 80240A64 F7B80078 */  sdc1      $f24, 0x78($sp)
/* D19248 80240A68 F7B60070 */  sdc1      $f22, 0x70($sp)
/* D1924C 80240A6C F7B40068 */  sdc1      $f20, 0x68($sp)
/* D19250 80240A70 AFA40080 */  sw        $a0, 0x80($sp)
/* D19254 80240A74 8C960148 */  lw        $s6, 0x148($a0)
/* D19258 80240A78 00C0902D */  daddu     $s2, $a2, $zero
/* D1925C 80240A7C 86C40008 */  lh        $a0, 8($s6)
/* D19260 80240A80 0C00EABB */  jal       get_npc_unsafe
/* D19264 80240A84 0000B82D */   daddu    $s7, $zero, $zero
/* D19268 80240A88 0040882D */  daddu     $s1, $v0, $zero
/* D1926C 80240A8C 9622008E */  lhu       $v0, 0x8e($s1)
/* D19270 80240A90 2442FFFF */  addiu     $v0, $v0, -1
/* D19274 80240A94 A622008E */  sh        $v0, 0x8e($s1)
/* D19278 80240A98 00021400 */  sll       $v0, $v0, 0x10
/* D1927C 80240A9C 8EC30090 */  lw        $v1, 0x90($s6)
/* D19280 80240AA0 00021403 */  sra       $v0, $v0, 0x10
/* D19284 80240AA4 0062182A */  slt       $v1, $v1, $v0
/* D19288 80240AA8 14600005 */  bnez      $v1, .L80240AC0
/* D1928C 80240AAC 02E0F02D */   daddu    $fp, $s7, $zero
/* D19290 80240AB0 8EC20000 */  lw        $v0, ($s6)
/* D19294 80240AB4 3C031F10 */  lui       $v1, 0x1f10
/* D19298 80240AB8 00431025 */  or        $v0, $v0, $v1
/* D1929C 80240ABC AEC20000 */  sw        $v0, ($s6)
.L80240AC0:
/* D192A0 80240AC0 8622008E */  lh        $v0, 0x8e($s1)
/* D192A4 80240AC4 1440025D */  bnez      $v0, .L8024143C
/* D192A8 80240AC8 00000000 */   nop
/* D192AC 80240ACC 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* D192B0 80240AD0 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* D192B4 80240AD4 0C00A6C9 */  jal       clamp_angle
/* D192B8 80240AD8 C44C00A8 */   lwc1     $f12, 0xa8($v0)
/* D192BC 80240ADC 3C014334 */  lui       $at, 0x4334
/* D192C0 80240AE0 44811000 */  mtc1      $at, $f2
/* D192C4 80240AE4 00000000 */  nop
/* D192C8 80240AE8 4602003C */  c.lt.s    $f0, $f2
/* D192CC 80240AEC 00000000 */  nop
/* D192D0 80240AF0 45000011 */  bc1f      .L80240B38
/* D192D4 80240AF4 00000000 */   nop
/* D192D8 80240AF8 3C038007 */  lui       $v1, %hi(gCurrentCameraID)
/* D192DC 80240AFC 8C637410 */  lw        $v1, %lo(gCurrentCameraID)($v1)
/* D192E0 80240B00 3C0142B4 */  lui       $at, 0x42b4
/* D192E4 80240B04 44816000 */  mtc1      $at, $f12
/* D192E8 80240B08 00031080 */  sll       $v0, $v1, 2
/* D192EC 80240B0C 00431021 */  addu      $v0, $v0, $v1
/* D192F0 80240B10 00021080 */  sll       $v0, $v0, 2
/* D192F4 80240B14 00431023 */  subu      $v0, $v0, $v1
/* D192F8 80240B18 000218C0 */  sll       $v1, $v0, 3
/* D192FC 80240B1C 00431021 */  addu      $v0, $v0, $v1
/* D19300 80240B20 000210C0 */  sll       $v0, $v0, 3
/* D19304 80240B24 3C01800B */  lui       $at, %hi(D_800B1DEC)
/* D19308 80240B28 00220821 */  addu      $at, $at, $v0
/* D1930C 80240B2C C4201DEC */  lwc1      $f0, %lo(D_800B1DEC)($at)
/* D19310 80240B30 080902DD */  j         .L80240B74
/* D19314 80240B34 460C0301 */   sub.s    $f12, $f0, $f12
.L80240B38:
/* D19318 80240B38 3C038007 */  lui       $v1, %hi(gCurrentCameraID)
/* D1931C 80240B3C 8C637410 */  lw        $v1, %lo(gCurrentCameraID)($v1)
/* D19320 80240B40 3C0142B4 */  lui       $at, 0x42b4
/* D19324 80240B44 44816000 */  mtc1      $at, $f12
/* D19328 80240B48 00031080 */  sll       $v0, $v1, 2
/* D1932C 80240B4C 00431021 */  addu      $v0, $v0, $v1
/* D19330 80240B50 00021080 */  sll       $v0, $v0, 2
/* D19334 80240B54 00431023 */  subu      $v0, $v0, $v1
/* D19338 80240B58 000218C0 */  sll       $v1, $v0, 3
/* D1933C 80240B5C 00431021 */  addu      $v0, $v0, $v1
/* D19340 80240B60 000210C0 */  sll       $v0, $v0, 3
/* D19344 80240B64 3C01800B */  lui       $at, %hi(D_800B1DEC)
/* D19348 80240B68 00220821 */  addu      $at, $at, $v0
/* D1934C 80240B6C C4201DEC */  lwc1      $f0, %lo(D_800B1DEC)($at)
/* D19350 80240B70 460C0300 */  add.s     $f12, $f0, $f12
.L80240B74:
/* D19354 80240B74 0C00A6C9 */  jal       clamp_angle
/* D19358 80240B78 00000000 */   nop
/* D1935C 80240B7C 46000586 */  mov.s     $f22, $f0
/* D19360 80240B80 3C014334 */  lui       $at, 0x4334
/* D19364 80240B84 44816000 */  mtc1      $at, $f12
/* D19368 80240B88 0C00A6C9 */  jal       clamp_angle
/* D1936C 80240B8C 460CB300 */   add.s    $f12, $f22, $f12
/* D19370 80240B90 8EC20088 */  lw        $v0, 0x88($s6)
/* D19374 80240B94 14400010 */  bnez      $v0, .L80240BD8
/* D19378 80240B98 46000606 */   mov.s    $f24, $f0
/* D1937C 80240B9C 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* D19380 80240BA0 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* D19384 80240BA4 804300B4 */  lb        $v1, 0xb4($v0)
/* D19388 80240BA8 3C014200 */  lui       $at, 0x4200
/* D1938C 80240BAC 4481A000 */  mtc1      $at, $f20
/* D19390 80240BB0 10600016 */  beqz      $v1, .L80240C0C
/* D19394 80240BB4 24020001 */   addiu    $v0, $zero, 1
/* D19398 80240BB8 3C0142C8 */  lui       $at, 0x42c8
/* D1939C 80240BBC 4481A000 */  mtc1      $at, $f20
/* D193A0 80240BC0 14620013 */  bne       $v1, $v0, .L80240C10
/* D193A4 80240BC4 26300038 */   addiu    $s0, $s1, 0x38
/* D193A8 80240BC8 3C0142B4 */  lui       $at, 0x42b4
/* D193AC 80240BCC 4481A000 */  mtc1      $at, $f20
/* D193B0 80240BD0 08090305 */  j         .L80240C14
/* D193B4 80240BD4 0200202D */   daddu    $a0, $s0, $zero
.L80240BD8:
/* D193B8 80240BD8 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* D193BC 80240BDC 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* D193C0 80240BE0 804300B4 */  lb        $v1, 0xb4($v0)
/* D193C4 80240BE4 3C014218 */  lui       $at, 0x4218
/* D193C8 80240BE8 4481A000 */  mtc1      $at, $f20
/* D193CC 80240BEC 10600007 */  beqz      $v1, .L80240C0C
/* D193D0 80240BF0 24020001 */   addiu    $v0, $zero, 1
/* D193D4 80240BF4 3C0142B4 */  lui       $at, 0x42b4
/* D193D8 80240BF8 4481A000 */  mtc1      $at, $f20
/* D193DC 80240BFC 14620004 */  bne       $v1, $v0, .L80240C10
/* D193E0 80240C00 26300038 */   addiu    $s0, $s1, 0x38
/* D193E4 80240C04 3C014296 */  lui       $at, 0x4296
/* D193E8 80240C08 4481A000 */  mtc1      $at, $f20
.L80240C0C:
/* D193EC 80240C0C 26300038 */  addiu     $s0, $s1, 0x38
.L80240C10:
/* D193F0 80240C10 0200202D */  daddu     $a0, $s0, $zero
.L80240C14:
/* D193F4 80240C14 3C15800F */  lui       $s5, %hi(gPlayerStatusPtr)
/* D193F8 80240C18 26B57B30 */  addiu     $s5, $s5, %lo(gPlayerStatusPtr)
/* D193FC 80240C1C 4407C000 */  mfc1      $a3, $f24
/* D19400 80240C20 862200A6 */  lh        $v0, 0xa6($s1)
/* D19404 80240C24 8EA30000 */  lw        $v1, ($s5)
/* D19408 80240C28 44824000 */  mtc1      $v0, $f8
/* D1940C 80240C2C 00000000 */  nop
/* D19410 80240C30 46804220 */  cvt.s.w   $f8, $f8
/* D19414 80240C34 C4600028 */  lwc1      $f0, 0x28($v1)
/* D19418 80240C38 44064000 */  mfc1      $a2, $f8
/* D1941C 80240C3C 26330040 */  addiu     $s3, $s1, 0x40
/* D19420 80240C40 E6200038 */  swc1      $f0, 0x38($s1)
/* D19424 80240C44 C4600030 */  lwc1      $f0, 0x30($v1)
/* D19428 80240C48 0260282D */  daddu     $a1, $s3, $zero
/* D1942C 80240C4C 0C00A7E7 */  jal       add_vec2D_polar
/* D19430 80240C50 E6200040 */   swc1     $f0, 0x40($s1)
/* D19434 80240C54 862200A6 */  lh        $v0, 0xa6($s1)
/* D19438 80240C58 44820000 */  mtc1      $v0, $f0
/* D1943C 80240C5C 00000000 */  nop
/* D19440 80240C60 46800020 */  cvt.s.w   $f0, $f0
/* D19444 80240C64 4600A000 */  add.s     $f0, $f20, $f0
/* D19448 80240C68 4406B000 */  mfc1      $a2, $f22
/* D1944C 80240C6C 44050000 */  mfc1      $a1, $f0
/* D19450 80240C70 0C00EA95 */  jal       npc_move_heading
/* D19454 80240C74 0220202D */   daddu    $a0, $s1, $zero
/* D19458 80240C78 8EC20088 */  lw        $v0, 0x88($s6)
/* D1945C 80240C7C 1440005D */  bnez      $v0, .L80240DF4
/* D19460 80240C80 00000000 */   nop
/* D19464 80240C84 C6200038 */  lwc1      $f0, 0x38($s1)
/* D19468 80240C88 3C018024 */  lui       $at, %hi(D_80247678_D1FE58)
/* D1946C 80240C8C D4247678 */  ldc1      $f4, %lo(D_80247678_D1FE58)($at)
/* D19470 80240C90 46000021 */  cvt.d.s   $f0, $f0
/* D19474 80240C94 4620203C */  c.lt.d    $f4, $f0
/* D19478 80240C98 00000000 */  nop
/* D1947C 80240C9C 45000005 */  bc1f      .L80240CB4
/* D19480 80240CA0 00000000 */   nop
/* D19484 80240CA4 3C0143BE */  lui       $at, 0x43be
/* D19488 80240CA8 44810000 */  mtc1      $at, $f0
/* D1948C 80240CAC 00000000 */  nop
/* D19490 80240CB0 E6200038 */  swc1      $f0, 0x38($s1)
.L80240CB4:
/* D19494 80240CB4 C6200038 */  lwc1      $f0, 0x38($s1)
/* D19498 80240CB8 3C018024 */  lui       $at, %hi(D_80247680_D1FE60)
/* D1949C 80240CBC D4227680 */  ldc1      $f2, %lo(D_80247680_D1FE60)($at)
/* D194A0 80240CC0 46000021 */  cvt.d.s   $f0, $f0
/* D194A4 80240CC4 4622003C */  c.lt.d    $f0, $f2
/* D194A8 80240CC8 00000000 */  nop
/* D194AC 80240CCC 45000005 */  bc1f      .L80240CE4
/* D194B0 80240CD0 00000000 */   nop
/* D194B4 80240CD4 3C01C3BE */  lui       $at, 0xc3be
/* D194B8 80240CD8 44810000 */  mtc1      $at, $f0
/* D194BC 80240CDC 00000000 */  nop
/* D194C0 80240CE0 E6200038 */  swc1      $f0, 0x38($s1)
.L80240CE4:
/* D194C4 80240CE4 C6200040 */  lwc1      $f0, 0x40($s1)
/* D194C8 80240CE8 46000021 */  cvt.d.s   $f0, $f0
/* D194CC 80240CEC 4620203C */  c.lt.d    $f4, $f0
/* D194D0 80240CF0 00000000 */  nop
/* D194D4 80240CF4 45000005 */  bc1f      .L80240D0C
/* D194D8 80240CF8 00000000 */   nop
/* D194DC 80240CFC 3C0143BE */  lui       $at, 0x43be
/* D194E0 80240D00 44810000 */  mtc1      $at, $f0
/* D194E4 80240D04 00000000 */  nop
/* D194E8 80240D08 E6200040 */  swc1      $f0, 0x40($s1)
.L80240D0C:
/* D194EC 80240D0C C6200040 */  lwc1      $f0, 0x40($s1)
/* D194F0 80240D10 46000021 */  cvt.d.s   $f0, $f0
/* D194F4 80240D14 4622003C */  c.lt.d    $f0, $f2
/* D194F8 80240D18 00000000 */  nop
/* D194FC 80240D1C 45000005 */  bc1f      .L80240D34
/* D19500 80240D20 00000000 */   nop
/* D19504 80240D24 3C01C3BE */  lui       $at, 0xc3be
/* D19508 80240D28 44810000 */  mtc1      $at, $f0
/* D1950C 80240D2C 00000000 */  nop
/* D19510 80240D30 E6200040 */  swc1      $f0, 0x40($s1)
.L80240D34:
/* D19514 80240D34 C6220038 */  lwc1      $f2, 0x38($s1)
/* D19518 80240D38 46021082 */  mul.s     $f2, $f2, $f2
/* D1951C 80240D3C 00000000 */  nop
/* D19520 80240D40 C6200040 */  lwc1      $f0, 0x40($s1)
/* D19524 80240D44 46000002 */  mul.s     $f0, $f0, $f0
/* D19528 80240D48 00000000 */  nop
/* D1952C 80240D4C 46001300 */  add.s     $f12, $f2, $f0
/* D19530 80240D50 46006004 */  sqrt.s    $f0, $f12
/* D19534 80240D54 46000032 */  c.eq.s    $f0, $f0
/* D19538 80240D58 00000000 */  nop
/* D1953C 80240D5C 45010003 */  bc1t      .L80240D6C
/* D19540 80240D60 00000000 */   nop
/* D19544 80240D64 0C0187BC */  jal       sqrtf
/* D19548 80240D68 00000000 */   nop
.L80240D6C:
/* D1954C 80240D6C 8E260038 */  lw        $a2, 0x38($s1)
/* D19550 80240D70 8E270040 */  lw        $a3, 0x40($s1)
/* D19554 80240D74 4480A000 */  mtc1      $zero, $f20
/* D19558 80240D78 E7A00038 */  swc1      $f0, 0x38($sp)
/* D1955C 80240D7C 4600A306 */  mov.s     $f12, $f20
/* D19560 80240D80 0C00A720 */  jal       atan2
/* D19564 80240D84 4600A386 */   mov.s    $f14, $f20
/* D19568 80240D88 46000586 */  mov.s     $f22, $f0
/* D1956C 80240D8C C7A20038 */  lwc1      $f2, 0x38($sp)
/* D19570 80240D90 3C018024 */  lui       $at, %hi(D_80247688_D1FE68)
/* D19574 80240D94 D4207688 */  ldc1      $f0, %lo(D_80247688_D1FE68)($at)
/* D19578 80240D98 460010A1 */  cvt.d.s   $f2, $f2
/* D1957C 80240D9C 4620103C */  c.lt.d    $f2, $f0
/* D19580 80240DA0 00000000 */  nop
/* D19584 80240DA4 45000004 */  bc1f      .L80240DB8
/* D19588 80240DA8 0200202D */   daddu    $a0, $s0, $zero
/* D1958C 80240DAC 3C064398 */  lui       $a2, 0x4398
/* D19590 80240DB0 08090376 */  j         .L80240DD8
/* D19594 80240DB4 34C68000 */   ori      $a2, $a2, 0x8000
.L80240DB8:
/* D19598 80240DB8 3C018024 */  lui       $at, %hi(D_80247690_D1FE70)
/* D1959C 80240DBC D4207690 */  ldc1      $f0, %lo(D_80247690_D1FE70)($at)
/* D195A0 80240DC0 4622003C */  c.lt.d    $f0, $f2
/* D195A4 80240DC4 00000000 */  nop
/* D195A8 80240DC8 450000FA */  bc1f      .L802411B4
/* D195AC 80240DCC 00000000 */   nop
/* D195B0 80240DD0 3C0643BB */  lui       $a2, 0x43bb
/* D195B4 80240DD4 34C68000 */  ori       $a2, $a2, 0x8000
.L80240DD8:
/* D195B8 80240DD8 4407B000 */  mfc1      $a3, $f22
/* D195BC 80240DDC 0260282D */  daddu     $a1, $s3, $zero
/* D195C0 80240DE0 E6340038 */  swc1      $f20, 0x38($s1)
/* D195C4 80240DE4 0C00A7E7 */  jal       add_vec2D_polar
/* D195C8 80240DE8 E6340040 */   swc1     $f20, 0x40($s1)
/* D195CC 80240DEC 0809046D */  j         .L802411B4
/* D195D0 80240DF0 00000000 */   nop
.L80240DF4:
/* D195D4 80240DF4 8E220000 */  lw        $v0, ($s1)
/* D195D8 80240DF8 30420040 */  andi      $v0, $v0, 0x40
/* D195DC 80240DFC 144000B0 */  bnez      $v0, .L802410C0
/* D195E0 80240E00 27A50020 */   addiu    $a1, $sp, 0x20
/* D195E4 80240E04 27B40020 */  addiu     $s4, $sp, 0x20
/* D195E8 80240E08 0280282D */  daddu     $a1, $s4, $zero
/* D195EC 80240E0C 27B30024 */  addiu     $s3, $sp, 0x24
/* D195F0 80240E10 8EA20000 */  lw        $v0, ($s5)
/* D195F4 80240E14 3C014032 */  lui       $at, 0x4032
/* D195F8 80240E18 44811800 */  mtc1      $at, $f3
/* D195FC 80240E1C 44801000 */  mtc1      $zero, $f2
/* D19600 80240E20 C440002C */  lwc1      $f0, 0x2c($v0)
/* D19604 80240E24 C4460028 */  lwc1      $f6, 0x28($v0)
/* D19608 80240E28 C4440030 */  lwc1      $f4, 0x30($v0)
/* D1960C 80240E2C 46000021 */  cvt.d.s   $f0, $f0
/* D19610 80240E30 46220000 */  add.d     $f0, $f0, $f2
/* D19614 80240E34 E7A60020 */  swc1      $f6, 0x20($sp)
/* D19618 80240E38 E7A40028 */  swc1      $f4, 0x28($sp)
/* D1961C 80240E3C 46200020 */  cvt.s.d   $f0, $f0
/* D19620 80240E40 E7A00024 */  swc1      $f0, 0x24($sp)
/* D19624 80240E44 E7B40010 */  swc1      $f20, 0x10($sp)
/* D19628 80240E48 E7B60014 */  swc1      $f22, 0x14($sp)
/* D1962C 80240E4C 862200A8 */  lh        $v0, 0xa8($s1)
/* D19630 80240E50 0260302D */  daddu     $a2, $s3, $zero
/* D19634 80240E54 44820000 */  mtc1      $v0, $f0
/* D19638 80240E58 00000000 */  nop
/* D1963C 80240E5C 46800020 */  cvt.s.w   $f0, $f0
/* D19640 80240E60 E7A00018 */  swc1      $f0, 0x18($sp)
/* D19644 80240E64 862200A6 */  lh        $v0, 0xa6($s1)
/* D19648 80240E68 27B00028 */  addiu     $s0, $sp, 0x28
/* D1964C 80240E6C 44820000 */  mtc1      $v0, $f0
/* D19650 80240E70 00000000 */  nop
/* D19654 80240E74 46800020 */  cvt.s.w   $f0, $f0
/* D19658 80240E78 E7A0001C */  swc1      $f0, 0x1c($sp)
/* D1965C 80240E7C 8E240080 */  lw        $a0, 0x80($s1)
/* D19660 80240E80 0C037711 */  jal       func_800DDC44
/* D19664 80240E84 0200382D */   daddu    $a3, $s0, $zero
/* D19668 80240E88 104000CA */  beqz      $v0, .L802411B4
/* D1966C 80240E8C 0280282D */   daddu    $a1, $s4, $zero
/* D19670 80240E90 8EA20000 */  lw        $v0, ($s5)
/* D19674 80240E94 3C018024 */  lui       $at, %hi(D_80247698_D1FE78)
/* D19678 80240E98 D4227698 */  ldc1      $f2, %lo(D_80247698_D1FE78)($at)
/* D1967C 80240E9C C440002C */  lwc1      $f0, 0x2c($v0)
/* D19680 80240EA0 C4460028 */  lwc1      $f6, 0x28($v0)
/* D19684 80240EA4 C4440030 */  lwc1      $f4, 0x30($v0)
/* D19688 80240EA8 46000021 */  cvt.d.s   $f0, $f0
/* D1968C 80240EAC 46220000 */  add.d     $f0, $f0, $f2
/* D19690 80240EB0 E7A60020 */  swc1      $f6, 0x20($sp)
/* D19694 80240EB4 E7A40028 */  swc1      $f4, 0x28($sp)
/* D19698 80240EB8 46200020 */  cvt.s.d   $f0, $f0
/* D1969C 80240EBC E7A00024 */  swc1      $f0, 0x24($sp)
/* D196A0 80240EC0 E7B40010 */  swc1      $f20, 0x10($sp)
/* D196A4 80240EC4 E7B60014 */  swc1      $f22, 0x14($sp)
/* D196A8 80240EC8 862200A8 */  lh        $v0, 0xa8($s1)
/* D196AC 80240ECC 44820000 */  mtc1      $v0, $f0
/* D196B0 80240ED0 00000000 */  nop
/* D196B4 80240ED4 46800020 */  cvt.s.w   $f0, $f0
/* D196B8 80240ED8 E7A00018 */  swc1      $f0, 0x18($sp)
/* D196BC 80240EDC 862200A6 */  lh        $v0, 0xa6($s1)
/* D196C0 80240EE0 0260302D */  daddu     $a2, $s3, $zero
/* D196C4 80240EE4 44820000 */  mtc1      $v0, $f0
/* D196C8 80240EE8 00000000 */  nop
/* D196CC 80240EEC 46800020 */  cvt.s.w   $f0, $f0
/* D196D0 80240EF0 E7A0001C */  swc1      $f0, 0x1c($sp)
/* D196D4 80240EF4 8E240080 */  lw        $a0, 0x80($s1)
/* D196D8 80240EF8 0C037711 */  jal       func_800DDC44
/* D196DC 80240EFC 0200382D */   daddu    $a3, $s0, $zero
/* D196E0 80240F00 27A5002C */  addiu     $a1, $sp, 0x2c
/* D196E4 80240F04 27A60030 */  addiu     $a2, $sp, 0x30
/* D196E8 80240F08 27A70034 */  addiu     $a3, $sp, 0x34
/* D196EC 80240F0C 27A30038 */  addiu     $v1, $sp, 0x38
/* D196F0 80240F10 C6220038 */  lwc1      $f2, 0x38($s1)
/* D196F4 80240F14 C620003C */  lwc1      $f0, 0x3c($s1)
/* D196F8 80240F18 3C014348 */  lui       $at, 0x4348
/* D196FC 80240F1C 44813000 */  mtc1      $at, $f6
/* D19700 80240F20 46000021 */  cvt.d.s   $f0, $f0
/* D19704 80240F24 E7A2002C */  swc1      $f2, 0x2c($sp)
/* D19708 80240F28 3C014059 */  lui       $at, 0x4059
/* D1970C 80240F2C 44811800 */  mtc1      $at, $f3
/* D19710 80240F30 44801000 */  mtc1      $zero, $f2
/* D19714 80240F34 C6240040 */  lwc1      $f4, 0x40($s1)
/* D19718 80240F38 46220000 */  add.d     $f0, $f0, $f2
/* D1971C 80240F3C E7A60038 */  swc1      $f6, 0x38($sp)
/* D19720 80240F40 E7A40034 */  swc1      $f4, 0x34($sp)
/* D19724 80240F44 46200020 */  cvt.s.d   $f0, $f0
/* D19728 80240F48 E7A00030 */  swc1      $f0, 0x30($sp)
/* D1972C 80240F4C AFA30010 */  sw        $v1, 0x10($sp)
/* D19730 80240F50 8E240080 */  lw        $a0, 0x80($s1)
/* D19734 80240F54 0C0372DF */  jal       func_800DCB7C
/* D19738 80240F58 0040802D */   daddu    $s0, $v0, $zero
/* D1973C 80240F5C 1600001C */  bnez      $s0, .L80240FD0
/* D19740 80240F60 00000000 */   nop
/* D19744 80240F64 1040001A */  beqz      $v0, .L80240FD0
/* D19748 80240F68 00000000 */   nop
/* D1974C 80240F6C C7A20038 */  lwc1      $f2, 0x38($sp)
/* D19750 80240F70 3C014054 */  lui       $at, 0x4054
/* D19754 80240F74 44810800 */  mtc1      $at, $f1
/* D19758 80240F78 44800000 */  mtc1      $zero, $f0
/* D1975C 80240F7C 460010A1 */  cvt.d.s   $f2, $f2
/* D19760 80240F80 4622003C */  c.lt.d    $f0, $f2
/* D19764 80240F84 00000000 */  nop
/* D19768 80240F88 45000011 */  bc1f      .L80240FD0
/* D1976C 80240F8C 00000000 */   nop
/* D19770 80240F90 3C01405E */  lui       $at, 0x405e
/* D19774 80240F94 44810800 */  mtc1      $at, $f1
/* D19778 80240F98 44800000 */  mtc1      $zero, $f0
/* D1977C 80240F9C 00000000 */  nop
/* D19780 80240FA0 4620103C */  c.lt.d    $f2, $f0
/* D19784 80240FA4 00000000 */  nop
/* D19788 80240FA8 45000009 */  bc1f      .L80240FD0
/* D1978C 80240FAC 00000000 */   nop
/* D19790 80240FB0 C622003C */  lwc1      $f2, 0x3c($s1)
/* D19794 80240FB4 C7A00030 */  lwc1      $f0, 0x30($sp)
/* D19798 80240FB8 46001032 */  c.eq.s    $f2, $f0
/* D1979C 80240FBC 00000000 */  nop
/* D197A0 80240FC0 45010003 */  bc1t      .L80240FD0
/* D197A4 80240FC4 00000000 */   nop
/* D197A8 80240FC8 0809046D */  j         .L802411B4
/* D197AC 80240FCC 241E0001 */   addiu    $fp, $zero, 1
.L80240FD0:
/* D197B0 80240FD0 3C10800F */  lui       $s0, %hi(gPlayerStatusPtr)
/* D197B4 80240FD4 26107B30 */  addiu     $s0, $s0, %lo(gPlayerStatusPtr)
/* D197B8 80240FD8 8E020000 */  lw        $v0, ($s0)
/* D197BC 80240FDC 3C014024 */  lui       $at, 0x4024
/* D197C0 80240FE0 44811800 */  mtc1      $at, $f3
/* D197C4 80240FE4 44801000 */  mtc1      $zero, $f2
/* D197C8 80240FE8 C440002C */  lwc1      $f0, 0x2c($v0)
/* D197CC 80240FEC C4460028 */  lwc1      $f6, 0x28($v0)
/* D197D0 80240FF0 C4440030 */  lwc1      $f4, 0x30($v0)
/* D197D4 80240FF4 46000021 */  cvt.d.s   $f0, $f0
/* D197D8 80240FF8 46220000 */  add.d     $f0, $f0, $f2
/* D197DC 80240FFC E7A60020 */  swc1      $f6, 0x20($sp)
/* D197E0 80241000 E7A40028 */  swc1      $f4, 0x28($sp)
/* D197E4 80241004 46200020 */  cvt.s.d   $f0, $f0
/* D197E8 80241008 E7A00024 */  swc1      $f0, 0x24($sp)
/* D197EC 8024100C E7B40010 */  swc1      $f20, 0x10($sp)
/* D197F0 80241010 E7B60014 */  swc1      $f22, 0x14($sp)
/* D197F4 80241014 862200A8 */  lh        $v0, 0xa8($s1)
/* D197F8 80241018 27A50020 */  addiu     $a1, $sp, 0x20
/* D197FC 8024101C 44820000 */  mtc1      $v0, $f0
/* D19800 80241020 00000000 */  nop
/* D19804 80241024 46800020 */  cvt.s.w   $f0, $f0
/* D19808 80241028 E7A00018 */  swc1      $f0, 0x18($sp)
/* D1980C 8024102C 862200A6 */  lh        $v0, 0xa6($s1)
/* D19810 80241030 27A60024 */  addiu     $a2, $sp, 0x24
/* D19814 80241034 44820000 */  mtc1      $v0, $f0
/* D19818 80241038 00000000 */  nop
/* D1981C 8024103C 46800020 */  cvt.s.w   $f0, $f0
/* D19820 80241040 E7A0001C */  swc1      $f0, 0x1c($sp)
/* D19824 80241044 8E240080 */  lw        $a0, 0x80($s1)
/* D19828 80241048 0C037711 */  jal       func_800DDC44
/* D1982C 8024104C 27A70028 */   addiu    $a3, $sp, 0x28
/* D19830 80241050 8FA60020 */  lw        $a2, 0x20($sp)
/* D19834 80241054 8E020000 */  lw        $v0, ($s0)
/* D19838 80241058 8FA70028 */  lw        $a3, 0x28($sp)
/* D1983C 8024105C C44C0028 */  lwc1      $f12, 0x28($v0)
/* D19840 80241060 C44E0030 */  lwc1      $f14, 0x30($v0)
/* D19844 80241064 0C00A7B5 */  jal       dist2D
/* D19848 80241068 24170001 */   addiu    $s7, $zero, 1
/* D1984C 8024106C 46000506 */  mov.s     $f20, $f0
/* D19850 80241070 8E030000 */  lw        $v1, ($s0)
/* D19854 80241074 862200A6 */  lh        $v0, 0xa6($s1)
/* D19858 80241078 4407C000 */  mfc1      $a3, $f24
/* D1985C 8024107C 44824000 */  mtc1      $v0, $f8
/* D19860 80241080 00000000 */  nop
/* D19864 80241084 46804220 */  cvt.s.w   $f8, $f8
/* D19868 80241088 C4600028 */  lwc1      $f0, 0x28($v1)
/* D1986C 8024108C 44064000 */  mfc1      $a2, $f8
/* D19870 80241090 26240038 */  addiu     $a0, $s1, 0x38
/* D19874 80241094 E6200038 */  swc1      $f0, 0x38($s1)
/* D19878 80241098 C4600030 */  lwc1      $f0, 0x30($v1)
/* D1987C 8024109C 26250040 */  addiu     $a1, $s1, 0x40
/* D19880 802410A0 0C00A7E7 */  jal       add_vec2D_polar
/* D19884 802410A4 E6200040 */   swc1     $f0, 0x40($s1)
/* D19888 802410A8 862200A6 */  lh        $v0, 0xa6($s1)
/* D1988C 802410AC 44820000 */  mtc1      $v0, $f0
/* D19890 802410B0 00000000 */  nop
/* D19894 802410B4 46800020 */  cvt.s.w   $f0, $f0
/* D19898 802410B8 08090469 */  j         .L802411A4
/* D1989C 802410BC 4600A500 */   add.s    $f20, $f20, $f0
.L802410C0:
/* D198A0 802410C0 8EA20000 */  lw        $v0, ($s5)
/* D198A4 802410C4 3C014032 */  lui       $at, 0x4032
/* D198A8 802410C8 44811800 */  mtc1      $at, $f3
/* D198AC 802410CC 44801000 */  mtc1      $zero, $f2
/* D198B0 802410D0 C440002C */  lwc1      $f0, 0x2c($v0)
/* D198B4 802410D4 C4460028 */  lwc1      $f6, 0x28($v0)
/* D198B8 802410D8 C4440030 */  lwc1      $f4, 0x30($v0)
/* D198BC 802410DC 46000021 */  cvt.d.s   $f0, $f0
/* D198C0 802410E0 46220000 */  add.d     $f0, $f0, $f2
/* D198C4 802410E4 E7A60020 */  swc1      $f6, 0x20($sp)
/* D198C8 802410E8 E7A40028 */  swc1      $f4, 0x28($sp)
/* D198CC 802410EC 46200020 */  cvt.s.d   $f0, $f0
/* D198D0 802410F0 E7A00024 */  swc1      $f0, 0x24($sp)
/* D198D4 802410F4 E7B40010 */  swc1      $f20, 0x10($sp)
/* D198D8 802410F8 E7B60014 */  swc1      $f22, 0x14($sp)
/* D198DC 802410FC 862200A8 */  lh        $v0, 0xa8($s1)
/* D198E0 80241100 44820000 */  mtc1      $v0, $f0
/* D198E4 80241104 00000000 */  nop
/* D198E8 80241108 46800020 */  cvt.s.w   $f0, $f0
/* D198EC 8024110C E7A00018 */  swc1      $f0, 0x18($sp)
/* D198F0 80241110 862200A6 */  lh        $v0, 0xa6($s1)
/* D198F4 80241114 27A60024 */  addiu     $a2, $sp, 0x24
/* D198F8 80241118 44820000 */  mtc1      $v0, $f0
/* D198FC 8024111C 00000000 */  nop
/* D19900 80241120 46800020 */  cvt.s.w   $f0, $f0
/* D19904 80241124 E7A0001C */  swc1      $f0, 0x1c($sp)
/* D19908 80241128 8E240080 */  lw        $a0, 0x80($s1)
/* D1990C 8024112C 0C037711 */  jal       func_800DDC44
/* D19910 80241130 27A70028 */   addiu    $a3, $sp, 0x28
/* D19914 80241134 1040001F */  beqz      $v0, .L802411B4
/* D19918 80241138 00000000 */   nop
/* D1991C 8024113C 8FA60020 */  lw        $a2, 0x20($sp)
/* D19920 80241140 8EA20000 */  lw        $v0, ($s5)
/* D19924 80241144 8FA70028 */  lw        $a3, 0x28($sp)
/* D19928 80241148 C44C0028 */  lwc1      $f12, 0x28($v0)
/* D1992C 8024114C 0C00A7B5 */  jal       dist2D
/* D19930 80241150 C44E0030 */   lwc1     $f14, 0x30($v0)
/* D19934 80241154 46000506 */  mov.s     $f20, $f0
/* D19938 80241158 8EA30000 */  lw        $v1, ($s5)
/* D1993C 8024115C 862200A6 */  lh        $v0, 0xa6($s1)
/* D19940 80241160 4407C000 */  mfc1      $a3, $f24
/* D19944 80241164 44824000 */  mtc1      $v0, $f8
/* D19948 80241168 00000000 */  nop
/* D1994C 8024116C 46804220 */  cvt.s.w   $f8, $f8
/* D19950 80241170 C4600028 */  lwc1      $f0, 0x28($v1)
/* D19954 80241174 44064000 */  mfc1      $a2, $f8
/* D19958 80241178 0200202D */  daddu     $a0, $s0, $zero
/* D1995C 8024117C E6200038 */  swc1      $f0, 0x38($s1)
/* D19960 80241180 C4600030 */  lwc1      $f0, 0x30($v1)
/* D19964 80241184 0260282D */  daddu     $a1, $s3, $zero
/* D19968 80241188 0C00A7E7 */  jal       add_vec2D_polar
/* D1996C 8024118C E6200040 */   swc1     $f0, 0x40($s1)
/* D19970 80241190 862200A6 */  lh        $v0, 0xa6($s1)
/* D19974 80241194 44820000 */  mtc1      $v0, $f0
/* D19978 80241198 00000000 */  nop
/* D1997C 8024119C 46800020 */  cvt.s.w   $f0, $f0
/* D19980 802411A0 4600A500 */  add.s     $f20, $f20, $f0
.L802411A4:
/* D19984 802411A4 4406B000 */  mfc1      $a2, $f22
/* D19988 802411A8 4405A000 */  mfc1      $a1, $f20
/* D1998C 802411AC 0C00EA95 */  jal       npc_move_heading
/* D19990 802411B0 0220202D */   daddu    $a0, $s1, $zero
.L802411B4:
/* D19994 802411B4 C6400008 */  lwc1      $f0, 8($s2)
/* D19998 802411B8 46800020 */  cvt.s.w   $f0, $f0
/* D1999C 802411BC 44050000 */  mfc1      $a1, $f0
/* D199A0 802411C0 C640000C */  lwc1      $f0, 0xc($s2)
/* D199A4 802411C4 46800020 */  cvt.s.w   $f0, $f0
/* D199A8 802411C8 44060000 */  mfc1      $a2, $f0
/* D199AC 802411CC C6200040 */  lwc1      $f0, 0x40($s1)
/* D199B0 802411D0 26300038 */  addiu     $s0, $s1, 0x38
/* D199B4 802411D4 E7A00010 */  swc1      $f0, 0x10($sp)
/* D199B8 802411D8 C6400010 */  lwc1      $f0, 0x10($s2)
/* D199BC 802411DC 46800020 */  cvt.s.w   $f0, $f0
/* D199C0 802411E0 E7A00014 */  swc1      $f0, 0x14($sp)
/* D199C4 802411E4 C6400014 */  lwc1      $f0, 0x14($s2)
/* D199C8 802411E8 46800020 */  cvt.s.w   $f0, $f0
/* D199CC 802411EC E7A00018 */  swc1      $f0, 0x18($sp)
/* D199D0 802411F0 8E440004 */  lw        $a0, 4($s2)
/* D199D4 802411F4 8E270038 */  lw        $a3, 0x38($s1)
/* D199D8 802411F8 0C0123F5 */  jal       is_point_within_region
/* D199DC 802411FC 26330040 */   addiu    $s3, $s1, 0x40
/* D199E0 80241200 1040005A */  beqz      $v0, .L8024136C
/* D199E4 80241204 00000000 */   nop
/* D199E8 80241208 8E430004 */  lw        $v1, 4($s2)
/* D199EC 8024120C 10600005 */  beqz      $v1, .L80241224
/* D199F0 80241210 24020001 */   addiu    $v0, $zero, 1
/* D199F4 80241214 10620029 */  beq       $v1, $v0, .L802412BC
/* D199F8 80241218 00000000 */   nop
/* D199FC 8024121C 080904DB */  j         .L8024136C
/* D19A00 80241220 00000000 */   nop
.L80241224:
/* D19A04 80241224 C6480008 */  lwc1      $f8, 8($s2)
/* D19A08 80241228 46804220 */  cvt.s.w   $f8, $f8
/* D19A0C 8024122C 44064000 */  mfc1      $a2, $f8
/* D19A10 80241230 C648000C */  lwc1      $f8, 0xc($s2)
/* D19A14 80241234 46804220 */  cvt.s.w   $f8, $f8
/* D19A18 80241238 C62C0038 */  lwc1      $f12, 0x38($s1)
/* D19A1C 8024123C C62E0040 */  lwc1      $f14, 0x40($s1)
/* D19A20 80241240 44074000 */  mfc1      $a3, $f8
/* D19A24 80241244 0C00A7B5 */  jal       dist2D
/* D19A28 80241248 00000000 */   nop
/* D19A2C 8024124C C6420010 */  lwc1      $f2, 0x10($s2)
/* D19A30 80241250 468010A0 */  cvt.s.w   $f2, $f2
/* D19A34 80241254 4600103C */  c.lt.s    $f2, $f0
/* D19A38 80241258 00000000 */  nop
/* D19A3C 8024125C 45000043 */  bc1f      .L8024136C
/* D19A40 80241260 E7A00038 */   swc1     $f0, 0x38($sp)
/* D19A44 80241264 C64C0008 */  lwc1      $f12, 8($s2)
/* D19A48 80241268 46806320 */  cvt.s.w   $f12, $f12
/* D19A4C 8024126C 8E260038 */  lw        $a2, 0x38($s1)
/* D19A50 80241270 8E270040 */  lw        $a3, 0x40($s1)
/* D19A54 80241274 C64E000C */  lwc1      $f14, 0xc($s2)
/* D19A58 80241278 0C00A720 */  jal       atan2
/* D19A5C 8024127C 468073A0 */   cvt.s.w  $f14, $f14
/* D19A60 80241280 0200202D */  daddu     $a0, $s0, $zero
/* D19A64 80241284 44070000 */  mfc1      $a3, $f0
/* D19A68 80241288 C6400008 */  lwc1      $f0, 8($s2)
/* D19A6C 8024128C 46800020 */  cvt.s.w   $f0, $f0
/* D19A70 80241290 E6200038 */  swc1      $f0, 0x38($s1)
/* D19A74 80241294 C640000C */  lwc1      $f0, 0xc($s2)
/* D19A78 80241298 46800020 */  cvt.s.w   $f0, $f0
/* D19A7C 8024129C E6200040 */  swc1      $f0, 0x40($s1)
/* D19A80 802412A0 C6480010 */  lwc1      $f8, 0x10($s2)
/* D19A84 802412A4 46804220 */  cvt.s.w   $f8, $f8
/* D19A88 802412A8 44064000 */  mfc1      $a2, $f8
/* D19A8C 802412AC 0C00A7E7 */  jal       add_vec2D_polar
/* D19A90 802412B0 0260282D */   daddu    $a1, $s3, $zero
/* D19A94 802412B4 080904DB */  j         .L8024136C
/* D19A98 802412B8 00000000 */   nop
.L802412BC:
/* D19A9C 802412BC 8E420008 */  lw        $v0, 8($s2)
/* D19AA0 802412C0 8E430010 */  lw        $v1, 0x10($s2)
/* D19AA4 802412C4 C6200038 */  lwc1      $f0, 0x38($s1)
/* D19AA8 802412C8 00431021 */  addu      $v0, $v0, $v1
/* D19AAC 802412CC 44821000 */  mtc1      $v0, $f2
/* D19AB0 802412D0 00000000 */  nop
/* D19AB4 802412D4 468010A0 */  cvt.s.w   $f2, $f2
/* D19AB8 802412D8 4600103C */  c.lt.s    $f2, $f0
/* D19ABC 802412DC 00000000 */  nop
/* D19AC0 802412E0 45030001 */  bc1tl     .L802412E8
/* D19AC4 802412E4 E6220038 */   swc1     $f2, 0x38($s1)
.L802412E8:
/* D19AC8 802412E8 8E420008 */  lw        $v0, 8($s2)
/* D19ACC 802412EC 8E430010 */  lw        $v1, 0x10($s2)
/* D19AD0 802412F0 C6200038 */  lwc1      $f0, 0x38($s1)
/* D19AD4 802412F4 00431023 */  subu      $v0, $v0, $v1
/* D19AD8 802412F8 44821000 */  mtc1      $v0, $f2
/* D19ADC 802412FC 00000000 */  nop
/* D19AE0 80241300 468010A0 */  cvt.s.w   $f2, $f2
/* D19AE4 80241304 4602003C */  c.lt.s    $f0, $f2
/* D19AE8 80241308 00000000 */  nop
/* D19AEC 8024130C 45030001 */  bc1tl     .L80241314
/* D19AF0 80241310 E6220038 */   swc1     $f2, 0x38($s1)
.L80241314:
/* D19AF4 80241314 8E42000C */  lw        $v0, 0xc($s2)
/* D19AF8 80241318 8E430014 */  lw        $v1, 0x14($s2)
/* D19AFC 8024131C C6200040 */  lwc1      $f0, 0x40($s1)
/* D19B00 80241320 00431021 */  addu      $v0, $v0, $v1
/* D19B04 80241324 44821000 */  mtc1      $v0, $f2
/* D19B08 80241328 00000000 */  nop
/* D19B0C 8024132C 468010A0 */  cvt.s.w   $f2, $f2
/* D19B10 80241330 4600103C */  c.lt.s    $f2, $f0
/* D19B14 80241334 00000000 */  nop
/* D19B18 80241338 45030001 */  bc1tl     .L80241340
/* D19B1C 8024133C E6220040 */   swc1     $f2, 0x40($s1)
.L80241340:
/* D19B20 80241340 8E42000C */  lw        $v0, 0xc($s2)
/* D19B24 80241344 8E430014 */  lw        $v1, 0x14($s2)
/* D19B28 80241348 C6200040 */  lwc1      $f0, 0x40($s1)
/* D19B2C 8024134C 00431023 */  subu      $v0, $v0, $v1
/* D19B30 80241350 44821000 */  mtc1      $v0, $f2
/* D19B34 80241354 00000000 */  nop
/* D19B38 80241358 468010A0 */  cvt.s.w   $f2, $f2
/* D19B3C 8024135C 4602003C */  c.lt.s    $f0, $f2
/* D19B40 80241360 00000000 */  nop
/* D19B44 80241364 45030001 */  bc1tl     .L8024136C
/* D19B48 80241368 E6220040 */   swc1     $f2, 0x40($s1)
.L8024136C:
/* D19B4C 8024136C 16E0001F */  bnez      $s7, .L802413EC
/* D19B50 80241370 00000000 */   nop
/* D19B54 80241374 8E220000 */  lw        $v0, ($s1)
/* D19B58 80241378 30420008 */  andi      $v0, $v0, 8
/* D19B5C 8024137C 10400003 */  beqz      $v0, .L8024138C
/* D19B60 80241380 27A50020 */   addiu    $a1, $sp, 0x20
/* D19B64 80241384 13C00019 */  beqz      $fp, .L802413EC
/* D19B68 80241388 00000000 */   nop
.L8024138C:
/* D19B6C 8024138C 27A60024 */  addiu     $a2, $sp, 0x24
/* D19B70 80241390 27A20038 */  addiu     $v0, $sp, 0x38
/* D19B74 80241394 C6220038 */  lwc1      $f2, 0x38($s1)
/* D19B78 80241398 C620003C */  lwc1      $f0, 0x3c($s1)
/* D19B7C 8024139C 3C0143C8 */  lui       $at, 0x43c8
/* D19B80 802413A0 44813000 */  mtc1      $at, $f6
/* D19B84 802413A4 46000021 */  cvt.d.s   $f0, $f0
/* D19B88 802413A8 E7A20020 */  swc1      $f2, 0x20($sp)
/* D19B8C 802413AC 3C018024 */  lui       $at, %hi(D_802476A0_D1FE80)
/* D19B90 802413B0 D42276A0 */  ldc1      $f2, %lo(D_802476A0_D1FE80)($at)
/* D19B94 802413B4 C6240040 */  lwc1      $f4, 0x40($s1)
/* D19B98 802413B8 46220000 */  add.d     $f0, $f0, $f2
/* D19B9C 802413BC E7A60038 */  swc1      $f6, 0x38($sp)
/* D19BA0 802413C0 E7A40028 */  swc1      $f4, 0x28($sp)
/* D19BA4 802413C4 46200020 */  cvt.s.d   $f0, $f0
/* D19BA8 802413C8 E7A00024 */  swc1      $f0, 0x24($sp)
/* D19BAC 802413CC AFA20010 */  sw        $v0, 0x10($sp)
/* D19BB0 802413D0 8E240080 */  lw        $a0, 0x80($s1)
/* D19BB4 802413D4 0C0372DF */  jal       func_800DCB7C
/* D19BB8 802413D8 27A70028 */   addiu    $a3, $sp, 0x28
/* D19BBC 802413DC 10400003 */  beqz      $v0, .L802413EC
/* D19BC0 802413E0 00000000 */   nop
/* D19BC4 802413E4 C7A00024 */  lwc1      $f0, 0x24($sp)
/* D19BC8 802413E8 E620003C */  swc1      $f0, 0x3c($s1)
.L802413EC:
/* D19BCC 802413EC C62C0038 */  lwc1      $f12, 0x38($s1)
/* D19BD0 802413F0 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* D19BD4 802413F4 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* D19BD8 802413F8 C62E0040 */  lwc1      $f14, 0x40($s1)
/* D19BDC 802413FC 8C460028 */  lw        $a2, 0x28($v0)
/* D19BE0 80241400 0C00A720 */  jal       atan2
/* D19BE4 80241404 8C470030 */   lw       $a3, 0x30($v0)
/* D19BE8 80241408 0220202D */  daddu     $a0, $s1, $zero
/* D19BEC 8024140C 24050321 */  addiu     $a1, $zero, 0x321
/* D19BF0 80241410 0000302D */  daddu     $a2, $zero, $zero
/* D19BF4 80241414 0C012530 */  jal       func_800494C0
/* D19BF8 80241418 E620000C */   swc1     $f0, 0xc($s1)
/* D19BFC 8024141C 8EC200CC */  lw        $v0, 0xcc($s6)
/* D19C00 80241420 8C420024 */  lw        $v0, 0x24($v0)
/* D19C04 80241424 AE220028 */  sw        $v0, 0x28($s1)
/* D19C08 80241428 96C20096 */  lhu       $v0, 0x96($s6)
/* D19C0C 8024142C A622008E */  sh        $v0, 0x8e($s1)
/* D19C10 80241430 8FA80080 */  lw        $t0, 0x80($sp)
/* D19C14 80241434 2402000B */  addiu     $v0, $zero, 0xb
/* D19C18 80241438 AD020070 */  sw        $v0, 0x70($t0)
.L8024143C:
/* D19C1C 8024143C 8FBF0064 */  lw        $ra, 0x64($sp)
/* D19C20 80241440 8FBE0060 */  lw        $fp, 0x60($sp)
/* D19C24 80241444 8FB7005C */  lw        $s7, 0x5c($sp)
/* D19C28 80241448 8FB60058 */  lw        $s6, 0x58($sp)
/* D19C2C 8024144C 8FB50054 */  lw        $s5, 0x54($sp)
/* D19C30 80241450 8FB40050 */  lw        $s4, 0x50($sp)
/* D19C34 80241454 8FB3004C */  lw        $s3, 0x4c($sp)
/* D19C38 80241458 8FB20048 */  lw        $s2, 0x48($sp)
/* D19C3C 8024145C 8FB10044 */  lw        $s1, 0x44($sp)
/* D19C40 80241460 8FB00040 */  lw        $s0, 0x40($sp)
/* D19C44 80241464 D7B80078 */  ldc1      $f24, 0x78($sp)
/* D19C48 80241468 D7B60070 */  ldc1      $f22, 0x70($sp)
/* D19C4C 8024146C D7B40068 */  ldc1      $f20, 0x68($sp)
/* D19C50 80241470 03E00008 */  jr        $ra
/* D19C54 80241474 27BD0080 */   addiu    $sp, $sp, 0x80
