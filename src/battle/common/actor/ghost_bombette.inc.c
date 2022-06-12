#include "sprite/npc/battle_bombette.h"

extern EvtScript N(bombette_init);
extern EvtScript N(bombette_takeTurn);
extern EvtScript N(bombette_idle);
extern EvtScript N(bombette_handleEvent);

s32 N(bombette_idleAnimations)[] = {
    STATUS_NORMAL, NPC_ANIM_battle_bombette_Palette_00_Anim_4,
    STATUS_STONE, NPC_ANIM_battle_bombette_Palette_00_Anim_0,
    STATUS_SLEEP, NPC_ANIM_battle_bombette_Palette_00_Anim_0,
    STATUS_POISON, NPC_ANIM_battle_bombette_Palette_00_Anim_4,
    STATUS_STOP, NPC_ANIM_battle_bombette_Palette_00_Anim_0,
    STATUS_STATIC, NPC_ANIM_battle_bombette_Palette_00_Anim_4,
    STATUS_PARALYZE, NPC_ANIM_battle_bombette_Palette_00_Anim_0,
    STATUS_DIZZY, NPC_ANIM_battle_bombette_Palette_00_Anim_1E,
    STATUS_FEAR, NPC_ANIM_battle_bombette_Palette_00_Anim_1E,
    STATUS_END,
};

s32 N(bombette_defenseTable)[] = {
    ELEMENT_NORMAL, 0,
    ELEMENT_END,
};

s32 N(bombette_statusTable)[] = {
    STATUS_NORMAL, 0,
    STATUS_DEFAULT, 0,
    STATUS_SLEEP, 60,
    STATUS_POISON, 0,
    STATUS_FROZEN, 0,
    STATUS_DIZZY, 75,
    STATUS_FEAR, 0,
    STATUS_STATIC, 0,
    STATUS_PARALYZE, 75,
    STATUS_SHRINK, 75,
    STATUS_STOP, 80,
    STATUS_DEFAULT_TURN_MOD, 0,
    STATUS_SLEEP_TURN_MOD, -1,
    STATUS_POISON_TURN_MOD, 0,
    STATUS_FROZEN_TURN_MOD, 0,
    STATUS_DIZZY_TURN_MOD, -1,
    STATUS_FEAR_TURN_MOD, 0,
    STATUS_STATIC_TURN_MOD, 0,
    STATUS_PARALYZE_TURN_MOD, 0,
    STATUS_SHRINK_TURN_MOD, 0,
    STATUS_STOP_TURN_MOD, -1,
    STATUS_END,
};

ActorPartBlueprint N(bombette_parts)[] = {
    {
        .flags = ACTOR_PART_FLAG_MULTI_TARGET,
        .index = 1,
        .posOffset = { 0, 0, 0 },
        .targetOffset = { 0, 22 },
        .opacity = 255,
        .idleAnimations = N(bombette_idleAnimations),
        .defenseTable = N(bombette_defenseTable),
        .eventFlags = 0,
        .elementImmunityFlags = 0,
        .unk_1C = -2,
        .unk_1D = -7,
    },
};

ActorBlueprint N(bombette) = {
    .flags = 0,
    .type = ACTOR_TYPE_GHOST_BOMBETTE,
    .level = 23,
    .maxHP = 15,
    .partCount = ARRAY_COUNT(N(bombette_parts)),
    .partsData = N(bombette_parts),
    .script = &N(bombette_init),
    .statusTable = N(bombette_statusTable),
    .escapeChance = 50,
    .airLiftChance = 80,
    .spookChance = 70,
    .baseStatusChance = 50,
    .upAndAwayChance = 95,
    .spinSmashReq = 0,
    .powerBounceChance = 90,
    .coinReward = 2,
    .size = { 30, 28 },
    .hpBarOffset = { 0, 0 },
    .statusIconOffset = { -10, 20 },
    .statusMessageOffset = { 10, 20 },
};

