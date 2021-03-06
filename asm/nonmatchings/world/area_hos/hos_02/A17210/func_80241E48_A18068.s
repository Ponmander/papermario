.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241E48_A18068
/* A18068 80241E48 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* A1806C 80241E4C AFB20030 */  sw        $s2, 0x30($sp)
/* A18070 80241E50 0080902D */  daddu     $s2, $a0, $zero
/* A18074 80241E54 AFBF0038 */  sw        $ra, 0x38($sp)
/* A18078 80241E58 AFB30034 */  sw        $s3, 0x34($sp)
/* A1807C 80241E5C AFB1002C */  sw        $s1, 0x2c($sp)
/* A18080 80241E60 AFB00028 */  sw        $s0, 0x28($sp)
/* A18084 80241E64 F7B60048 */  sdc1      $f22, 0x48($sp)
/* A18088 80241E68 F7B40040 */  sdc1      $f20, 0x40($sp)
/* A1808C 80241E6C 8E510148 */  lw        $s1, 0x148($s2)
/* A18090 80241E70 86240008 */  lh        $a0, 8($s1)
/* A18094 80241E74 0C00EABB */  jal       get_npc_unsafe
/* A18098 80241E78 00A0982D */   daddu    $s3, $a1, $zero
/* A1809C 80241E7C 0040802D */  daddu     $s0, $v0, $zero
/* A180A0 80241E80 0200202D */  daddu     $a0, $s0, $zero
/* A180A4 80241E84 C6220088 */  lwc1      $f2, 0x88($s1)
/* A180A8 80241E88 468010A0 */  cvt.s.w   $f2, $f2
/* A180AC 80241E8C 460010A1 */  cvt.d.s   $f2, $f2
/* A180B0 80241E90 C604001C */  lwc1      $f4, 0x1c($s0)
/* A180B4 80241E94 C6000014 */  lwc1      $f0, 0x14($s0)
/* A180B8 80241E98 8E050018 */  lw        $a1, 0x18($s0)
/* A180BC 80241E9C 46002100 */  add.s     $f4, $f4, $f0
/* A180C0 80241EA0 8E06000C */  lw        $a2, 0xc($s0)
/* A180C4 80241EA4 C6200078 */  lwc1      $f0, 0x78($s1)
/* A180C8 80241EA8 46800020 */  cvt.s.w   $f0, $f0
/* A180CC 80241EAC E604001C */  swc1      $f4, 0x1c($s0)
/* A180D0 80241EB0 3C014059 */  lui       $at, 0x4059
/* A180D4 80241EB4 44812800 */  mtc1      $at, $f5
/* A180D8 80241EB8 44802000 */  mtc1      $zero, $f4
/* A180DC 80241EBC 46000021 */  cvt.d.s   $f0, $f0
/* A180E0 80241EC0 46240003 */  div.d     $f0, $f0, $f4
/* A180E4 80241EC4 46200520 */  cvt.s.d   $f20, $f0
/* A180E8 80241EC8 46241083 */  div.d     $f2, $f2, $f4
/* A180EC 80241ECC 0C00EA95 */  jal       npc_move_heading
/* A180F0 80241ED0 462015A0 */   cvt.s.d  $f22, $f2
/* A180F4 80241ED4 C604001C */  lwc1      $f4, 0x1c($s0)
/* A180F8 80241ED8 44801000 */  mtc1      $zero, $f2
/* A180FC 80241EDC 44801800 */  mtc1      $zero, $f3
/* A18100 80241EE0 46002021 */  cvt.d.s   $f0, $f4
/* A18104 80241EE4 4620103E */  c.le.d    $f2, $f0
/* A18108 80241EE8 00000000 */  nop
/* A1810C 80241EEC 45000030 */  bc1f      .L80241FB0
/* A18110 80241EF0 00000000 */   nop
/* A18114 80241EF4 C600003C */  lwc1      $f0, 0x3c($s0)
/* A18118 80241EF8 46040000 */  add.s     $f0, $f0, $f4
/* A1811C 80241EFC E600003C */  swc1      $f0, 0x3c($s0)
/* A18120 80241F00 8E2200CC */  lw        $v0, 0xcc($s1)
/* A18124 80241F04 8C420024 */  lw        $v0, 0x24($v0)
/* A18128 80241F08 AE020028 */  sw        $v0, 0x28($s0)
/* A1812C 80241F0C A2200007 */  sb        $zero, 7($s1)
/* A18130 80241F10 8E020000 */  lw        $v0, ($s0)
/* A18134 80241F14 30420008 */  andi      $v0, $v0, 8
/* A18138 80241F18 14400011 */  bnez      $v0, .L80241F60
/* A1813C 80241F1C 0000102D */   daddu    $v0, $zero, $zero
/* A18140 80241F20 27A50018 */  addiu     $a1, $sp, 0x18
/* A18144 80241F24 27A6001C */  addiu     $a2, $sp, 0x1c
/* A18148 80241F28 C6000038 */  lwc1      $f0, 0x38($s0)
/* A1814C 80241F2C C602003C */  lwc1      $f2, 0x3c($s0)
/* A18150 80241F30 C6040040 */  lwc1      $f4, 0x40($s0)
/* A18154 80241F34 3C01447A */  lui       $at, 0x447a
/* A18158 80241F38 44813000 */  mtc1      $at, $f6
/* A1815C 80241F3C 27A20024 */  addiu     $v0, $sp, 0x24
/* A18160 80241F40 E7A00018 */  swc1      $f0, 0x18($sp)
/* A18164 80241F44 E7A2001C */  swc1      $f2, 0x1c($sp)
/* A18168 80241F48 E7A40020 */  swc1      $f4, 0x20($sp)
/* A1816C 80241F4C E7A60024 */  swc1      $f6, 0x24($sp)
/* A18170 80241F50 AFA20010 */  sw        $v0, 0x10($sp)
/* A18174 80241F54 8E040080 */  lw        $a0, 0x80($s0)
/* A18178 80241F58 0C0372DF */  jal       func_800DCB7C
/* A1817C 80241F5C 27A70020 */   addiu    $a3, $sp, 0x20
.L80241F60:
/* A18180 80241F60 1040000B */  beqz      $v0, .L80241F90
/* A18184 80241F64 00000000 */   nop
/* A18188 80241F68 C7A0001C */  lwc1      $f0, 0x1c($sp)
/* A1818C 80241F6C 46140080 */  add.s     $f2, $f0, $f20
/* A18190 80241F70 C600003C */  lwc1      $f0, 0x3c($s0)
/* A18194 80241F74 4600103E */  c.le.s    $f2, $f0
/* A18198 80241F78 00000000 */  nop
/* A1819C 80241F7C 4500008D */  bc1f      .L802421B4
/* A181A0 80241F80 00000000 */   nop
/* A181A4 80241F84 E602003C */  swc1      $f2, 0x3c($s0)
/* A181A8 80241F88 0809086D */  j         .L802421B4
/* A181AC 80241F8C AE400070 */   sw       $zero, 0x70($s2)
.L80241F90:
/* A181B0 80241F90 C602003C */  lwc1      $f2, 0x3c($s0)
/* A181B4 80241F94 C6000064 */  lwc1      $f0, 0x64($s0)
/* A181B8 80241F98 4602003E */  c.le.s    $f0, $f2
/* A181BC 80241F9C 00000000 */  nop
/* A181C0 80241FA0 45030084 */  bc1tl     .L802421B4
/* A181C4 80241FA4 AE400070 */   sw       $zero, 0x70($s2)
/* A181C8 80241FA8 0809086D */  j         .L802421B4
/* A181CC 80241FAC 00000000 */   nop
.L80241FB0:
/* A181D0 80241FB0 4622003C */  c.lt.d    $f0, $f2
/* A181D4 80241FB4 00000000 */  nop
/* A181D8 80241FB8 4500007E */  bc1f      .L802421B4
/* A181DC 80241FBC 00000000 */   nop
/* A181E0 80241FC0 9602008E */  lhu       $v0, 0x8e($s0)
/* A181E4 80241FC4 24420001 */  addiu     $v0, $v0, 1
/* A181E8 80241FC8 A602008E */  sh        $v0, 0x8e($s0)
/* A181EC 80241FCC 00021400 */  sll       $v0, $v0, 0x10
/* A181F0 80241FD0 8E630020 */  lw        $v1, 0x20($s3)
/* A181F4 80241FD4 00021403 */  sra       $v0, $v0, 0x10
/* A181F8 80241FD8 0043102A */  slt       $v0, $v0, $v1
/* A181FC 80241FDC 14400026 */  bnez      $v0, .L80242078
/* A18200 80241FE0 00000000 */   nop
/* A18204 80241FE4 C60C0038 */  lwc1      $f12, 0x38($s0)
/* A18208 80241FE8 C60E0040 */  lwc1      $f14, 0x40($s0)
/* A1820C 80241FEC 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* A18210 80241FF0 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* A18214 80241FF4 A600008E */  sh        $zero, 0x8e($s0)
/* A18218 80241FF8 8C460028 */  lw        $a2, 0x28($v0)
/* A1821C 80241FFC 0C00A720 */  jal       atan2
/* A18220 80242000 8C470030 */   lw       $a3, 0x30($v0)
/* A18224 80242004 46000506 */  mov.s     $f20, $f0
/* A18228 80242008 C60C000C */  lwc1      $f12, 0xc($s0)
/* A1822C 8024200C 0C00A70A */  jal       get_clamped_angle_diff
/* A18230 80242010 4600A386 */   mov.s    $f14, $f20
/* A18234 80242014 46000086 */  mov.s     $f2, $f0
/* A18238 80242018 8E62001C */  lw        $v0, 0x1c($s3)
/* A1823C 8024201C 46001005 */  abs.s     $f0, $f2
/* A18240 80242020 44822000 */  mtc1      $v0, $f4
/* A18244 80242024 00000000 */  nop
/* A18248 80242028 46802120 */  cvt.s.w   $f4, $f4
/* A1824C 8024202C 4600203C */  c.lt.s    $f4, $f0
/* A18250 80242030 00000000 */  nop
/* A18254 80242034 4500000D */  bc1f      .L8024206C
/* A18258 80242038 00000000 */   nop
/* A1825C 8024203C 44800000 */  mtc1      $zero, $f0
/* A18260 80242040 C614000C */  lwc1      $f20, 0xc($s0)
/* A18264 80242044 4600103C */  c.lt.s    $f2, $f0
/* A18268 80242048 00000000 */  nop
/* A1826C 8024204C 45000006 */  bc1f      .L80242068
/* A18270 80242050 00021023 */   negu     $v0, $v0
/* A18274 80242054 44820000 */  mtc1      $v0, $f0
/* A18278 80242058 00000000 */  nop
/* A1827C 8024205C 46800020 */  cvt.s.w   $f0, $f0
/* A18280 80242060 0809081B */  j         .L8024206C
/* A18284 80242064 4600A500 */   add.s    $f20, $f20, $f0
.L80242068:
/* A18288 80242068 4604A500 */  add.s     $f20, $f20, $f4
.L8024206C:
/* A1828C 8024206C 0C00A6C9 */  jal       clamp_angle
/* A18290 80242070 4600A306 */   mov.s    $f12, $f20
/* A18294 80242074 E600000C */  swc1      $f0, 0xc($s0)
.L80242078:
/* A18298 80242078 8E020000 */  lw        $v0, ($s0)
/* A1829C 8024207C 30420008 */  andi      $v0, $v0, 8
/* A182A0 80242080 1040000A */  beqz      $v0, .L802420AC
/* A182A4 80242084 27A50018 */   addiu    $a1, $sp, 0x18
/* A182A8 80242088 C602003C */  lwc1      $f2, 0x3c($s0)
/* A182AC 8024208C C600001C */  lwc1      $f0, 0x1c($s0)
/* A182B0 80242090 46001080 */  add.s     $f2, $f2, $f0
/* A182B4 80242094 4616103C */  c.lt.s    $f2, $f22
/* A182B8 80242098 00000000 */  nop
/* A182BC 8024209C 45020045 */  bc1fl     .L802421B4
/* A182C0 802420A0 E602003C */   swc1     $f2, 0x3c($s0)
/* A182C4 802420A4 0809086C */  j         .L802421B0
/* A182C8 802420A8 E616003C */   swc1     $f22, 0x3c($s0)
.L802420AC:
/* A182CC 802420AC C6000038 */  lwc1      $f0, 0x38($s0)
/* A182D0 802420B0 27A6001C */  addiu     $a2, $sp, 0x1c
/* A182D4 802420B4 E7A00018 */  swc1      $f0, 0x18($sp)
/* A182D8 802420B8 860200A8 */  lh        $v0, 0xa8($s0)
/* A182DC 802420BC C600001C */  lwc1      $f0, 0x1c($s0)
/* A182E0 802420C0 C604003C */  lwc1      $f4, 0x3c($s0)
/* A182E4 802420C4 44821000 */  mtc1      $v0, $f2
/* A182E8 802420C8 00000000 */  nop
/* A182EC 802420CC 468010A0 */  cvt.s.w   $f2, $f2
/* A182F0 802420D0 46000005 */  abs.s     $f0, $f0
/* A182F4 802420D4 46020000 */  add.s     $f0, $f0, $f2
/* A182F8 802420D8 C6060040 */  lwc1      $f6, 0x40($s0)
/* A182FC 802420DC 27A20024 */  addiu     $v0, $sp, 0x24
/* A18300 802420E0 46022100 */  add.s     $f4, $f4, $f2
/* A18304 802420E4 3C014024 */  lui       $at, 0x4024
/* A18308 802420E8 44811800 */  mtc1      $at, $f3
/* A1830C 802420EC 44801000 */  mtc1      $zero, $f2
/* A18310 802420F0 46000021 */  cvt.d.s   $f0, $f0
/* A18314 802420F4 46220000 */  add.d     $f0, $f0, $f2
/* A18318 802420F8 E7A60020 */  swc1      $f6, 0x20($sp)
/* A1831C 802420FC E7A4001C */  swc1      $f4, 0x1c($sp)
/* A18320 80242100 46200020 */  cvt.s.d   $f0, $f0
/* A18324 80242104 E7A00024 */  swc1      $f0, 0x24($sp)
/* A18328 80242108 AFA20010 */  sw        $v0, 0x10($sp)
/* A1832C 8024210C 8E040080 */  lw        $a0, 0x80($s0)
/* A18330 80242110 0C0372DF */  jal       func_800DCB7C
/* A18334 80242114 27A70020 */   addiu    $a3, $sp, 0x20
/* A18338 80242118 10400015 */  beqz      $v0, .L80242170
/* A1833C 8024211C 00000000 */   nop
/* A18340 80242120 860200A8 */  lh        $v0, 0xa8($s0)
/* A18344 80242124 C604001C */  lwc1      $f4, 0x1c($s0)
/* A18348 80242128 44820000 */  mtc1      $v0, $f0
/* A1834C 8024212C 00000000 */  nop
/* A18350 80242130 46800020 */  cvt.s.w   $f0, $f0
/* A18354 80242134 46002085 */  abs.s     $f2, $f4
/* A18358 80242138 46020000 */  add.s     $f0, $f0, $f2
/* A1835C 8024213C C7A20024 */  lwc1      $f2, 0x24($sp)
/* A18360 80242140 4600103E */  c.le.s    $f2, $f0
/* A18364 80242144 00000000 */  nop
/* A18368 80242148 45000005 */  bc1f      .L80242160
/* A1836C 8024214C 00000000 */   nop
/* A18370 80242150 C7A0001C */  lwc1      $f0, 0x1c($sp)
/* A18374 80242154 AE00001C */  sw        $zero, 0x1c($s0)
/* A18378 80242158 0809086D */  j         .L802421B4
/* A1837C 8024215C E600003C */   swc1     $f0, 0x3c($s0)
.L80242160:
/* A18380 80242160 C600003C */  lwc1      $f0, 0x3c($s0)
/* A18384 80242164 46040000 */  add.s     $f0, $f0, $f4
/* A18388 80242168 0809086D */  j         .L802421B4
/* A1838C 8024216C E600003C */   swc1     $f0, 0x3c($s0)
.L80242170:
/* A18390 80242170 C606003C */  lwc1      $f6, 0x3c($s0)
/* A18394 80242174 860200A8 */  lh        $v0, 0xa8($s0)
/* A18398 80242178 46163081 */  sub.s     $f2, $f6, $f22
/* A1839C 8024217C 44820000 */  mtc1      $v0, $f0
/* A183A0 80242180 00000000 */  nop
/* A183A4 80242184 46800020 */  cvt.s.w   $f0, $f0
/* A183A8 80242188 46001080 */  add.s     $f2, $f2, $f0
/* A183AC 8024218C C604001C */  lwc1      $f4, 0x1c($s0)
/* A183B0 80242190 46002005 */  abs.s     $f0, $f4
/* A183B4 80242194 4602003C */  c.lt.s    $f0, $f2
/* A183B8 80242198 00000000 */  nop
/* A183BC 8024219C 45020005 */  bc1fl     .L802421B4
/* A183C0 802421A0 AE00001C */   sw       $zero, 0x1c($s0)
/* A183C4 802421A4 46043000 */  add.s     $f0, $f6, $f4
/* A183C8 802421A8 0809086D */  j         .L802421B4
/* A183CC 802421AC E600003C */   swc1     $f0, 0x3c($s0)
.L802421B0:
/* A183D0 802421B0 AE00001C */  sw        $zero, 0x1c($s0)
.L802421B4:
/* A183D4 802421B4 8FBF0038 */  lw        $ra, 0x38($sp)
/* A183D8 802421B8 8FB30034 */  lw        $s3, 0x34($sp)
/* A183DC 802421BC 8FB20030 */  lw        $s2, 0x30($sp)
/* A183E0 802421C0 8FB1002C */  lw        $s1, 0x2c($sp)
/* A183E4 802421C4 8FB00028 */  lw        $s0, 0x28($sp)
/* A183E8 802421C8 D7B60048 */  ldc1      $f22, 0x48($sp)
/* A183EC 802421CC D7B40040 */  ldc1      $f20, 0x40($sp)
/* A183F0 802421D0 03E00008 */  jr        $ra
/* A183F4 802421D4 27BD0050 */   addiu    $sp, $sp, 0x50
