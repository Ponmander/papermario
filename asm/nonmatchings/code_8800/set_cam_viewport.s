.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel set_cam_viewport
/* 9714 8002E314 3C08800B */  lui       $t0, %hi(gCameras)
/* 9718 8002E318 25081D80 */  addiu     $t0, $t0, %lo(gCameras)
/* 971C 8002E31C 00042400 */  sll       $a0, $a0, 0x10
/* 9720 8002E320 00042403 */  sra       $a0, $a0, 0x10
/* 9724 8002E324 00041880 */  sll       $v1, $a0, 2
/* 9728 8002E328 00641821 */  addu      $v1, $v1, $a0
/* 972C 8002E32C 00031880 */  sll       $v1, $v1, 2
/* 9730 8002E330 00641823 */  subu      $v1, $v1, $a0
/* 9734 8002E334 000310C0 */  sll       $v0, $v1, 3
/* 9738 8002E338 00621821 */  addu      $v1, $v1, $v0
/* 973C 8002E33C 000318C0 */  sll       $v1, $v1, 3
/* 9740 8002E340 00681821 */  addu      $v1, $v1, $t0
/* 9744 8002E344 A467000A */  sh        $a3, 0xa($v1)
/* 9748 8002E348 A465000E */  sh        $a1, 0xe($v1)
/* 974C 8002E34C 00E0282D */  daddu     $a1, $a3, $zero
/* 9750 8002E350 A4660010 */  sh        $a2, 0x10($v1)
/* 9754 8002E354 8FA40010 */  lw        $a0, 0x10($sp)
/* 9758 8002E358 240201FF */  addiu     $v0, $zero, 0x1ff
/* 975C 8002E35C A46200A4 */  sh        $v0, 0xa4($v1)
/* 9760 8002E360 A46200AC */  sh        $v0, 0xac($v1)
/* 9764 8002E364 A46200B4 */  sh        $v0, 0xb4($v1)
/* 9768 8002E368 9462000E */  lhu       $v0, 0xe($v1)
/* 976C 8002E36C 00052C00 */  sll       $a1, $a1, 0x10
/* 9770 8002E370 A46000A6 */  sh        $zero, 0xa6($v1)
/* 9774 8002E374 A46000AE */  sh        $zero, 0xae($v1)
/* 9778 8002E378 A46000B6 */  sh        $zero, 0xb6($v1)
/* 977C 8002E37C A464000C */  sh        $a0, 0xc($v1)
/* 9780 8002E380 00052403 */  sra       $a0, $a1, 0x10
/* 9784 8002E384 00052FC2 */  srl       $a1, $a1, 0x1f
/* 9788 8002E388 00852021 */  addu      $a0, $a0, $a1
/* 978C 8002E38C 00042043 */  sra       $a0, $a0, 1
/* 9790 8002E390 00441021 */  addu      $v0, $v0, $a0
/* 9794 8002E394 00021400 */  sll       $v0, $v0, 0x10
/* 9798 8002E398 8464000A */  lh        $a0, 0xa($v1)
/* 979C 8002E39C 00021383 */  sra       $v0, $v0, 0xe
/* 97A0 8002E3A0 A46200A8 */  sh        $v0, 0xa8($v1)
/* 97A4 8002E3A4 9462000C */  lhu       $v0, 0xc($v1)
/* 97A8 8002E3A8 44840000 */  mtc1      $a0, $f0
/* 97AC 8002E3AC 00000000 */  nop
/* 97B0 8002E3B0 46800020 */  cvt.s.w   $f0, $f0
/* 97B4 8002E3B4 00021400 */  sll       $v0, $v0, 0x10
/* 97B8 8002E3B8 00022403 */  sra       $a0, $v0, 0x10
/* 97BC 8002E3BC 000217C2 */  srl       $v0, $v0, 0x1f
/* 97C0 8002E3C0 00822021 */  addu      $a0, $a0, $v0
/* 97C4 8002E3C4 00C0102D */  daddu     $v0, $a2, $zero
/* 97C8 8002E3C8 00042043 */  sra       $a0, $a0, 1
/* 97CC 8002E3CC 00441021 */  addu      $v0, $v0, $a0
/* 97D0 8002E3D0 00021400 */  sll       $v0, $v0, 0x10
/* 97D4 8002E3D4 00021383 */  sra       $v0, $v0, 0xe
/* 97D8 8002E3D8 46000000 */  add.s     $f0, $f0, $f0
/* 97DC 8002E3DC A46200AA */  sh        $v0, 0xaa($v1)
/* 97E0 8002E3E0 8462000A */  lh        $v0, 0xa($v1)
/* 97E4 8002E3E4 4600010D */  trunc.w.s $f4, $f0
/* 97E8 8002E3E8 44042000 */  mfc1      $a0, $f4
/* 97EC 8002E3EC 44820000 */  mtc1      $v0, $f0
/* 97F0 8002E3F0 00000000 */  nop
/* 97F4 8002E3F4 46800020 */  cvt.s.w   $f0, $f0
/* 97F8 8002E3F8 46000000 */  add.s     $f0, $f0, $f0
/* 97FC 8002E3FC 8462000C */  lh        $v0, 0xc($v1)
/* 9800 8002E400 3C068007 */  lui       $a2, %hi(gGameStatusPtr)
/* 9804 8002E404 8CC6419C */  lw        $a2, %lo(gGameStatusPtr)($a2)
/* 9808 8002E408 44821000 */  mtc1      $v0, $f2
/* 980C 8002E40C 00000000 */  nop
/* 9810 8002E410 468010A0 */  cvt.s.w   $f2, $f2
/* 9814 8002E414 4600010D */  trunc.w.s $f4, $f0
/* 9818 8002E418 44022000 */  mfc1      $v0, $f4
/* 981C 8002E41C 00000000 */  nop
/* 9820 8002E420 A46200B0 */  sh        $v0, 0xb0($v1)
/* 9824 8002E424 8462000C */  lh        $v0, 0xc($v1)
/* 9828 8002E428 46021080 */  add.s     $f2, $f2, $f2
/* 982C 8002E42C A46400A0 */  sh        $a0, 0xa0($v1)
/* 9830 8002E430 44820000 */  mtc1      $v0, $f0
/* 9834 8002E434 00000000 */  nop
/* 9838 8002E438 46800020 */  cvt.s.w   $f0, $f0
/* 983C 8002E43C 46000000 */  add.s     $f0, $f0, $f0
/* 9840 8002E440 4600110D */  trunc.w.s $f4, $f2
/* 9844 8002E444 44042000 */  mfc1      $a0, $f4
/* 9848 8002E448 00000000 */  nop
/* 984C 8002E44C A46400A2 */  sh        $a0, 0xa2($v1)
/* 9850 8002E450 4600010D */  trunc.w.s $f4, $f0
/* 9854 8002E454 44022000 */  mfc1      $v0, $f4
/* 9858 8002E458 00000000 */  nop
/* 985C 8002E45C A46200B2 */  sh        $v0, 0xb2($v1)
/* 9860 8002E460 00E0102D */  daddu     $v0, $a3, $zero
/* 9864 8002E464 00021400 */  sll       $v0, $v0, 0x10
/* 9868 8002E468 00022403 */  sra       $a0, $v0, 0x10
/* 986C 8002E46C 000217C2 */  srl       $v0, $v0, 0x1f
/* 9870 8002E470 00822021 */  addu      $a0, $a0, $v0
/* 9874 8002E474 00042043 */  sra       $a0, $a0, 1
/* 9878 8002E478 90C50082 */  lbu       $a1, 0x82($a2)
/* 987C 8002E47C 9462000E */  lhu       $v0, 0xe($v1)
/* 9880 8002E480 00052E00 */  sll       $a1, $a1, 0x18
/* 9884 8002E484 00052E03 */  sra       $a1, $a1, 0x18
/* 9888 8002E488 00441021 */  addu      $v0, $v0, $a0
/* 988C 8002E48C 00021400 */  sll       $v0, $v0, 0x10
/* 9890 8002E490 00021383 */  sra       $v0, $v0, 0xe
/* 9894 8002E494 00A22821 */  addu      $a1, $a1, $v0
/* 9898 8002E498 A46500B8 */  sh        $a1, 0xb8($v1)
/* 989C 8002E49C 90C50083 */  lbu       $a1, 0x83($a2)
/* 98A0 8002E4A0 9462000C */  lhu       $v0, 0xc($v1)
/* 98A4 8002E4A4 00052E00 */  sll       $a1, $a1, 0x18
/* 98A8 8002E4A8 00052E03 */  sra       $a1, $a1, 0x18
/* 98AC 8002E4AC 00021400 */  sll       $v0, $v0, 0x10
/* 98B0 8002E4B0 00022403 */  sra       $a0, $v0, 0x10
/* 98B4 8002E4B4 000217C2 */  srl       $v0, $v0, 0x1f
/* 98B8 8002E4B8 00822021 */  addu      $a0, $a0, $v0
/* 98BC 8002E4BC 94620010 */  lhu       $v0, 0x10($v1)
/* 98C0 8002E4C0 00042043 */  sra       $a0, $a0, 1
/* 98C4 8002E4C4 00441021 */  addu      $v0, $v0, $a0
/* 98C8 8002E4C8 00021400 */  sll       $v0, $v0, 0x10
/* 98CC 8002E4CC 00021383 */  sra       $v0, $v0, 0xe
/* 98D0 8002E4D0 00A22821 */  addu      $a1, $a1, $v0
/* 98D4 8002E4D4 24020200 */  addiu     $v0, $zero, 0x200
/* 98D8 8002E4D8 A46500BA */  sh        $a1, 0xba($v1)
/* 98DC 8002E4DC A46200BC */  sh        $v0, 0xbc($v1)
/* 98E0 8002E4E0 03E00008 */  jr        $ra
/* 98E4 8002E4E4 A46000BE */   sh       $zero, 0xbe($v1)
