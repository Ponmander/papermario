.include "macro.inc"

.section .data

glabel gPlayerStatusPtr
.word gPlayerStatus, 0x00000000, 0x00000000, 0x00000000

glabel D_800F7B40
.float 0.0

glabel D_800F7B44
.word 0x00000000

glabel D_800F7B48
.float 0.0

glabel D_800F7B4C
.word 0x00000000

glabel D_800F7B50
.word 0x417C1B33, 0xC0EC5C14, 0x405C9AAA, 0xBF400000

glabel D_800F7B60
.word 0x3E1E0C17, 0xBEB33DB0, 0xBE3AA2E4, 0x3C3CBE62

glabel D_800F7B70
.word 0x40000000, 0x40800000, 0x42000000, 0xC2000000

glabel D_800F7B80
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_800F7B90
.word 0x00000000, 0x00390000, 0x00390002, 0x00390003, 0x00390004, 0x00390005, 0x00390008, 0x00390007, 0x00390013, 0x00390014, 0xFFFFFFFF, 0x005A0000, 0x005A0002, 0x005A0003, 0x005A0004, 0x005A0006, 0x005A0007, 0x005A0009, 0x005A000A, 0x005A000B, 0x005A001A, 0xFFFFFFFF, 0x00580000, 0x00580001, 0x00580002, 0x00580004, 0x00580005, 0x00580006, 0x00580007, 0x00580008, 0x00580009, 0x00580012, 0x00580014, 0x0058001B, 0xFFFFFFFF

glabel D_800F7C1C
.word 0x00580001, 0x00580004, 0x00580006, 0x00580008, 0x00580000

glabel D_800F7C30
.word 0x0058001B, 0x00580001, 0x00580004, 0x00580006, 0x00580008, 0x00580000, 0x0058001B, 0x005A0003, 0x005A0006, 0x005A0009, 0x005A000B, 0x005A0000, 0x005A001A, 0x00390002, 0x00390003, 0x00390004, 0x00390005, 0x00390000, 0x00390014

glabel D_800F7C7C
.word 0x800F7BE8, 0x800F7BE8, 0x800F7BBC, 0x800F7B94

glabel D_800F7C8C
.word func_802B6000_E24920, 0x00E23260, 0x00E236E0, 0x01000000, func_802B6000_E24920, 0x00E236E0, 0x00E24040, 0x01000000, func_802B6288_E23968, 0x00E236E0, 0x00E24040, 0x01000000, func_802B60B4_E240F4, 0x00E24040, 0x00E245D0, 0x01000000, func_802B60B4_E240F4, 0x00E24040, 0x00E245D0, 0x01000000, func_802B60B4_E240F4, 0x00E24040, 0x00E245D0, 0x00000000, func_802B60B4_E240F4, 0x00E24040, 0x00E245D0, 0x00000000, func_802B6198_E241D8, 0x00E24040, 0x00E245D0, 0x00000000, func_802B6294_E242D4, 0x00E24040, 0x00E245D0, 0x01000000, func_802B6348_E24388, 0x00E24040, 0x00E245D0, 0x01000000, func_802B6000_E24920, 0x00E24920, 0x00E24ED0, 0x01000000, func_802B61C0_E24AE0, 0x00E24920, 0x00E24ED0, 0x01000000, func_802B6638_E29068, 0x00E28A30, 0x00E291A0, 0x01000000, func_802B6000_E24920, 0x00E26DE0, 0x00E27510, 0x00000000, func_802B6000_E24920, 0x00E26DE0, 0x00E27510, 0x00000000, func_802B6000_E24920, 0x00E26710, 0x00E26DE0, 0x00000000, func_802B6000_E24920, 0x00E26710, 0x00E26DE0, 0x00000000, func_802B6060_E27570, 0x00E27510, 0x00E27C90, 0x00000000, func_802B66A8_E25578, 0x00E24ED0, 0x00E25D60, 0x00000000, func_802B6350_E28D80, 0x00E28A30, 0x00E291A0, 0x01000000, func_802B6508_E28F38, 0x00E28A30, 0x00E291A0, 0x00000000, func_802B6000_E24920, 0x00E27C90, 0x00E27F40, 0x00000000, func_802B6000_E24920, 0x00E287F0, 0x00E28A30, 0x00000000, func_802B6000_E24920, 0x00E27F40, 0x00E287F0, 0x00000000, func_802B6230_E24800, 0x00E245D0, 0x00E24920, 0x01000000, func_802B6120_E2A7D0, 0x00E2A6B0, 0x00E2B530, 0x01000000, func_802B6000_E24920, 0x00E25D60, 0x00E26710, 0x00000000, func_802B63D4_E28E04, 0x00E28A30, 0x00E291A0, 0x00000000, func_802B6478_E28EA8, 0x00E28A30, 0x00E291A0, 0x00000000, func_802B60A4_E29514, 0x00E29470, 0x00E2A340, 0x00000000, func_802B6000_E24920, 0x00E291A0, 0x00E29470, 0x00000000, func_802B6000_E24920, 0x00E2A340, 0x00E2A6B0, 0x00000000, func_802B6350_E28D80, 0x00E28A30, 0x00E291A0, 0x01000000, func_802B6000_E24920, 0x00E28A30, 0x00E291A0, 0x00000000, func_802B6000_E24920, 0x00E245D0, 0x00E24920, 0x01000000, func_802B609C_E28ACC, 0x00E28A30, 0x00E291A0, 0x00000000, func_802B6350_E28D80, 0x00E28A30, 0x00E291A0, 0x00000000, func_802B6350_E28D80, 0x00E236E0, 0x00E24040, 0x00000000, func_802B6350_E28D80, 0x00E28A30, 0x00E291A0, 0x01000000, 0x00000000

