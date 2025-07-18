local smart = gFunc.LoadFile("Smart.LAC/smart.lua")
gFunc.LoadFile('common')
if not smart then return nil end

local JSE = T{
    Artifact = T{
        Head = "Acad. Mortar. +2",
        Body = "Acad. Gown +2",
        Hands = "Acad. Bracers +2",
        Legs = "Acad. Pants +2",
        Feet = "Acad. Loafers +2"
    },
    Relic = T{
        Head = "Peda. M.Board +3",
        Body = "Peda. Gown +3",
        Hands = "",
        Legs = "Pedagogy Pants",
        Feet = "Peda. Loafers"
    },
    Empyrean = T{
        Head = "Arbatel Bonnet +2",
        Body = "Arbatel Gown +3",
        Hands = "Arbatel Bracers +3",
        Legs = "Arbatel Pants +2",
        Feet = "Arbatel Loafers +3"
    }
}

local capes = T{
    helix = { Name = 'Bookworm\'s Cape', Augment = { 'Helix eff. dur. +20' } },
    regen = { Name = 'Bookworm\'s Cape', Augment = { '"Regen" potency+10' } },
    nuking = { Name = 'Lugh\'s Cape', Augment = { '"Mag. Atk. Bns."+10' } },
    fastcast = { Name = 'Lugh\'s Cape', Augment = {'"Fast Cast"+10'} }
}

