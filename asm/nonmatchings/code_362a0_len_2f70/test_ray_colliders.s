.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel test_ray_colliders
/* 380D0 8005CCD0 27BDFF98 */  addiu     $sp, $sp, -0x68
/* 380D4 8005CCD4 44854000 */  mtc1      $a1, $f8
/* 380D8 8005CCD8 44866000 */  mtc1      $a2, $f12
/* 380DC 8005CCDC 44877000 */  mtc1      $a3, $f14
/* 380E0 8005CCE0 C7A40078 */  lwc1      $f4, 0x78($sp)
/* 380E4 8005CCE4 44800000 */  mtc1      $zero, $f0
/* 380E8 8005CCE8 C7A6007C */  lwc1      $f6, 0x7c($sp)
/* 380EC 8005CCEC C7AA0080 */  lwc1      $f10, 0x80($sp)
/* 380F0 8005CCF0 AFBE0030 */  sw        $fp, 0x30($sp)
/* 380F4 8005CCF4 8FBE0090 */  lw        $fp, 0x90($sp)
/* 380F8 8005CCF8 AFB7002C */  sw        $s7, 0x2c($sp)
/* 380FC 8005CCFC AFBF0034 */  sw        $ra, 0x34($sp)
/* 38100 8005CD00 AFB60028 */  sw        $s6, 0x28($sp)
/* 38104 8005CD04 AFB50024 */  sw        $s5, 0x24($sp)
/* 38108 8005CD08 AFB40020 */  sw        $s4, 0x20($sp)
/* 3810C 8005CD0C AFB3001C */  sw        $s3, 0x1c($sp)
/* 38110 8005CD10 AFB20018 */  sw        $s2, 0x18($sp)
/* 38114 8005CD14 AFB10014 */  sw        $s1, 0x14($sp)
/* 38118 8005CD18 AFB00010 */  sw        $s0, 0x10($sp)
/* 3811C 8005CD1C F7BE0060 */  sdc1      $f30, 0x60($sp)
/* 38120 8005CD20 F7BC0058 */  sdc1      $f28, 0x58($sp)
/* 38124 8005CD24 F7BA0050 */  sdc1      $f26, 0x50($sp)
/* 38128 8005CD28 F7B80048 */  sdc1      $f24, 0x48($sp)
/* 3812C 8005CD2C F7B60040 */  sdc1      $f22, 0x40($sp)
/* 38130 8005CD30 F7B40038 */  sdc1      $f20, 0x38($sp)
/* 38134 8005CD34 46002032 */  c.eq.s    $f4, $f0
/* 38138 8005CD38 00000000 */  nop       
/* 3813C 8005CD3C 45000009 */  bc1f      .L8005CD64
/* 38140 8005CD40 0080B82D */   daddu    $s7, $a0, $zero
/* 38144 8005CD44 46003032 */  c.eq.s    $f6, $f0
/* 38148 8005CD48 00000000 */  nop       
/* 3814C 8005CD4C 45000005 */  bc1f      .L8005CD64
/* 38150 8005CD50 00000000 */   nop      
/* 38154 8005CD54 46005032 */  c.eq.s    $f10, $f0
/* 38158 8005CD58 00000000 */  nop       
/* 3815C 8005CD5C 450100DF */  bc1t      .L8005D0DC
/* 38160 8005CD60 0000102D */   daddu    $v0, $zero, $zero
.L8005CD64:
/* 38164 8005CD64 3C15800B */  lui       $s5, 0x800b
/* 38168 8005CD68 26B542E0 */  addiu     $s5, $s5, 0x42e0
/* 3816C 8005CD6C 3C01800A */  lui       $at, 0x800a
/* 38170 8005CD70 E424423C */  swc1      $f4, 0x423c($at)
/* 38174 8005CD74 3C01800A */  lui       $at, 0x800a
/* 38178 8005CD78 E4264240 */  swc1      $f6, 0x4240($at)
/* 3817C 8005CD7C 3C01800A */  lui       $at, 0x800a
/* 38180 8005CD80 E42A4244 */  swc1      $f10, 0x4244($at)
/* 38184 8005CD84 3C01800A */  lui       $at, 0x800a
/* 38188 8005CD88 E4284230 */  swc1      $f8, 0x4230($at)
/* 3818C 8005CD8C 3C01800A */  lui       $at, 0x800a
/* 38190 8005CD90 E42C4234 */  swc1      $f12, 0x4234($at)
/* 38194 8005CD94 3C01800A */  lui       $at, 0x800a
/* 38198 8005CD98 E42E4238 */  swc1      $f14, 0x4238($at)
/* 3819C 8005CD9C C7C20000 */  lwc1      $f2, ($fp)
/* 381A0 8005CDA0 4600203C */  c.lt.s    $f4, $f0
/* 381A4 8005CDA4 3C01800A */  lui       $at, 0x800a
/* 381A8 8005CDA8 E4224254 */  swc1      $f2, 0x4254($at)
/* 381AC 8005CDAC 45000006 */  bc1f      .L8005CDC8
/* 381B0 8005CDB0 2414FFFF */   addiu    $s4, $zero, -1
/* 381B4 8005CDB4 46022002 */  mul.s     $f0, $f4, $f2
/* 381B8 8005CDB8 00000000 */  nop       
/* 381BC 8005CDBC 46004786 */  mov.s     $f30, $f8
/* 381C0 8005CDC0 08017376 */  j         .L8005CDD8
/* 381C4 8005CDC4 4600F700 */   add.s    $f28, $f30, $f0
.L8005CDC8:
/* 381C8 8005CDC8 46022002 */  mul.s     $f0, $f4, $f2
/* 381CC 8005CDCC 00000000 */  nop       
/* 381D0 8005CDD0 46004706 */  mov.s     $f28, $f8
/* 381D4 8005CDD4 4600E780 */  add.s     $f30, $f28, $f0
.L8005CDD8:
/* 381D8 8005CDD8 44800000 */  mtc1      $zero, $f0
/* 381DC 8005CDDC 00000000 */  nop       
/* 381E0 8005CDE0 4600303C */  c.lt.s    $f6, $f0
/* 381E4 8005CDE4 00000000 */  nop       
/* 381E8 8005CDE8 45000007 */  bc1f      .L8005CE08
/* 381EC 8005CDEC 46006686 */   mov.s    $f26, $f12
/* 381F0 8005CDF0 3C01800A */  lui       $at, 0x800a
/* 381F4 8005CDF4 C4204254 */  lwc1      $f0, 0x4254($at)
/* 381F8 8005CDF8 46003002 */  mul.s     $f0, $f6, $f0
/* 381FC 8005CDFC 00000000 */  nop       
/* 38200 8005CE00 08017388 */  j         .L8005CE20
/* 38204 8005CE04 4600D600 */   add.s    $f24, $f26, $f0
.L8005CE08:
/* 38208 8005CE08 3C01800A */  lui       $at, 0x800a
/* 3820C 8005CE0C C4204254 */  lwc1      $f0, 0x4254($at)
/* 38210 8005CE10 46003002 */  mul.s     $f0, $f6, $f0
/* 38214 8005CE14 00000000 */  nop       
/* 38218 8005CE18 46006606 */  mov.s     $f24, $f12
/* 3821C 8005CE1C 4600C680 */  add.s     $f26, $f24, $f0
.L8005CE20:
/* 38220 8005CE20 44800000 */  mtc1      $zero, $f0
/* 38224 8005CE24 00000000 */  nop       
/* 38228 8005CE28 4600503C */  c.lt.s    $f10, $f0
/* 3822C 8005CE2C 00000000 */  nop       
/* 38230 8005CE30 45000007 */  bc1f      .L8005CE50
/* 38234 8005CE34 46007586 */   mov.s    $f22, $f14
/* 38238 8005CE38 3C01800A */  lui       $at, 0x800a
/* 3823C 8005CE3C C4204254 */  lwc1      $f0, 0x4254($at)
/* 38240 8005CE40 46005002 */  mul.s     $f0, $f10, $f0
/* 38244 8005CE44 00000000 */  nop       
/* 38248 8005CE48 0801739A */  j         .L8005CE68
/* 3824C 8005CE4C 4600B500 */   add.s    $f20, $f22, $f0
.L8005CE50:
/* 38250 8005CE50 3C01800A */  lui       $at, 0x800a
/* 38254 8005CE54 C4204254 */  lwc1      $f0, 0x4254($at)
/* 38258 8005CE58 46005002 */  mul.s     $f0, $f10, $f0
/* 3825C 8005CE5C 00000000 */  nop       
/* 38260 8005CE60 46007506 */  mov.s     $f20, $f14
/* 38264 8005CE64 4600A580 */  add.s     $f22, $f20, $f0
.L8005CE68:
/* 38268 8005CE68 86A2000C */  lh        $v0, 0xc($s5)
/* 3826C 8005CE6C 1840007D */  blez      $v0, .L8005D064
/* 38270 8005CE70 0000982D */   daddu    $s3, $zero, $zero
/* 38274 8005CE74 0260B02D */  daddu     $s6, $s3, $zero
.L8005CE78:
/* 38278 8005CE78 8EA20004 */  lw        $v0, 4($s5)
/* 3827C 8005CE7C 00569021 */  addu      $s2, $v0, $s6
/* 38280 8005CE80 8E420000 */  lw        $v0, ($s2)
/* 38284 8005CE84 00571024 */  and       $v0, $v0, $s7
/* 38288 8005CE88 54400071 */  bnel      $v0, $zero, .L8005D050
/* 3828C 8005CE8C 26D6001C */   addiu    $s6, $s6, 0x1c
/* 38290 8005CE90 8643000A */  lh        $v1, 0xa($s2)
/* 38294 8005CE94 5060006E */  beql      $v1, $zero, .L8005D050
/* 38298 8005CE98 26D6001C */   addiu    $s6, $s6, 0x1c
/* 3829C 8005CE9C 8E420010 */  lw        $v0, 0x10($s2)
/* 382A0 8005CEA0 C4400000 */  lwc1      $f0, ($v0)
/* 382A4 8005CEA4 4600F03C */  c.lt.s    $f30, $f0
/* 382A8 8005CEA8 00000000 */  nop       
/* 382AC 8005CEAC 45030068 */  bc1tl     .L8005D050
/* 382B0 8005CEB0 26D6001C */   addiu    $s6, $s6, 0x1c
/* 382B4 8005CEB4 C440000C */  lwc1      $f0, 0xc($v0)
/* 382B8 8005CEB8 461C003C */  c.lt.s    $f0, $f28
/* 382BC 8005CEBC 00000000 */  nop       
/* 382C0 8005CEC0 45030063 */  bc1tl     .L8005D050
/* 382C4 8005CEC4 26D6001C */   addiu    $s6, $s6, 0x1c
/* 382C8 8005CEC8 C4400008 */  lwc1      $f0, 8($v0)
/* 382CC 8005CECC 4600B03C */  c.lt.s    $f22, $f0
/* 382D0 8005CED0 00000000 */  nop       
/* 382D4 8005CED4 4503005E */  bc1tl     .L8005D050
/* 382D8 8005CED8 26D6001C */   addiu    $s6, $s6, 0x1c
/* 382DC 8005CEDC C4400014 */  lwc1      $f0, 0x14($v0)
/* 382E0 8005CEE0 4614003C */  c.lt.s    $f0, $f20
/* 382E4 8005CEE4 00000000 */  nop       
/* 382E8 8005CEE8 45030059 */  bc1tl     .L8005D050
/* 382EC 8005CEEC 26D6001C */   addiu    $s6, $s6, 0x1c
/* 382F0 8005CEF0 C4400004 */  lwc1      $f0, 4($v0)
/* 382F4 8005CEF4 4600D03C */  c.lt.s    $f26, $f0
/* 382F8 8005CEF8 00000000 */  nop       
/* 382FC 8005CEFC 45030054 */  bc1tl     .L8005D050
/* 38300 8005CF00 26D6001C */   addiu    $s6, $s6, 0x1c
/* 38304 8005CF04 C4400010 */  lwc1      $f0, 0x10($v0)
/* 38308 8005CF08 4618003C */  c.lt.s    $f0, $f24
/* 3830C 8005CF0C 00000000 */  nop       
/* 38310 8005CF10 4503004F */  bc1tl     .L8005D050
/* 38314 8005CF14 26D6001C */   addiu    $s6, $s6, 0x1c
/* 38318 8005CF18 3C01800A */  lui       $at, 0x800a
/* 3831C 8005CF1C C420423C */  lwc1      $f0, 0x423c($at)
/* 38320 8005CF20 44808000 */  mtc1      $zero, $f16
/* 38324 8005CF24 8E51000C */  lw        $s1, 0xc($s2)
/* 38328 8005CF28 46100032 */  c.eq.s    $f0, $f16
/* 3832C 8005CF2C 00000000 */  nop       
/* 38330 8005CF30 45000020 */  bc1f      .L8005CFB4
/* 38334 8005CF34 00000000 */   nop      
/* 38338 8005CF38 3C01800A */  lui       $at, 0x800a
/* 3833C 8005CF3C C4204244 */  lwc1      $f0, 0x4244($at)
/* 38340 8005CF40 46100032 */  c.eq.s    $f0, $f16
/* 38344 8005CF44 00000000 */  nop       
/* 38348 8005CF48 4500001A */  bc1f      .L8005CFB4
/* 3834C 8005CF4C 00000000 */   nop      
/* 38350 8005CF50 3C01800A */  lui       $at, 0x800a
/* 38354 8005CF54 C4204240 */  lwc1      $f0, 0x4240($at)
/* 38358 8005CF58 3C01BFF0 */  lui       $at, 0xbff0
/* 3835C 8005CF5C 44811800 */  mtc1      $at, $f3
/* 38360 8005CF60 44801000 */  mtc1      $zero, $f2
/* 38364 8005CF64 46000021 */  cvt.d.s   $f0, $f0
/* 38368 8005CF68 46220032 */  c.eq.d    $f0, $f2
/* 3836C 8005CF6C 00000000 */  nop       
/* 38370 8005CF70 45000010 */  bc1f      .L8005CFB4
/* 38374 8005CF74 00000000 */   nop      
/* 38378 8005CF78 18600034 */  blez      $v1, .L8005D04C
/* 3837C 8005CF7C 0000802D */   daddu    $s0, $zero, $zero
/* 38380 8005CF80 0220202D */  daddu     $a0, $s1, $zero
.L8005CF84:
/* 38384 8005CF84 8EA50000 */  lw        $a1, ($s5)
/* 38388 8005CF88 0C017127 */  jal       test_down_ray_triangle
/* 3838C 8005CF8C 26310040 */   addiu    $s1, $s1, 0x40
/* 38390 8005CF90 54400001 */  bnel      $v0, $zero, .L8005CF98
/* 38394 8005CF94 0260A02D */   daddu    $s4, $s3, $zero
.L8005CF98:
/* 38398 8005CF98 8642000A */  lh        $v0, 0xa($s2)
/* 3839C 8005CF9C 26100001 */  addiu     $s0, $s0, 1
/* 383A0 8005CFA0 0202102A */  slt       $v0, $s0, $v0
/* 383A4 8005CFA4 1440FFF7 */  bnez      $v0, .L8005CF84
/* 383A8 8005CFA8 0220202D */   daddu    $a0, $s1, $zero
/* 383AC 8005CFAC 08017414 */  j         .L8005D050
/* 383B0 8005CFB0 26D6001C */   addiu    $s6, $s6, 0x1c
.L8005CFB4:
/* 383B4 8005CFB4 3C01800A */  lui       $at, 0x800a
/* 383B8 8005CFB8 C4204240 */  lwc1      $f0, 0x4240($at)
/* 383BC 8005CFBC 44808000 */  mtc1      $zero, $f16
/* 383C0 8005CFC0 00000000 */  nop       
/* 383C4 8005CFC4 46100032 */  c.eq.s    $f0, $f16
/* 383C8 8005CFC8 00000000 */  nop       
/* 383CC 8005CFCC 45000011 */  bc1f      .L8005D014
/* 383D0 8005CFD0 00000000 */   nop      
/* 383D4 8005CFD4 8642000A */  lh        $v0, 0xa($s2)
/* 383D8 8005CFD8 1840001C */  blez      $v0, .L8005D04C
/* 383DC 8005CFDC 0000802D */   daddu    $s0, $zero, $zero
/* 383E0 8005CFE0 0220202D */  daddu     $a0, $s1, $zero
.L8005CFE4:
/* 383E4 8005CFE4 8EA50000 */  lw        $a1, ($s5)
/* 383E8 8005CFE8 0C0171E9 */  jal       test_up_ray_triangle
/* 383EC 8005CFEC 26310040 */   addiu    $s1, $s1, 0x40
/* 383F0 8005CFF0 54400001 */  bnel      $v0, $zero, .L8005CFF8
/* 383F4 8005CFF4 0260A02D */   daddu    $s4, $s3, $zero
.L8005CFF8:
/* 383F8 8005CFF8 8642000A */  lh        $v0, 0xa($s2)
/* 383FC 8005CFFC 26100001 */  addiu     $s0, $s0, 1
/* 38400 8005D000 0202102A */  slt       $v0, $s0, $v0
/* 38404 8005D004 1440FFF7 */  bnez      $v0, .L8005CFE4
/* 38408 8005D008 0220202D */   daddu    $a0, $s1, $zero
/* 3840C 8005D00C 08017414 */  j         .L8005D050
/* 38410 8005D010 26D6001C */   addiu    $s6, $s6, 0x1c
.L8005D014:
/* 38414 8005D014 8642000A */  lh        $v0, 0xa($s2)
/* 38418 8005D018 1840000C */  blez      $v0, .L8005D04C
/* 3841C 8005D01C 0000802D */   daddu    $s0, $zero, $zero
/* 38420 8005D020 0220202D */  daddu     $a0, $s1, $zero
.L8005D024:
/* 38424 8005D024 8EA50000 */  lw        $a1, ($s5)
/* 38428 8005D028 0C016FA1 */  jal       test_ray_triangle_general
/* 3842C 8005D02C 26310040 */   addiu    $s1, $s1, 0x40
/* 38430 8005D030 54400001 */  bnel      $v0, $zero, .L8005D038
/* 38434 8005D034 0260A02D */   daddu    $s4, $s3, $zero
.L8005D038:
/* 38438 8005D038 8642000A */  lh        $v0, 0xa($s2)
/* 3843C 8005D03C 26100001 */  addiu     $s0, $s0, 1
/* 38440 8005D040 0202102A */  slt       $v0, $s0, $v0
/* 38444 8005D044 1440FFF7 */  bnez      $v0, .L8005D024
/* 38448 8005D048 0220202D */   daddu    $a0, $s1, $zero
.L8005D04C:
/* 3844C 8005D04C 26D6001C */  addiu     $s6, $s6, 0x1c
.L8005D050:
/* 38450 8005D050 86A2000C */  lh        $v0, 0xc($s5)
/* 38454 8005D054 26730001 */  addiu     $s3, $s3, 1
/* 38458 8005D058 0262102A */  slt       $v0, $s3, $v0
/* 3845C 8005D05C 1440FF86 */  bnez      $v0, .L8005CE78
/* 38460 8005D060 00000000 */   nop      
.L8005D064:
/* 38464 8005D064 0680001D */  bltz      $s4, .L8005D0DC
/* 38468 8005D068 0280102D */   daddu    $v0, $s4, $zero
/* 3846C 8005D06C 3C01800A */  lui       $at, 0x800a
/* 38470 8005D070 C4204248 */  lwc1      $f0, 0x4248($at)
/* 38474 8005D074 8FA20084 */  lw        $v0, 0x84($sp)
/* 38478 8005D078 E4400000 */  swc1      $f0, ($v0)
/* 3847C 8005D07C 3C01800A */  lui       $at, 0x800a
/* 38480 8005D080 C420424C */  lwc1      $f0, 0x424c($at)
/* 38484 8005D084 8FA20088 */  lw        $v0, 0x88($sp)
/* 38488 8005D088 E4400000 */  swc1      $f0, ($v0)
/* 3848C 8005D08C 3C01800A */  lui       $at, 0x800a
/* 38490 8005D090 C4204250 */  lwc1      $f0, 0x4250($at)
/* 38494 8005D094 8FA2008C */  lw        $v0, 0x8c($sp)
/* 38498 8005D098 E4400000 */  swc1      $f0, ($v0)
/* 3849C 8005D09C 3C01800A */  lui       $at, 0x800a
/* 384A0 8005D0A0 C4204254 */  lwc1      $f0, 0x4254($at)
/* 384A4 8005D0A4 E7C00000 */  swc1      $f0, ($fp)
/* 384A8 8005D0A8 3C01800A */  lui       $at, 0x800a
/* 384AC 8005D0AC C4204258 */  lwc1      $f0, 0x4258($at)
/* 384B0 8005D0B0 8FA20094 */  lw        $v0, 0x94($sp)
/* 384B4 8005D0B4 E4400000 */  swc1      $f0, ($v0)
/* 384B8 8005D0B8 3C01800A */  lui       $at, 0x800a
/* 384BC 8005D0BC C420425C */  lwc1      $f0, 0x425c($at)
/* 384C0 8005D0C0 8FA20098 */  lw        $v0, 0x98($sp)
/* 384C4 8005D0C4 E4400000 */  swc1      $f0, ($v0)
/* 384C8 8005D0C8 3C01800A */  lui       $at, 0x800a
/* 384CC 8005D0CC C4204260 */  lwc1      $f0, 0x4260($at)
/* 384D0 8005D0D0 8FA3009C */  lw        $v1, 0x9c($sp)
/* 384D4 8005D0D4 0280102D */  daddu     $v0, $s4, $zero
/* 384D8 8005D0D8 E4600000 */  swc1      $f0, ($v1)
.L8005D0DC:
/* 384DC 8005D0DC 8FBF0034 */  lw        $ra, 0x34($sp)
/* 384E0 8005D0E0 8FBE0030 */  lw        $fp, 0x30($sp)
/* 384E4 8005D0E4 8FB7002C */  lw        $s7, 0x2c($sp)
/* 384E8 8005D0E8 8FB60028 */  lw        $s6, 0x28($sp)
/* 384EC 8005D0EC 8FB50024 */  lw        $s5, 0x24($sp)
/* 384F0 8005D0F0 8FB40020 */  lw        $s4, 0x20($sp)
/* 384F4 8005D0F4 8FB3001C */  lw        $s3, 0x1c($sp)
/* 384F8 8005D0F8 8FB20018 */  lw        $s2, 0x18($sp)
/* 384FC 8005D0FC 8FB10014 */  lw        $s1, 0x14($sp)
/* 38500 8005D100 8FB00010 */  lw        $s0, 0x10($sp)
/* 38504 8005D104 D7BE0060 */  ldc1      $f30, 0x60($sp)
/* 38508 8005D108 D7BC0058 */  ldc1      $f28, 0x58($sp)
/* 3850C 8005D10C D7BA0050 */  ldc1      $f26, 0x50($sp)
/* 38510 8005D110 D7B80048 */  ldc1      $f24, 0x48($sp)
/* 38514 8005D114 D7B60040 */  ldc1      $f22, 0x40($sp)
/* 38518 8005D118 D7B40038 */  ldc1      $f20, 0x38($sp)
/* 3851C 8005D11C 03E00008 */  jr        $ra
/* 38520 8005D120 27BD0068 */   addiu    $sp, $sp, 0x68