EvtScript N(bombette_init) = {
    EVT_CALL(BindTakeTurn, ACTOR_SELF, EVT_ADDR(N(bombette_takeTurn)))
    EVT_CALL(BindIdle, ACTOR_SELF, EVT_ADDR(N(bombette_idle)))
    EVT_CALL(BindHandleEvent, ACTOR_SELF, EVT_ADDR(N(bombette_handleEvent)))
    EVT_RETURN
    EVT_END
};

EvtScript N(bombette_idle) = {
    EVT_RETURN
    EVT_END
};

EvtScript N(bombette_playEffects) = {
    EVT_THREAD
        EVT_CALL(ShakeCam, 1, 0, 2, EVT_FLOAT(0.75))
        EVT_CALL(ShakeCam, 1, 0, 5, EVT_FLOAT(3.0))
        EVT_CALL(ShakeCam, 1, 0, 10, EVT_FLOAT(4.5))
        EVT_CALL(ShakeCam, 1, 0, 5, EVT_FLOAT(3.0))
    EVT_END_THREAD
    EVT_CALL(GetActorPos, ACTOR_SELF, LW(0), LW(1), LW(2))
    EVT_ADD(LW(2), 2)
    EVT_CALL(PlayEffect, EFFECT_SMOKE_RING, 0, LW(0), LW(1), LW(2), 0, 0, 0, 0, 0, 0, 0, 0, 0)
    EVT_ADD(LW(1), 20)
    EVT_ADD(LW(2), 2)
    EVT_CALL(PlayEffect, EFFECT_EXPLOSION, 0, LW(0), LW(1), LW(2), 0, 0, 0, 0, 0, 0, 0, 0, 0)
    EVT_CALL(PlaySoundAtActor, ACTOR_SELF, SOUND_BOMB_BLAST)
    EVT_RETURN
    EVT_END
};

