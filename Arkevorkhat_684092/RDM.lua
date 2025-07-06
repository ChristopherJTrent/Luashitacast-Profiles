local smart = gFunc.LoadFile('smart.lac/smart.lua')
gFunc.LoadFile('common')

if not smart or not modes then return nil end

local JSE = T{
    Artifact = T{
        Body = "Atrophy Tabard +2",
        Hands = "Atrophy Gloves +2",
        Legs = "Atrophy Tights +1"
    },
    Relic = T{
        Head = "Viti. Chapeau +2",
        Body = "Viti. Tabard +1",
        Hands = "Viti. Gloves +2"
    },
    Empyrean = T{
        Head = "Leth. Chappel +2",
        Body = "Lethargy Sayon +2",
        Hands = "Leth. Ganth. +2",
        Legs = "Leth. Fuseau +2",
        Feet = "Leth. Houseaux +3"
    },
    Capes = T{
        Ambuscade = T{
            Savage_Blade = { Name = 'Sucellos\'s Cape', Augment = { [1] = 'STR+20', [2] = 'Weapon skill damage +10%', [3] = 'Attack+20', [4] = 'Accuracy+20' } },
            TP = { Name = 'Sucellos\'s Cape', Augment = { [1] = 'Accuracy+20', [2] = '"Dbl.Atk."+10', [3] = 'Attack+20', [4] = 'DEX+20' } },
        }
    }
}

