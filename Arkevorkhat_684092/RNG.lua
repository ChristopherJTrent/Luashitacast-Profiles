local smart = gFunc.LoadFile('smart.lac/smart')

if not smart then return nil end

local JSE = T{
    Artifact = T{
        Head = "Hunter's Beret",
        Body = "Hunter's Jerkin",
        Hands = "Hunter's Bracers",
        Legs = "Hunter's Braccae",
        Feet = "Hunter's Socks"
    },
    Relic = T{
        Head = "Arcadian Beret +2",
        Body = "Scout's Jerkin",
        Hands = "Scout's Bracers",
        Legs = "Scout's Braccae",
        Feet = "Scout's Socks",
        Waist = "Scout's Belt"
    },
    Empyrean = T{
        Head = "Sylvan Gapette +1",
        Body = "Sylvan Caban +1",
        Hands = "Syl. Glvltte. +1",
        Legs = "Sylvan Bragues +1",
        Feet = "",
        Earring = ""
    }
}
---@type sets
local sets = T{
    general = T{
        Idle = T{
            Head = "Nyame Helm",
            Neck = "Bathy Choker +1",
            Ear1 = "Sherida Earring",
            Ear2 = "Ethereal Earring",
            Body = "Malignance Tabard",
            Hands = "Nyame Gauntlets",
            Ring1 = "Defending Ring",
            Ring2 = "Ilabrat Ring",
            Back = "Solemnity Cape",
            Waist = "Flume Belt",
            Legs = "Carmine Cuisses +1",
            Feet = "Nyame Sollerets"
        },
        Engaged = T{
            Head = "Adhemar Bonnet +1",
            Neck = "Asperity Necklace",
            Ear1 = "Sherida Earring",
            Ear2 = "Brutal Earring",
            Body = "Rawhide Vest",
            Hands = Ambuscade.Mummu.Hands,
            Ring1 = "Hetairoi Ring",
            Ring2 = "Ilabrat Ring",
            Back = "Null Shawl",
            Waist = "Sailfi Belt +1",
            Legs = "Carmine Cuisses +1",
            Feet = "Herculean Boots"
        }
    },
    preshot = T{
        default = T{
            Head = "Ikenga's Hat", -- 6%
            Body = 'Oshosi Vest +1', -- 14%
            Hands = { Name = 'Carmine Fin. Ga. +1', AugPath='D' }, -- 8%
            Ring1 = "Crepuscular Ring", -- 3%
            Waist = 'Impulse Belt', -- 3%
            Legs = { Name = 'Adhemar Kecks +1', AugPath='D' }, -- 10%
            Feet = 'Meg. Jam. +2', -- 10%
            -- Total Snapshot: 54/60%
        }
    },
    midshot = T{
        default = T{
            Head = JSE.Relic.Head,
            Neck = "Iskur Gorget",
            Ear1 = "Telos Earring",
            Ear2 = "Crep. Earring",
            Body = "Ikenga's Vest",
            Hands = "Malignance Gloves",
            Ring1 = "Ilabrat Ring",
            Ring2 = "Crepuscular Ring",
            Back = "Null Shawl",
            Waist = "Tellen Belt",
            Legs = "Ikenga's Trousers",
            Feet = "Malignance Boots"
        }
    },
    weaponskill = T{
        default = T{
            Head = "Nyame Helm",
            Neck = "Fotia Gorget",
            Ear1 = "Moonshade Earring",
            Ear2 = "Ishvara Earring",
            Body = "Nyame Mail",
            Hands = "Nyame Gauntlets",
            Ring1 = "Ephramad's Ring",
            Ring2 = "Regal Ring",
            Back = "Null Shawl", -- This is where I'd put my WSD cape, if I had one!
            Waist = "Fotia Belt",
            Legs = "Nyame Flanchard",
            Feet = "Nyame Sollerets"
        },
        Trueflight = T{
            Neck = "Sanctity Necklace",
            Waist = "Eschan Stone"
        }
    },
    lockstyle = {
        JSE.Empyrean.Head,
        JSE.Empyrean.Body,
        JSE.Empyrean.Hands,
        JSE.Relic.Legs,
        JSE.Relic.Feet
    }
}

modes.enableWeaponGroups()

modes.registerWeaponGroup('Range', {
    Main = "Kustawi +1",
    Sub = "Nusku Shield"
})
modes.registerWeaponGroup('Melee', {
    Main = "Naegling",
    Sub = "Gleti's Knife",
    constraints = T{
        Constraint.HasDualWield
    }
})
modes.registerWeaponGroup('Dagger', {
    Main = "Tauret",
    Sub = "Gleti's Knife",
    constraints = T{
        Constraint.HasDualWield
    }
})
modes.registerWeaponGroup('Sword Fencer', {
    Main = "Naegling",
    Sub = "Nusku Shield",
    constraints = T{
        Constraint.Invert(Constraint.HasDualWield)
    }
})

modes.enableSecondaryGroups()

modes.registerSecondaryGroup('Fomal', {
    Range = "Fomalhaut",
    Ammo = "Chrono Bullet"
})

modes.registerSecondaryGroup('Anarchy', {
    Range = "Anarchy +2"
})

modes.enableOverrideLayers()
modes.registerOverride('Flurry', {
    preshot = T{
        default = T{
            
        }
    }
}, 'Flurry I')

modes.registerOverride('Hachirin', {
    weaponskill = T{
        Trueflight = T{
            Waist = "Hachirin-no-obi",
        },
        ['Hot Shot'] = T{
            Waist = "Hachirin-no-obi"
        }
    }
})

return smart(sets)