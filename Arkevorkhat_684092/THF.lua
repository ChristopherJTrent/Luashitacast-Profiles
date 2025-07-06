local smart = gFunc.LoadFile("Smart.LAC/smart.lua")

gFunc.LoadFile('common')

if (not smart) or (not modes) then return nil end

local capes = T{
    Rudra = { Name = 'Toutatis\'s Cape', Augment = {'Accuracy+20','Weapon skill damage +10%','Attack+20','DEX+20' } },
}

JSE = T{
    Artifact = T{
        Body = "Pillager's Vest +2",
    },
    Relic = T{
        Hands = "Plun. Armlets +1",
        Feet = "Plun. Poulaines +1",
    },
    Empyrean = T{
        Head = "Skulker's Bonnet +2",
        Body = "Skulker's Vest +2",
        Hands = "Skulk. Armlets +2",
        Legs = "Skulk. Culottes +2",
        Feet = "Skulk. Poulaines +2"
    }
}

local sets = T{
    general = T{
        Idle = T{
            Ammo = "Crepuscular Pebble",
            Head = "Nyame Helm",
            Neck = "Bathy Choker +1",
            Ear1 = "Eabani Earring",
            Ear2 = "Skulker's Earring",
            Body = "Malignance Tabard",
            Hands = "Malignance Gloves",
            Ring1 = "Defending Ring",
            Ring2 = "Shneddick Ring",
            Back = "Solemnity Cape",
            Waist = "Sailfi Belt +1",
            Legs = JSE.Empyrean.Legs,
            Feet = JSE.Empyrean.Feet
        },
        Engaged = T{
            Ammo = "Coiste Bodhar",
            Head = JSE.Empyrean.Head,
            Neck = "Anu Torque",
            Ear1 = "Suppanomimi",
            Ear2 = "Skulker's Earring",
            Body = JSE.Artifact.Body,
            Hands = "Gazu Bracelets +1",
            Ring1 = "Hetairoi Ring",
            Ring2 = "Gere Ring",
            Back = "Null Shawl",
            Waist = "Patentia Sash",
            Legs = "Meg. Chausses +2",
            Feet = "Malignance Boots"
        }
    },
    weaponskill = T{
        default = T{
            Ammo = "Oshasha's Treatise",
            Ear1 = "Moonshade Earring",
            Ear2 = "Ishvara Earring",
            Neck = "Rep. Plat. Medal",
            Ring1 = "Ephramad's Ring",
            Ring2 = "Regal Ring",
            Back = capes.Rudra,
            Waist = "Fotia Belt"
        },
        ["Rudra's Storm"] = T{
            Head = Nyame.Head,
            Body = Nyame.Body,
            Hands = Ambuscade.Meghanada.Hands,
            Ring2 = "Ilabrat Ring",
            Waist = "Grunfeld Rope",
            Legs = Nyame.Legs,
            Feet = Nyame.Feet
        },
        ["Evisceration"] = T{
            Head = Odyssey.Gleti.Head,
            Ear2 = "Mache Earring +1",
            Body = Odyssey.Gleti.Body,
            Hands = Odyssey.Gleti.Hands,
            Ring1 = Ambuscade.Mummu.Ring,
            Legs = JSE.Empyrean.Legs,
            Feet = Odyssey.Gleti.Feet
        },
        ["Aeolian Edge"] = T{
            Ammo = "Pemphredo Tathlum",
            Head = "Nyame Helm",
            Body = "Nyame Mail",
            Hands = "Nyame Gauntlets",
            Waist = "Eschan Stone",
            Legs = "Nyame Flanchard",
            Feet = "Nyame Sollerets"
        },
        ['Savage Blade'] = T{
            Ammo = "Oshasha's Treatise",
            Head = "Nyame Helm",
            Neck = "Rep. Plat. Medal",
            Body = "Nyame Mail",
            Hands = "Meg. Gloves +2",
            Waist = "Sailfi Belt +1",
            Legs = "Nyame Flanchard",
            Feet = "Herculean Boots"
        }
    },
    preshot = T{
        default = T{
            Head = "Taeon Chapeau",
            Body = "Taeon Tabard",
            Ring1 = "Crepuscular Ring",
            Legs = "Adhemar Kecks +1",
            Feet = "Pursuer's Gaiters" 
        }
    },
    midshot = T{
        default = T{
            Head = "Nyame Helm",
            Neck = "Iskur Gorget",
            Ear1 = "Crep. Earring",
            Ear2 = "Telos Earring",
            Body = "Malignance Tabard",
            Hands = "Nyame Gauntlets",
            Ring1 = "Crepuscular Ring",
            Ring2 = "Ilabrat Ring",
            Legs = "Adhemar Kecks +1",
            Feet = "Pursuer's Gaiters"
        }
    },
    precast = T{
        default = T{
            Head = "Herculean Helm",
            Neck = "Voltsurge Torque",
            Ear1 = "Loquac. Earring",
            Body = "Dread Jupon",
            Hands = "Leyline Gloves",
            Ring1 = "Prolix Ring",
        }
    },
    midcast = T{
        default = T{
            Back = capes.Rudra
        },
        Flash = T{
            Ammo = "Sapience Orb"
        }
    },
    ability = T{
        default = T{},
        Collaborator = T{
            Head = JSE.Empyrean.Head
        },
        Accomplice = T{
            Head = JSE.Empyrean.Head
        }
    },
    lockstyle = T{
        Head = JSE.Empyrean.Head,
        Body = JSE.Empyrean.Body,
        Hands = "Skulk. Armlets +2",
        Legs = "Skulk. Culottes +2",
        Feet = "Skulk. Poulaines +2"
    }
}

