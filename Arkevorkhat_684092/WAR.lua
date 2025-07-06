local smart = gFunc.LoadFile('smart.lac/smart.lua')
gFunc.LoadFile('common')
if not smart then 
    print('failed to load smart')
    return nil 
end

local JSE = T{
    Artifact = {},
    Relic = T{
        Head = "Agoge Mask",
    },
    Empyrean = T{}
}

local capes = T{
    TP = {Name = "Cichol's Mantle", Augment = {"\"Dbl.Atk.\"+10"}},
    Savage = {Name = "Cichol's Mantle", Augment = {"STR+12", "Weapon skill damage+10%"}}
}

local sets = T{
    general = T{
        Idle = T{
            Head = "Nyame Helm",
            Neck = "Bathy Choker +1",
            Ear1 = "Eabani Earring",
            Ear2 = "Boii Earring +1",
            Body = "Sakpata's Plate",
            Hands = "Sakpata's Gauntlets",
            Ring1 = "Defending Ring",
            Ring2 = "Shneddick Ring",
            Back = capes.TP,
            Waist = "Sailfi Belt +1",
            Legs = "Sakpata's Cuisses",
            Feet = "Nyame Sollerets"
        },
        Engaged = {
            Ammo = "Coiste Bodhar",
            Head = Odyssey.Sakpata.Head,
            Neck = "Warrior's Beads",
            Ear1 = "Cessance Earring",
            Ear2 = "Boii Earring +1",
            Body = Odyssey.Sakpata.Body,
            Hands = Odyssey.Sakpata.Hands,
            Ring1 = "Niqmaddu Ring",
            Ring2 = "Regal Ring",
            Back = capes.TP,
            Waist = "Sailfi Belt +1",
            Legs = Odyssey.Sakpata.Legs,
            Feet = Ambuscade.Flamma.Feet
        }
    },
    weaponskill = T{
        default = T{
            Ammo = "Knobkierrie",
            Head = "Nyame Helm",
            Neck = "Rep. Plat. Medal",
            Ear1 = "Moonshade Earring",
            Ear2 = "Ishvara Earring",
            Body = "Nyame Mail",
            Hands = "Nyame Gauntlets",
            --Ring1 = "Cornelia's Ring",
            Ring2 = "Regal Ring",
            Back = capes.Savage,
            Waist = "Fotia Belt",
            Legs = "Nyame Flanchard",
            Feet = "Nyame Sollerets"
        }
    },
    ability = T{
        default = T{},
        Warcry = {
            Head = JSE.Relic.Head
        }
    }
}

modes.enableWeaponGroups()

modes.registerWeaponGroup('gAxe', {
    Main = "Devivifier",
    Sub = "Alber Strap",
    constraints = {
        Constraint.HasSubjob('SAM')
    }
})

modes.registerWeaponGroup('gSword', {
    Main = "Agwu's Claymore",
    Sub = "Alber Strap",
    constraints = {
        Constraint.HasSubjob('SAM')
    }
})

modes.registerWeaponGroup('Polearm', {
    Main = "Shining One",
    Sub = "Alber Strap",
    constraints = {
        Constraint.HasSubjob('SAM')
    }
})
modes.registerWeaponGroup('Slashing Fencer', {
    Main = "Naegling",
    Sub = "Blurred Shield +1",
    constraints = T{
        Constraint.Invert(Constraint.HasSubjob('SAM')),
        Constraint.Invert(Constraint.HasDualWield)
    }
})
-- modes.registerWeaponGroup('Blunt Fencer', {

-- })
modes.registerWeaponGroup('Slashing Dual-Wield', {
    Main = "Naegling",
    Sub = "Demers. Degen +1",
    constraints = {
        Constraint.HasDualWield
    }
})
modes.registerWeaponGroup('Blunt Dual-Wield', {
    Main = "Loxotic Mace +1",
    Sub = "Demers. Degen +1",
    constraints = {
        Constraint.HasDualWield
    }
})

modes.enableOverrideLayers()

modes.registerOverride('highAcc', {
    general = T{
        Engaged = T{
            Ammo = "Coiste Bodhar",
            Head = Ambuscade.Flamma.Head,
            Neck = "Null Loop",
            Ear1 = "Mache Earring +1",
            Ear2 = "Boii Earring +1",
            Body = Odyssey.Sakpata.Body,
            Hands = Odyssey.Sakpata.Hands,
            Ring1 = "Regal Ring",
            Ring2 = Ambuscade.Flamma.Ring,
            Back = capes.TP,
            Waist = "Sailfi Belt +1",
            Legs = Odyssey.Sakpata.Legs,
            Feet = Ambuscade.Flamma.Feet
        }
    },
    weaponskill = T{
        default = T{
            Neck = "Null Loop",
            Ear2 = "Mache Earring +1",
            Ring2 = "Regal Ring",
            Waist = "Eschan Stone"
        }
    }
})

modes.registerOverride('attack capped', {
    weaponskill = T{
        default = T{
            Ammo = "Crepuscular Pebble"
        }
    }
})

return smart(sets)