glabel D_800F7F00
.word 0x80107CA8, 0x80107CF8, 0x80107D48, 0x80107D98, 0x80107DE8, 0x80107CA8, 0x80107E88, 0x80107ED8, 0x80107F28, 0x80107E38, 0x80107FC8, 0x80107FC8, 0x80107FC8, 0x80107FC8, 0x80107FC8, 0x80107FC8

glabel D_800F7F40
.word 0x80107CD0, 0x80107D20, 0x80107D70, 0x80107DC0, 0x80107E10, 0x80107CD0, 0x80107EB0, 0x80107F00, 0x80107F50, 0x80107E60, 0x80107FF0, 0x80107FF0, 0x80107FF0, 0x80107FF0, 0x80107FF0, 0x80107FF0

glabel D_800F7F80
.word 0x801080B8, 0x801080E0, 0x80108108, 0x80108130, 0x80108158, 0x80108180, 0x801081A8, 0x801081D0, 0x801081F8, 0x80108220

glabel D_800F7FA8
.word D_80108068

glabel D_800F7FAC
.word 0x80108090

glabel D_800F7FB0
.word 0x80108298, 0x801082E8, 0x801082C0, 0x80108310, 0x80108338, 0x80108360, 0x80108388

glabel D_800F7FCC
.word D_801083D8, 0x80108428, 0x80108400, 0x80108450, 0x80108478, 0x801084A0, 0x801084C8

glabel D_800F7FE8
.word 0xFFFFFFFF

glabel D_800F7FEC
.word 0x00000001

glabel D_800F7FF0
.word 0x00000002

glabel D_800F7FF4
.word 0x00000004

glabel D_800F7FF8
.word 0x00000005

glabel D_800F7FFC
.word 0x00000007

glabel D_800F8000
.word 0x00000008, 0x00000000, 0x00000000, 0x00000000

glabel D_800F8010
.word 0x003251D0, 0x00325AD0, 0x802C05CC, 0x00000000

glabel D_800F8020
.word 0x00000000

glabel D_800F8024
.float 0.0

glabel D_800F8028
.float 0.0

glabel D_800F802C
.word 0x00000000

glabel D_800F8030
.float 0.0

glabel D_800F8034
.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

glabel D_800F803A
.short 0x0000

glabel D_800F803C
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