EvtScript N(bombette_handleEvent) = {
    EVT_CALL(UseIdleAnimation, ACTOR_SELF, FALSE)
    EVT_CALL(EnableIdleScript, ACTOR_SELF, 0)
    EVT_CALL(GetLastEvent, ACTOR_SELF, LW(0))
    EVT_SWITCH(LW(0))
        EVT_CASE_EQ(EVENT_HIT_COMBO)
            EVT_SET_CONST(LW(0), 1)
            EVT_SET_CONST(LW(1), NPC_ANIM_battle_bombette_Palette_00_Anim_12)
            EVT_EXEC_WAIT(DoNormalHit)
        EVT_CASE_EQ(EVENT_HIT)
            EVT_SET_CONST(LW(0), 1)
            EVT_SET_CONST(LW(1), NPC_ANIM_battle_bombette_Palette_00_Anim_12)
            EVT_EXEC_WAIT(DoNormalHit)
            EVT_CALL(GetLastElement, LW(1))
            EVT_IF_FLAG(LW(1), DAMAGE_TYPE_ELECTRIC)
                EVT_CALL(SetAnimation, ACTOR_SELF, 1, NPC_ANIM_battle_bombette_Palette_00_Anim_13)
                EVT_WAIT_FRAMES(20)
                EVT_EXEC_WAIT(N(bombette_playEffects))
                EVT_EXEC_WAIT(N(OnDeath))
                EVT_CALL(UseBattleCamPreset, BTL_CAM_PRESET_C)
                EVT_SET_CONST(LW(0), 1)
                EVT_SET_CONST(LW(1), NPC_ANIM_battle_bombette_Palette_00_Anim_14)
                EVT_SET(LW(2), -12345)
                EVT_EXEC_WAIT(DoDeath)
                EVT_RETURN
            EVT_END_IF
        EVT_CASE_EQ(EVENT_BURN_HIT)
            EVT_SET_CONST(LW(0), 1)
            EVT_SET_CONST(LW(1), NPC_ANIM_battle_bombette_Palette_00_Anim_13)
            EVT_SET_CONST(LW(2), NPC_ANIM_battle_bombette_Palette_00_Anim_14)
            EVT_EXEC_WAIT(DoBurnHit)
            EVT_EXEC_WAIT(N(bombette_playEffects))
            EVT_EXEC_WAIT(N(OnDeath))
            EVT_SET_CONST(LW(0), 1)
            EVT_SET_CONST(LW(1), NPC_ANIM_battle_bombette_Palette_00_Anim_14)
            EVT_SET(LW(2), -12345)
            EVT_EXEC_WAIT(DoDeath)
            EVT_RETURN
        EVT_CASE_EQ(EVENT_BURN_DEATH)
            EVT_SET_CONST(LW(0), 1)
            EVT_SET_CONST(LW(1), NPC_ANIM_battle_bombette_Palette_00_Anim_13)
            EVT_SET_CONST(LW(2), NPC_ANIM_battle_bombette_Palette_00_Anim_14)
            EVT_EXEC_WAIT(DoBurnHit)
            EVT_EXEC_WAIT(N(bombette_playEffects))
            EVT_EXEC_WAIT(N(OnDeath))
            EVT_SET_CONST(LW(0), 1)
            EVT_SET_CONST(LW(1), NPC_ANIM_battle_bombette_Palette_00_Anim_14)
            EVT_SET(LW(2), -12345)
            EVT_EXEC_WAIT(DoDeath)
            EVT_RETURN
        EVT_CASE_EQ(EVENT_SPIN_SMASH_HIT)
            EVT_SET_CONST(LW(0), 1)
            EVT_SET_CONST(LW(1), NPC_ANIM_battle_bombette_Palette_00_Anim_12)
            EVT_EXEC_WAIT(DoSpinSmashHit)
        EVT_CASE_EQ(EVENT_SPIN_SMASH_DEATH)
            EVT_EXEC_WAIT(N(OnDeath))
            EVT_SET_CONST(LW(0), 1)
            EVT_SET_CONST(LW(1), NPC_ANIM_battle_bombette_Palette_00_Anim_12)
            EVT_EXEC_WAIT(DoSpinSmashHit)
            EVT_SET_CONST(LW(0), 1)
            EVT_SET_CONST(LW(1), NPC_ANIM_battle_bombette_Palette_00_Anim_12)
            EVT_EXEC_WAIT(DoDeath)
            EVT_RETURN
        EVT_CASE_OR_EQ(EVENT_SHOCK_HIT)
        EVT_CASE_OR_EQ(EVENT_SHOCK_DEATH)
            EVT_CALL(HPBarToCurrent, ACTOR_SELF)
            EVT_CALL(SetAnimation, ACTOR_SELF, 1, NPC_ANIM_battle_bombette_Palette_00_Anim_13)
            EVT_WAIT_FRAMES(20)
            EVT_EXEC_WAIT(N(bombette_playEffects))
            EVT_EXEC_WAIT(N(OnDeath))
            EVT_CALL(UseBattleCamPreset, BTL_CAM_PRESET_C)
            EVT_SET_CONST(LW(0), 1)
            EVT_SET_CONST(LW(1), NPC_ANIM_battle_bombette_Palette_00_Anim_14)
            EVT_SET(LW(2), -12345)
            EVT_EXEC_WAIT(DoDeath)
            EVT_RETURN
        EVT_END_CASE_GROUP
        EVT_CASE_OR_EQ(EVENT_UNKNOWN_TRIGGER)
        EVT_CASE_OR_EQ(EVENT_IMMUNE)
        EVT_CASE_OR_EQ(EVENT_AIR_LIFT_FAILED)
            EVT_SET_CONST(LW(0), 1)
            EVT_SET_CONST(LW(1), NPC_ANIM_battle_bombette_Palette_00_Anim_4)
            EVT_EXEC_WAIT(DoImmune)
        EVT_END_CASE_GROUP
        EVT_CASE_EQ(EVENT_DEATH)
            EVT_EXEC_WAIT(N(OnDeath))
            EVT_SET_CONST(LW(0), 1)
            EVT_SET_CONST(LW(1), NPC_ANIM_battle_bombette_Palette_00_Anim_12)
            EVT_EXEC_WAIT(DoNormalHit)
            EVT_WAIT_FRAMES(10)
            EVT_SET_CONST(LW(0), 1)
            EVT_SET_CONST(LW(1), NPC_ANIM_battle_bombette_Palette_00_Anim_12)
            EVT_EXEC_WAIT(DoDeath)
            EVT_RETURN
        EVT_CASE_EQ(EVENT_RECOVER_STATUS)
            EVT_SET_CONST(LW(0), 1)
            EVT_SET_CONST(LW(1), NPC_ANIM_battle_bombette_Palette_00_Anim_4)
            EVT_EXEC_WAIT(DoRecover)
        EVT_CASE_EQ(EVENT_SCARE_AWAY)
            EVT_SET_CONST(LW(0), 1)
            EVT_SET_CONST(LW(1), NPC_ANIM_battle_bombette_Palette_00_Anim_8)
            EVT_SET_CONST(LW(2), NPC_ANIM_battle_bombette_Palette_00_Anim_12)
            EVT_EXEC_WAIT(DoScareAway)
            EVT_RETURN
        EVT_CASE_EQ(EVENT_BEGIN_AIR_LIFT)
            EVT_SET_CONST(LW(0), 1)
            EVT_SET_CONST(LW(1), NPC_ANIM_battle_bombette_Palette_00_Anim_8)
            EVT_EXEC_WAIT(DoAirLift)
        EVT_CASE_EQ(EVENT_BLOW_AWAY)
            EVT_SET_CONST(LW(0), 1)
            EVT_SET_CONST(LW(1), NPC_ANIM_battle_bombette_Palette_00_Anim_12)
            EVT_EXEC_WAIT(DoBlowAway)
            EVT_RETURN
        EVT_CASE_DEFAULT
    EVT_END_SWITCH
    EVT_CALL(EnableIdleScript, ACTOR_SELF, 1)
    EVT_CALL(UseIdleAnimation, ACTOR_SELF, TRUE)
    EVT_RETURN
    EVT_END
};

