#include "kmr_12.h"
#include "message_ids.h"
#include "sprite/npc/goomba.h"

Script N(ExitWest) = EXIT_WALK_SCRIPT(60, 0, "kmr_07", 1);
Script N(ExitEast) = EXIT_WALK_SCRIPT(60, 1, "kmr_11", 0);

Script N(BindExits) = SCRIPT({
    bind N(ExitWest) to TriggerFlag_FLOOR_ABOVE 0; // deili1
    bind N(ExitEast) to TriggerFlag_FLOOR_ABOVE 3; // deili2
});

Script N(Main) = SCRIPT({
    WORLD_LOCATION = 31;
    SetSpriteShading(-1);
    SetCamPerspective(0, 3, 25, 16, 4096);
    SetCamBGColor(0, 0, 0, 0);
    SetCamEnabled(0, 1);
    MakeNpcs(0, N(npcGroupList));
    await N(MakeEntities);
    spawn N(PlayMusic);
    SI_VAR(0) = N(BindExits);
    spawn EnterWalk;
    sleep 1;
    bind N(ReadWestSign) to TriggerFlag_WALL_INTERACT 10;
});

NpcAISettings N(goombaAISettings) = {
    .moveSpeed = 1.5f,
    .moveTime = 30,
    .waitTime = 30,
    .alertRadius = 130.0f,
    .unk_10 = 0.0f,
    .unk_14 = 1,
    .chaseSpeed = 2.5f,
    .unk_1C = 180,
    .unk_20 = 3,
    .chaseRadius = 150.0f,
    .unk_28 = 0.0f,
    .unk_2C = TRUE,
};

Script N(GoombaAI) = SCRIPT({
    DoBasicAI(N(goombaAISettings));
});

NpcSettings N(goombaNpcSettings) = {
    .height = 20,
    .radius = 23,
    .ai = &N(GoombaAI),
    .onHit = &EnemyNpcHit,
    .onDefeat = &EnemyNpcDefeat,
    .level = 5,
};

/// @bug Never returns
Script N(ReadWestSign) = SCRIPT({
    group 0;

    // "Eat a Mushroom to regain your energy!"
    suspend group 1;
    DisablePlayerInput(TRUE);
    ShowMessageAtScreenPos(MSG_kmr_12_sign_trap, 160, 40);
    resume group 1;

    SI_FLAG(0) = FALSE;
    GetGoomba();
    if (SI_VAR(0) != FALSE) {
        GetNpcVar(NpcId_GOOMBA, 0, SI_VAR(0));
        if (SI_VAR(0) == FALSE) {
            // Trigger Goomba to peel off
            SetNpcVar(NpcId_GOOMBA, 0, TRUE);
            SI_FLAG(0) = TRUE;
            sleep 10;
        }
    }
    DisablePlayerInput(FALSE);
    if (SI_FLAG(0) == TRUE) {
        unbind;
    }

    break;
    return;
});

