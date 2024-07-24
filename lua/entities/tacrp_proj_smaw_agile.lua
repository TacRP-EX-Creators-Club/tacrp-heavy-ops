AddCSLuaFile()

ENT.Base                     = "tacrp_proj_smaw"
ENT.PrintName                = "SMAW Agile Rocket"
ENT.Spawnable                = false

ENT.Model                    = "models/weapons/tacint/rocket_deployed.mdl"

ENT.IsRocket = true // projectile has a booster and will not drop.

ENT.InstantFuse = true // projectile is armed immediately after firing.
ENT.RemoteFuse = false // allow this projectile to be triggered by remote detonator.
ENT.ImpactFuse = true // projectile explodes on impact.

ENT.ExplodeOnDamage = true
ENT.ExplodeUnderwater = true
ENT.ExplodeOnImpact = true

ENT.Delay = 6
ENT.SafetyFuse = 0.2

ENT.AudioLoop = "TacRP/weapons/rpg7/rocket_flight-1.wav"

ENT.SmokeTrail = true

ENT.FlareColor = Color(75, 255, 155)
ENT.FlareSizeMin = 64
ENT.FlareSizeMax = 72

ENT.SteerSpeed = 250
ENT.SteerDelay = 0.3

ENT.MaxSpeed = 3000
ENT.MinSpeed = 1500
ENT.Acceleration = -700
ENT.SteerBrake = -2000

ENT.ExplodeSounds = {
    "^TacRP/weapons/grenade/40mm_explode-1.wav",
    "^TacRP/weapons/grenade/40mm_explode-2.wav",
    "^TacRP/weapons/grenade/40mm_explode-3.wav",
}

DEFINE_BASECLASS(ENT.Base)

function ENT:Detonate()
    local attacker = self.Attacker or self:GetOwner()

    if self.NPCDamage then
        util.BlastDamage(self, attacker, self:GetPos(), 256, 35)
    else
        util.BlastDamage(self, attacker, self:GetPos(), 256, 70)
    end

    local fx = EffectData()
    fx:SetOrigin(self:GetPos())
    util.Effect("HelicopterMegaBomb", fx)

    self:EmitSound(self.ExplodeSounds[math.random(1, #self.ExplodeSounds)], 100, 90)

    self:Remove()
end