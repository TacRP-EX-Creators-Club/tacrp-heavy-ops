SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "SSK .950 JDJ"
SWEP.Category = "Tactical RP (Special)"

SWEP.SubCatTier = "9Special"
SWEP.SubCatType = "9Equipment"

SWEP.Description = "Absoultely, unfathomly large rifle shooting an absolutely ludicrous round. The extreme heft of this behemoth means you have to stand still to aim it."
SWEP.Description_Quote = "\"Sporting purpose\" my ass."

SWEP.Trivia_Caliber = ".950 JDJ"
SWEP.Trivia_Manufacturer = "SSK Industries"
SWEP.Trivia_Year = "2006"

SWEP.Faction = TacRP.FACTION_NEUTRAL
SWEP.Credits = "Assets: Toby Burnside\nSource: Fallout 4: New Vegas Project"

SWEP.ViewModel = "models/weapons/tacint_shark/v_950jdj.mdl"
SWEP.WorldModel = "models/weapons/tacint_extras/w_hecate.mdl"

SWEP.Slot = 4
SWEP.SlotAlt = 5

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Range_Min = 700,
        Range_Max = 5000,

        MoveSpeedMult = 0.65,
        ShootingSpeedMult = 0.25,
        MeleeSpeedMult = 1,
        ReloadSpeedMult = 1,
    },
    [TacRP.BALANCE_TTT] = { // this is a buyable weapon in TTT
        Range_Min = 500,
        Range_Max = 5000,

        Penetration = 75,
        RecoilDissipationRate = 0.5,
        ShootingSpeedMult = 0.25,
        MeleeSpeedMult = 1,
    },
    [TacRP.BALANCE_PVE] = {
		Description = "Absoultely, unfathomly large rifle shooting an absolutely ludicrous round. The extreme heft severely inhibits movement.",
		
        Range_Min = 4000,
        Range_Max = 8000,

        MoveSpeedMult = 0.6,
        ShootingSpeedMult = 0.4,
        SightedSpeedMult = 0.15,
        MeleeSpeedMult = 1,
        ReloadSpeedMult = 1,
    },
}

// "ballistics"

SWEP.Damage_Max = 300 // damage at minimum range
SWEP.Damage_Min = 175 // damage at maximum range
SWEP.Range_Min = 1500 // distance for which to maintain maximum damage
SWEP.Range_Max = 9000 // distance at which we drop to minimum damage
SWEP.Penetration = 40 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 1.5
SWEP.ArmorBonus = 5

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 5, // nobody is surviving this
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.75,
    [HITGROUP_RIGHTARM] = 0.75,
    [HITGROUP_LEFTLEG] = 0.5,
    [HITGROUP_RIGHTLEG] = 0.5,
    [HITGROUP_GEAR] = 0.5
}

SWEP.MuzzleVelocity = 30000

SWEP.ShootTimeMult = 1.35

// misc. shooting

SWEP.Firemode = 1

SWEP.FiremodeName = "Single Shot" // only used externally for firemode name distinction

SWEP.RPM = 50

SWEP.Spread = 0.003

SWEP.HipFireSpreadPenalty = 0.06
SWEP.PeekPenaltyFraction = 0.2

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 1
SWEP.RecoilResetTime = 1.25
SWEP.RecoilDissipationRate = 0.9
SWEP.RecoilFirstShotMult = 1
SWEP.RecoilCrouchMult = 1

SWEP.RecoilVisualKick = 30
SWEP.RecoilKick = 50
SWEP.RecoilStability = 0

SWEP.RecoilSpreadPenalty = 0.25

SWEP.CanBlindFire = false

// handling

SWEP.MoveSpeedMult = 0.5
SWEP.ShootingSpeedMult = 0.1
SWEP.SightedSpeedMult = 0

SWEP.ReloadSpeedMult = 0.25

SWEP.AimDownSightsTime = 0.8
SWEP.SprintToFireTime = 1

SWEP.Sway = 2.5
SWEP.ScopedSway = 0.3

SWEP.FreeAimMaxAngle = 12

SWEP.Bipod = true
SWEP.BipodRecoil = 0.75
SWEP.BipodKick = 0.15

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_CROSSBOW
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SMG1

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(2, -2, -6)

SWEP.CustomizeAng = Angle(45, 15, 0)
SWEP.CustomizePos = Vector(12, 0, -9)

SWEP.BlindFireAng = Angle(0, 15, -60)
SWEP.BlindFirePos = Vector(1, -2, -1)

SWEP.BlindFireLeftAng = Angle(75, 0, 0)
SWEP.BlindFireLeftPos = Vector(8, 10, -6)