local sets = T{
    general = T{
        Idle = T{
            Ammo = "Staunch Tathlum",
            Head = JSE.Relic.Head,
            Neck = "Bathy Choker +1",
            Ear1 = "Ethereal Earring",
            Ear2 = "Eabani Earring",
            Body = JSE.Empyrean.Body,
            Hands = JSE.Empyrean.Hands,
            Ring1 = "Defending Ring",
            Ring2 = "Shneddick Ring",
            Back = "Solemnity Cape",
            Waist = "Flume Belt",
            Legs = "Nyame Flanchard",
            Feet = "Nyame Sollerets"
        },
        Engaged = T{
            -- Ammo = "Coiste Bodhar",
            -- -- Head = "Blistering Sallet +1" -- Goal Piece (Verm. Fishfly)
            -- Head = "Aya. Zucchetto +2",
            -- Neck = "Asperity Necklace",
            -- Ear1 = "Sherida Earring",
            -- Ear2 = "Suppanomimi",
            -- Body = "Ayanmo Corazza +2", -- BiS Multiattack
            -- Hands = "Bunzi's Gloves", -- OnlyInSlot Multiattack
            -- Ring1 = "Hetairoi Ring",
            -- Ring2 = "Ilabrat Ring",
            -- Back = JSE.Capes.Ambuscade.TP,
            -- Waist = "Sailfi Belt +1",
            -- Legs = "Carmine Cuisses +1", -- Dual Wield
            -- Feet = "Malignance Boots"
            -- Since pups is so insistent that STP is the way to go...
            Ammo = "Coiste Bodhar",
            Head = Ambuscade.Ayanmo.Head,
            Neck = "Anu Torque",
            Ear1 = "Sherida Earring",
            Ear2 = "Telos Earring",
            Body = "Malignance Tabard",
            Hands = "Malignance Gloves",
            Ring1 = "Ilabrat Ring",
            Ring2 = "Crepuscular Ring",
            Back = JSE.Capes.Ambuscade.TP,
            Waist = "Sailfi Belt +1",
            Legs = Ambuscade.Jhakri.Legs,
            Feet = "Malignance Boots"
        }
    },
    precast = T{
        default = T{
            Ammo = "Crepuscular Pebble",
            Head = "Merlinic Hood",
            Neck = "Null Loop",
            Ear1 = "Eabani Earring",
            Ear2 = "Ethereal Earring",
            Body = "Merlinic Jubbah",
            Hands = "Nyame Gauntlets",
            Ring1 = "Defending Ring",
            Ring2 = "Lebeche Ring",
            Back = "Solemnity Cape",
            Waist = "Channeler's Stone",
            Legs = "Nyame Flanchard",
            Feet = "Merlinic Crackows"
        },
        utsusemi = T{
            Ammo = "Staunch Tathlum",
            Head = "Vanya Hood",
            Neck = "Voltsurge Torque",
            Ear1 = "Halasz Earring",
            Ear2 = "Lethargy Earring",
            Body = "Merlinic Jubbah",
            Hands = "Gende. Gages +1",
            Ring1 = "Evanescence Ring",
            Ring2 = "Kishar Ring",
            Back = "Swith Cape +1",
            Waist = "Channeler's Stone",
            Legs = "Carmine Cuisses +1",
            Feet = "Merlinic Crackows"
        }
    },
    midcast = T{
        default = {
            Ammo = "Pemphredo Tathlum",
            Head = "Vanya Hood",
            Neck = "Reti Pendant",
            Ear1 = "Mendi. Earring",
            Ear2 = "Calamitous Earring",
            Body = "Kaykaus Bliaut",
            Ring1 = "Evanescence Ring",
            Back = "Solemnity Cape",
            Legs = "Carmine Cuisses +1",
            Feet = "Taeon Boots"
        },
        Cure = T{
            Neck = "Nodens Gorget",
            Ring2 = "Naji's Loop",
            Legs = JSE.Artifact.Legs
        },
        ['Enfeebling Magic'] = T{
            default = T{
                Ammo = "Regal Gem",
                Head = JSE.Empyrean.Head,
                Neck = "Null Loop",
                Ear1 = "Malignance Earring",
                Ear2 = "Crep. Earring",
                Body = JSE.Empyrean.Body,
                Hands = JSE.Empyrean.Hands,
                Ring1 = "Crepuscular Ring",
                Ring2 = "Sangoma Ring",
                Back = "Izdubar Mantle",
                Waist = "Acuity Belt +1",
                Legs = JSE.Empyrean.Legs,
                Feet = JSE.Empyrean.Feet
            },
            mAcc = T{
                Ammo = "Regal Gem",
                Head = JSE.Empyrean.Head,
                Neck = "Null Loop",
                Ear1 = "Malignance Earring",
                Ear2 = "Crep. Earring",
                Body = JSE.Empyrean.Body,
                Hands = JSE.Empyrean.Hands,
                Ring1 = "Crepuscular Ring",
                Ring2 = "Sangoma Ring",
                Back = "Izdubar Mantle",
                Waist = "Acuity Belt +1",
                Legs = JSE.Empyrean.Legs,
                Feet = JSE.Empyrean.Feet
            }, 
            skill = T{
                Head = JSE.Relic.Head,
                Neck = "Incanter's Torque",
                Body = "Vanya Robe",
                Hands = JSE.Empyrean.Hands
            },
            highSkill = T{
                Head = JSE.Relic.Head,
                Neck = "Incanter's Torque",
                Ear1 = "Malignance Earring",
                Ear2 = "Regal Earring",
                Body = JSE.Empyrean.Body,
                Hands = JSE.Empyrean.Hands,
                Ring1 = "Stikini Ring",
                Ring2 = "Stikini Ring",
                Back = JSE.Capes.Ambuscade.Savage_Blade,
                Legs = JSE.Empyrean.Legs,
                Feet = JSE.Empyrean.Feet
            },
            mAccDuration = T{
                Ring2 = "Kishar Ring"
            },
            mAccPotency = T{
                Body = JSE.Empyrean.Body,
                Back = "Sucellos's Cape"
            },
            MND = T{
                Head = JSE.Relic.Head,
                Neck = "Imbodla Necklace",
                Ear2 = "Regal Earring",
                Body = JSE.Empyrean.Body,
                Hands = "Bunzi's Gloves",
                Ring2 = "Metamor. Ring +1",
                Back = "Swith Cape +1",
                Legs = JSE.Empyrean.Legs,
                Feet = JSE.Empyrean.Feet
            },
            INT = T{
                Ammo = "Pemphredo Tathlum",
                Head = Ambuscade.Jhakri.Head,
                Neck = "Sibyl Scarf",
                Ear2 = "Regal Earring",
                Body = {Name = "Merlinic Jubbah", Augments={"INT+15"}},
                Ring1 = "Metamor. Ring +1",
                Ring2 = "Shiva Ring",
                Back = "Tantalic Cape",
                Waist = "Acuity Belt +1",
                Legs = "Merlinic Shalwar",
                Feet = Ambuscade.Jhakri.Feet
        },
        },
        ['Enhancing Magic'] = T{
            default = T{
                Head = "Telchine Cap",
                Ear2 = "Lethargy Earring",
                Hands = JSE.Artifact.Hands,
                Back = "Ghostfyre Cape",
                Legs = "Telchine Braconi",
                Feet = JSE.Empyrean.Feet
            },
            duration = T{
            },
            skill = T{
                Head = "Befouled Crown",
                Neck = "Incanter's Torque",
                Ear2 = "Andoaa Earring",
                Body = JSE.Relic.Body,
                Hands = JSE.Relic.Hands,
                Ring1 = "Stikini Ring",
                Ring2 = "Stikini Ring",
                Back = "Ghostfyre Cape",
                Waist = "Olympus Sash",
                Legs = "Carmine Cuisses +1",
                Feet = JSE.Empyrean.Feet
            },
            gainspell = T{
                Back = "Ghostfyre Cape",
                Legs = "Telchine Braconi"
            },
            targetOther = T{
                Head = JSE.Empyrean.Head,
                Body = JSE.Empyrean.Body,
                Legs = JSE.Empyrean.Legs,
                Feet = JSE.Empyrean.Feet
            }
        },
        Refresh = T{
            Body = JSE.Artifact.Body,
            Legs = JSE.Empyrean.Legs
        },
        enspell = T{
            Head = "Befouled Crown",
            Neck = "Incanter's Torque",
            Ear2 = "Andoaa Earring",
            Body = JSE.Relic.Body,
            Hands = JSE.Relic.Hands,
            Ring1 = "Stikini Ring",
            Ring2 = "Stikini Ring",
            Back = "Ghostfyre Cape",
            Waist = "Olympus Sash",
            Legs = "Carmine Cuisses +1",
            Feet = JSE.Empyrean.Feet
        },
        ['Elemental Magic'] = T{
            Ammo = "Pemphredo Tathlum",
            Head = JSE.Empyrean.Head,
            Neck = "Sibyl Scarf",
            Ear1 = "Malignance Earring",
            Ear2 = "Regal Earring",
            Body = JSE.Empyrean.Body,
            Hands = JSE.Empyrean.Hands,
            Ring1 = "Metamor. Ring +1",
            Ring2 = "Shiva Ring",
            Back = "Tantalic Cape",
            Waist = "Acuity Belt +1",
            Legs = JSE.Empyrean.Legs,
            Feet = JSE.Empyrean.Feet
        }
    },
    weaponskill = T{
        default = T{
            Ammo = "Oshasha's Treatise",
            Head = "Nyame Helm",
            Neck = "Rep. Plat. Medal",
            Ear1 = "Moonshade Earring",
            Ear2 = "Ishvara Earring",
            Body = "Malignance Tabard",
            Hands = "Nyame Gauntlets",
            --Ring1 = "Cornelia's Ring",
            Back = JSE.Capes.Ambuscade.Savage_Blade,
            Waist = "Sailfi Belt +1",
            Legs = "Nyame Flanchard",
            Feet = JSE.Empyrean.Feet
        },
        ['Savage Blade'] = T{
            Ear2 = "Regal Earring",
            Ring2 = "Rajas Ring",
        },
        ['Chant Du Cygne'] = T{
            Head = Ambuscade.Ayanmo.Head,
            Ear2 = "Mache Earring +1",
            Body = "Malignance Tabard",
            Ring2 = "Ilabrat Ring",
            Back = "Tantalic Cape",
        },
        ['Aeolian Edge'] = T{
            Neck = "Sibyl Scarf",
            Body = Ambuscade.Jhakri.Body,
            Ring1 = 'Metamor. Ring +1',
            Ring2 = "Ilabrat Ring",
            Back = "Tantalic Cape",
            Waist = "Acuity Belt +1",
        }
    },
    lockstyle = T{
        JSE.Relic.Head,
        JSE.Artifact.Body,
        JSE.Artifact.Hands,
        "Arbatel Pants +2",
        "Arbatel Loafers +3",
        "Twinned Shield",
        "Twinned Blade"
    }
}

