local smart = gFunc.LoadFile('smart.lac/smart.lua')
gFunc.LoadFile('common')
if not smart or not modes then return nil end

local JSE = T{
    ---@type set
    Artifact = T{
        Head = "Rune. Bandeau +2",
        Body = "Runeist Coat +2",
        Hands = "Runeist Mitons +1",
        Legs = "Runeist Trousers",
        Feet = "Runeist Bottes"
    },
    ---@type set
    Relic = T{
        Head = "Fu. Bandeau +1",
        Body = "Futhark Coat",
        Hands = "Futhark Mitons +1",
        Legs = "Futhark Trousers +1",
        Feet = "Futhark Boots"
    },
    ---@type set
    Empyrean = T{
        Head = "Erilaz Galea +2",
        Body = "Erilaz Surcoat +2",
        Hands = "",
        Legs = "Eri. Leg Guards +2",
        Feet = "Erilaz Greaves +2"
    },
    Capes = T{
        Evasionist = "Evasionist's Cape",
        Ogma = T{
            Enmity = { Name = 'Ogma\'s Cape', Augment = { 'Enmity+10', 'Evasion+20' } },
            TP = { Name = 'Ogma\'s Cape', Augment = {'"Dbl.Atk."+10'}},
            Fast_Cast = {Name = "Ogma's Cape", Augment = {'"Fast Cast"+10'}}
        }
    },
    Accessories = T{
        Earring = "Erilaz Earring +1",
    }
}

local sets = T{
    general = T{
        Idle = T{
            Ammo = "Crepuscular Pebble",
            Head = Nyame.Head,
            Neck = "Null Loop",
            Ear1 = "Ethereal Earring",
            Ear2 = "Odnowa Earring +1",
            Body = JSE.Empyrean.Body,
            Hands = Nyame.Hands,
            Ring1 = "Moonbeam Ring",
            Ring2 = "Shneddick Ring",
            Back = JSE.Capes.Ogma.Enmity,
            Waist = "Plat. Mog. Belt",
            Legs = JSE.Empyrean.Legs,
            Feet = JSE.Empyrean.Feet,
        },
        Engaged = T{
            Ammo = "Crepuscular Pebble",
            Head = Nyame.Head,
            Neck = "Null Loop",
            Ear1 = "Ethereal Earring",
            Ear2 = "Odnowa Earring +1",
            Body = JSE.Empyrean.Body,
            Hands = Nyame.Hands,
            Ring1 = "Defending Ring",
            Ring2 = "Shneddick Ring",
            Back = JSE.Capes.Ogma.Enmity,
            Waist = "Plat. Mog. Belt",
            Legs = JSE.Empyrean.Legs,
            Feet = JSE.Empyrean.Feet,
        }
    },
    precast = T{
        default = T{
            Ammo = "Sapience Orb",
            Head = JSE.Artifact.Head,
            Neck = "Voltsurge Torque",
            Ear1 = "Tuisto Earring",
            Ear2 = "Odnowa Earring +1",
            Body = JSE.Empyrean.Body,
            Hands = "Agwu's Gages",
            Ring1 = "Moonbeam Ring",
            Ring2 = "Kishar Ring",
            Back = JSE.Capes.Ogma.Fast_Cast,
            Waist = "Plat. Mog. Belt",
            Legs = "Agwu's Slops",
            Feet = "Agwu's Pigaches"
        },
        ['Enhancing Magic'] = T{
            Legs = JSE.Relic.Legs
        }
    },
    midcast = T{
        default = T{},
        enmity = T{
            Ammo = "Staunch Tathlum",
            Head = "Halitus Helm",
            Neck = "Moonbeam Necklace",
            Ear1 = "Cryptic Earring",
            Ear2 = "Tuisto Earring",
            Body = "Emet Harness +1",
            Hands = JSE.Relic.Hands,
            Ring1 = "Petrov Ring",
            Ring2 = "Moonbeam Ring",
            Back = JSE.Capes.Ogma.Enmity,
            Waist = "Plat. Mog. Belt",
            Legs = JSE.Empyrean.Legs,
            Feet = JSE.Empyrean.Feet
        },
        ['Enhancing Magic'] = T{
            Head = JSE.Empyrean.Head,
            Legs = JSE.Relic.Legs
        },
        Regen = T{
            Head = JSE.Artifact.Head,
            Legs = JSE.Relic.Legs
        },
		Temper = T{
			Head=JSE.Empyrean.Head,
			Neck = "Incanter's Torque",
			Ear1 = "Andoaa Earring",
			Hands = JSE.Artifact.Hands,
			Ring1 = "Stikini Ring",
			Ring2 = "Stikini Ring",
			Waist = "Olympus Sash",
			Legs = "Carmine Cuisses +1"
		}
    },
    weaponskill = T{
        default = T{
            Ammo = "Knobkierrie",
            Head = Nyame.Head,
            Neck = "Rep. Plat. Medal",
            Ear1 = "Moonshade Earring",
            Ear2 = "Ishvara Earring",
            Body = Nyame.Body,
            Hands = Ambuscade.Meghanada.Hands,
            Ring1 = "Defending Ring",
            --Ring2 = "Cornelia's Ring",
            Ring2 = "Ephramad's Ring",
            Back = JSE.Capes.Ogma.TP,
            Waist = "Sailfi Belt +1",
            Legs = Nyame.Legs,
            Feet = Nyame.Feet
        },
        ['Savage Blade'] = T{
            Ear2 = "Telos Earring",
            Ring1 = "Regal Ring",

        }
    },
    ability = T{
        default = T{},
        Enmity = T{
            Ammo = "Staunch Tathlum",
            Head = "Halitus Helm",
            Neck = "Moonbeam Necklace",
            Ear1 = "Cryptic Earring",
            Ear2 = "Tuisto Earring",
            Body = "Emet Harness +1",
            Hands = JSE.Relic.Hands,
            Ring1 = "Petrov Ring",
            Ring2 = "Moonbeam Ring",
            Back = JSE.Capes.Ogma.Enmity,
            Waist = "Plat. Mog. Belt",
            Legs = JSE.Empyrean.Legs,
            Feet = JSE.Empyrean.Feet
        },
        Valiance = T{
            Body = JSE.Artifact.Body,
            Legs = JSE.Relic.Legs,
        },
        Vallation = T{
            Body = JSE.Artifact.Body,
            Legs = JSE.Relic.Legs
        },
        Rayke = T{
            Feet = JSE.Relic.Feet,
        },
        Gambit = T{
            Hands = JSE.Artifact.Hands
        },
        Pflug = T{
            Feet = JSE.Artifact.Feet
        },
        Battuta = T{
            Head = JSE.Relic.Head
        },
        ['Elemental Sforzo'] = T{
            Body = JSE.Relic.Body,
        },
        Swordplay = T{
            Hands = JSE.Relic.Hands
        },
        ['Vivacious Pulse'] = T{
            Head = JSE.Empyrean.Head
        }
    }
}