SWEP.BlindFireRightAng = Angle(-75, 0, 0)
SWEP.BlindFireRightPos = Vector(-8, 12, -4)

SWEP.BlindFireSuicideAng = Angle(0, 135, 0)
SWEP.BlindFireSuicidePos = Vector(-4, 44, -35)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -4)

SWEP.SightAng = Angle(0.02, 0.11, 0)
SWEP.SightPos = Vector(-3.835, -7.5, -4.07)

SWEP.CorrectivePos = Vector(0.21, 0, 0.1)
SWEP.CorrectiveAng = Angle(0, 0, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK2
SWEP.HolsterPos = Vector(5, 6, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// scope

SWEP.Scope = true
SWEP.ScopeOverlay = Material("tacrp/scopes/sniper.png", "mips smooth") // Material("path/to/overlay")
SWEP.ScopeFOV = 90 / 10
SWEP.ScopeLevels = 1 // 2 = like CS:S
SWEP.ScopeHideWeapon = true
SWEP.ScopeOverlaySize = 0.75

// reload

SWEP.ClipSize = 1
SWEP.Ammo = "357"
SWEP.AmmoTTT = "ti_sniper"

SWEP.ReloadTimeMult = 2
SWEP.ReloadUpInTime = 1.5


// sounds

local path = "tacint_shark/950jdj/"

SWEP.Sound_Shoot = "^" .. path .. "shoot.wav"
SWEP.Sound_Shoot_Silenced = "TacRP/weapons/ak47/ak47_fire_silenced-1.wav"

SWEP.Vol_Shoot = 130
SWEP.ShootPitchVariance = 1 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1

SWEP.MuzzleEffect = "muzzleflash_1"

// anims

SWEP.AnimationTranslationTable = {
    ["deploy"] = "unholster",
    ["fire"] = "shoot1",
    ["blind_idle"] = "idle",
    ["blind_fire"] = "shoot1",
    ["reload"] = "reload",
}

SWEP.BulletBodygroups = {
    [1] = {4, 1},
}

// attachments

SWEP.AttachmentElements = {
    ["optic"] = {
        BGs_VM = {
            {1, 1}
        },
        BGs_WM = {
            {1, 1}
        },
    },
}

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"optic_cqb", "optic_medium", "optic_sniper"},
        WMBone = "Box01",
        Bone = "SPR_root",
        AttachSound = "TacRP/weapons/optic_on.wav",
        DetachSound = "TacRP/weapons/optic_off.wav",
        InstalledElements = {"optic"},
        VMScale = 0.9,
        Pos_VM = Vector(-4.8, 0, 15),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(0, 5.5, 2.2),
        Ang_WM = Angle(0, -90, 0),
    },
    [3] = {
        PrintName = "Tactical",
        Category = "tactical",
        WMBone = "Box01",
        Bone = "SPR_root",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        InstalledElements = {"tactical"},
        Pos_VM = Vector(-3.2, -0.9, 32),
        Ang_VM = Angle(90, 0, 270),
        Pos_WM = Vector(0, 23.75, -2),
        Ang_WM = Angle(0, -90, 180),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_sling", "acc_duffle", "acc_bipod"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [5] = {
        PrintName = "Bolt",
        Category = {"bolt_manual"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [6] = {
        PrintName = "Trigger",
        Category = {"trigger_manual"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [7] = {
        PrintName = "Ammo",
        Category = {"ammo_amr"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [8] = {
        PrintName = "Perk",
        Category = {"perk", "perk_melee", "perk_shooting", "perk_reload"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
}

local function addsound(name, spath)
    sound.Add({
        name = name,
        channel = 16,
        volume = 1.0,
        sound = spath
    })
end

addsound("tacint_950jdj.Bolt_Back", path .. "reload_eject.wav")
addsound("tacint_950jdj.bolt_Forward", path .. "reload_shut.wav")
addsound("tacint_950jdj.Load", path .. "reload_rounddeploy.wav")

--if engine.ActiveGamemode() == "terrortown" then
  --  SWEP.AutoSpawnable = false
    --SWEP.Kind = WEAPON_HEAVY
    --SWEP.CanBuy = { ROLE_TRAITOR, ROLE_DETECTIVE }
    --SWEP.EquipMenuData = {
        --type = "Weapon",
        --desc = "Heavy bolt-action anti-materiel rifle.\nComes with 10 rounds.\n\nBEWARE: May be visible while holstered!",
    --}

    --function SWEP:TTTBought(buyer)
      --  buyer:GiveAmmo(3, "ti_sniper")
    --end
--end