Script N(GoombaIdle) = SCRIPT({
    sleep 1;

    SetSelfVar(0, FALSE);
    SetNpcAnimation(NpcId_SELF, NPC_ANIM(goomba, normal, fake_mushroom)); // TODO: work out why palette 0 is used here
    EnableNpcShadow(NpcId_SELF, FALSE);
    SetSelfEnemyFlagBits(0x00000020, TRUE);

    // Wait until read_sign sets NPC var 0
    loop {
        GetSelfVar(0, SI_VAR(0));
        sleep 1;
    } until(SI_VAR(0) == FALSE)

    // Peel and jump off the sign
    SetNpcFlagBits(NpcId_SELF, 0x00240000, TRUE);
    sleep 3;
    SI_VAR(0) = 0.0;
    loop 9 {
        SI_VAR(0) += 10.0;
        SetNpcRotation(NpcId_SELF, 0, SI_VAR(0), 0);
        sleep 1;
    }
    SetNpcAnimation(NpcId_SELF, NPC_ANIM(goomba, normal, still));
    loop 9 {
        SI_VAR(0) += 10.0;
        SetNpcRotation(NpcId_SELF, 0, SI_VAR(0), 0);
        sleep 1;
    }
    SetNpcAnimation(NpcId_SELF, NPC_ANIM(goomba, normal, dizzy));
    sleep 20;
    SetNpcAnimation(NpcId_SELF, NPC_ANIM(goomba, normal, idle));
    PlaySoundAtNpc(NpcId_SELF, 248, 0);
    func_802CFE2C(NpcId_SELF, 8192);
    func_802CFD30(NpcId_SELF, 5, 6, 1, 1, 0);
    sleep 12;
    sleep 5;
    PlaySoundAtNpc(NpcId_SELF, 812, 0);
    EnableNpcShadow(NpcId_SELF, TRUE);
    SetNpcJumpscale(NpcId_SELF, 0.6005859375);
    NpcJump0(NpcId_SELF, -35, 0, 30, 23);
    func_802CFD30(NpcId_SELF, 0, 0, 0, 0, 0);
    InterpNpcYaw(NpcId_SELF, 90, 0);
    SetNpcFlagBits(NpcId_SELF, 0x00240000, FALSE);
    SetSelfEnemyFlagBits(0x00000020, FALSE);
    SetSelfEnemyFlagBits(0x40000000, TRUE);

    // We're done jumping off; the player can read the sign again
    bind N(ReadWestSign) to TriggerFlag_WALL_INTERACT 10;

    // Behave like a normal enemy from now on
    BindNpcAI(NpcId_SELF, N(GoombaAI));
});

Script N(GoombaInit) = SCRIPT({
    BindNpcIdle(NpcId_SELF, N(GoombaIdle));
});

StaticNpc N(goombaNpc) = {
    .id = NpcId_GOOMBA,
    .settings = &N(goombaNpcSettings),
    .pos = { -33.0f, 30.0f, -25.0f },
    .flags = 0x00000C00,
    .init = N(GoombaInit),
    .yaw = 90,
    .dropFlags = 0x80,
    .itemDropChance = 5,
    .itemDrops = { { ItemId_MUSHROOM, 10 } },
    .heartDrops = GENEROUS_WHEN_LOW_HEART_DROPS(2),
    .flowerDrops = GENEROUS_WHEN_LOW_FLOWER_DROPS(2),
    .movement = {
        // Wander
        /* center x, y, z */ -33, 0, 30,
        /* size x, z */ 40, 20,
        /* speed */ NO_OVERRIDE_MOVEMENT_SPEED,
        /* box? */ TRUE,

        // Detect
        /* center x, y, z */ 200, 0, 0,
        /* size x, z */ 400, 60,
        /* box? */ TRUE,

        /* flying? */ TRUE,
    },
    .animations = {
        NPC_ANIM(goomba, normal, idle),
        NPC_ANIM(goomba, normal, walk),
        NPC_ANIM(goomba, normal, run),
        NPC_ANIM(goomba, normal, run),
        NPC_ANIM(goomba, normal, idle),
        NPC_ANIM(goomba, normal, idle),
        NPC_ANIM(goomba, normal, pain),
        NPC_ANIM(goomba, normal, pain),
        NPC_ANIM(goomba, normal, run),
        NPC_ANIM(goomba, normal, run),
        NPC_ANIM(goomba, normal, run),
        NPC_ANIM(goomba, normal, run),
        NPC_ANIM(goomba, normal, run),
        NPC_ANIM(goomba, normal, run),
        NPC_ANIM(goomba, normal, run),
        NPC_ANIM(goomba, normal, run),
    },
};

NpcGroupList N(npcGroupList) = {
    NPC_GROUP(N(goombaNpc), BATTLE_ID(1, 0, 3)),
    {},
};

Script N(ReadEastSign) = SCRIPT({
    IsStartingConversation($a);
    if ($a == 1) {
        return;
    }

    group 0;

    func_802D5830(1);
    DisablePlayerInput(1);
    ShowMessageAtScreenPos(MSG_kmr_12_sign_to_fortress, 160, 40);
    DisablePlayerInput(0);
    func_802D5830(0);
});

Script N(MakeEntities) = SCRIPT({
    MakeEntity(0x802EAFDC, 436, 0, -42, 0, 0x80000000);
    AssignScript(N(ReadEastSign));
});