modes.enableOverrideLayers()

modes.registerOverride('DT', {
    general = T{
        Engaged = T{
            Neck = 'Null Loop',
            Ammo = "Crepuscular Pebble",
            Ring2 = "Defending Ring",
            Feet = "Nyame Sollerets"
        }
    }
}, "Hybrid")
modes.registerOverride('DT', {
    general = T{
        Engaged = T{
            Neck = "Null Loop",
            Body = "Malignance Tabard",
            Hands = "Nyame Gauntlets",
            Legs = "Nyame Flanchard",
            Feet = "Nyame Sollerets",
            Ring2 = "Defending Ring",
            Back = "Solemnity Cape"
        }
    }
}, "Turtle")

modes.registerOverride('Warp', {
    general = T{
        Idle = T{
            Ring1 = "Warp Ring",
            Ring2 = "Dim. Ring (Holla)",
            Legs = "Carmine Cuisses +1"
        }
    }
})

modes.registerOverride('Accuracy',{
    general = T{
        Engaged = T{
            Ammo = "Coiste Bodhar",
            Neck = "Null Loop",
            Ear1 = "Sherida Earring",
            Ear2 = "Mache Earring +1",
            Body = "Malignance Tabard",
            Hands = "Malignance Gloves",
            Ring1 = "Gere Ring",
            Ring2 = "Ilabrat Ring",
            Back = capes.Rudra,
            Waist = "Sarissapho. Belt",
            Legs = "Skulk. Culottes +2",
            Feet = "Malignance Boots"
        }
    }
})

modes.registerOverride('th', {
    general = T{
        Engaged = T{
            Hands = JSE.Relic.Hands,
            Feet = "Skulk. Poulaines +2"
        }
    },
    midcast = {
        default = {
            Hands = JSE.Relic.Hands,
            Feet = "Skulk. Poulaines +2"
        }
    }
})

modes.registerOverride('Dual Wield', {
    general = T{
        Engaged = T{
            Ear1 = "Eabani Earring",
            Ear2 = "Suppanomimi",
            Hands = "Taeon Gloves"
        }
    }
})
modes.registerSets('default', sets)

modes.enableWeaponGroups()

modes.registerWeaponGroup('default', {
    Main = 'Tauret',
    Sub = 'Gleti\'s Knife'
})

modes.registerWeaponGroup('savage', {
    Main = "Naegling",
    Sub = "Gleti\'s Knife"
})
modes.registerWeaponGroup('1dmg', {
    Main = "Esoteric Athame",
    Sub = "Blizzard Brand"
})

modes.registerWeaponGroup('blunt', {
    Main = Ambuscade.Weapon.H2H,
    Sub = "displaced"
})

modes.enableSecondaryGroups()

modes.registerSecondaryGroup('default', {})
modes.registerSecondaryGroup('ranged', {
    Range = Ambuscade.Weapon.Bow,
    Ammo = "Chapuli Arrow",
})

return smart():aAppendPacker({
    {Name = "Chapuli Arrow", Quantity = 198}
})