local bow = sets:copy(true)

modes.registerSets('default', sets)

bow.general.Idle.Range = Ambuscade.Weapon.Bow
bow.general.Idle.Ammo = "Chapuli Arrow"
bow.general.Engaged.Range = nil
bow.general.Engaged.Ammo = nil
bow.weaponskill.default.Range = nil
bow.weaponskill.default.Ammo = nil
bow.midcast['Elemental Magic'].Range = nil
bow.midcast['Elemental Magic'].Ammo = nil
bow.midcast['Enfeebling Magic'].default.Range = nil
bow.midcast['Enfeebling Magic'].default.Ammo = nil
bow.midcast['Enfeebling Magic'].mAcc.Range = nil
bow.midcast['Enfeebling Magic'].mAcc.Ammo = nil
bow.midcast['Enfeebling Magic'].INT.Range =nil
bow.midcast['Enfeebling Magic'].INT.Ammo = nil
bow.midcast.default.Range = nil
bow.midcast.default.Ammo = nil
bow.precast.default.Range = nil
bow.precast.default.Ammo = nil
bow.precast.utsusemi.Range = nil
bow.precast.utsusemi.Ammo = nil

modes.registerSets('Bow', bow)

modes.enableWeaponGroups()

modes.registerWeaponGroup('Ammurapi Shield', {
    Sub = "Ammurapi Shield"
})
modes.registerWeaponGroup('Demersal Degen', {
    Sub = "Demers. Degen +1",
    constraints = T{
        Constraint.HasDualWield
    }
})
modes.registerWeaponGroup('Sakpata Sword', {
    Sub = "Sakpata's Sword",
    overrides = T{
        precast = T{
            default = T{
                Waist = "Fucho-no-obi"
            }
        }
    },
    constraints = T{
        Constraint.HasDualWield
    }
})
modes.registerWeaponGroup('Daybreak', {
    Sub = "Daybreak",
    constraints = T{
        Constraint.HasDualWield
    }
})
modes.registerWeaponGroup('Gleti Knife', {
    Sub = "Gleti's Knife",
    constraints = T{
        Constraint.HasDualWield
    }
})
modes.registerWeaponGroup('Enspell', {
    Sub = "Qutrub Knife",
    constraints = T{
        Constraint.HasDualWield
    }
})

