.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8025A50C
/* 188DEC 8025A50C 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 188DF0 8025A510 AFB20018 */  sw        $s2, 0x18($sp)
/* 188DF4 8025A514 0080902D */  daddu     $s2, $a0, $zero
/* 188DF8 8025A518 AFB10014 */  sw        $s1, 0x14($sp)
/* 188DFC 8025A51C 00A0882D */  daddu     $s1, $a1, $zero
/* 188E00 8025A520 AFBF0024 */  sw        $ra, 0x24($sp)
/* 188E04 8025A524 AFB40020 */  sw        $s4, 0x20($sp)
/* 188E08 8025A528 AFB3001C */  sw        $s3, 0x1c($sp)
/* 188E0C 8025A52C AFB00010 */  sw        $s0, 0x10($sp)
/* 188E10 8025A530 8E3000C0 */  lw        $s0, 0xc0($s1)
/* 188E14 8025A534 00C0982D */  daddu     $s3, $a2, $zero
/* 188E18 8025A538 820206C1 */  lb        $v0, 0x6c1($s0)
/* 188E1C 8025A53C 10400032 */  beqz      $v0, .L8025A608
/* 188E20 8025A540 00E0A02D */   daddu    $s4, $a3, $zero
/* 188E24 8025A544 16400016 */  bnez      $s2, .L8025A5A0
/* 188E28 8025A548 00000000 */   nop
/* 188E2C 8025A54C 0C0B7830 */  jal       func_802DE0C0
/* 188E30 8025A550 96240088 */   lhu      $a0, 0x88($s1)
/* 188E34 8025A554 AE0206D0 */  sw        $v0, 0x6d0($s0)
/* 188E38 8025A558 0040202D */  daddu     $a0, $v0, $zero
/* 188E3C 8025A55C A20006CD */  sb        $zero, 0x6cd($s0)
/* 188E40 8025A560 8C830000 */  lw        $v1, ($a0)
/* 188E44 8025A564 2402FFFF */  addiu     $v0, $zero, -1
/* 188E48 8025A568 1062000B */  beq       $v1, $v0, .L8025A598
/* 188E4C 8025A56C 0080182D */   daddu    $v1, $a0, $zero
/* 188E50 8025A570 0040202D */  daddu     $a0, $v0, $zero
.L8025A574:
/* 188E54 8025A574 920206CD */  lbu       $v0, 0x6cd($s0)
/* 188E58 8025A578 24420001 */  addiu     $v0, $v0, 1
/* 188E5C 8025A57C A20206CD */  sb        $v0, 0x6cd($s0)
/* 188E60 8025A580 00021600 */  sll       $v0, $v0, 0x18
/* 188E64 8025A584 00021583 */  sra       $v0, $v0, 0x16
/* 188E68 8025A588 00431021 */  addu      $v0, $v0, $v1
/* 188E6C 8025A58C 8C420000 */  lw        $v0, ($v0)
/* 188E70 8025A590 1444FFF8 */  bne       $v0, $a0, .L8025A574
/* 188E74 8025A594 00000000 */   nop
.L8025A598:
/* 188E78 8025A598 0809697E */  j         .L8025A5F8
/* 188E7C 8025A59C 24020006 */   addiu    $v0, $zero, 6
.L8025A5A0:
/* 188E80 8025A5A0 96240088 */  lhu       $a0, 0x88($s1)
/* 188E84 8025A5A4 0C0B7A90 */  jal       func_802DEA40
/* 188E88 8025A5A8 00000000 */   nop
/* 188E8C 8025A5AC AE0206D0 */  sw        $v0, 0x6d0($s0)
/* 188E90 8025A5B0 0040202D */  daddu     $a0, $v0, $zero
/* 188E94 8025A5B4 A20006CD */  sb        $zero, 0x6cd($s0)
/* 188E98 8025A5B8 8C830000 */  lw        $v1, ($a0)
/* 188E9C 8025A5BC 2402FFFF */  addiu     $v0, $zero, -1
/* 188EA0 8025A5C0 1062000B */  beq       $v1, $v0, .L8025A5F0
/* 188EA4 8025A5C4 0080182D */   daddu    $v1, $a0, $zero
/* 188EA8 8025A5C8 0040202D */  daddu     $a0, $v0, $zero
.L8025A5CC:
/* 188EAC 8025A5CC 920206CD */  lbu       $v0, 0x6cd($s0)
/* 188EB0 8025A5D0 24420001 */  addiu     $v0, $v0, 1
/* 188EB4 8025A5D4 A20206CD */  sb        $v0, 0x6cd($s0)
/* 188EB8 8025A5D8 00021600 */  sll       $v0, $v0, 0x18
/* 188EBC 8025A5DC 00021583 */  sra       $v0, $v0, 0x16
/* 188EC0 8025A5E0 00431021 */  addu      $v0, $v0, $v1
/* 188EC4 8025A5E4 8C420000 */  lw        $v0, ($v0)
/* 188EC8 8025A5E8 1444FFF8 */  bne       $v0, $a0, .L8025A5CC
/* 188ECC 8025A5EC 00000000 */   nop
.L8025A5F0:
/* 188ED0 8025A5F0 0C0B7A9B */  jal       func_802DEA6C
/* 188ED4 8025A5F4 96240088 */   lhu      $a0, 0x88($s1)
.L8025A5F8:
/* 188ED8 8025A5F8 A20206CC */  sb        $v0, 0x6cc($s0)
/* 188EDC 8025A5FC A20006C2 */  sb        $zero, 0x6c2($s0)
/* 188EE0 8025A600 A60006CA */  sh        $zero, 0x6ca($s0)
/* 188EE4 8025A604 A20006C1 */  sb        $zero, 0x6c1($s0)
.L8025A608:
/* 188EE8 8025A608 820206CD */  lb        $v0, 0x6cd($s0)
/* 188EEC 8025A60C 18400015 */  blez      $v0, .L8025A664
/* 188EF0 8025A610 0000302D */   daddu    $a2, $zero, $zero
.L8025A614:
/* 188EF4 8025A614 8E0206D0 */  lw        $v0, 0x6d0($s0)
/* 188EF8 8025A618 00061880 */  sll       $v1, $a2, 2
/* 188EFC 8025A61C 00621821 */  addu      $v1, $v1, $v0
/* 188F00 8025A620 00061140 */  sll       $v0, $a2, 5
/* 188F04 8025A624 8C630000 */  lw        $v1, ($v1)
/* 188F08 8025A628 10600009 */  beqz      $v1, .L8025A650
/* 188F0C 8025A62C 02022821 */   addu     $a1, $s0, $v0
/* 188F10 8025A630 0000202D */  daddu     $a0, $zero, $zero
.L8025A634:
/* 188F14 8025A634 94620000 */  lhu       $v0, ($v1)
/* 188F18 8025A638 24630002 */  addiu     $v1, $v1, 2
/* 188F1C 8025A63C 24840001 */  addiu     $a0, $a0, 1
/* 188F20 8025A640 A4A20000 */  sh        $v0, ($a1)
/* 188F24 8025A644 28820010 */  slti      $v0, $a0, 0x10
/* 188F28 8025A648 1440FFFA */  bnez      $v0, .L8025A634
/* 188F2C 8025A64C 24A50002 */   addiu    $a1, $a1, 2
.L8025A650:
/* 188F30 8025A650 820206CD */  lb        $v0, 0x6cd($s0)
/* 188F34 8025A654 24C60001 */  addiu     $a2, $a2, 1
/* 188F38 8025A658 00C2102A */  slt       $v0, $a2, $v0
/* 188F3C 8025A65C 1440FFED */  bnez      $v0, .L8025A614
/* 188F40 8025A660 00000000 */   nop
.L8025A664:
/* 188F44 8025A664 820206CC */  lb        $v0, 0x6cc($s0)
/* 188F48 8025A668 920306CC */  lbu       $v1, 0x6cc($s0)
/* 188F4C 8025A66C 18400019 */  blez      $v0, .L8025A6D4
/* 188F50 8025A670 0000302D */   daddu    $a2, $zero, $zero
/* 188F54 8025A674 00031600 */  sll       $v0, $v1, 0x18
.L8025A678:
/* 188F58 8025A678 00021603 */  sra       $v0, $v0, 0x18
/* 188F5C 8025A67C 00461021 */  addu      $v0, $v0, $a2
/* 188F60 8025A680 8E0306D0 */  lw        $v1, 0x6d0($s0)
/* 188F64 8025A684 00021080 */  sll       $v0, $v0, 2
/* 188F68 8025A688 00431021 */  addu      $v0, $v0, $v1
/* 188F6C 8025A68C 8C430000 */  lw        $v1, ($v0)
/* 188F70 8025A690 00061140 */  sll       $v0, $a2, 5
/* 188F74 8025A694 10600009 */  beqz      $v1, .L8025A6BC
/* 188F78 8025A698 02022821 */   addu     $a1, $s0, $v0
/* 188F7C 8025A69C 0000202D */  daddu     $a0, $zero, $zero
.L8025A6A0:
/* 188F80 8025A6A0 94620000 */  lhu       $v0, ($v1)
/* 188F84 8025A6A4 24630002 */  addiu     $v1, $v1, 2
/* 188F88 8025A6A8 24840001 */  addiu     $a0, $a0, 1
/* 188F8C 8025A6AC A4A20000 */  sh        $v0, ($a1)
/* 188F90 8025A6B0 28820010 */  slti      $v0, $a0, 0x10
/* 188F94 8025A6B4 1440FFFA */  bnez      $v0, .L8025A6A0
/* 188F98 8025A6B8 24A50002 */   addiu    $a1, $a1, 2
.L8025A6BC:
/* 188F9C 8025A6BC 24C60001 */  addiu     $a2, $a2, 1
/* 188FA0 8025A6C0 820206CC */  lb        $v0, 0x6cc($s0)
/* 188FA4 8025A6C4 920306CC */  lbu       $v1, 0x6cc($s0)
/* 188FA8 8025A6C8 00C2102A */  slt       $v0, $a2, $v0
/* 188FAC 8025A6CC 1440FFEA */  bnez      $v0, .L8025A678
/* 188FB0 8025A6D0 00031600 */   sll      $v0, $v1, 0x18
.L8025A6D4:
/* 188FB4 8025A6D4 820206CD */  lb        $v0, 0x6cd($s0)
/* 188FB8 8025A6D8 1840000A */  blez      $v0, .L8025A704
/* 188FBC 8025A6DC 0000302D */   daddu    $a2, $zero, $zero
/* 188FC0 8025A6E0 0200202D */  daddu     $a0, $s0, $zero
/* 188FC4 8025A6E4 0200182D */  daddu     $v1, $s0, $zero
.L8025A6E8:
/* 188FC8 8025A6E8 AC6406D4 */  sw        $a0, 0x6d4($v1)
/* 188FCC 8025A6EC 24840020 */  addiu     $a0, $a0, 0x20
/* 188FD0 8025A6F0 820206CD */  lb        $v0, 0x6cd($s0)
/* 188FD4 8025A6F4 24C60001 */  addiu     $a2, $a2, 1
/* 188FD8 8025A6F8 00C2102A */  slt       $v0, $a2, $v0
/* 188FDC 8025A6FC 1440FFFA */  bnez      $v0, .L8025A6E8
/* 188FE0 8025A700 24630004 */   addiu    $v1, $v1, 4
.L8025A704:
/* 188FE4 8025A704 16400006 */  bnez      $s2, .L8025A720
/* 188FE8 8025A708 0220202D */   daddu    $a0, $s1, $zero
/* 188FEC 8025A70C 0260282D */  daddu     $a1, $s3, $zero
/* 188FF0 8025A710 0C096657 */  jal       func_8025995C
/* 188FF4 8025A714 0280302D */   daddu    $a2, $s4, $zero
/* 188FF8 8025A718 080969CB */  j         .L8025A72C
/* 188FFC 8025A71C 00000000 */   nop
.L8025A720:
/* 189000 8025A720 0260282D */  daddu     $a1, $s3, $zero
/* 189004 8025A724 0C0965B0 */  jal       func_802596C0
/* 189008 8025A728 0280302D */   daddu    $a2, $s4, $zero
.L8025A72C:
/* 18900C 8025A72C 8FBF0024 */  lw        $ra, 0x24($sp)
/* 189010 8025A730 8FB40020 */  lw        $s4, 0x20($sp)
/* 189014 8025A734 8FB3001C */  lw        $s3, 0x1c($sp)
/* 189018 8025A738 8FB20018 */  lw        $s2, 0x18($sp)
/* 18901C 8025A73C 8FB10014 */  lw        $s1, 0x14($sp)
/* 189020 8025A740 8FB00010 */  lw        $s0, 0x10($sp)
/* 189024 8025A744 03E00008 */  jr        $ra
/* 189028 8025A748 27BD0028 */   addiu    $sp, $sp, 0x28