#include "common/UnkActorPosFunc.inc.c"

EvtScript N(bombette_takeTurn) = {
    EVT_CALL(UseIdleAnimation, ACTOR_SELF, FALSE)
    EVT_CALL(EnableIdleScript, ACTOR_SELF, 0)
    EVT_WAIT_FRAMES(10)
    EVT_CALL(UseBattleCamPreset, BTL_CAM_PRESET_63)
    EVT_CALL(BattleCamTargetActor, ACTOR_SELF)
    EVT_CALL(SetTargetActor, ACTOR_SELF, ACTOR_PLAYER)
    EVT_CALL(SetGoalToTarget, ACTOR_SELF)
    EVT_CALL(AddGoalPos, ACTOR_SELF, 40, 0, 0)
    EVT_CALL(MoveBattleCamOver, 30)
    EVT_CALL(SetAnimation, ACTOR_SELF, 1, NPC_ANIM_battle_bombette_Palette_00_Anim_8)
    EVT_CALL(RunToGoal, ACTOR_SELF, 30, FALSE)
    EVT_CALL(SetAnimation, ACTOR_SELF, 1, NPC_ANIM_battle_bombette_Palette_00_Anim_4)
    EVT_CALL(SetAnimation, ACTOR_SELF, 1, NPC_ANIM_battle_bombette_Palette_00_Anim_F)
    EVT_WAIT_FRAMES(15)
    EVT_CALL(SetActorSounds, ACTOR_SELF, 0, 0, 0)
    EVT_CALL(PlaySoundAtActor, ACTOR_SELF, SOUND_2020)
    EVT_CALL(EnemyTestTarget, ACTOR_SELF, LW(0), 0, 0, 1, BS_FLAGS1_10)
    EVT_SWITCH(LW(0))
        EVT_CASE_OR_EQ(HIT_RESULT_MISS)
        EVT_CASE_OR_EQ(HIT_RESULT_LUCKY)
            EVT_SET(LW(10), LW(0))
            EVT_CALL(SetGoalToTarget, ACTOR_SELF)
            EVT_CALL(AddGoalPos, ACTOR_SELF, -10, 0, 0)
            EVT_CALL(SetAnimation, ACTOR_SELF, 1, NPC_ANIM_battle_bombette_Palette_00_Anim_10)
            EVT_CALL(RunToGoal, ACTOR_SELF, 5, FALSE)
            EVT_CALL(SetAnimation, ACTOR_SELF, 1, NPC_ANIM_battle_bombette_Palette_00_Anim_4)
            EVT_THREAD
                EVT_CALL(SetActorRotationOffset, ACTOR_SELF, 0, 15, 0)
                EVT_SET(LW(0), 0)
                EVT_LOOP(10)
                    EVT_ADD(LW(0), 72)
                    EVT_CALL(SetActorRotation, ACTOR_SELF, 0, 0, LW(0))
                    EVT_WAIT_FRAMES(1)
                EVT_END_LOOP
                EVT_CALL(SetActorRotationOffset, ACTOR_SELF, 0, 0, 0)
            EVT_END_THREAD
            EVT_CALL(AddGoalPos, ACTOR_SELF, -60, 0, 0)
            EVT_CALL(RunToGoal, ACTOR_SELF, 10, FALSE)
            EVT_CALL(SetAnimation, ACTOR_SELF, 1, NPC_ANIM_battle_bombette_Palette_00_Anim_4)
            EVT_THREAD
                EVT_CALL(N(UnkActorPosFunc))
            EVT_END_THREAD
            EVT_IF_EQ(LW(10), HIT_RESULT_LUCKY)
                EVT_CALL(EnemyTestTarget, ACTOR_SELF, LW(0), DAMAGE_TYPE_TRIGGER_LUCKY, 0, 0, 0)
            EVT_END_IF
            EVT_WAIT_FRAMES(20)
            EVT_CALL(UseBattleCamPreset, BTL_CAM_PRESET_C)
            EVT_CALL(YieldTurn)
            EVT_CALL(SetAnimation, ACTOR_SELF, 1, NPC_ANIM_battle_bombette_Palette_00_Anim_8)
            EVT_CALL(SetGoalToHome, ACTOR_SELF)
            EVT_CALL(SetActorSpeed, ACTOR_SELF, EVT_FLOAT(5.0))
            EVT_CALL(RunToGoal, ACTOR_SELF, 0, FALSE)
            EVT_CALL(EnableIdleScript, ACTOR_SELF, 1)
            EVT_CALL(UseIdleAnimation, ACTOR_SELF, TRUE)
            EVT_RETURN
        EVT_END_CASE_GROUP
    EVT_END_SWITCH
    EVT_SET(LW(10), LW(0))
    EVT_CALL(SetGoalToTarget, ACTOR_SELF)
    EVT_CALL(SetAnimation, ACTOR_SELF, 1, NPC_ANIM_battle_bombette_Palette_00_Anim_10)
    EVT_CALL(RunToGoal, ACTOR_SELF, 4, FALSE)
    EVT_CALL(GetActorVar, ACTOR_SELF, 1, LW(9))
    EVT_SWITCH(LW(9))
        EVT_CASE_EQ(0)
            EVT_WAIT_FRAMES(2)
            EVT_CALL(EnemyDamageTarget, ACTOR_SELF, LW(0), 0, 0, 0, 2, BS_FLAGS1_SP_EVT_ACTIVE)
        EVT_CASE_EQ(1)
            EVT_WAIT_FRAMES(2)
            EVT_CALL(EnemyDamageTarget, ACTOR_SELF, LW(0), 0, 0, 0, 3, BS_FLAGS1_SP_EVT_ACTIVE)
        EVT_CASE_EQ(2)
            EVT_WAIT_FRAMES(2)
            EVT_CALL(EnemyDamageTarget, ACTOR_SELF, LW(0), 0, 0, 0, 5, BS_FLAGS1_SP_EVT_ACTIVE)
    EVT_END_SWITCH
    EVT_SWITCH(LW(0))
        EVT_CASE_OR_EQ(HIT_RESULT_HIT)
        EVT_CASE_OR_EQ(HIT_RESULT_QUAKE_IMMUNE)
            EVT_CALL(SetAnimation, ACTOR_SELF, 1, NPC_ANIM_battle_bombette_Palette_00_Anim_4)
            EVT_CALL(UseBattleCamPreset, BTL_CAM_PRESET_C)
            EVT_CALL(MoveBattleCamOver, 8)
            EVT_CALL(SetAnimation, ACTOR_SELF, 1, NPC_ANIM_battle_bombette_Palette_00_Anim_11)
            EVT_CALL(GetGoalPos, ACTOR_SELF, LW(0), LW(1), LW(2))
            EVT_ADD(LW(0), 40)
            EVT_SET(LW(1), 0)
            EVT_CALL(SetActorJumpGravity, ACTOR_SELF, EVT_FLOAT(1.4))
            EVT_CALL(SetGoalPos, ACTOR_SELF, LW(0), LW(1), LW(2))
            EVT_CALL(JumpToGoal, ACTOR_SELF, 20, FALSE, TRUE, FALSE)
            EVT_CALL(SetAnimation, ACTOR_SELF, 1, NPC_ANIM_battle_bombette_Palette_00_Anim_E)
            EVT_WAIT_FRAMES(1)
            EVT_CALL(SetAnimation, ACTOR_SELF, 1, NPC_ANIM_battle_bombette_Palette_00_Anim_11)
            EVT_ADD(LW(0), 40)
            EVT_CALL(SetGoalPos, ACTOR_SELF, LW(0), LW(1), LW(2))
            EVT_CALL(JumpToGoal, ACTOR_SELF, 8, FALSE, TRUE, FALSE)
            EVT_CALL(SetAnimation, ACTOR_SELF, 1, NPC_ANIM_battle_bombette_Palette_00_Anim_E)
            EVT_WAIT_FRAMES(1)
            EVT_CALL(SetAnimation, ACTOR_SELF, 1, NPC_ANIM_battle_bombette_Palette_00_Anim_11)
            EVT_ADD(LW(0), 20)
            EVT_CALL(SetGoalPos, ACTOR_SELF, LW(0), LW(1), LW(2))
            EVT_CALL(JumpToGoal, ACTOR_SELF, 6, FALSE, TRUE, FALSE)
            EVT_CALL(SetAnimation, ACTOR_SELF, 1, NPC_ANIM_battle_bombette_Palette_00_Anim_E)
            EVT_WAIT_FRAMES(1)
            EVT_CALL(SetAnimation, ACTOR_SELF, 1, NPC_ANIM_battle_bombette_Palette_00_Anim_11)
            EVT_ADD(LW(0), 10)
            EVT_CALL(SetGoalPos, ACTOR_SELF, LW(0), LW(1), LW(2))
            EVT_CALL(JumpToGoal, ACTOR_SELF, 4, FALSE, TRUE, FALSE)
            EVT_CALL(SetAnimation, ACTOR_SELF, 1, NPC_ANIM_battle_bombette_Palette_00_Anim_E)
            EVT_WAIT_FRAMES(1)
            EVT_CALL(SetAnimation, ACTOR_SELF, 1, NPC_ANIM_battle_bombette_Palette_00_Anim_4)
            EVT_WAIT_FRAMES(8)
            EVT_CALL(YieldTurn)
            EVT_CALL(SetAnimation, ACTOR_SELF, 1, NPC_ANIM_battle_bombette_Palette_00_Anim_8)
            EVT_CALL(SetGoalToHome, ACTOR_SELF)
            EVT_CALL(SetActorSpeed, ACTOR_SELF, EVT_FLOAT(5.0))
            EVT_CALL(RunToGoal, ACTOR_SELF, 0, FALSE)
        EVT_END_CASE_GROUP
    EVT_END_SWITCH
    EVT_CALL(EnableIdleScript, ACTOR_SELF, 1)
    EVT_CALL(UseIdleAnimation, ACTOR_SELF, TRUE)
    EVT_RETURN
    EVT_END
};