modes.enableSecondaryGroups()

modes.registerSecondaryGroup("Naegling", {
    Main = "Naegling",
})
modes.registerSecondaryGroup('Bunzi Rod', {
    Main = "Bunzi's Rod",
})
modes.registerSecondaryGroup('Tauret', {
    Main = "Tauret",
})
modes.registerSecondaryGroup('Enspell', {
    Main = "Esoteric Athame",
})
modes.registerSecondaryGroup('Prime', {
    Main = "Mpu Gandring"
})

modes.enableOverrideLayers()

modes.registerOverride('CP Cape', {
    general = T{
        Idle = T{
            Back = "Mecisto. Mantle",
        },
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

modes.registerOverride('Refresh Idle', {
    general = T{
        Idle = T{
            Ammo = "Crepuscular Pebble",
            Head = JSE.Relic.Head,
            Neck = "Null Loop",
            Ear1 = "Ethereal Earring",
            Ear2 = "Eabani Earring",
            Body = Ambuscade.Jhakri.Body,
            Hands = "Bunzi's Gloves",
            Ring1 = "Defending Ring",
            Ring2 = Ambuscade.Ayanmo.Ring,
            Back = "Solemnity Cape",
            Waist = "Flume Belt",
            Legs = "Nyame Flanchard",
            Feet = "Nyame Sollerets"
        }
    }
})

modes.registerOverride('DT', {
    general = T{
        Idle = T{
            Head = "Nyame Helm",
            Neck = "Null Loop",
            Ring1 = "Defending Ring",
        },
        Engaged = T{
            Head = "Nyame Helm",
            Neck = "Null Loop",
            Ring1 = "Defending Ring",
        }
    }
}, "Hybrid")

modes.registerOverride('DT', {
    general = T{
        Idle = T{
            Head = "Nyame Helm",
            Neck = "Null Loop",
            Ear1 = "Mache Earring +1",
            Ear2 = "Telos Earring",
            Body = "Malignance Tabard",
            Hands = "Nyame Gauntlets",
            Ring1 = "Defending Ring",
            Ring2 = "Ilabrat Ring",
            Back = "Tantalic Cape",
            Waist = "Flume Belt",
            Legs = "Carmine Cuisses +1",
            Feet = "Malignance Boots"
        },
        Engaged = T{
            Head = "Nyame Helm",
            Neck = "Null Loop",
            Ear1 = "Mache Earring +1",
            Ear2 = "Telos Earring",
            Body = "Malignance Tabard",
            Ring1 = "Defending Ring",
            Ring2 = "Ilabrat Ring",
            Waist = "Flume Belt",
            Legs = "Carmine Cuisses +1",
            Feet = "Malignance Boots"
        }
    }
}, "Turtle")
modes.registerOverride('TH', {
    general = T{
        Engaged = T{
            Ammo = "Per. Lucky Egg",
            Head = "Wh. Rarab Cap +1",
            Waist = "Chaac Belt",
        }
    }
})
modes.registerOverride("Dual Wield", {
    general = T{
        Engaged = T{
            Ear1 = "Eabani Earring",
            Ear2 = "Suppanomimi",
            Legs = "Carmine Cuisses +1"
        }
    }
})
modes.registerOverride('Warp Rings', {
    general = T{
        Idle = T{
            Ring1 = "Warp Ring",
            Ring2 = "Dim. Ring (Holla)"
        }
    }
})

modes.registerOverride('Bursting', {
    midcast = T{
        ['Elemental Magic'] = T{
            Head = "Nyame Helm",
            Body = "Nyame Mail",
            Hands = "Bunzi's Gloves",
            Ring1 = Ambuscade.Jhakri.Ring,
            Legs = JSE.Empyrean.Legs,
            Feet = JSE.Empyrean.Feet
        }
    }
})

modes.registerOverride('Enspell', {
    general = T{
        Engaged = T{
            Ammo = "Pemphredo Tathlum",
            Head = Ambuscade.Ayanmo.Head,
            Neck = "Null Loop",
            Ear1 = "Mache Earring +1",
            Ear2 = "Regal Earring",
            Body = "Malignance Tabard",
            Hands = Ambuscade.Ayanmo.Hands,
            Ring1 = "Defending Ring",
            Ring2 = "Eihwaz Ring",
            Back = "Null Shawl",
            Waist = "Null Belt",
            Legs = "Carmine Cuisses +1",
            Feet = "Malignance Boots"
        }
    }
})



modes.registerSets('default', sets)

return smart():aAppendPacker({
    {Name = "Grape Daifuku", Quantity = 12},
    {Name = "Red Curry Bun", Quantity = 12},
    {Name = "Tropical Crepe", Quantity = 12},
    {Name = "Shihei", Quantity = 198},
    {Name = "Shinobi-Tabi", Quantity = 99},
    {Name = "Sanjaku-Tenugui", Quantity = 99}
})
