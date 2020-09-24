.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80243B10
/* 164370 80243B10 3C028016 */  lui       $v0, 0x8016
/* 164374 80243B14 24429D50 */  addiu     $v0, $v0, -0x62b0
/* 164378 80243B18 00042140 */  sll       $a0, $a0, 5
/* 16437C 80243B1C 00822021 */  addu      $a0, $a0, $v0
/* 164380 80243B20 9082001C */  lbu       $v0, 0x1c($a0)
/* 164384 80243B24 3C013D80 */  lui       $at, 0x3d80
/* 164388 80243B28 44811000 */  mtc1      $at, $f2
/* 16438C 80243B2C 44820000 */  mtc1      $v0, $f0
/* 164390 80243B30 00000000 */  nop       
/* 164394 80243B34 46800020 */  cvt.s.w   $f0, $f0
/* 164398 80243B38 46020002 */  mul.s     $f0, $f0, $f2
/* 16439C 80243B3C 00000000 */  nop       
/* 1643A0 80243B40 3C013F80 */  lui       $at, 0x3f80
/* 1643A4 80243B44 44811000 */  mtc1      $at, $f2
/* 1643A8 80243B48 28420010 */  slti      $v0, $v0, 0x10
/* 1643AC 80243B4C 1040002E */  beqz      $v0, .L80243C08
/* 1643B0 80243B50 46001101 */   sub.s    $f4, $f2, $f0
/* 1643B4 80243B54 8483000C */  lh        $v1, 0xc($a0)
/* 1643B8 80243B58 24020050 */  addiu     $v0, $zero, 0x50
/* 1643BC 80243B5C 00431023 */  subu      $v0, $v0, $v1
/* 1643C0 80243B60 44820000 */  mtc1      $v0, $f0
/* 1643C4 80243B64 00000000 */  nop       
/* 1643C8 80243B68 46800020 */  cvt.s.w   $f0, $f0
/* 1643CC 80243B6C 46040002 */  mul.s     $f0, $f0, $f4
/* 1643D0 80243B70 00000000 */  nop       
/* 1643D4 80243B74 44831000 */  mtc1      $v1, $f2
/* 1643D8 80243B78 00000000 */  nop       
/* 1643DC 80243B7C 468010A0 */  cvt.s.w   $f2, $f2
/* 1643E0 80243B80 46020000 */  add.s     $f0, $f0, $f2
/* 1643E4 80243B84 00031823 */  negu      $v1, $v1
/* 1643E8 80243B88 44831000 */  mtc1      $v1, $f2
/* 1643EC 80243B8C 00000000 */  nop       
/* 1643F0 80243B90 468010A0 */  cvt.s.w   $f2, $f2
/* 1643F4 80243B94 46001080 */  add.s     $f2, $f2, $f0
/* 1643F8 80243B98 C4C00000 */  lwc1      $f0, ($a2)
/* 1643FC 80243B9C 46800020 */  cvt.s.w   $f0, $f0
/* 164400 80243BA0 46020000 */  add.s     $f0, $f0, $f2
/* 164404 80243BA4 4600018D */  trunc.w.s $f6, $f0
/* 164408 80243BA8 E4C60000 */  swc1      $f6, ($a2)
/* 16440C 80243BAC 8483000E */  lh        $v1, 0xe($a0)
/* 164410 80243BB0 24020024 */  addiu     $v0, $zero, 0x24
/* 164414 80243BB4 00431023 */  subu      $v0, $v0, $v1
/* 164418 80243BB8 44820000 */  mtc1      $v0, $f0
/* 16441C 80243BBC 00000000 */  nop       
/* 164420 80243BC0 46800020 */  cvt.s.w   $f0, $f0
/* 164424 80243BC4 46040002 */  mul.s     $f0, $f0, $f4
/* 164428 80243BC8 00000000 */  nop       
/* 16442C 80243BCC 44831000 */  mtc1      $v1, $f2
/* 164430 80243BD0 00000000 */  nop       
/* 164434 80243BD4 468010A0 */  cvt.s.w   $f2, $f2
/* 164438 80243BD8 46020000 */  add.s     $f0, $f0, $f2
/* 16443C 80243BDC 00031823 */  negu      $v1, $v1
/* 164440 80243BE0 44831000 */  mtc1      $v1, $f2
/* 164444 80243BE4 00000000 */  nop       
/* 164448 80243BE8 468010A0 */  cvt.s.w   $f2, $f2
/* 16444C 80243BEC 46001080 */  add.s     $f2, $f2, $f0
/* 164450 80243BF0 C4E00000 */  lwc1      $f0, ($a3)
/* 164454 80243BF4 46800020 */  cvt.s.w   $f0, $f0
/* 164458 80243BF8 46020000 */  add.s     $f0, $f0, $f2
/* 16445C 80243BFC 4600018D */  trunc.w.s $f6, $f0
/* 164460 80243C00 03E00008 */  jr        $ra
/* 164464 80243C04 E4E60000 */   swc1     $f6, ($a3)
.L80243C08:
/* 164468 80243C08 24020050 */  addiu     $v0, $zero, 0x50
/* 16446C 80243C0C 8483000C */  lh        $v1, 0xc($a0)
/* 164470 80243C10 44802000 */  mtc1      $zero, $f4
/* 164474 80243C14 00431023 */  subu      $v0, $v0, $v1
/* 164478 80243C18 44820000 */  mtc1      $v0, $f0
/* 16447C 80243C1C 00000000 */  nop       
/* 164480 80243C20 46800020 */  cvt.s.w   $f0, $f0
/* 164484 80243C24 46040002 */  mul.s     $f0, $f0, $f4
/* 164488 80243C28 00000000 */  nop       
/* 16448C 80243C2C 44831000 */  mtc1      $v1, $f2
/* 164490 80243C30 00000000 */  nop       
/* 164494 80243C34 468010A0 */  cvt.s.w   $f2, $f2
/* 164498 80243C38 46020000 */  add.s     $f0, $f0, $f2
/* 16449C 80243C3C 00031823 */  negu      $v1, $v1
/* 1644A0 80243C40 44831000 */  mtc1      $v1, $f2
/* 1644A4 80243C44 00000000 */  nop       
/* 1644A8 80243C48 468010A0 */  cvt.s.w   $f2, $f2
/* 1644AC 80243C4C 46001080 */  add.s     $f2, $f2, $f0
/* 1644B0 80243C50 C4C00000 */  lwc1      $f0, ($a2)
/* 1644B4 80243C54 46800020 */  cvt.s.w   $f0, $f0
/* 1644B8 80243C58 46020000 */  add.s     $f0, $f0, $f2
/* 1644BC 80243C5C 4600018D */  trunc.w.s $f6, $f0
/* 1644C0 80243C60 E4C60000 */  swc1      $f6, ($a2)
/* 1644C4 80243C64 8483000E */  lh        $v1, 0xe($a0)
/* 1644C8 80243C68 24020024 */  addiu     $v0, $zero, 0x24
/* 1644CC 80243C6C 00431023 */  subu      $v0, $v0, $v1
/* 1644D0 80243C70 44820000 */  mtc1      $v0, $f0
/* 1644D4 80243C74 00000000 */  nop       
/* 1644D8 80243C78 46800020 */  cvt.s.w   $f0, $f0
/* 1644DC 80243C7C 46040002 */  mul.s     $f0, $f0, $f4
/* 1644E0 80243C80 00000000 */  nop       
/* 1644E4 80243C84 44831000 */  mtc1      $v1, $f2
/* 1644E8 80243C88 00000000 */  nop       
/* 1644EC 80243C8C 468010A0 */  cvt.s.w   $f2, $f2
/* 1644F0 80243C90 46020000 */  add.s     $f0, $f0, $f2
/* 1644F4 80243C94 00031823 */  negu      $v1, $v1
/* 1644F8 80243C98 44831000 */  mtc1      $v1, $f2
/* 1644FC 80243C9C 00000000 */  nop       
/* 164500 80243CA0 468010A0 */  cvt.s.w   $f2, $f2
/* 164504 80243CA4 46001080 */  add.s     $f2, $f2, $f0
/* 164508 80243CA8 C4E00000 */  lwc1      $f0, ($a3)
/* 16450C 80243CAC 46800020 */  cvt.s.w   $f0, $f0
/* 164510 80243CB0 46020000 */  add.s     $f0, $f0, $f2
/* 164514 80243CB4 4600018D */  trunc.w.s $f6, $f0
/* 164518 80243CB8 E4E60000 */  swc1      $f6, ($a3)
/* 16451C 80243CBC 90820000 */  lbu       $v0, ($a0)
/* 164520 80243CC0 304200F7 */  andi      $v0, $v0, 0xf7
/* 164524 80243CC4 03E00008 */  jr        $ra
/* 164528 80243CC8 A0820000 */   sb       $v0, ($a0)