local sets = T{
    general = T{
        Idle = T{
            Ammo = "Crepuscular Pebble",
            Head = JSE.Empyrean.Head,
            Neck = "Bathy Choker +1",
            Ear1 = "Ethereal Earring",
            Ear2 = "Influx Earring",
            Body = JSE.Empyrean.Body,
            Hands = JSE.Empyrean.Hands,
            Ring1 = "Defending Ring",
            Ring2 = "Shneddick Ring",
            Back = "Solemnity Cape",
            Waist = "Acuity Belt +1",
            Legs = JSE.Empyrean.Legs,
            Feet = JSE.Empyrean.Feet
        },
        Engaged = T{
            Head = JSE.Empyrean.Head,
            Neck = "Null Loop",
            Ear1 = "Telos Earring",
            Ear2 = "Mache Earring +1",
            Body = JSE.Empyrean.Body,
            Hands = "Gazu Bracelets +1",
            Ring1 = "Ephramad's Ring",
            Ring2 = "Chirich Ring +1",
            Back = "Null Shawl",
            Waist = "Grunfeld Rope",
            Legs = Ambuscade.Jhakri.Legs,
            Feet = JSE.Empyrean.Feet
        },
        buffs = T{
            ['Sublimation: Activated'] = T{
                Head = JSE.Artifact.Head,
                Body = "Peda. Gown +3"
            }
        }
    },
    weaponskill = T{
        default = T{
            Ammo = "Oshasha's Treatise",
            Head = Nyame.Head,
            Neck = "Null Loop",
            Ear1 = "Moonshade Earring",
            Ear2 = "Ishvara Earring",
            Body = Nyame.Body,
            Hands = Nyame.Hands,
            --Ring1 = "Cornelia's Ring",
            Ring1 = "Ephramad's Ring",
            Back = "Null Shawl",
            Waist = "Null Belt",
            Legs = Nyame.Legs,
            Feet = Nyame.Feet
        },
        Myrkr = T{
            Head = "Pixie Hairpin +1",
            Neck = "Sanctity Necklace",
            Ear1 = "Halasz Earring",
            Ear2 = "Influx Earring",
            Body = JSE.Artifact.Body,
            Hands = "Nyame Gauntlets",
            Ring1 = "Mephitas's Ring",
            Ring2 = "Mephitas's Ring +1",
            Back = "Tantalic Cape",
            Waist = "Acuity Belt +1",
            Legs = JSE.Empyrean.Legs,
            Feet = JSE.Empyrean.Feet
        },
        ['Black Halo'] = T{
            Ear2 = "Regal Earring",
            Ring2 = "Metamor. Ring +1   "
        }
    },
    precast = T{
        default = T{
            Ammo = 'Sapience Orb',
            Head = JSE.Relic.Head,
            Neck = 'Voltsurge Torque',
            Ear1 = 'Malignance Earring',
            Ear2 = 'Loquac. Earring',
            Body = { Name = 'Merlinic Jubbah', Augment = { [1] = '"Mag. Atk. Bns."+11', [2] = '"Fast Cast"+6', [3] = 'Mag. Acc.+22' } },
            Hands = JSE.Artifact.Hands,
            Ring1 = 'Kishar Ring',
            Ring2 = 'Prolix Ring',
            Back = capes.fastcast,
            Waist = 'Channeler\'s Stone',
            Legs = "Pinga Pants",
            Feet = JSE.Artifact.Feet,
        },
        wrongarts = T{
            Head = "Merlinic Hood",
            Feet = "Merlinic Crackows"
        }
    },
    midcast = T{
        default = T{
            Ammo = "Pemphredo Tathlum",
            Head = "Vanya Hood",
            Neck = "Reti Pendant",
            Ear1 = "Mendi. Earring",
            Ear2 = "Calamitous Earring",
            Body = "Kaykaus Bliaut",
            Hands = JSE.Artifact.Hands,
            Ring1 = "Cho'j Band",
            Ring2 = "Prolix Ring",
            Back = "Solemnity Cape",
            Legs = "Telchine Braconi",
            Feet = "Telchine Pigaches"
        }, 
        Cure = T{
            Ammo = "Pemphredo Tathlum", -- Conserve 4
            Head = "Vanya Hood", -- Cure 10%, Conserve 12
            Neck = "Imbodla Necklace",
            Ear1 = "Mendi. Earring", -- Cure 5%, Conserve 2
            Ear2 = "Calamitous Earring", -- Conserve 4
            Body = "Kaykaus Bliaut", -- Cure 5%, Cure II 3%, Conserve 6
            Hands = "Telchine Gloves", -- Cure 18%
            Ring1 = "Naji's Loop", -- Cure 1%, Cure II 1%
            Ring2 = "Prolix Ring",
            Back = "Solemnity Cape", -- Cure 7%, Conserve 5
            Legs = JSE.Artifact.Legs, -- Cure 8%
            Feet = "Telchine Pigaches", -- Conserve 5
            Waist = 'Hachirin-no-Obi'
            -- Totals: 59% Cure I, 4% Cure II, Conserve 38
            -- Receiving 28% conserveMp from job traits
        },
        Curaga = T{
            Ammo = "Pemphredo Tathlum", -- Conserve 4
            Head = "Vanya Hood", -- Cure 10%, Conserve 12
            Neck = "Imbodla Necklace",
            Ear1 = "Mendi. Earring", -- Cure 5%, Conserve 2
            Ear2 = "Calamitous Earring", -- Conserve 4
            Body = "Kaykaus Bliaut", -- Cure 5%, Cure II 3%, Conserve 6
            Hands = "Telchine Gloves", -- Cure 18%
            Ring1 = "Naji's Loop", -- Cure 1%, Cure II 1%
            Ring2 = "Prolix Ring",
            Back = "Solemnity Cape", -- Cure 7%, Conserve 5
            Legs = JSE.Artifact.Legs, -- Cure 8%
            Feet = "Telchine Pigaches" -- Conserve 5
            -- Totals: 59% Cure I, 4% Cure II, Conserve 38
            -- Receiving 28% conserveMp from job traits
        },
        Cursna = T{
            Ring1 = "Ephedra Ring",
            Ring2 = "Ephedra Ring",
            Feet = "Gende. Galoshes"
        },
        Regen = T{
            Head = JSE.Empyrean.Head,    
            Back = capes.regen,
        },
        ['Enhancing Magic'] = T{
            Head = "Telchine Cap",
            Body = JSE.Relic.Body,
            Hands = "Telchine Gloves",
            Legs = "Telchine Braconi",
            Feet = "Telchine Pigaches",
            Back = "Fi Follet Cape"
        },
        ['Enfeebling Magic'] = T{
            Ammo = "Pemphredo Tathlum",
            Head = JSE.Artifact.Head,
            Neck = "Argute Stole +1",
            Ear1 = "Regal Earring",
            Ear2 = "Malignance Earring",
            Body = JSE.Artifact.Body,
            Hands = JSE.Empyrean.Hands,
            Ring1 = Ambuscade.Jhakri.Ring,
            Ring2 = "Sangoma Ring",
            Back = capes.nuking,
            Waist = "Acuity Belt +1",
            Legs = JSE.Empyrean.Legs,
            Feet = JSE.Empyrean.Feet
        },
        ['Elemental Magic'] = T{
            Ammo = "Ghastly Tathlum +1",
            Head = JSE.Empyrean.Head,
            Neck = "Argute Stole +1",
            Ear1 = "Malignance Earring",
            Ear2 = "Regal Earring",
            Body = JSE.Empyrean.Body,
            Hands = JSE.Empyrean.Hands,
            Ring1 = "Metamor. Ring +1",
            Ring2 = Ambuscade.Jhakri.Ring,
            Back = capes.nuking,
            Waist = "Acuity Belt +1",
            Legs = JSE.Empyrean.Legs,
            Feet = JSE.Empyrean.Feet
        },
        helix = T{
            Back = capes.helix,
            Feet = JSE.Empyrean.Feet
        },
        ['Aspir'] = T{
            Ammo = "Pemphredo Tathlum",
            Head = "Pixie Hairpin +1",
            Neck = "Null Loop",
            Ear1 = "Crep. Earring",
            Ear2 = "Arbatel Earring +1",
            Body = JSE.Empyrean.Body,
            Hands = JSE.Empyrean.Hands,
            Ring1 = 'Stikini Ring',
            Ring2 = "Evanescence Ring",
            Back = capes.helix,
            Waist = "Acuity Belt +1",
            Legs = JSE.Empyrean.Legs,
            Feet = "Agwu's Pigaches"
        },
        buffs = T{
            ["Perpetuance"] = T{
                Hands = JSE.Empyrean.Hands
            },
            Ebullience = T{
                Head = JSE.Empyrean.Head
            },
            Immanence = T{
                Neck = "Bathy Choker +1",
                Ear1 = "Assuage Earring",
                Ring2 = "Rajas Ring"
            }
        }
    },
    ability = T{
        default = T{
            -- ability set goes here
        }
    }
}

