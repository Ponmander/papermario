.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802A9254_42F074
/* 42F074 802A9254 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 42F078 802A9258 AFB10014 */  sw        $s1, 0x14($sp)
/* 42F07C 802A925C 3C11802A */  lui       $s1, %hi(D_8029FBE0)
/* 42F080 802A9260 2631FBE0 */  addiu     $s1, $s1, %lo(D_8029FBE0)
/* 42F084 802A9264 AFBF001C */  sw        $ra, 0x1c($sp)
/* 42F088 802A9268 AFB20018 */  sw        $s2, 0x18($sp)
/* 42F08C 802A926C AFB00010 */  sw        $s0, 0x10($sp)
/* 42F090 802A9270 8623004C */  lh        $v1, 0x4c($s1)
/* 42F094 802A9274 3C12800E */  lui       $s2, %hi(gBattleStatus)
/* 42F098 802A9278 2652C070 */  addiu     $s2, $s2, %lo(gBattleStatus)
/* 42F09C 802A927C 2C62000D */  sltiu     $v0, $v1, 0xd
/* 42F0A0 802A9280 10400128 */  beqz      $v0, .L802A9724
/* 42F0A4 802A9284 00031080 */   sll      $v0, $v1, 2
/* 42F0A8 802A9288 3C01802B */  lui       $at, %hi(jtbl_802A9880_42F6A0)
/* 42F0AC 802A928C 00220821 */  addu      $at, $at, $v0
/* 42F0B0 802A9290 8C229880 */  lw        $v0, %lo(jtbl_802A9880_42F6A0)($at)
/* 42F0B4 802A9294 00400008 */  jr        $v0
/* 42F0B8 802A9298 00000000 */   nop
glabel L802A929C_42F0BC
/* 42F0BC 802A929C 0C093EB1 */  jal       set_popup_duration
/* 42F0C0 802A92A0 24040063 */   addiu    $a0, $zero, 0x63
/* 42F0C4 802A92A4 8E300004 */  lw        $s0, 4($s1)
/* 42F0C8 802A92A8 240500FF */  addiu     $a1, $zero, 0xff
/* 42F0CC 802A92AC 0C0513AC */  jal       icon_set_opacity
/* 42F0D0 802A92B0 0200202D */   daddu    $a0, $s0, $zero
/* 42F0D4 802A92B4 82220061 */  lb        $v0, 0x61($s1)
/* 42F0D8 802A92B8 10400003 */  beqz      $v0, .L802A92C8
/* 42F0DC 802A92BC 0200202D */   daddu    $a0, $s0, $zero
/* 42F0E0 802A92C0 0C05128B */  jal       clear_icon_flags
/* 42F0E4 802A92C4 24050002 */   addiu    $a1, $zero, 2
.L802A92C8:
/* 42F0E8 802A92C8 8E300008 */  lw        $s0, 8($s1)
/* 42F0EC 802A92CC 240500FF */  addiu     $a1, $zero, 0xff
/* 42F0F0 802A92D0 0C0513AC */  jal       icon_set_opacity
/* 42F0F4 802A92D4 0200202D */   daddu    $a0, $s0, $zero
/* 42F0F8 802A92D8 82220061 */  lb        $v0, 0x61($s1)
/* 42F0FC 802A92DC 10400003 */  beqz      $v0, .L802A92EC
/* 42F100 802A92E0 0200202D */   daddu    $a0, $s0, $zero
/* 42F104 802A92E4 0C05128B */  jal       clear_icon_flags
/* 42F108 802A92E8 24050002 */   addiu    $a1, $zero, 2
.L802A92EC:
/* 42F10C 802A92EC 24020001 */  addiu     $v0, $zero, 1
/* 42F110 802A92F0 080AA5C9 */  j         .L802A9724
/* 42F114 802A92F4 A622004C */   sh       $v0, 0x4c($s1)
glabel L802A92F8_42F118
/* 42F118 802A92F8 0C093EB1 */  jal       set_popup_duration
/* 42F11C 802A92FC 24040063 */   addiu    $a0, $zero, 0x63
/* 42F120 802A9300 8622006C */  lh        $v0, 0x6c($s1)
/* 42F124 802A9304 9623006C */  lhu       $v1, 0x6c($s1)
/* 42F128 802A9308 10400003 */  beqz      $v0, .L802A9318
/* 42F12C 802A930C 2462FFFF */   addiu    $v0, $v1, -1
/* 42F130 802A9310 080AA5C9 */  j         .L802A9724
/* 42F134 802A9314 A622006C */   sh       $v0, 0x6c($s1)
.L802A9318:
/* 42F138 802A9318 96220056 */  lhu       $v0, 0x56($s1)
/* 42F13C 802A931C 24420014 */  addiu     $v0, $v0, 0x14
/* 42F140 802A9320 A6220056 */  sh        $v0, 0x56($s1)
/* 42F144 802A9324 00021400 */  sll       $v0, $v0, 0x10
/* 42F148 802A9328 00021403 */  sra       $v0, $v0, 0x10
/* 42F14C 802A932C 28420033 */  slti      $v0, $v0, 0x33
/* 42F150 802A9330 14400002 */  bnez      $v0, .L802A933C
/* 42F154 802A9334 24020032 */   addiu    $v0, $zero, 0x32
/* 42F158 802A9338 A6220056 */  sh        $v0, 0x56($s1)
.L802A933C:
/* 42F15C 802A933C 8E240004 */  lw        $a0, 4($s1)
/* 42F160 802A9340 86250056 */  lh        $a1, 0x56($s1)
/* 42F164 802A9344 0C051261 */  jal       set_icon_render_pos
/* 42F168 802A9348 86260058 */   lh       $a2, 0x58($s1)
/* 42F16C 802A934C 8E240008 */  lw        $a0, 8($s1)
/* 42F170 802A9350 86260058 */  lh        $a2, 0x58($s1)
/* 42F174 802A9354 86250056 */  lh        $a1, 0x56($s1)
/* 42F178 802A9358 0C051261 */  jal       set_icon_render_pos
/* 42F17C 802A935C 24C6001C */   addiu    $a2, $a2, 0x1c
/* 42F180 802A9360 080AA5C9 */  j         .L802A9724
/* 42F184 802A9364 00000000 */   nop
glabel L802A9368_42F188
/* 42F188 802A9368 0C093EB1 */  jal       set_popup_duration
/* 42F18C 802A936C 24040063 */   addiu    $a0, $zero, 0x63
/* 42F190 802A9370 8622004E */  lh        $v0, 0x4e($s1)
/* 42F194 802A9374 9623004E */  lhu       $v1, 0x4e($s1)
/* 42F198 802A9378 10400003 */  beqz      $v0, .L802A9388
/* 42F19C 802A937C 2462FFFF */   addiu    $v0, $v1, -1
/* 42F1A0 802A9380 080AA5C9 */  j         .L802A9724
/* 42F1A4 802A9384 A622004E */   sh       $v0, 0x4e($s1)
.L802A9388:
/* 42F1A8 802A9388 8E240004 */  lw        $a0, 4($s1)
/* 42F1AC 802A938C 3C058011 */  lui       $a1, %hi(D_80108F30)
/* 42F1B0 802A9390 24A58F30 */  addiu     $a1, $a1, %lo(D_80108F30)
/* 42F1B4 802A9394 0C0511FF */  jal       set_menu_icon_script
/* 42F1B8 802A9398 00000000 */   nop
/* 42F1BC 802A939C 3C048000 */  lui       $a0, 0x8000
/* 42F1C0 802A93A0 34840041 */  ori       $a0, $a0, 0x41
/* 42F1C4 802A93A4 0000282D */  daddu     $a1, $zero, $zero
/* 42F1C8 802A93A8 00A0302D */  daddu     $a2, $a1, $zero
/* 42F1CC 802A93AC 96220052 */  lhu       $v0, 0x52($s1)
/* 42F1D0 802A93B0 00A0382D */  daddu     $a3, $a1, $zero
/* 42F1D4 802A93B4 A220005C */  sb        $zero, 0x5c($s1)
/* 42F1D8 802A93B8 3C01802B */  lui       $at, %hi(D_802A98C0)
/* 42F1DC 802A93BC AC2098C0 */  sw        $zero, %lo(D_802A98C0)($at)
/* 42F1E0 802A93C0 0C0526AE */  jal       _play_sound
/* 42F1E4 802A93C4 A6220054 */   sh       $v0, 0x54($s1)
/* 42F1E8 802A93C8 2402000B */  addiu     $v0, $zero, 0xb
/* 42F1EC 802A93CC A622004C */  sh        $v0, 0x4c($s1)
glabel L802A93D0_42F1F0
/* 42F1F0 802A93D0 0C093EB1 */  jal       set_popup_duration
/* 42F1F4 802A93D4 24040063 */   addiu    $a0, $zero, 0x63
/* 42F1F8 802A93D8 86220068 */  lh        $v0, 0x68($s1)
/* 42F1FC 802A93DC 14400057 */  bnez      $v0, .L802A953C
/* 42F200 802A93E0 00000000 */   nop
/* 42F204 802A93E4 82220080 */  lb        $v0, 0x80($s1)
/* 42F208 802A93E8 00021040 */  sll       $v0, $v0, 1
/* 42F20C 802A93EC 02221021 */  addu      $v0, $s1, $v0
/* 42F210 802A93F0 84430074 */  lh        $v1, 0x74($v0)
/* 42F214 802A93F4 86220044 */  lh        $v0, 0x44($s1)
/* 42F218 802A93F8 14600002 */  bnez      $v1, .L802A9404
/* 42F21C 802A93FC 0043001A */   div      $zero, $v0, $v1
/* 42F220 802A9400 0007000D */  break     7
.L802A9404:
/* 42F224 802A9404 2401FFFF */   addiu    $at, $zero, -1
/* 42F228 802A9408 14610004 */  bne       $v1, $at, .L802A941C
/* 42F22C 802A940C 3C018000 */   lui      $at, 0x8000
/* 42F230 802A9410 14410002 */  bne       $v0, $at, .L802A941C
/* 42F234 802A9414 00000000 */   nop
/* 42F238 802A9418 0006000D */  break     6
.L802A941C:
/* 42F23C 802A941C 00001012 */   mflo     $v0
/* 42F240 802A9420 3C036666 */  lui       $v1, 0x6666
/* 42F244 802A9424 34636667 */  ori       $v1, $v1, 0x6667
/* 42F248 802A9428 00430018 */  mult      $v0, $v1
/* 42F24C 802A942C 000217C3 */  sra       $v0, $v0, 0x1f
/* 42F250 802A9430 00001810 */  mfhi      $v1
/* 42F254 802A9434 000318C3 */  sra       $v1, $v1, 3
/* 42F258 802A9438 00621823 */  subu      $v1, $v1, $v0
/* 42F25C 802A943C 00031880 */  sll       $v1, $v1, 2
/* 42F260 802A9440 96220044 */  lhu       $v0, 0x44($s1)
/* 42F264 802A9444 3C01802B */  lui       $at, %hi(D_802A9862_42F682)
/* 42F268 802A9448 00230821 */  addu      $at, $at, $v1
/* 42F26C 802A944C 94239862 */  lhu       $v1, %lo(D_802A9862_42F682)($at)
/* 42F270 802A9450 00431023 */  subu      $v0, $v0, $v1
/* 42F274 802A9454 A6220044 */  sh        $v0, 0x44($s1)
/* 42F278 802A9458 00021400 */  sll       $v0, $v0, 0x10
/* 42F27C 802A945C 04420001 */  bltzl     $v0, .L802A9464
/* 42F280 802A9460 A6200044 */   sh       $zero, 0x44($s1)
.L802A9464:
/* 42F284 802A9464 86220068 */  lh        $v0, 0x68($s1)
/* 42F288 802A9468 14400034 */  bnez      $v0, .L802A953C
/* 42F28C 802A946C 3C030004 */   lui      $v1, 4
/* 42F290 802A9470 8E420214 */  lw        $v0, 0x214($s2)
/* 42F294 802A9474 00431024 */  and       $v0, $v0, $v1
/* 42F298 802A9478 10400016 */  beqz      $v0, .L802A94D4
/* 42F29C 802A947C 3C0451EB */   lui      $a0, 0x51eb
/* 42F2A0 802A9480 86220050 */  lh        $v0, 0x50($s1)
/* 42F2A4 802A9484 8E430434 */  lw        $v1, 0x434($s2)
/* 42F2A8 802A9488 00021080 */  sll       $v0, $v0, 2
/* 42F2AC 802A948C 00431021 */  addu      $v0, $v0, $v1
/* 42F2B0 802A9490 8C430000 */  lw        $v1, ($v0)
/* 42F2B4 802A9494 3484851F */  ori       $a0, $a0, 0x851f
/* 42F2B8 802A9498 00031080 */  sll       $v0, $v1, 2
/* 42F2BC 802A949C 00431021 */  addu      $v0, $v0, $v1
/* 42F2C0 802A94A0 000210C0 */  sll       $v0, $v0, 3
/* 42F2C4 802A94A4 00431023 */  subu      $v0, $v0, $v1
/* 42F2C8 802A94A8 00021100 */  sll       $v0, $v0, 4
/* 42F2CC 802A94AC 00431021 */  addu      $v0, $v0, $v1
/* 42F2D0 802A94B0 00021040 */  sll       $v0, $v0, 1
/* 42F2D4 802A94B4 00440018 */  mult      $v0, $a0
/* 42F2D8 802A94B8 000217C3 */  sra       $v0, $v0, 0x1f
/* 42F2DC 802A94BC 96230044 */  lhu       $v1, 0x44($s1)
/* 42F2E0 802A94C0 00004010 */  mfhi      $t0
/* 42F2E4 802A94C4 00082143 */  sra       $a0, $t0, 5
/* 42F2E8 802A94C8 00822023 */  subu      $a0, $a0, $v0
/* 42F2EC 802A94CC 00641821 */  addu      $v1, $v1, $a0
/* 42F2F0 802A94D0 A6230044 */  sh        $v1, 0x44($s1)
.L802A94D4:
/* 42F2F4 802A94D4 8E420214 */  lw        $v0, 0x214($s2)
/* 42F2F8 802A94D8 3C030008 */  lui       $v1, 8
/* 42F2FC 802A94DC 00431024 */  and       $v0, $v0, $v1
/* 42F300 802A94E0 10400016 */  beqz      $v0, .L802A953C
/* 42F304 802A94E4 3C0451EB */   lui      $a0, 0x51eb
/* 42F308 802A94E8 86220050 */  lh        $v0, 0x50($s1)
/* 42F30C 802A94EC 8E430434 */  lw        $v1, 0x434($s2)
/* 42F310 802A94F0 00021080 */  sll       $v0, $v0, 2
/* 42F314 802A94F4 00431021 */  addu      $v0, $v0, $v1
/* 42F318 802A94F8 8C430000 */  lw        $v1, ($v0)
/* 42F31C 802A94FC 3484851F */  ori       $a0, $a0, 0x851f
/* 42F320 802A9500 00031080 */  sll       $v0, $v1, 2
/* 42F324 802A9504 00431021 */  addu      $v0, $v0, $v1
/* 42F328 802A9508 000210C0 */  sll       $v0, $v0, 3
/* 42F32C 802A950C 00431023 */  subu      $v0, $v0, $v1
/* 42F330 802A9510 00021100 */  sll       $v0, $v0, 4
/* 42F334 802A9514 00431021 */  addu      $v0, $v0, $v1
/* 42F338 802A9518 00021040 */  sll       $v0, $v0, 1
/* 42F33C 802A951C 00440018 */  mult      $v0, $a0
/* 42F340 802A9520 000217C3 */  sra       $v0, $v0, 0x1f
/* 42F344 802A9524 96230044 */  lhu       $v1, 0x44($s1)
/* 42F348 802A9528 00004010 */  mfhi      $t0
/* 42F34C 802A952C 00082143 */  sra       $a0, $t0, 5
/* 42F350 802A9530 00822023 */  subu      $a0, $a0, $v0
/* 42F354 802A9534 00641823 */  subu      $v1, $v1, $a0
/* 42F358 802A9538 A6230044 */  sh        $v1, 0x44($s1)
.L802A953C:
/* 42F35C 802A953C 86220044 */  lh        $v0, 0x44($s1)
/* 42F360 802A9540 04420001 */  bltzl     $v0, .L802A9548
/* 42F364 802A9544 A6200044 */   sh       $zero, 0x44($s1)
.L802A9548:
/* 42F368 802A9548 86220044 */  lh        $v0, 0x44($s1)
/* 42F36C 802A954C 28422711 */  slti      $v0, $v0, 0x2711
/* 42F370 802A9550 1440000E */  bnez      $v0, .L802A958C
/* 42F374 802A9554 24022710 */   addiu    $v0, $zero, 0x2710
/* 42F378 802A9558 8E30000C */  lw        $s0, 0xc($s1)
/* 42F37C 802A955C 86250056 */  lh        $a1, 0x56($s1)
/* 42F380 802A9560 86260058 */  lh        $a2, 0x58($s1)
/* 42F384 802A9564 A6220044 */  sh        $v0, 0x44($s1)
/* 42F388 802A9568 24020001 */  addiu     $v0, $zero, 1
/* 42F38C 802A956C A6220068 */  sh        $v0, 0x68($s1)
/* 42F390 802A9570 0200202D */  daddu     $a0, $s0, $zero
/* 42F394 802A9574 24A50032 */  addiu     $a1, $a1, 0x32
/* 42F398 802A9578 0C051261 */  jal       set_icon_render_pos
/* 42F39C 802A957C 24C6001C */   addiu    $a2, $a2, 0x1c
/* 42F3A0 802A9580 0200202D */  daddu     $a0, $s0, $zero
/* 42F3A4 802A9584 0C05128B */  jal       clear_icon_flags
/* 42F3A8 802A9588 24050002 */   addiu    $a1, $zero, 2
.L802A958C:
/* 42F3AC 802A958C 3C03802B */  lui       $v1, %hi(D_802A98C0)
/* 42F3B0 802A9590 246398C0 */  addiu     $v1, $v1, %lo(D_802A98C0)
/* 42F3B4 802A9594 8C620000 */  lw        $v0, ($v1)
/* 42F3B8 802A9598 3C050004 */  lui       $a1, 4
/* 42F3BC 802A959C 00451024 */  and       $v0, $v0, $a1
/* 42F3C0 802A95A0 10400002 */  beqz      $v0, .L802A95AC
/* 42F3C4 802A95A4 24020001 */   addiu    $v0, $zero, 1
/* 42F3C8 802A95A8 A222005C */  sb        $v0, 0x5c($s1)
.L802A95AC:
/* 42F3CC 802A95AC 8C620000 */  lw        $v0, ($v1)
/* 42F3D0 802A95B0 3C040008 */  lui       $a0, 8
/* 42F3D4 802A95B4 00441024 */  and       $v0, $v0, $a0
/* 42F3D8 802A95B8 10400002 */  beqz      $v0, .L802A95C4
/* 42F3DC 802A95BC 2402FFFF */   addiu    $v0, $zero, -1
/* 42F3E0 802A95C0 A222005C */  sb        $v0, 0x5c($s1)
.L802A95C4:
/* 42F3E4 802A95C4 8C620000 */  lw        $v0, ($v1)
/* 42F3E8 802A95C8 00451024 */  and       $v0, $v0, $a1
/* 42F3EC 802A95CC 1440000A */  bnez      $v0, .L802A95F8
/* 42F3F0 802A95D0 3C1051EB */   lui      $s0, 0x51eb
/* 42F3F4 802A95D4 8E420210 */  lw        $v0, 0x210($s2)
/* 42F3F8 802A95D8 00441024 */  and       $v0, $v0, $a0
/* 42F3FC 802A95DC 14400006 */  bnez      $v0, .L802A95F8
/* 42F400 802A95E0 24020001 */   addiu    $v0, $zero, 1
/* 42F404 802A95E4 8223005C */  lb        $v1, 0x5c($s1)
/* 42F408 802A95E8 14620003 */  bne       $v1, $v0, .L802A95F8
/* 42F40C 802A95EC 24020002 */   addiu    $v0, $zero, 2
/* 42F410 802A95F0 A222005C */  sb        $v0, 0x5c($s1)
/* 42F414 802A95F4 3C1051EB */  lui       $s0, 0x51eb
.L802A95F8:
/* 42F418 802A95F8 96230044 */  lhu       $v1, 0x44($s1)
/* 42F41C 802A95FC 3610851F */  ori       $s0, $s0, 0x851f
/* 42F420 802A9600 00031C00 */  sll       $v1, $v1, 0x10
/* 42F424 802A9604 00031403 */  sra       $v0, $v1, 0x10
/* 42F428 802A9608 00500018 */  mult      $v0, $s0
/* 42F42C 802A960C 3C048000 */  lui       $a0, 0x8000
/* 42F430 802A9610 34840041 */  ori       $a0, $a0, 0x41
/* 42F434 802A9614 00031FC3 */  sra       $v1, $v1, 0x1f
/* 42F438 802A9618 00004010 */  mfhi      $t0
/* 42F43C 802A961C 00081143 */  sra       $v0, $t0, 5
/* 42F440 802A9620 00431023 */  subu      $v0, $v0, $v1
/* 42F444 802A9624 8E430210 */  lw        $v1, 0x210($s2)
/* 42F448 802A9628 0000282D */  daddu     $a1, $zero, $zero
/* 42F44C 802A962C A2420081 */  sb        $v0, 0x81($s2)
/* 42F450 802A9630 9227005C */  lbu       $a3, 0x5c($s1)
/* 42F454 802A9634 82420081 */  lb        $v0, 0x81($s2)
/* 42F458 802A9638 00A0302D */  daddu     $a2, $a1, $zero
/* 42F45C 802A963C 3C01802B */  lui       $at, %hi(D_802A98C0)
/* 42F460 802A9640 AC2398C0 */  sw        $v1, %lo(D_802A98C0)($at)
/* 42F464 802A9644 A2470084 */  sb        $a3, 0x84($s2)
/* 42F468 802A9648 00023840 */  sll       $a3, $v0, 1
/* 42F46C 802A964C 00E23821 */  addu      $a3, $a3, $v0
/* 42F470 802A9650 0C0526F9 */  jal       func_80149BE4
/* 42F474 802A9654 00073880 */   sll      $a3, $a3, 2
/* 42F478 802A9658 86220054 */  lh        $v0, 0x54($s1)
/* 42F47C 802A965C 96230054 */  lhu       $v1, 0x54($s1)
/* 42F480 802A9660 1440002C */  bnez      $v0, .L802A9714
/* 42F484 802A9664 2462FFFF */   addiu    $v0, $v1, -1
/* 42F488 802A9668 96220044 */  lhu       $v0, 0x44($s1)
/* 42F48C 802A966C 00021C00 */  sll       $v1, $v0, 0x10
/* 42F490 802A9670 00031403 */  sra       $v0, $v1, 0x10
/* 42F494 802A9674 14400003 */  bnez      $v0, .L802A9684
/* 42F498 802A9678 00500018 */   mult     $v0, $s0
/* 42F49C 802A967C 080AA5A5 */  j         .L802A9694
/* 42F4A0 802A9680 2402FFFF */   addiu    $v0, $zero, -1
.L802A9684:
/* 42F4A4 802A9684 00031FC3 */  sra       $v1, $v1, 0x1f
/* 42F4A8 802A9688 00004010 */  mfhi      $t0
/* 42F4AC 802A968C 00081143 */  sra       $v0, $t0, 5
/* 42F4B0 802A9690 00431023 */  subu      $v0, $v0, $v1
.L802A9694:
/* 42F4B4 802A9694 A2420081 */  sb        $v0, 0x81($s2)
/* 42F4B8 802A9698 82220080 */  lb        $v0, 0x80($s1)
/* 42F4BC 802A969C 2442FFFF */  addiu     $v0, $v0, -1
/* 42F4C0 802A96A0 00021040 */  sll       $v0, $v0, 1
/* 42F4C4 802A96A4 02221021 */  addu      $v0, $s1, $v0
/* 42F4C8 802A96A8 84430074 */  lh        $v1, 0x74($v0)
/* 42F4CC 802A96AC 82420081 */  lb        $v0, 0x81($s2)
/* 42F4D0 802A96B0 0062102A */  slt       $v0, $v1, $v0
/* 42F4D4 802A96B4 14400002 */  bnez      $v0, .L802A96C0
/* 42F4D8 802A96B8 24020001 */   addiu    $v0, $zero, 1
/* 42F4DC 802A96BC 2402FFFE */  addiu     $v0, $zero, -2
.L802A96C0:
/* 42F4E0 802A96C0 A2420086 */  sb        $v0, 0x86($s2)
/* 42F4E4 802A96C4 82430081 */  lb        $v1, 0x81($s2)
/* 42F4E8 802A96C8 24020064 */  addiu     $v0, $zero, 0x64
/* 42F4EC 802A96CC 14620003 */  bne       $v1, $v0, .L802A96DC
/* 42F4F0 802A96D0 00000000 */   nop
/* 42F4F4 802A96D4 0C09A458 */  jal       func_80269160
/* 42F4F8 802A96D8 00000000 */   nop
.L802A96DC:
/* 42F4FC 802A96DC 0C093EB1 */  jal       set_popup_duration
/* 42F500 802A96E0 0000202D */   daddu    $a0, $zero, $zero
/* 42F504 802A96E4 3C048000 */  lui       $a0, 0x8000
/* 42F508 802A96E8 0C05271B */  jal       stop_sound
/* 42F50C 802A96EC 34840041 */   ori      $a0, $a0, 0x41
/* 42F510 802A96F0 24020005 */  addiu     $v0, $zero, 5
/* 42F514 802A96F4 A6220054 */  sh        $v0, 0x54($s1)
/* 42F518 802A96F8 2402000C */  addiu     $v0, $zero, 0xc
/* 42F51C 802A96FC 080AA5C9 */  j         .L802A9724
/* 42F520 802A9700 A622004C */   sh       $v0, 0x4c($s1)
glabel L802A9704_42F524
/* 42F524 802A9704 86220054 */  lh        $v0, 0x54($s1)
/* 42F528 802A9708 96230054 */  lhu       $v1, 0x54($s1)
/* 42F52C 802A970C 10400003 */  beqz      $v0, .L802A971C
/* 42F530 802A9710 2462FFFF */   addiu    $v0, $v1, -1
.L802A9714:
/* 42F534 802A9714 080AA5C9 */  j         .L802A9724
/* 42F538 802A9718 A6220054 */   sh       $v0, 0x54($s1)
.L802A971C:
/* 42F53C 802A971C 0C09A327 */  jal       func_80268C9C
/* 42F540 802A9720 00000000 */   nop
.L802A9724:
glabel L802A9724_42F544
/* 42F544 802A9724 8FBF001C */  lw        $ra, 0x1c($sp)
/* 42F548 802A9728 8FB20018 */  lw        $s2, 0x18($sp)
/* 42F54C 802A972C 8FB10014 */  lw        $s1, 0x14($sp)
/* 42F550 802A9730 8FB00010 */  lw        $s0, 0x10($sp)
/* 42F554 802A9734 03E00008 */  jr        $ra
/* 42F558 802A9738 27BD0020 */   addiu    $sp, $sp, 0x20