local ddOverrides = T{
    general = T{
        Idle = T{
            Ammo = "Coiste Bodhar",
            Head = JSE.Empyrean.Head,
            Neck = "Null Loop",
            Ear1 = "Mache Earring +1",
            Ear2 = "Telos Earring",
            Body = Ambuscade.Ayanmo.Body,
            Hands = "Gazu Bracelets +1",
            Ring1 = "Ephramad's Ring",
            Ring2 = "Shneddick Ring",
            Back = JSE.Capes.Ogma.TP,
            Waist = "Sailfi Belt +1",
            Legs = Ambuscade.Meghanada.Legs,
            Feet = JSE.Empyrean.Feet
        },
        Engaged = T{
            Ammo = "Coiste Bodhar",
            Head = JSE.Empyrean.Head,
            Neck = "Null Loop",
            Ear1 = "Mache Earring +1",
            Ear2 = "Telos Earring",
            Body = Ambuscade.Ayanmo.Body,
            Hands = "Gazu Bracelets +1",
            Ring1 = "Ephramad's Ring",
            Ring2 = "Ilabrat Ring",
            Back = JSE.Capes.Ogma.TP,
            Waist = "Sailfi Belt +1",
            Legs = Ambuscade.Meghanada.Legs,
            Feet = JSE.Empyrean.Feet
        }
    }
}

modes.enableWeaponGroups()

modes.registerWeaponGroup('tanking', {
    Main = "Aettir",
    Sub = "Alber Strap"
})
modes.registerWeaponGroup('DD', {
    Main = "Agwu's Claymore",
    Sub = Ambuscade.Weapon.Grip,
    overrides = ddOverrides
})
modes.registerWeaponGroup('DD DW', {
    Main = "Naegling",
    Sub = Ambuscade.Weapon.Axe,
    constraints = T{
        Constraint.HasDualWield
    },
    overrides = ddOverrides
})
modes.registerWeaponGroup('DD Axe', {
    Main = Ambuscade.Weapon.Axe,
    Sub = Ambuscade.Weapon.Sword,
    constraints = T{
        Constraint.HasDualWield
    },
    overrides = ddOverrides
})

modes.enableOverrideLayers()

modes.registerOverride('Teleport Rings', {
    general = T{
        Idle = T{
            Ring1 = "Warp Ring"
        }
    }
},"Warp Ring")

modes.registerOverride('Teleport Rings', {
    general = T{
        Idle = T{
            Ring1 = "Dim. Ring (Holla)"
        }
    }
},"Holla Ring")


modes.registerOverride('Embolden', {
    general = T{
        Idle = T{
            Back = JSE.Capes.Evasionist
        },
    }
})

-- modes.registerOverride('Damage Dealing', {
--     general = T{
--         Engaged = T{
--             Ammo = "Coiste Bodhar",
--             Head = Ambuscade.Ayanmo.Head,
--             Neck = "Null Loop",
--             Ear1 = "Telos Earring",
--             Ear2 = "Mache Earring +1",
--             Body = Ambuscade.Ayanmo.Body,
--             Hands = Nyame.Hands,
--             Ring1 = "Niqmaddu Ring",
--             Ring2 = "Ilabrat Ring",
--             Back = JSE.Capes.Ogma.TP,
--             Waist = "Sailfi Belt +1",
--             Legs = JSE.Empyrean.Legs,
--             Feet = "Nyame Sollerets"
--         }
--     }
-- })
modes.registerOverride('CP Cape', {
    general = T{
        Engaged = T{
            Back = "Mecisto. Mantle"
        }
    },
    weaponskill = T{
        default = T{
            Back = "Mecisto. Mantle"
        }
    }
})

return smart(sets)
