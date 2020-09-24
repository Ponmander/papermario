.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel alAudioFrame
/* 319C0 800565C0 3C028008 */  lui       $v0, 0x8008
/* 319C4 800565C4 8C428E50 */  lw        $v0, -0x71b0($v0)
/* 319C8 800565C8 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 319CC 800565CC AFB3002C */  sw        $s3, 0x2c($sp)
/* 319D0 800565D0 AFA40048 */  sw        $a0, 0x48($sp)
/* 319D4 800565D4 0080982D */  daddu     $s3, $a0, $zero
/* 319D8 800565D8 AFBF0044 */  sw        $ra, 0x44($sp)
/* 319DC 800565DC AFBE0040 */  sw        $fp, 0x40($sp)
/* 319E0 800565E0 AFB7003C */  sw        $s7, 0x3c($sp)
/* 319E4 800565E4 AFB60038 */  sw        $s6, 0x38($sp)
/* 319E8 800565E8 AFB50034 */  sw        $s5, 0x34($sp)
/* 319EC 800565EC AFB40030 */  sw        $s4, 0x30($sp)
/* 319F0 800565F0 AFB20028 */  sw        $s2, 0x28($sp)
/* 319F4 800565F4 AFB10024 */  sw        $s1, 0x24($sp)
/* 319F8 800565F8 AFB00020 */  sw        $s0, 0x20($sp)
/* 319FC 800565FC AFA5004C */  sw        $a1, 0x4c($sp)
/* 31A00 80056600 AFA70054 */  sw        $a3, 0x54($sp)
/* 31A04 80056604 14400003 */  bnez      $v0, .L80056614
/* 31A08 80056608 AFA60010 */   sw       $a2, 0x10($sp)
/* 31A0C 8005660C 08015B40 */  j         .L80056D00
/* 31A10 80056610 ACA00000 */   sw       $zero, ($a1)
.L80056614:
/* 31A14 80056614 0C014D70 */  jal       func_800535C0
/* 31A18 80056618 00000000 */   nop      
/* 31A1C 8005661C 3C028008 */  lui       $v0, 0x8008
/* 31A20 80056620 90428E5C */  lbu       $v0, -0x71a4($v0)
/* 31A24 80056624 1040001B */  beqz      $v0, .L80056694
/* 31A28 80056628 00000000 */   nop      
/* 31A2C 8005662C 3C038008 */  lui       $v1, 0x8008
/* 31A30 80056630 24638E54 */  addiu     $v1, $v1, -0x71ac
/* 31A34 80056634 8C620000 */  lw        $v0, ($v1)
/* 31A38 80056638 8C42000C */  lw        $v0, 0xc($v0)
/* 31A3C 8005663C 18400013 */  blez      $v0, .L8005668C
/* 31A40 80056640 0000A82D */   daddu    $s5, $zero, $zero
/* 31A44 80056644 0060882D */  daddu     $s1, $v1, $zero
/* 31A48 80056648 24120001 */  addiu     $s2, $zero, 1
/* 31A4C 8005664C 02A0802D */  daddu     $s0, $s5, $zero
.L80056650:
/* 31A50 80056650 8E220000 */  lw        $v0, ($s1)
/* 31A54 80056654 8C42001C */  lw        $v0, 0x1c($v0)
/* 31A58 80056658 00502021 */  addu      $a0, $v0, $s0
/* 31A5C 8005665C 8C820070 */  lw        $v0, 0x70($a0)
/* 31A60 80056660 14520004 */  bne       $v0, $s2, .L80056674
/* 31A64 80056664 00000000 */   nop      
/* 31A68 80056668 9085004D */  lbu       $a1, 0x4d($a0)
/* 31A6C 8005666C 0C015E1D */  jal       func_80057874
/* 31A70 80056670 32A400FF */   andi     $a0, $s5, 0xff
.L80056674:
/* 31A74 80056674 8E220000 */  lw        $v0, ($s1)
/* 31A78 80056678 8C42000C */  lw        $v0, 0xc($v0)
/* 31A7C 8005667C 26B50001 */  addiu     $s5, $s5, 1
/* 31A80 80056680 02A2102A */  slt       $v0, $s5, $v0
/* 31A84 80056684 1440FFF2 */  bnez      $v0, .L80056650
/* 31A88 80056688 2610007C */   addiu    $s0, $s0, 0x7c
.L8005668C:
/* 31A8C 8005668C 3C018008 */  lui       $at, 0x8008
/* 31A90 80056690 A0208E5C */  sb        $zero, -0x71a4($at)
.L80056694:
/* 31A94 80056694 8FA90054 */  lw        $t1, 0x54($sp)
/* 31A98 80056698 19200194 */  blez      $t1, .L80056CEC
/* 31A9C 8005669C 00000000 */   nop      
/* 31AA0 800566A0 3C1E800A */  lui       $fp, 0x800a
/* 31AA4 800566A4 27DE3FE8 */  addiu     $fp, $fp, 0x3fe8
.L800566A8:
/* 31AA8 800566A8 0C014CF4 */  jal       func_800533D0
/* 31AAC 800566AC 0000A82D */   daddu    $s5, $zero, $zero
/* 31AB0 800566B0 3C038008 */  lui       $v1, 0x8008
/* 31AB4 800566B4 8C638E54 */  lw        $v1, -0x71ac($v1)
/* 31AB8 800566B8 8C62000C */  lw        $v0, 0xc($v1)
/* 31ABC 800566BC 1840001E */  blez      $v0, .L80056738
/* 31AC0 800566C0 24170001 */   addiu    $s7, $zero, 1
/* 31AC4 800566C4 0060302D */  daddu     $a2, $v1, $zero
/* 31AC8 800566C8 02A0282D */  daddu     $a1, $s5, $zero
.L800566CC:
/* 31ACC 800566CC 8CC2001C */  lw        $v0, 0x1c($a2)
/* 31AD0 800566D0 00452021 */  addu      $a0, $v0, $a1
/* 31AD4 800566D4 90820078 */  lbu       $v0, 0x78($a0)
/* 31AD8 800566D8 240900FF */  addiu     $t1, $zero, 0xff
/* 31ADC 800566DC 1049000E */  beq       $v0, $t1, .L80056718
/* 31AE0 800566E0 0040182D */   daddu    $v1, $v0, $zero
/* 31AE4 800566E4 8CC20010 */  lw        $v0, 0x10($a2)
/* 31AE8 800566E8 0062102A */  slt       $v0, $v1, $v0
/* 31AEC 800566EC 1040000A */  beqz      $v0, .L80056718
/* 31AF0 800566F0 00031040 */   sll      $v0, $v1, 1
/* 31AF4 800566F4 00431021 */  addu      $v0, $v0, $v1
/* 31AF8 800566F8 8CC30020 */  lw        $v1, 0x20($a2)
/* 31AFC 800566FC 000210C0 */  sll       $v0, $v0, 3
/* 31B00 80056700 0062A021 */  addu      $s4, $v1, $v0
/* 31B04 80056704 8E820014 */  lw        $v0, 0x14($s4)
/* 31B08 80056708 50400002 */  beql      $v0, $zero, .L80056714
/* 31B0C 8005670C AE840010 */   sw       $a0, 0x10($s4)
/* 31B10 80056710 AC440000 */  sw        $a0, ($v0)
.L80056714:
/* 31B14 80056714 AE840014 */  sw        $a0, 0x14($s4)
.L80056718:
/* 31B18 80056718 3C028008 */  lui       $v0, 0x8008
/* 31B1C 8005671C 8C428E54 */  lw        $v0, -0x71ac($v0)
/* 31B20 80056720 8C42000C */  lw        $v0, 0xc($v0)
/* 31B24 80056724 26B50001 */  addiu     $s5, $s5, 1
/* 31B28 80056728 02A2102A */  slt       $v0, $s5, $v0
/* 31B2C 8005672C 1440FFE7 */  bnez      $v0, .L800566CC
/* 31B30 80056730 24A5007C */   addiu    $a1, $a1, 0x7c
/* 31B34 80056734 24170001 */  addiu     $s7, $zero, 1
.L80056738:
/* 31B38 80056738 3C028008 */  lui       $v0, 0x8008
/* 31B3C 8005673C 8C428E54 */  lw        $v0, -0x71ac($v0)
/* 31B40 80056740 3C038008 */  lui       $v1, 0x8008
/* 31B44 80056744 24638E54 */  addiu     $v1, $v1, -0x71ac
/* 31B48 80056748 8C420010 */  lw        $v0, 0x10($v0)
/* 31B4C 8005674C 18400110 */  blez      $v0, .L80056B90
/* 31B50 80056750 0000A82D */   daddu    $s5, $zero, $zero
/* 31B54 80056754 02A0B02D */  daddu     $s6, $s5, $zero
.L80056758:
/* 31B58 80056758 8C620000 */  lw        $v0, ($v1)
/* 31B5C 8005675C 8C420020 */  lw        $v0, 0x20($v0)
/* 31B60 80056760 0056A021 */  addu      $s4, $v0, $s6
/* 31B64 80056764 8E820010 */  lw        $v0, 0x10($s4)
/* 31B68 80056768 10400101 */  beqz      $v0, .L80056B70
/* 31B6C 8005676C 3C020200 */   lui      $v0, 0x200
/* 31B70 80056770 344204E0 */  ori       $v0, $v0, 0x4e0
/* 31B74 80056774 0260182D */  daddu     $v1, $s3, $zero
/* 31B78 80056778 AC620000 */  sw        $v0, ($v1)
/* 31B7C 8005677C 240205C0 */  addiu     $v0, $zero, 0x5c0
/* 31B80 80056780 AC620004 */  sw        $v0, 4($v1)
/* 31B84 80056784 8E820010 */  lw        $v0, 0x10($s4)
/* 31B88 80056788 1040000B */  beqz      $v0, .L800567B8
/* 31B8C 8005678C 26730008 */   addiu    $s3, $s3, 8
.L80056790:
/* 31B90 80056790 8E840010 */  lw        $a0, 0x10($s4)
/* 31B94 80056794 0C016014 */  jal       func_80058050
/* 31B98 80056798 0260282D */   daddu    $a1, $s3, $zero
/* 31B9C 8005679C 8E830010 */  lw        $v1, 0x10($s4)
/* 31BA0 800567A0 8C640000 */  lw        $a0, ($v1)
/* 31BA4 800567A4 0040982D */  daddu     $s3, $v0, $zero
/* 31BA8 800567A8 AC600000 */  sw        $zero, ($v1)
/* 31BAC 800567AC 1480FFF8 */  bnez      $a0, .L80056790
/* 31BB0 800567B0 AE840010 */   sw       $a0, 0x10($s4)
/* 31BB4 800567B4 AE800014 */  sw        $zero, 0x14($s4)
.L800567B8:
/* 31BB8 800567B8 9282000C */  lbu       $v0, 0xc($s4)
/* 31BBC 800567BC 1040000B */  beqz      $v0, .L800567EC
/* 31BC0 800567C0 0260282D */   daddu    $a1, $s3, $zero
/* 31BC4 800567C4 240607C0 */  addiu     $a2, $zero, 0x7c0
/* 31BC8 800567C8 8E840004 */  lw        $a0, 4($s4)
/* 31BCC 800567CC 0C0164C4 */  jal       func_80059310
/* 31BD0 800567D0 0000382D */   daddu    $a3, $zero, $zero
/* 31BD4 800567D4 0040282D */  daddu     $a1, $v0, $zero
/* 31BD8 800567D8 24060930 */  addiu     $a2, $zero, 0x930
/* 31BDC 800567DC 8E840008 */  lw        $a0, 8($s4)
/* 31BE0 800567E0 0C0164C4 */  jal       func_80059310
/* 31BE4 800567E4 0000382D */   daddu    $a3, $zero, $zero
/* 31BE8 800567E8 0040982D */  daddu     $s3, $v0, $zero
.L800567EC:
/* 31BEC 800567EC 3C02800A */  lui       $v0, 0x800a
/* 31BF0 800567F0 90423FEC */  lbu       $v0, 0x3fec($v0)
/* 31BF4 800567F4 16A20089 */  bne       $s5, $v0, .L80056A1C
/* 31BF8 800567F8 24020001 */   addiu    $v0, $zero, 1
/* 31BFC 800567FC 3C03800A */  lui       $v1, 0x800a
/* 31C00 80056800 84633FEE */  lh        $v1, 0x3fee($v1)
/* 31C04 80056804 10620006 */  beq       $v1, $v0, .L80056820
/* 31C08 80056808 2410FFFF */   addiu    $s0, $zero, -1
/* 31C0C 8005680C 24020002 */  addiu     $v0, $zero, 2
/* 31C10 80056810 10620006 */  beq       $v1, $v0, .L8005682C
/* 31C14 80056814 00101400 */   sll      $v0, $s0, 0x10
/* 31C18 80056818 08015A10 */  j         .L80056840
/* 31C1C 8005681C 00021403 */   sra      $v0, $v0, 0x10
.L80056820:
/* 31C20 80056820 241004E0 */  addiu     $s0, $zero, 0x4e0
/* 31C24 80056824 08015A0D */  j         .L80056834
/* 31C28 80056828 240907C0 */   addiu    $t1, $zero, 0x7c0
.L8005682C:
/* 31C2C 8005682C 24100650 */  addiu     $s0, $zero, 0x650
/* 31C30 80056830 24090930 */  addiu     $t1, $zero, 0x930
.L80056834:
/* 31C34 80056834 A7A9001E */  sh        $t1, 0x1e($sp)
/* 31C38 80056838 00101400 */  sll       $v0, $s0, 0x10
/* 31C3C 8005683C 00021403 */  sra       $v0, $v0, 0x10
.L80056840:
/* 31C40 80056840 2403FFFF */  addiu     $v1, $zero, -1
/* 31C44 80056844 10430075 */  beq       $v0, $v1, .L80056A1C
/* 31C48 80056848 0260882D */   daddu    $s1, $s3, $zero
/* 31C4C 8005684C 8FC30000 */  lw        $v1, ($fp)
/* 31C50 80056850 3C02800A */  lui       $v0, 0x800a
/* 31C54 80056854 8C423FF0 */  lw        $v0, 0x3ff0($v0)
/* 31C58 80056858 14400002 */  bnez      $v0, .L80056864
/* 31C5C 8005685C 0062001A */   div      $zero, $v1, $v0
/* 31C60 80056860 0007000D */  break     7
.L80056864:
/* 31C64 80056864 2401FFFF */   addiu    $at, $zero, -1
/* 31C68 80056868 14410004 */  bne       $v0, $at, .L8005687C
/* 31C6C 8005686C 3C018000 */   lui      $at, 0x8000
/* 31C70 80056870 14610002 */  bne       $v1, $at, .L8005687C
/* 31C74 80056874 00000000 */   nop      
/* 31C78 80056878 0006000D */  break     6
.L8005687C:
/* 31C7C 8005687C 00002810 */   mfhi     $a1
/* 31C80 80056880 32100FFF */  andi      $s0, $s0, 0xfff
/* 31C84 80056884 3C090617 */  lui       $t1, 0x617
/* 31C88 80056888 02091025 */  or        $v0, $s0, $t1
/* 31C8C 8005688C AE220000 */  sw        $v0, ($s1)
/* 31C90 80056890 3C02800A */  lui       $v0, 0x800a
/* 31C94 80056894 8C423FE0 */  lw        $v0, 0x3fe0($v0)
/* 31C98 80056898 00052040 */  sll       $a0, $a1, 1
/* 31C9C 8005689C 00852021 */  addu      $a0, $a0, $a1
/* 31CA0 800568A0 000420C0 */  sll       $a0, $a0, 3
/* 31CA4 800568A4 00852023 */  subu      $a0, $a0, $a1
/* 31CA8 800568A8 00042100 */  sll       $a0, $a0, 4
/* 31CAC 800568AC 0C0187A4 */  jal       osVirtualToPhysical
/* 31CB0 800568B0 00442021 */   addu     $a0, $v0, $a0
/* 31CB4 800568B4 8FC30000 */  lw        $v1, ($fp)
/* 31CB8 800568B8 3C04800A */  lui       $a0, 0x800a
/* 31CBC 800568BC 8C843FF0 */  lw        $a0, 0x3ff0($a0)
/* 31CC0 800568C0 24630001 */  addiu     $v1, $v1, 1
/* 31CC4 800568C4 14800002 */  bnez      $a0, .L800568D0
/* 31CC8 800568C8 0064001A */   div      $zero, $v1, $a0
/* 31CCC 800568CC 0007000D */  break     7
.L800568D0:
/* 31CD0 800568D0 2401FFFF */   addiu    $at, $zero, -1
/* 31CD4 800568D4 14810004 */  bne       $a0, $at, .L800568E8
/* 31CD8 800568D8 3C018000 */   lui      $at, 0x8000
/* 31CDC 800568DC 14610002 */  bne       $v1, $at, .L800568E8
/* 31CE0 800568E0 00000000 */   nop      
/* 31CE4 800568E4 0006000D */  break     6
.L800568E8:
/* 31CE8 800568E8 00002810 */   mfhi     $a1
/* 31CEC 800568EC 26730008 */  addiu     $s3, $s3, 8
/* 31CF0 800568F0 AE220004 */  sw        $v0, 4($s1)
/* 31CF4 800568F4 0260882D */  daddu     $s1, $s3, $zero
/* 31CF8 800568F8 3C090417 */  lui       $t1, 0x417
/* 31CFC 800568FC 3C02800A */  lui       $v0, 0x800a
/* 31D00 80056900 8C423FE0 */  lw        $v0, 0x3fe0($v0)
/* 31D04 80056904 02098025 */  or        $s0, $s0, $t1
/* 31D08 80056908 AE300000 */  sw        $s0, ($s1)
/* 31D0C 8005690C 00052040 */  sll       $a0, $a1, 1
/* 31D10 80056910 00852021 */  addu      $a0, $a0, $a1
/* 31D14 80056914 000420C0 */  sll       $a0, $a0, 3
/* 31D18 80056918 00852023 */  subu      $a0, $a0, $a1
/* 31D1C 8005691C 00042100 */  sll       $a0, $a0, 4
/* 31D20 80056920 0C0187A4 */  jal       osVirtualToPhysical
/* 31D24 80056924 00442021 */   addu     $a0, $v0, $a0
/* 31D28 80056928 8FC40000 */  lw        $a0, ($fp)
/* 31D2C 8005692C 3C03800A */  lui       $v1, 0x800a
/* 31D30 80056930 8C633FF0 */  lw        $v1, 0x3ff0($v1)
/* 31D34 80056934 14600002 */  bnez      $v1, .L80056940
/* 31D38 80056938 0083001A */   div      $zero, $a0, $v1
/* 31D3C 8005693C 0007000D */  break     7
.L80056940:
/* 31D40 80056940 2401FFFF */   addiu    $at, $zero, -1
/* 31D44 80056944 14610004 */  bne       $v1, $at, .L80056958
/* 31D48 80056948 3C018000 */   lui      $at, 0x8000
/* 31D4C 8005694C 14810002 */  bne       $a0, $at, .L80056958
/* 31D50 80056950 00000000 */   nop      
/* 31D54 80056954 0006000D */  break     6
.L80056958:
/* 31D58 80056958 00001810 */   mfhi     $v1
/* 31D5C 8005695C 26730008 */  addiu     $s3, $s3, 8
/* 31D60 80056960 AE220004 */  sw        $v0, 4($s1)
/* 31D64 80056964 97A9001E */  lhu       $t1, 0x1e($sp)
/* 31D68 80056968 0260902D */  daddu     $s2, $s3, $zero
/* 31D6C 8005696C 31300FFF */  andi      $s0, $t1, 0xfff
/* 31D70 80056970 3C090617 */  lui       $t1, 0x617
/* 31D74 80056974 02091025 */  or        $v0, $s0, $t1
/* 31D78 80056978 AE420000 */  sw        $v0, ($s2)
/* 31D7C 8005697C 3C02800A */  lui       $v0, 0x800a
/* 31D80 80056980 8C423FE4 */  lw        $v0, 0x3fe4($v0)
/* 31D84 80056984 00032040 */  sll       $a0, $v1, 1
/* 31D88 80056988 00832021 */  addu      $a0, $a0, $v1
/* 31D8C 8005698C 000420C0 */  sll       $a0, $a0, 3
/* 31D90 80056990 00832023 */  subu      $a0, $a0, $v1
/* 31D94 80056994 00042100 */  sll       $a0, $a0, 4
/* 31D98 80056998 0C0187A4 */  jal       osVirtualToPhysical
/* 31D9C 8005699C 00442021 */   addu     $a0, $v0, $a0
/* 31DA0 800569A0 8FC30000 */  lw        $v1, ($fp)
/* 31DA4 800569A4 3C04800A */  lui       $a0, 0x800a
/* 31DA8 800569A8 8C843FF0 */  lw        $a0, 0x3ff0($a0)
/* 31DAC 800569AC 24630001 */  addiu     $v1, $v1, 1
/* 31DB0 800569B0 14800002 */  bnez      $a0, .L800569BC
/* 31DB4 800569B4 0064001A */   div      $zero, $v1, $a0
/* 31DB8 800569B8 0007000D */  break     7
.L800569BC:
/* 31DBC 800569BC 2401FFFF */   addiu    $at, $zero, -1
/* 31DC0 800569C0 14810004 */  bne       $a0, $at, .L800569D4
/* 31DC4 800569C4 3C018000 */   lui      $at, 0x8000
/* 31DC8 800569C8 14610002 */  bne       $v1, $at, .L800569D4
/* 31DCC 800569CC 00000000 */   nop      
/* 31DD0 800569D0 0006000D */  break     6
.L800569D4:
/* 31DD4 800569D4 00002810 */   mfhi     $a1
/* 31DD8 800569D8 26730008 */  addiu     $s3, $s3, 8
/* 31DDC 800569DC 0260882D */  daddu     $s1, $s3, $zero
/* 31DE0 800569E0 26730008 */  addiu     $s3, $s3, 8
/* 31DE4 800569E4 3C090417 */  lui       $t1, 0x417
/* 31DE8 800569E8 AE420004 */  sw        $v0, 4($s2)
/* 31DEC 800569EC 3C02800A */  lui       $v0, 0x800a
/* 31DF0 800569F0 8C423FE4 */  lw        $v0, 0x3fe4($v0)
/* 31DF4 800569F4 02098025 */  or        $s0, $s0, $t1
/* 31DF8 800569F8 AE300000 */  sw        $s0, ($s1)
/* 31DFC 800569FC 00052040 */  sll       $a0, $a1, 1
/* 31E00 80056A00 00852021 */  addu      $a0, $a0, $a1
/* 31E04 80056A04 000420C0 */  sll       $a0, $a0, 3
/* 31E08 80056A08 00852023 */  subu      $a0, $a0, $a1
/* 31E0C 80056A0C 00042100 */  sll       $a0, $a0, 4
/* 31E10 80056A10 0C0187A4 */  jal       osVirtualToPhysical
/* 31E14 80056A14 00442021 */   addu     $a0, $v0, $a0
/* 31E18 80056A18 AE220004 */  sw        $v0, 4($s1)
.L80056A1C:
/* 31E1C 80056A1C 12E00007 */  beqz      $s7, .L80056A3C
/* 31E20 80056A20 0260102D */   daddu    $v0, $s3, $zero
/* 31E24 80056A24 26730008 */  addiu     $s3, $s3, 8
/* 31E28 80056A28 3C030200 */  lui       $v1, 0x200
/* 31E2C 80056A2C AC430000 */  sw        $v1, ($v0)
/* 31E30 80056A30 240302E0 */  addiu     $v1, $zero, 0x2e0
/* 31E34 80056A34 08015A98 */  j         .L80056A60
/* 31E38 80056A38 AC430004 */   sw       $v1, 4($v0)
.L80056A3C:
/* 31E3C 80056A3C 0260802D */  daddu     $s0, $s3, $zero
/* 31E40 80056A40 3C038008 */  lui       $v1, 0x8008
/* 31E44 80056A44 8C638E54 */  lw        $v1, -0x71ac($v1)
/* 31E48 80056A48 3C02042E */  lui       $v0, 0x42e
/* 31E4C 80056A4C AE020000 */  sw        $v0, ($s0)
/* 31E50 80056A50 8C640028 */  lw        $a0, 0x28($v1)
/* 31E54 80056A54 0C0187A4 */  jal       osVirtualToPhysical
/* 31E58 80056A58 26730008 */   addiu    $s3, $s3, 8
/* 31E5C 80056A5C AE020004 */  sw        $v0, 4($s0)
.L80056A60:
/* 31E60 80056A60 0260202D */  daddu     $a0, $s3, $zero
/* 31E64 80056A64 26730008 */  addiu     $s3, $s3, 8
/* 31E68 80056A68 0260282D */  daddu     $a1, $s3, $zero
/* 31E6C 80056A6C 26730008 */  addiu     $s3, $s3, 8
/* 31E70 80056A70 3C060930 */  lui       $a2, 0x930
/* 31E74 80056A74 3C0207C0 */  lui       $v0, 0x7c0
/* 31E78 80056A78 3C090C00 */  lui       $t1, 0xc00
/* 31E7C 80056A7C 96830000 */  lhu       $v1, ($s4)
/* 31E80 80056A80 34C60170 */  ori       $a2, $a2, 0x170
/* 31E84 80056A84 AC820004 */  sw        $v0, 4($a0)
/* 31E88 80056A88 00691825 */  or        $v1, $v1, $t1
/* 31E8C 80056A8C AC830000 */  sw        $v1, ($a0)
/* 31E90 80056A90 96820000 */  lhu       $v0, ($s4)
/* 31E94 80056A94 3C038008 */  lui       $v1, 0x8008
/* 31E98 80056A98 8C638E54 */  lw        $v1, -0x71ac($v1)
/* 31E9C 80056A9C 0260802D */  daddu     $s0, $s3, $zero
/* 31EA0 80056AA0 ACA60004 */  sw        $a2, 4($a1)
/* 31EA4 80056AA4 00491025 */  or        $v0, $v0, $t1
/* 31EA8 80056AA8 ACA20000 */  sw        $v0, ($a1)
/* 31EAC 80056AAC 3C02062E */  lui       $v0, 0x62e
/* 31EB0 80056AB0 AE020000 */  sw        $v0, ($s0)
/* 31EB4 80056AB4 8C640028 */  lw        $a0, 0x28($v1)
/* 31EB8 80056AB8 0C0187A4 */  jal       osVirtualToPhysical
/* 31EBC 80056ABC 26730008 */   addiu    $s3, $s3, 8
/* 31EC0 80056AC0 12E00009 */  beqz      $s7, .L80056AE8
/* 31EC4 80056AC4 AE020004 */   sw       $v0, 4($s0)
/* 31EC8 80056AC8 0260102D */  daddu     $v0, $s3, $zero
/* 31ECC 80056ACC 26730008 */  addiu     $s3, $s3, 8
/* 31ED0 80056AD0 0000B82D */  daddu     $s7, $zero, $zero
/* 31ED4 80056AD4 3C030200 */  lui       $v1, 0x200
/* 31ED8 80056AD8 AC430000 */  sw        $v1, ($v0)
/* 31EDC 80056ADC 240302E0 */  addiu     $v1, $zero, 0x2e0
/* 31EE0 80056AE0 08015AC3 */  j         .L80056B0C
/* 31EE4 80056AE4 AC430004 */   sw       $v1, 4($v0)
.L80056AE8:
/* 31EE8 80056AE8 0260802D */  daddu     $s0, $s3, $zero
/* 31EEC 80056AEC 3C038008 */  lui       $v1, 0x8008
/* 31EF0 80056AF0 8C638E54 */  lw        $v1, -0x71ac($v1)
/* 31EF4 80056AF4 3C02042E */  lui       $v0, 0x42e
/* 31EF8 80056AF8 AE020000 */  sw        $v0, ($s0)
/* 31EFC 80056AFC 8C640024 */  lw        $a0, 0x24($v1)
/* 31F00 80056B00 0C0187A4 */  jal       osVirtualToPhysical
/* 31F04 80056B04 26730008 */   addiu    $s3, $s3, 8
/* 31F08 80056B08 AE020004 */  sw        $v0, 4($s0)
.L80056B0C:
/* 31F0C 80056B0C 0260202D */  daddu     $a0, $s3, $zero
/* 31F10 80056B10 26730008 */  addiu     $s3, $s3, 8
/* 31F14 80056B14 0260282D */  daddu     $a1, $s3, $zero
/* 31F18 80056B18 26730008 */  addiu     $s3, $s3, 8
/* 31F1C 80056B1C 3C060650 */  lui       $a2, 0x650
/* 31F20 80056B20 3C0204E0 */  lui       $v0, 0x4e0
/* 31F24 80056B24 3C090C00 */  lui       $t1, 0xc00
/* 31F28 80056B28 96830000 */  lhu       $v1, ($s4)
/* 31F2C 80056B2C 34C60170 */  ori       $a2, $a2, 0x170
/* 31F30 80056B30 AC820004 */  sw        $v0, 4($a0)
/* 31F34 80056B34 00691825 */  or        $v1, $v1, $t1
/* 31F38 80056B38 AC830000 */  sw        $v1, ($a0)
/* 31F3C 80056B3C 96820000 */  lhu       $v0, ($s4)
/* 31F40 80056B40 3C038008 */  lui       $v1, 0x8008
/* 31F44 80056B44 8C638E54 */  lw        $v1, -0x71ac($v1)
/* 31F48 80056B48 0260802D */  daddu     $s0, $s3, $zero
/* 31F4C 80056B4C ACA60004 */  sw        $a2, 4($a1)
/* 31F50 80056B50 00491025 */  or        $v0, $v0, $t1
/* 31F54 80056B54 ACA20000 */  sw        $v0, ($a1)
/* 31F58 80056B58 3C02062E */  lui       $v0, 0x62e
/* 31F5C 80056B5C AE020000 */  sw        $v0, ($s0)
/* 31F60 80056B60 8C640024 */  lw        $a0, 0x24($v1)
/* 31F64 80056B64 0C0187A4 */  jal       osVirtualToPhysical
/* 31F68 80056B68 26730008 */   addiu    $s3, $s3, 8
/* 31F6C 80056B6C AE020004 */  sw        $v0, 4($s0)
.L80056B70:
/* 31F70 80056B70 3C038008 */  lui       $v1, 0x8008
/* 31F74 80056B74 24638E54 */  addiu     $v1, $v1, -0x71ac
/* 31F78 80056B78 8C620000 */  lw        $v0, ($v1)
/* 31F7C 80056B7C 8C420010 */  lw        $v0, 0x10($v0)
/* 31F80 80056B80 26B50001 */  addiu     $s5, $s5, 1
/* 31F84 80056B84 02A2102A */  slt       $v0, $s5, $v0
/* 31F88 80056B88 1440FEF3 */  bnez      $v0, .L80056758
/* 31F8C 80056B8C 26D60018 */   addiu    $s6, $s6, 0x18
.L80056B90:
/* 31F90 80056B90 0260182D */  daddu     $v1, $s3, $zero
/* 31F94 80056B94 26730008 */  addiu     $s3, $s3, 8
/* 31F98 80056B98 3C0404E0 */  lui       $a0, 0x4e0
/* 31F9C 80056B9C 348402E0 */  ori       $a0, $a0, 0x2e0
/* 31FA0 80056BA0 3C05042E */  lui       $a1, 0x42e
/* 31FA4 80056BA4 34A507C0 */  ori       $a1, $a1, 0x7c0
/* 31FA8 80056BA8 3C020A00 */  lui       $v0, 0xa00
/* 31FAC 80056BAC AC620000 */  sw        $v0, ($v1)
/* 31FB0 80056BB0 3C028008 */  lui       $v0, 0x8008
/* 31FB4 80056BB4 8C428E54 */  lw        $v0, -0x71ac($v0)
/* 31FB8 80056BB8 0260802D */  daddu     $s0, $s3, $zero
/* 31FBC 80056BBC AC640004 */  sw        $a0, 4($v1)
/* 31FC0 80056BC0 AE050000 */  sw        $a1, ($s0)
/* 31FC4 80056BC4 8C440028 */  lw        $a0, 0x28($v0)
/* 31FC8 80056BC8 0C0187A4 */  jal       osVirtualToPhysical
/* 31FCC 80056BCC 26730008 */   addiu    $s3, $s3, 8
/* 31FD0 80056BD0 0260382D */  daddu     $a3, $s3, $zero
/* 31FD4 80056BD4 26730008 */  addiu     $s3, $s3, 8
/* 31FD8 80056BD8 3C060C00 */  lui       $a2, 0xc00
/* 31FDC 80056BDC 34C67FFF */  ori       $a2, $a2, 0x7fff
/* 31FE0 80056BE0 3C0807C0 */  lui       $t0, 0x7c0
/* 31FE4 80056BE4 350804E0 */  ori       $t0, $t0, 0x4e0
/* 31FE8 80056BE8 0260182D */  daddu     $v1, $s3, $zero
/* 31FEC 80056BEC 26730008 */  addiu     $s3, $s3, 8
/* 31FF0 80056BF0 3C040930 */  lui       $a0, 0x930
/* 31FF4 80056BF4 3C058008 */  lui       $a1, 0x8008
/* 31FF8 80056BF8 90A58E58 */  lbu       $a1, -0x71a8($a1)
/* 31FFC 80056BFC 34840650 */  ori       $a0, $a0, 0x650
/* 32000 80056C00 AE020004 */  sw        $v0, 4($s0)
/* 32004 80056C04 ACE60000 */  sw        $a2, ($a3)
/* 32008 80056C08 ACE80004 */  sw        $t0, 4($a3)
/* 3200C 80056C0C AC660000 */  sw        $a2, ($v1)
/* 32010 80056C10 10A0001D */  beqz      $a1, .L80056C88
/* 32014 80056C14 AC640004 */   sw       $a0, 4($v1)
/* 32018 80056C18 0260202D */  daddu     $a0, $s3, $zero
/* 3201C 80056C1C 26730008 */  addiu     $s3, $s3, 8
/* 32020 80056C20 3C020A00 */  lui       $v0, 0xa00
/* 32024 80056C24 344204E0 */  ori       $v0, $v0, 0x4e0
/* 32028 80056C28 0260182D */  daddu     $v1, $s3, $zero
/* 3202C 80056C2C 26730008 */  addiu     $s3, $s3, 8
/* 32030 80056C30 3C070200 */  lui       $a3, 0x200
/* 32034 80056C34 34E704E0 */  ori       $a3, $a3, 0x4e0
/* 32038 80056C38 0260282D */  daddu     $a1, $s3, $zero
/* 3203C 80056C3C 26730008 */  addiu     $s3, $s3, 8
/* 32040 80056C40 0260302D */  daddu     $a2, $s3, $zero
/* 32044 80056C44 26730008 */  addiu     $s3, $s3, 8
/* 32048 80056C48 3C080170 */  lui       $t0, 0x170
/* 3204C 80056C4C 35080650 */  ori       $t0, $t0, 0x650
/* 32050 80056C50 AC820000 */  sw        $v0, ($a0)
/* 32054 80056C54 240202E0 */  addiu     $v0, $zero, 0x2e0
/* 32058 80056C58 AC820004 */  sw        $v0, 4($a0)
/* 3205C 80056C5C AC670000 */  sw        $a3, ($v1)
/* 32060 80056C60 AC620004 */  sw        $v0, 4($v1)
/* 32064 80056C64 3C038008 */  lui       $v1, 0x8008
/* 32068 80056C68 94638E5A */  lhu       $v1, -0x71a6($v1)
/* 3206C 80056C6C 240204E0 */  addiu     $v0, $zero, 0x4e0
/* 32070 80056C70 ACA20004 */  sw        $v0, 4($a1)
/* 32074 80056C74 3C020C00 */  lui       $v0, 0xc00
/* 32078 80056C78 00621825 */  or        $v1, $v1, $v0
/* 3207C 80056C7C ACA30000 */  sw        $v1, ($a1)
/* 32080 80056C80 ACC30000 */  sw        $v1, ($a2)
/* 32084 80056C84 ACC80004 */  sw        $t0, 4($a2)
.L80056C88:
/* 32088 80056C88 0260202D */  daddu     $a0, $s3, $zero
/* 3208C 80056C8C 26730008 */  addiu     $s3, $s3, 8
/* 32090 80056C90 0260182D */  daddu     $v1, $s3, $zero
/* 32094 80056C94 8FA90054 */  lw        $t1, 0x54($sp)
/* 32098 80056C98 3C020D00 */  lui       $v0, 0xd00
/* 3209C 80056C9C 2529FF48 */  addiu     $t1, $t1, -0xb8
/* 320A0 80056CA0 AFA90054 */  sw        $t1, 0x54($sp)
/* 320A4 80056CA4 AC820000 */  sw        $v0, ($a0)
/* 320A8 80056CA8 8FA90010 */  lw        $t1, 0x10($sp)
/* 320AC 80056CAC 3C048008 */  lui       $a0, 0x8008
/* 320B0 80056CB0 8C848E54 */  lw        $a0, -0x71ac($a0)
/* 320B4 80056CB4 3C02062E */  lui       $v0, 0x62e
/* 320B8 80056CB8 AC690004 */  sw        $t1, 4($v1)
/* 320BC 80056CBC 252902E0 */  addiu     $t1, $t1, 0x2e0
/* 320C0 80056CC0 AFA90010 */  sw        $t1, 0x10($sp)
/* 320C4 80056CC4 AC620000 */  sw        $v0, ($v1)
/* 320C8 80056CC8 8FC20000 */  lw        $v0, ($fp)
/* 320CC 80056CCC 8C830000 */  lw        $v1, ($a0)
/* 320D0 80056CD0 24420001 */  addiu     $v0, $v0, 1
/* 320D4 80056CD4 246300B8 */  addiu     $v1, $v1, 0xb8
/* 320D8 80056CD8 AFC20000 */  sw        $v0, ($fp)
/* 320DC 80056CDC AC830000 */  sw        $v1, ($a0)
/* 320E0 80056CE0 8FA90054 */  lw        $t1, 0x54($sp)
/* 320E4 80056CE4 1D20FE70 */  bgtz      $t1, .L800566A8
/* 320E8 80056CE8 26730008 */   addiu    $s3, $s3, 8
.L80056CEC:
/* 320EC 80056CEC 8FA90048 */  lw        $t1, 0x48($sp)
/* 320F0 80056CF0 02691023 */  subu      $v0, $s3, $t1
/* 320F4 80056CF4 8FA9004C */  lw        $t1, 0x4c($sp)
/* 320F8 80056CF8 000210C3 */  sra       $v0, $v0, 3
/* 320FC 80056CFC AD220000 */  sw        $v0, ($t1)
.L80056D00:
/* 32100 80056D00 0260102D */  daddu     $v0, $s3, $zero
/* 32104 80056D04 8FBF0044 */  lw        $ra, 0x44($sp)
/* 32108 80056D08 8FBE0040 */  lw        $fp, 0x40($sp)
/* 3210C 80056D0C 8FB7003C */  lw        $s7, 0x3c($sp)
/* 32110 80056D10 8FB60038 */  lw        $s6, 0x38($sp)
/* 32114 80056D14 8FB50034 */  lw        $s5, 0x34($sp)
/* 32118 80056D18 8FB40030 */  lw        $s4, 0x30($sp)
/* 3211C 80056D1C 8FB3002C */  lw        $s3, 0x2c($sp)
/* 32120 80056D20 8FB20028 */  lw        $s2, 0x28($sp)
/* 32124 80056D24 8FB10024 */  lw        $s1, 0x24($sp)
/* 32128 80056D28 8FB00020 */  lw        $s0, 0x20($sp)
/* 3212C 80056D2C 03E00008 */  jr        $ra
/* 32130 80056D30 27BD0048 */   addiu    $sp, $sp, 0x48
