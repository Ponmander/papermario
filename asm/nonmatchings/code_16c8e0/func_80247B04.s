.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80247B04
/* 1763E4 80247B04 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 1763E8 80247B08 AFB10014 */  sw        $s1, 0x14($sp)
/* 1763EC 80247B0C 3C118011 */  lui       $s1, 0x8011
/* 1763F0 80247B10 2631F290 */  addiu     $s1, $s1, -0xd70
/* 1763F4 80247B14 AFB40020 */  sw        $s4, 0x20($sp)
/* 1763F8 80247B18 3C14800E */  lui       $s4, 0x800e
/* 1763FC 80247B1C 2694C070 */  addiu     $s4, $s4, -0x3f90
/* 176400 80247B20 AFB3001C */  sw        $s3, 0x1c($sp)
/* 176404 80247B24 3C13800B */  lui       $s3, 0x800b
/* 176408 80247B28 26730F10 */  addiu     $s3, $s3, 0xf10
/* 17640C 80247B2C AFB60028 */  sw        $s6, 0x28($sp)
/* 176410 80247B30 3C16800E */  lui       $s6, 0x800e
/* 176414 80247B34 26D6C4DC */  addiu     $s6, $s6, -0x3b24
/* 176418 80247B38 AFB20018 */  sw        $s2, 0x18($sp)
/* 17641C 80247B3C 24120001 */  addiu     $s2, $zero, 1
/* 176420 80247B40 AFBF002C */  sw        $ra, 0x2c($sp)
/* 176424 80247B44 AFB50024 */  sw        $s5, 0x24($sp)
/* 176428 80247B48 AFB00010 */  sw        $s0, 0x10($sp)
/* 17642C 80247B4C 8E9500D8 */  lw        $s5, 0xd8($s4)
/* 176430 80247B50 8EC30000 */  lw        $v1, ($s6)
/* 176434 80247B54 8E9000DC */  lw        $s0, 0xdc($s4)
/* 176438 80247B58 10720077 */  beq       $v1, $s2, .L80247D38
/* 17643C 80247B5C 28620002 */   slti     $v0, $v1, 2
/* 176440 80247B60 50400005 */  beql      $v0, $zero, .L80247B78
/* 176444 80247B64 24020002 */   addiu    $v0, $zero, 2
/* 176448 80247B68 10600009 */  beqz      $v1, .L80247B90
/* 17644C 80247B6C 00000000 */   nop      
/* 176450 80247B70 08092032 */  j         .L802480C8
/* 176454 80247B74 00000000 */   nop      
.L80247B78:
/* 176458 80247B78 106200A4 */  beq       $v1, $v0, .L80247E0C
/* 17645C 80247B7C 24020003 */   addiu    $v0, $zero, 3
/* 176460 80247B80 10620131 */  beq       $v1, $v0, .L80248048
/* 176464 80247B84 0000982D */   daddu    $s3, $zero, $zero
/* 176468 80247B88 08092032 */  j         .L802480C8
/* 17646C 80247B8C 00000000 */   nop      
.L80247B90:
/* 176470 80247B90 3C01802A */  lui       $at, 0x802a
/* 176474 80247B94 AC20F254 */  sw        $zero, -0xdac($at)
/* 176478 80247B98 0C0903F7 */  jal       func_80240FDC
/* 17647C 80247B9C 00000000 */   nop      
/* 176480 80247BA0 9623029C */  lhu       $v1, 0x29c($s1)
/* 176484 80247BA4 2C62270F */  sltiu     $v0, $v1, 0x270f
/* 176488 80247BA8 10400002 */  beqz      $v0, .L80247BB4
/* 17648C 80247BAC 24620001 */   addiu    $v0, $v1, 1
/* 176490 80247BB0 A622029C */  sh        $v0, 0x29c($s1)
.L80247BB4:
/* 176494 80247BB4 3C03F7FF */  lui       $v1, 0xf7ff
/* 176498 80247BB8 8E820004 */  lw        $v0, 4($s4)
/* 17649C 80247BBC 3463FFFF */  ori       $v1, $v1, 0xffff
/* 1764A0 80247BC0 A2800099 */  sb        $zero, 0x99($s4)
/* 1764A4 80247BC4 00431824 */  and       $v1, $v0, $v1
/* 1764A8 80247BC8 30420040 */  andi      $v0, $v0, 0x40
/* 1764AC 80247BCC 14400023 */  bnez      $v0, .L80247C5C
/* 1764B0 80247BD0 AE830004 */   sw       $v1, 4($s4)
/* 1764B4 80247BD4 82220002 */  lb        $v0, 2($s1)
/* 1764B8 80247BD8 28420002 */  slti      $v0, $v0, 2
/* 1764BC 80247BDC 1040000B */  beqz      $v0, .L80247C0C
/* 1764C0 80247BE0 00000000 */   nop      
/* 1764C4 80247BE4 0C03A752 */  jal       is_ability_active
/* 1764C8 80247BE8 24040014 */   addiu    $a0, $zero, 0x14
/* 1764CC 80247BEC 10400007 */  beqz      $v0, .L80247C0C
/* 1764D0 80247BF0 3C020800 */   lui      $v0, 0x800
/* 1764D4 80247BF4 8E830004 */  lw        $v1, 4($s4)
/* 1764D8 80247BF8 92840099 */  lbu       $a0, 0x99($s4)
/* 1764DC 80247BFC 00621825 */  or        $v1, $v1, $v0
/* 1764E0 80247C00 34840001 */  ori       $a0, $a0, 1
/* 1764E4 80247C04 AE830004 */  sw        $v1, 4($s4)
/* 1764E8 80247C08 A2840099 */  sb        $a0, 0x99($s4)
.L80247C0C:
/* 1764EC 80247C0C 82220002 */  lb        $v0, 2($s1)
/* 1764F0 80247C10 28420006 */  slti      $v0, $v0, 6
/* 1764F4 80247C14 10400011 */  beqz      $v0, .L80247C5C
/* 1764F8 80247C18 00000000 */   nop      
/* 1764FC 80247C1C 0C03A752 */  jal       is_ability_active
/* 176500 80247C20 2404001E */   addiu    $a0, $zero, 0x1e
/* 176504 80247C24 1040000D */  beqz      $v0, .L80247C5C
/* 176508 80247C28 00000000 */   nop      
/* 17650C 80247C2C 92820099 */  lbu       $v0, 0x99($s4)
/* 176510 80247C30 30420001 */  andi      $v0, $v0, 1
/* 176514 80247C34 14400009 */  bnez      $v0, .L80247C5C
/* 176518 80247C38 3C040800 */   lui      $a0, 0x800
/* 17651C 80247C3C 3C05800E */  lui       $a1, 0x800e
/* 176520 80247C40 24A5C070 */  addiu     $a1, $a1, -0x3f90
/* 176524 80247C44 8CA20004 */  lw        $v0, 4($a1)
/* 176528 80247C48 92830099 */  lbu       $v1, 0x99($s4)
/* 17652C 80247C4C 00441025 */  or        $v0, $v0, $a0
/* 176530 80247C50 34630002 */  ori       $v1, $v1, 2
/* 176534 80247C54 ACA20004 */  sw        $v0, 4($a1)
/* 176538 80247C58 A2830099 */  sb        $v1, 0x99($s4)
.L80247C5C:
/* 17653C 80247C5C 82630005 */  lb        $v1, 5($s3)
/* 176540 80247C60 24020004 */  addiu     $v0, $zero, 4
/* 176544 80247C64 10620013 */  beq       $v1, $v0, .L80247CB4
/* 176548 80247C68 28620005 */   slti     $v0, $v1, 5
/* 17654C 80247C6C 10400005 */  beqz      $v0, .L80247C84
/* 176550 80247C70 24020002 */   addiu    $v0, $zero, 2
/* 176554 80247C74 50620008 */  beql      $v1, $v0, .L80247C98
/* 176558 80247C78 A2800178 */   sb       $zero, 0x178($s4)
/* 17655C 80247C7C 08091F38 */  j         .L80247CE0
/* 176560 80247C80 00000000 */   nop      
.L80247C84:
/* 176564 80247C84 24020006 */  addiu     $v0, $zero, 6
/* 176568 80247C88 1062010D */  beq       $v1, $v0, .L802480C0
/* 17656C 80247C8C 24040003 */   addiu    $a0, $zero, 3
/* 176570 80247C90 08091F38 */  j         .L80247CE0
/* 176574 80247C94 00000000 */   nop      
.L80247C98:
/* 176578 80247C98 92620006 */  lbu       $v0, 6($s3)
/* 17657C 80247C9C 2403001D */  addiu     $v1, $zero, 0x1d
/* 176580 80247CA0 A683017C */  sh        $v1, 0x17c($s4)
/* 176584 80247CA4 3C038009 */  lui       $v1, 0x8009
/* 176588 80247CA8 8C63F2A8 */  lw        $v1, -0xd58($v1)
/* 17658C 80247CAC 08091F35 */  j         .L80247CD4
/* 176590 80247CB0 00021600 */   sll      $v0, $v0, 0x18
.L80247CB4:
/* 176594 80247CB4 24020001 */  addiu     $v0, $zero, 1
/* 176598 80247CB8 A2820178 */  sb        $v0, 0x178($s4)
/* 17659C 80247CBC 92620006 */  lbu       $v0, 6($s3)
/* 1765A0 80247CC0 24030006 */  addiu     $v1, $zero, 6
/* 1765A4 80247CC4 A683017C */  sh        $v1, 0x17c($s4)
/* 1765A8 80247CC8 3C038009 */  lui       $v1, 0x8009
/* 1765AC 80247CCC 8C63F0DC */  lw        $v1, -0xf24($v1)
/* 1765B0 80247CD0 00021600 */  sll       $v0, $v0, 0x18
.L80247CD4:
/* 1765B4 80247CD4 00021603 */  sra       $v0, $v0, 0x18
/* 1765B8 80247CD8 A682017A */  sh        $v0, 0x17a($s4)
/* 1765BC 80247CDC AE830184 */  sw        $v1, 0x184($s4)
.L80247CE0:
/* 1765C0 80247CE0 0C09A75B */  jal       get_actor
/* 1765C4 80247CE4 24040200 */   addiu    $a0, $zero, 0x200
/* 1765C8 80247CE8 0040802D */  daddu     $s0, $v0, $zero
/* 1765CC 80247CEC 8E0201C8 */  lw        $v0, 0x1c8($s0)
/* 1765D0 80247CF0 1040000C */  beqz      $v0, .L80247D24
/* 1765D4 80247CF4 2405000A */   addiu    $a1, $zero, 0xa
/* 1765D8 80247CF8 24060020 */  addiu     $a2, $zero, 0x20
/* 1765DC 80247CFC 0040202D */  daddu     $a0, $v0, $zero
/* 1765E0 80247D00 24020038 */  addiu     $v0, $zero, 0x38
/* 1765E4 80247D04 0C0B0CF8 */  jal       start_script
/* 1765E8 80247D08 A20201F0 */   sb       $v0, 0x1f0($s0)
/* 1765EC 80247D0C 0040202D */  daddu     $a0, $v0, $zero
/* 1765F0 80247D10 AE0401D8 */  sw        $a0, 0x1d8($s0)
/* 1765F4 80247D14 8C820144 */  lw        $v0, 0x144($a0)
/* 1765F8 80247D18 86030192 */  lh        $v1, 0x192($s0)
/* 1765FC 80247D1C AE0201E8 */  sw        $v0, 0x1e8($s0)
/* 176600 80247D20 AC830148 */  sw        $v1, 0x148($a0)
.L80247D24:
/* 176604 80247D24 24020001 */  addiu     $v0, $zero, 1
/* 176608 80247D28 3C01800E */  lui       $at, 0x800e
/* 17660C 80247D2C AC22C4DC */  sw        $v0, -0x3b24($at)
/* 176610 80247D30 08092032 */  j         .L802480C8
/* 176614 80247D34 00000000 */   nop      
.L80247D38:
/* 176618 80247D38 0C09A75B */  jal       get_actor
/* 17661C 80247D3C 24040200 */   addiu    $a0, $zero, 0x200
/* 176620 80247D40 0040802D */  daddu     $s0, $v0, $zero
/* 176624 80247D44 8E0201C8 */  lw        $v0, 0x1c8($s0)
/* 176628 80247D48 10400007 */  beqz      $v0, .L80247D68
/* 17662C 80247D4C 02A0202D */   daddu    $a0, $s5, $zero
/* 176630 80247D50 8E0401E8 */  lw        $a0, 0x1e8($s0)
/* 176634 80247D54 0C0B1059 */  jal       does_script_exist
/* 176638 80247D58 00000000 */   nop      
/* 17663C 80247D5C 144000DA */  bnez      $v0, .L802480C8
/* 176640 80247D60 02A0202D */   daddu    $a0, $s5, $zero
/* 176644 80247D64 AE0001D8 */  sw        $zero, 0x1d8($s0)
.L80247D68:
/* 176648 80247D68 0C098C8C */  jal       func_80263230
/* 17664C 80247D6C 0200282D */   daddu    $a1, $s0, $zero
/* 176650 80247D70 3C05FFF7 */  lui       $a1, 0xfff7
/* 176654 80247D74 34A5FFFF */  ori       $a1, $a1, 0xffff
/* 176658 80247D78 8E840000 */  lw        $a0, ($s4)
/* 17665C 80247D7C 2402FFFD */  addiu     $v0, $zero, -3
/* 176660 80247D80 00822024 */  and       $a0, $a0, $v0
/* 176664 80247D84 8E820004 */  lw        $v0, 4($s4)
/* 176668 80247D88 3C030100 */  lui       $v1, 0x100
/* 17666C 80247D8C A280008C */  sb        $zero, 0x8c($s4)
/* 176670 80247D90 A6800180 */  sh        $zero, 0x180($s4)
/* 176674 80247D94 A280019A */  sb        $zero, 0x19a($s4)
/* 176678 80247D98 AE840000 */  sw        $a0, ($s4)
/* 17667C 80247D9C 00852024 */  and       $a0, $a0, $a1
/* 176680 80247DA0 AE840000 */  sw        $a0, ($s4)
/* 176684 80247DA4 00431025 */  or        $v0, $v0, $v1
/* 176688 80247DA8 0C03A6D5 */  jal       increment_status_menu_disabled
/* 17668C 80247DAC AE820004 */   sw       $v0, 4($s4)
/* 176690 80247DB0 0C093903 */  jal       func_8024E40C
/* 176694 80247DB4 2404000A */   addiu    $a0, $zero, 0xa
/* 176698 80247DB8 0C09390F */  jal       cam_target_actor
/* 17669C 80247DBC 0000202D */   daddu    $a0, $zero, $zero
/* 1766A0 80247DC0 0C098F18 */  jal       func_80263C60
/* 1766A4 80247DC4 00000000 */   nop      
/* 1766A8 80247DC8 3C048028 */  lui       $a0, 0x8028
/* 1766AC 80247DCC 24844EBC */  addiu     $a0, $a0, 0x4ebc
/* 1766B0 80247DD0 2405000A */  addiu     $a1, $zero, 0xa
/* 1766B4 80247DD4 0000302D */  daddu     $a2, $zero, $zero
/* 1766B8 80247DD8 0C0B0CF8 */  jal       start_script
/* 1766BC 80247DDC A29201A7 */   sb       $s2, 0x1a7($s4)
/* 1766C0 80247DE0 0040202D */  daddu     $a0, $v0, $zero
/* 1766C4 80247DE4 AEA401D4 */  sw        $a0, 0x1d4($s5)
/* 1766C8 80247DE8 8C830144 */  lw        $v1, 0x144($a0)
/* 1766CC 80247DEC 24020003 */  addiu     $v0, $zero, 3
/* 1766D0 80247DF0 3C01802A */  lui       $at, 0x802a
/* 1766D4 80247DF4 AC22F248 */  sw        $v0, -0xdb8($at)
/* 1766D8 80247DF8 24020002 */  addiu     $v0, $zero, 2
/* 1766DC 80247DFC AEC20000 */  sw        $v0, ($s6)
/* 1766E0 80247E00 AEA301E4 */  sw        $v1, 0x1e4($s5)
/* 1766E4 80247E04 08092032 */  j         .L802480C8
/* 1766E8 80247E08 AC800148 */   sw       $zero, 0x148($a0)
.L80247E0C:
/* 1766EC 80247E0C 3C03802A */  lui       $v1, 0x802a
/* 1766F0 80247E10 2463F248 */  addiu     $v1, $v1, -0xdb8
/* 1766F4 80247E14 8C620000 */  lw        $v0, ($v1)
/* 1766F8 80247E18 10400003 */  beqz      $v0, .L80247E28
/* 1766FC 80247E1C 2442FFFF */   addiu    $v0, $v0, -1
/* 176700 80247E20 08091F8C */  j         .L80247E30
/* 176704 80247E24 AC620000 */   sw       $v0, ($v1)
.L80247E28:
/* 176708 80247E28 3C01802A */  lui       $at, 0x802a
/* 17670C 80247E2C AC32F254 */  sw        $s2, -0xdac($at)
.L80247E30:
/* 176710 80247E30 3C02800E */  lui       $v0, 0x800e
/* 176714 80247E34 8C42C070 */  lw        $v0, -0x3f90($v0)
/* 176718 80247E38 3C030020 */  lui       $v1, 0x20
/* 17671C 80247E3C 00431024 */  and       $v0, $v0, $v1
/* 176720 80247E40 1440000A */  bnez      $v0, .L80247E6C
/* 176724 80247E44 00000000 */   nop      
/* 176728 80247E48 8EA201D4 */  lw        $v0, 0x1d4($s5)
/* 17672C 80247E4C 50400007 */  beql      $v0, $zero, .L80247E6C
/* 176730 80247E50 AEA001D4 */   sw       $zero, 0x1d4($s5)
/* 176734 80247E54 8EA401E4 */  lw        $a0, 0x1e4($s5)
/* 176738 80247E58 0C0B1059 */  jal       does_script_exist
/* 17673C 80247E5C 00000000 */   nop      
/* 176740 80247E60 14400099 */  bnez      $v0, .L802480C8
/* 176744 80247E64 00000000 */   nop      
/* 176748 80247E68 AEA001D4 */  sw        $zero, 0x1d4($s5)
.L80247E6C:
/* 17674C 80247E6C 3C04800E */  lui       $a0, 0x800e
/* 176750 80247E70 2484C070 */  addiu     $a0, $a0, -0x3f90
/* 176754 80247E74 8C820000 */  lw        $v0, ($a0)
/* 176758 80247E78 2403FEFF */  addiu     $v1, $zero, -0x101
/* 17675C 80247E7C 00431024 */  and       $v0, $v0, $v1
/* 176760 80247E80 AC820000 */  sw        $v0, ($a0)
/* 176764 80247E84 8EA201D8 */  lw        $v0, 0x1d8($s5)
/* 176768 80247E88 10400005 */  beqz      $v0, .L80247EA0
/* 17676C 80247E8C 00000000 */   nop      
/* 176770 80247E90 0C0B1059 */  jal       does_script_exist
/* 176774 80247E94 8EA401E8 */   lw       $a0, 0x1e8($s5)
/* 176778 80247E98 1440008B */  bnez      $v0, .L802480C8
/* 17677C 80247E9C 00000000 */   nop      
.L80247EA0:
/* 176780 80247EA0 1200000A */  beqz      $s0, .L80247ECC
/* 176784 80247EA4 AEA001D8 */   sw       $zero, 0x1d8($s5)
/* 176788 80247EA8 8E0201D8 */  lw        $v0, 0x1d8($s0)
/* 17678C 80247EAC 50400007 */  beql      $v0, $zero, .L80247ECC
/* 176790 80247EB0 AE0001D8 */   sw       $zero, 0x1d8($s0)
/* 176794 80247EB4 8E0401E8 */  lw        $a0, 0x1e8($s0)
/* 176798 80247EB8 0C0B1059 */  jal       does_script_exist
/* 17679C 80247EBC 00000000 */   nop      
/* 1767A0 80247EC0 14400081 */  bnez      $v0, .L802480C8
/* 1767A4 80247EC4 00000000 */   nop      
/* 1767A8 80247EC8 AE0001D8 */  sw        $zero, 0x1d8($s0)
.L80247ECC:
/* 1767AC 80247ECC 0000982D */  daddu     $s3, $zero, $zero
/* 1767B0 80247ED0 0260882D */  daddu     $s1, $s3, $zero
/* 1767B4 80247ED4 0280902D */  daddu     $s2, $s4, $zero
.L80247ED8:
/* 1767B8 80247ED8 8E5000E0 */  lw        $s0, 0xe0($s2)
/* 1767BC 80247EDC 5200000B */  beql      $s0, $zero, .L80247F0C
/* 1767C0 80247EE0 26310001 */   addiu    $s1, $s1, 1
/* 1767C4 80247EE4 8E0201D4 */  lw        $v0, 0x1d4($s0)
/* 1767C8 80247EE8 50400008 */  beql      $v0, $zero, .L80247F0C
/* 1767CC 80247EEC 26310001 */   addiu    $s1, $s1, 1
/* 1767D0 80247EF0 8E0401E4 */  lw        $a0, 0x1e4($s0)
/* 1767D4 80247EF4 0C0B1059 */  jal       does_script_exist
/* 1767D8 80247EF8 00000000 */   nop      
/* 1767DC 80247EFC 50400002 */  beql      $v0, $zero, .L80247F08
/* 1767E0 80247F00 AE0001D4 */   sw       $zero, 0x1d4($s0)
/* 1767E4 80247F04 24130001 */  addiu     $s3, $zero, 1
.L80247F08:
/* 1767E8 80247F08 26310001 */  addiu     $s1, $s1, 1
.L80247F0C:
/* 1767EC 80247F0C 2A220018 */  slti      $v0, $s1, 0x18
/* 1767F0 80247F10 1440FFF1 */  bnez      $v0, .L80247ED8
/* 1767F4 80247F14 26520004 */   addiu    $s2, $s2, 4
/* 1767F8 80247F18 1660006B */  bnez      $s3, .L802480C8
/* 1767FC 80247F1C 0000882D */   daddu    $s1, $zero, $zero
/* 176800 80247F20 0280902D */  daddu     $s2, $s4, $zero
.L80247F24:
/* 176804 80247F24 8E5000E0 */  lw        $s0, 0xe0($s2)
/* 176808 80247F28 5200000B */  beql      $s0, $zero, .L80247F58
/* 17680C 80247F2C 26310001 */   addiu    $s1, $s1, 1
/* 176810 80247F30 8E0201D8 */  lw        $v0, 0x1d8($s0)
/* 176814 80247F34 50400008 */  beql      $v0, $zero, .L80247F58
/* 176818 80247F38 26310001 */   addiu    $s1, $s1, 1
/* 17681C 80247F3C 8E0401E8 */  lw        $a0, 0x1e8($s0)
/* 176820 80247F40 0C0B1059 */  jal       does_script_exist
/* 176824 80247F44 00000000 */   nop      
/* 176828 80247F48 50400002 */  beql      $v0, $zero, .L80247F54
/* 17682C 80247F4C AE0001D8 */   sw       $zero, 0x1d8($s0)
/* 176830 80247F50 24130001 */  addiu     $s3, $zero, 1
.L80247F54:
/* 176834 80247F54 26310001 */  addiu     $s1, $s1, 1
.L80247F58:
/* 176838 80247F58 2A220018 */  slti      $v0, $s1, 0x18
/* 17683C 80247F5C 1440FFF1 */  bnez      $v0, .L80247F24
/* 176840 80247F60 26520004 */   addiu    $s2, $s2, 4
/* 176844 80247F64 16600058 */  bnez      $s3, .L802480C8
/* 176848 80247F68 0000882D */   daddu    $s1, $zero, $zero
/* 17684C 80247F6C 3C04FFF7 */  lui       $a0, 0xfff7
/* 176850 80247F70 3484FFFF */  ori       $a0, $a0, 0xffff
/* 176854 80247F74 0280182D */  daddu     $v1, $s4, $zero
.L80247F78:
/* 176858 80247F78 8C7000E0 */  lw        $s0, 0xe0($v1)
/* 17685C 80247F7C 12000004 */  beqz      $s0, .L80247F90
/* 176860 80247F80 26310001 */   addiu    $s1, $s1, 1
/* 176864 80247F84 8E020000 */  lw        $v0, ($s0)
/* 176868 80247F88 00441024 */  and       $v0, $v0, $a0
/* 17686C 80247F8C AE020000 */  sw        $v0, ($s0)
.L80247F90:
/* 176870 80247F90 2A220018 */  slti      $v0, $s1, 0x18
/* 176874 80247F94 1440FFF8 */  bnez      $v0, .L80247F78
/* 176878 80247F98 24630004 */   addiu    $v1, $v1, 4
/* 17687C 80247F9C 8282008C */  lb        $v0, 0x8c($s4)
/* 176880 80247FA0 14400049 */  bnez      $v0, .L802480C8
/* 176884 80247FA4 00000000 */   nop      
/* 176888 80247FA8 0C03A6CC */  jal       decrement_status_menu_disabled
/* 17688C 80247FAC 00000000 */   nop      
/* 176890 80247FB0 3C028007 */  lui       $v0, 0x8007
/* 176894 80247FB4 8C42419C */  lw        $v0, 0x419c($v0)
/* 176898 80247FB8 904200AA */  lbu       $v0, 0xaa($v0)
/* 17689C 80247FBC 30420001 */  andi      $v0, $v0, 1
/* 1768A0 80247FC0 1440003F */  bnez      $v0, .L802480C0
/* 1768A4 80247FC4 24040023 */   addiu    $a0, $zero, 0x23
/* 1768A8 80247FC8 0C098D19 */  jal       func_80263464
/* 1768AC 80247FCC 00000000 */   nop      
/* 1768B0 80247FD0 1440003D */  bnez      $v0, .L802480C8
/* 1768B4 80247FD4 00000000 */   nop      
/* 1768B8 80247FD8 0C098D0D */  jal       func_80263434
/* 1768BC 80247FDC 00000000 */   nop      
/* 1768C0 80247FE0 14400039 */  bnez      $v0, .L802480C8
/* 1768C4 80247FE4 00000000 */   nop      
/* 1768C8 80247FE8 0C09A75B */  jal       get_actor
/* 1768CC 80247FEC 86A40428 */   lh       $a0, 0x428($s5)
/* 1768D0 80247FF0 0040802D */  daddu     $s0, $v0, $zero
/* 1768D4 80247FF4 12000010 */  beqz      $s0, .L80248038
/* 1768D8 80247FF8 24020003 */   addiu    $v0, $zero, 3
/* 1768DC 80247FFC 8E0201C8 */  lw        $v0, 0x1c8($s0)
/* 1768E0 80248000 1040000C */  beqz      $v0, .L80248034
/* 1768E4 80248004 2405000A */   addiu    $a1, $zero, 0xa
/* 1768E8 80248008 24060020 */  addiu     $a2, $zero, 0x20
/* 1768EC 8024800C 0040202D */  daddu     $a0, $v0, $zero
/* 1768F0 80248010 24020035 */  addiu     $v0, $zero, 0x35
/* 1768F4 80248014 0C0B0CF8 */  jal       start_script
/* 1768F8 80248018 A20201F0 */   sb       $v0, 0x1f0($s0)
/* 1768FC 8024801C 0040202D */  daddu     $a0, $v0, $zero
/* 176900 80248020 AE0401D8 */  sw        $a0, 0x1d8($s0)
/* 176904 80248024 8C820144 */  lw        $v0, 0x144($a0)
/* 176908 80248028 86030192 */  lh        $v1, 0x192($s0)
/* 17690C 8024802C AE0201E8 */  sw        $v0, 0x1e8($s0)
/* 176910 80248030 AC830148 */  sw        $v1, 0x148($a0)
.L80248034:
/* 176914 80248034 24020003 */  addiu     $v0, $zero, 3
.L80248038:
/* 176918 80248038 3C01800E */  lui       $at, 0x800e
/* 17691C 8024803C AC22C4DC */  sw        $v0, -0x3b24($at)
/* 176920 80248040 08092032 */  j         .L802480C8
/* 176924 80248044 00000000 */   nop      
.L80248048:
/* 176928 80248048 0260882D */  daddu     $s1, $s3, $zero
/* 17692C 8024804C 0280902D */  daddu     $s2, $s4, $zero
.L80248050:
/* 176930 80248050 8E5000E0 */  lw        $s0, 0xe0($s2)
/* 176934 80248054 5200000B */  beql      $s0, $zero, .L80248084
/* 176938 80248058 26310001 */   addiu    $s1, $s1, 1
/* 17693C 8024805C 8E0201D8 */  lw        $v0, 0x1d8($s0)
/* 176940 80248060 50400008 */  beql      $v0, $zero, .L80248084
/* 176944 80248064 26310001 */   addiu    $s1, $s1, 1
/* 176948 80248068 8E0401E8 */  lw        $a0, 0x1e8($s0)
/* 17694C 8024806C 0C0B1059 */  jal       does_script_exist
/* 176950 80248070 00000000 */   nop      
/* 176954 80248074 50400002 */  beql      $v0, $zero, .L80248080
/* 176958 80248078 AE0001D8 */   sw       $zero, 0x1d8($s0)
/* 17695C 8024807C 24130001 */  addiu     $s3, $zero, 1
.L80248080:
/* 176960 80248080 26310001 */  addiu     $s1, $s1, 1
.L80248084:
/* 176964 80248084 2A220018 */  slti      $v0, $s1, 0x18
/* 176968 80248088 1440FFF1 */  bnez      $v0, .L80248050
/* 17696C 8024808C 26520004 */   addiu    $s2, $s2, 4
/* 176970 80248090 1660000D */  bnez      $s3, .L802480C8
/* 176974 80248094 00000000 */   nop      
/* 176978 80248098 8EA201D4 */  lw        $v0, 0x1d4($s5)
/* 17697C 8024809C 50400007 */  beql      $v0, $zero, .L802480BC
/* 176980 802480A0 AEA001D4 */   sw       $zero, 0x1d4($s5)
/* 176984 802480A4 8EA401E4 */  lw        $a0, 0x1e4($s5)
/* 176988 802480A8 0C0B1059 */  jal       does_script_exist
/* 17698C 802480AC 00000000 */   nop      
/* 176990 802480B0 14400005 */  bnez      $v0, .L802480C8
/* 176994 802480B4 00000000 */   nop      
/* 176998 802480B8 AEA001D4 */  sw        $zero, 0x1d4($s5)
.L802480BC:
/* 17699C 802480BC 24040005 */  addiu     $a0, $zero, 5
.L802480C0:
/* 1769A0 802480C0 0C090464 */  jal       func_80241190
/* 1769A4 802480C4 00000000 */   nop      
.L802480C8:
/* 1769A8 802480C8 8FBF002C */  lw        $ra, 0x2c($sp)
/* 1769AC 802480CC 8FB60028 */  lw        $s6, 0x28($sp)
/* 1769B0 802480D0 8FB50024 */  lw        $s5, 0x24($sp)
/* 1769B4 802480D4 8FB40020 */  lw        $s4, 0x20($sp)
/* 1769B8 802480D8 8FB3001C */  lw        $s3, 0x1c($sp)
/* 1769BC 802480DC 8FB20018 */  lw        $s2, 0x18($sp)
/* 1769C0 802480E0 8FB10014 */  lw        $s1, 0x14($sp)
/* 1769C4 802480E4 8FB00010 */  lw        $s0, 0x10($sp)
/* 1769C8 802480E8 03E00008 */  jr        $ra
/* 1769CC 802480EC 27BD0030 */   addiu    $sp, $sp, 0x30