modes.enableOverrideLayers()

modes.registerOverride('Bursting', T{
    midcast = T{
        ['Elemental Magic'] = T{
            Body = "Agwu's Robe"
        }
    }
})

modes.registerOverride('JSE Neck', T{
    general = T{
        Idle = T{
            Neck = "Argute Stole +1"
        }
    }
})

modes.registerOverride('Warp Rings', T{
    general = T{
        Idle = T{
            Ring2 = "Warp Ring"
        }
    }
}, "Warp")

modes.registerOverride('Warp Rings', T{
    general = T{
        Idle = T{
            Ring2 = "Dim. Ring (Holla)"
        }
    }
}, "Holla")

modes.registerOverride('Cure Nuking', T{
    midcast = T{
        Cure = T{
            Ammo = "Pemphredo Tathlum", -- Conserve 4
            Head = "Vanya Hood", -- Cure 10%, Conserve 12
            Neck = "Imbodla Necklace",
            Ear1 = "Mendi. Earring", -- Cure 5%, Conserve 2
            Ear2 = "Calamitous Earring", -- Conserve 4
            Body = "Kaykaus Bliaut", -- Cure 5%, Cure II 3%, Conserve 6
            Hands = "Telchine Gloves", -- Cure 18%
            Ring1 = "Naji's Loop", -- Cure 1%, Cure II 1%
            Ring2 = "Prolix Ring",
            Back = "Solemnity Cape", -- Cure 7%, Conserve 5
            Legs = JSE.Artifact.Legs, -- Cure 8%
            Feet = "Telchine Pigaches", -- Conserve 5
            Waist = 'Hachirin-no-Obi'
            -- Totals: 59% Cure I, 4% Cure II, Conserve 38
            -- Receiving 28% conserveMp from job traits
        }
    }
})
-- th.general.Engaged.Ammo = "Per. Lucky Egg"
-- th.general.Engaged.Waist = "Chaac Belt"
-- th.general.Engaged.Head = "Wh. Rarab Cap +1"
-- th.midcast["Elemental Magic"].Ammo = "Per. Lucky Egg"
-- th.midcast["Elemental Magic"].Waist = "Chaac Belt"
-- th.midcast["Elemental Magic"].Head = "Wh. Rarab Cap +1"


-- modes.registerSets('default', sets)

modes.enableWeaponGroups()

modes.registerWeaponGroup('default', {
    Main = "Pedagogy Staff",
    Sub = "Enki Strap"
})

modes.registerWeaponGroup('Daybreak', {
    Main = "Daybreak",
    Sub = "Culminus"
})

modes.registerWeaponGroup('Blunt', {
    Main = "Maxentius",
    Sub = "Genmei Shield"
})
modes.registerWeaponGroup('Slashing', {
    Main = "Onion Sword III",
    Sub = "Genmei Shield",
    overrides = T{
        general = T{
            Engaged = T{
                Waist = "Null Belt"
            }
        },
        weaponskill = T{
            default = T{
                Ear1 = "Telos Earring",
                Ear2 = "Mache Earring +1",
                Hands = "Gazu Bracelets +1",
                Ring2 = Ambuscade.Jhakri.Ring,
                Feet = JSE.Empyrean.Feet
            }
        }
    }
})

modes.registerWeaponGroup('Nuking', {
    Main = "Bunzi's Rod",
    Sub = "Ammurapi Shield"
})

modes.registerWeaponGroup('prime', {
    Main = "Opashoro",
    Sub = "Enki Strap"
})

modes.enableOverrideLayers()
modes.registerOverride("TH", {
    general = T{
        Engaged = T{
            Head = "Wh. Rarab Cap +1",
            Ammo = "Per. Lucky Egg",
            Waist = "Chaac Belt"
        }
    }
})
return smart(sets)