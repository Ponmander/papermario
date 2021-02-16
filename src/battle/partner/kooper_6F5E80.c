#include "common.h"

//INCLUDE_ASM(s32, "battle/partner/kooper_6F5E80", func_80238000_6F5E80);

typedef struct PlaceHolder {
    void* temp_s0;
    void* temp_s1
}

func_80238000_6F5E80(s32 arg1) {
    s32 phi_a0;
    s32 phi_a1;
    s32 phi_a2;
    s32 phi_a3;
    s32 phi_return;

    temp_s0 = *(&gBattleStatus + 0xDC);
    temp_s1 = temp_s0 + 0xC;
    if (arg1 != 0) {
        temp_s0->unkC = (f32) temp_s0->unk144;
        temp_s0->unk10 = (f32) temp_s0->unk148;
        temp_s0->unk14 = (f32) temp_s0->unk14C;
    }
    add_xz_vec3f(temp_s1, temp_s0->unk4C, temp_s0->unk54);
    if ((bitwise f32) temp_s0->unk4C < 4.0f) {
        phi_a0 = 0;
        phi_a1 = (bitwise s32) temp_s0->unkC;
        phi_a2 = (bitwise s32) temp_s0->unk10;
        phi_a3 = (bitwise s32) temp_s0->unk14;
    } else {
        phi_a0 = 1;
        phi_a1 = (bitwise s32) temp_s0->unkC;
        phi_a2 = (bitwise s32) temp_s0->unk10;
        phi_a3 = (bitwise s32) temp_s0->unk14;
    }

    play_movement_dust_effects(phi_a0, phi_a1, phi_a2, phi_a3);
    temp_s1->unk40 = (f32) ((f64) temp_s1->unk40 / 1.5);
    temp_s0->unk144 = (f32) temp_s1->unk0;
    temp_s0->unk148 = (f32) temp_s1->unk4;
    temp_s0->unk14C = (f32) temp_s1->unk8;
    phi_return = 2;
    if (!((f64) temp_s1->unk40 < 1.0)) {
        phi_return = 0;
    }
    return phi_return;
}


INCLUDE_ASM(s32, "battle/partner/kooper_6F5E80", func_80238114_6F5F94);

INCLUDE_ASM(s32, "battle/partner/kooper_6F5E80", func_80238298_6F6118);

INCLUDE_ASM(s32, "battle/partner/kooper_6F5E80", func_802383C0_6F6240);
