local smart = gFunc.LoadFile("Smart.LAC/smart.lua")
gFunc.LoadFile('common')
if not smart then return nil end

local capes = T{
    savage = { Name = 'Camulus\'s Mantle', Augment = { [1] = 'STR+30', [2] = 'Weapon skill damage +10%', [3] = 'Attack+20', [4] = 'Accuracy+20' }},
    tp = { Name = 'Camulus\'s Mantle', Augment = { [1] = 'Accuracy+30', [2] = '"Dbl.Atk."+10', [3] = 'Attack+20', [4] = 'DEX+20' } },
    last_stand = { Name = 'Camulus\'s Mantle', Augment = { [1] = 'Weapon skill damage +10%', [2] = 'Rng.Acc.+20', [3] = 'Mag. Evasion+15', [4] = 'AGI+30', [5] = 'Rng.Atk.+20' } },
    snapshot = { Name = 'Camulus\'s Mantle', Augment = '"Snapshot"+10' },
    ranged_tp = { Name = 'Camulus\'s Mantle', Augment = { [1] = 'Rng.Acc.+20', [2] = '"Store TP"+10', [3] = 'AGI+8', [4] = 'Rng.Atk.+20' } },
    leaden_salute = { Name = 'Camulus\'s Mantle', Augment = { [1] = 'Weapon skill damage +10%', [2] = 'Magic Damage+20', [3] = 'AGI+30', [4] = 'Mag. Acc.+20' } },
}

local augSets = T{
    lanun_knife = T{
        STP = { Name = 'Lanun Knife', AugPath='A' },
        Rolls =  { Name = 'Lanun Knife', AugPath='C' },
    }
}

local JSE = T{
    Artifact = T{
        Body = "Laksa. Frac +3",
    },
    Relic = T{
        Head = "Lanun Tricorne",
        Body = "Lanun Frac +3",
        Hands = "Lanun Gants +3",
        Legs = "",
        Feet = "Lanun Bottes +3"
    },
    Empyrean = T{
        Head = "Chass. Tricorne +2",
        Body = "Chasseur's Frac +2",
        Hands = "Chasseur's Gants +3",
        Legs = "Chas. Culottes +2",
        Feet = "Navarch's Bottes",
        Earring = "Chas. Earring +1"
    }
}

local sets = T{
    general = T{
        Idle = T{
            Head = "Chass. Tricorne +2",
            Neck = "Null Loop",
            Ear1 = "Ethereal Earring",
            Ear2 = "Eabani Earring",
            Body = "Malignance Tabard",
            Hands = "Malignance Gloves",
            Ring1 = "Defending Ring",
            Ring2 = "Shneddick Ring",
            Back = "Solemnity Cape",
            Waist = "Chr. Bul. Pouch",
            Legs = JSE.Empyrean.Legs,
            Feet = "Malignance Boots"
        },
        Engaged = T{
            Head = "Adhemar Bonnet +1",
            Neck = "Null Loop",
            Ear1 = "Cessance Earring",
            Ear2 = "Mache Earring +1",
            Body = "Malignance Tabard",
            Hands = JSE.Empyrean.Hands,
            Ring1 = "Ilabrat Ring",
            Ring2 = "Regal Ring",
            Back = capes.tp,
            Waist = "Sailfi Belt +1",
            Legs = JSE.Empyrean.Legs,
            Feet = "Malignance Boots"
        }
    },
    weaponskill = T{
        default = T{
            Neck = 'Rep. Plat. Medal',
            Head = Nyame.Head,
            Body = Nyame.Body,
            Ear1 = "Moonshade Earring",
            Ear2 = "Ishvara Earring",
            Hands = JSE.Empyrean.Hands,
            Ring1 = "Ephramad's Ring",
            Ring2 = 'Regal Ring',
            Legs = Nyame.Legs,
            Feet = JSE.Relic.Feet,
            Waist = "Fotia Belt"
        },
        ['Savage Blade'] = T{
            Back =  capes.savage,
            Legs = JSE.Empyrean.Legs,
        },
        Evisceration = T{
            Head = Ambuscade.Meghanada.Head,
            Neck = 'Fotia Gorget',
            Body = Ambuscade.Mummu.Body,
            Hands = Ambuscade.Mummu.Hands,
            Ring1 = 'Mummu Ring',
            Ring2 = 'Regal Ring',
            Back = capes.tp,
            Legs = Ambuscade.Mummu.Legs,
            Feet = Ambuscade.Mummu.Feet,
        },
        ['Last Stand'] = T{
            Back = capes.last_stand,
            Feet = JSE.Relic.Feet
        },
        ['Aeolian Edge'] = T{
            Neck = "Sibyl Scarf",
            Ear2 = "Mache Earring +1",
            Body = JSE.Relic.Body,
            Hands = Nyame.Hands,
            Ring1 = "Metamor. Ring +1",
            Back = capes.leaden_salute,
            Waist = "Chiner's Belt +1",
            Feet = JSE.Relic.Feet,

        },
        ['Leaden Salute'] = T{
            Head = "Pixie Hairpin +1",
            Neck = "Sibyl Scarf",
            Ear2 = "Hecate's Earring",
            Ring2 = "Dingir Ring",
            Body = JSE.Relic.Body,
            Hands = Nyame.Hands,
            Back = capes.leaden_salute,
            Waist = "Eschan Stone",
            Feet = JSE.Relic.Feet,
        },
        Wildfire = T{
            Neck = "Sibyl Scarf",
            Ear2 = "Hecate's Earring",
            Body = JSE.Relic.Body,
            Hands = Nyame.Hands,
            Back = capes.leaden_salute,
            Waist = "Eschan Stone",
            Feet = JSE.Relic.Feet,
        }
    },
    precast = T{
        default = T{
            Head = "Herculean Helm",
            Body = "Dread Jupon",
            Neck = "Voltsurge Torque",
            Ring1 = "Kishar Ring",
            Ring2 = "Naji's Loop"
        }
    },
    midcast = T{
        default = T{
            Neck = "Reti Pendant",
            Ear2 = "Calamitous Earring",
            Feet = "Taeon Boots"
        },
        Cure = T{
            Ear1 = "Mendi. Earring",
            Ring1 = "Lebeche Ring",
            Ring2 = "Naji's Loop",
            Back = "Solemnity Cape"
        },
        Curaga = T{
            Ear1 = "Mendi. Earring",
            Ring1 = "Lebeche Ring",
            Ring2 = "Naji's Loop",
            Back = "Solemnity Cape"
        }
    },
    preshot = T{
        default = T{
            Head = JSE.Empyrean.Head, -- 0%
            Neck = "Comm. Charm +1", -- 3%
            Body = 'Oshosi Vest +1', -- 9%
            Hands = { Name = 'Carmine Fin. Ga. +1', AugPath='D' }, -- 8%
            Back = capes.snapshot, -- 10%
            Ring1 = "Crepuscular Ring", -- 3%
            Waist = 'Impulse Belt', -- 3%
            Legs = { Name = 'Adhemar Kecks +1', AugPath='D' }, -- 10%
            Feet = 'Meg. Jam. +2', -- 10%
            -- Total Snapshot: 61/60%
        },
        buffs = T{
            ["Triple Shot"] = T{
                -- triple shot gear goes here, for example.
                Hands = JSE.Relic.Hands
            }
        }
    },
    midshot = T{
        default = T{
            Head = JSE.Empyrean.Head,
            Neck = 'Iskur Gorget',
            Ear1 = 'Telos Earring',
            Ear2 = 'Crep. Earring',
            Body = 'Malignance Tabard',
            Hands = Odyssey.Ikenga.Hands,
            Ring1 = 'Ephramad\'s Ring',
            Ring2 = 'Crepuscular Ring',
            Back = capes.ranged_tp,
            Waist = 'Null Belt',
            Legs = JSE.Empyrean.Legs,
            Feet = Odyssey.Ikenga.Feet,
        }
    },
    item = T{
        default = T{
            -- item use set goes here, if you have one.
        }
    },
    ability = T{
        default = T{
            -- ability set goes here
        },
        phantomRoll = T{
            Head = JSE.Relic.Head,
            Hands = JSE.Empyrean.Hands,
            Ring1 = "Barataria Ring",
            Back = "Camulus's Mantle"
        },
        quickDraw = T{
            Head = JSE.Empyrean.Head,
            Neck = "Null Loop",
            Ear1 = "Crep. Earring",
            Ear2 = JSE.Empyrean.Earring,
            Body = "Malignance Tabard",
            Hands = JSE.Empyrean.Hands,
            Ring1 = "Dingir Ring",
            Ring2 = "Crepuscular Ring",
            Back = capes.leaden_salute,
            Waist = "Svelt. Gouriz +1",
            Legs = JSE.Empyrean.Legs,
            Feet = "Malignance Boots" 
        },
        ["Wild Card"] = T{
            Feet = JSE.Relic.Feet
        },
        ['Random Deal'] = T{
            Body = JSE.Relic.Body
        },
        ['Curing Waltz'] = T{

        }
    },
    lockstyle = T{
        Main = "Shijo",
        Sub = "Twinned Shield",
        Head = "Lanun Tricorne",
        Body = "Navarch's Frac",
        Hands = "Chasseur's Gants +3",
        Legs = "Arbatel Pants +2",
        Feet = "Arbatel Loafers +3"
    }
}

--Fencer
modes.registerSets('fencer', sets)

modes.enableOverrideLayers()
-- -- TP set (57 DW needed)
-- modes.registerOverride("Dual Wield", T{
--     general = T{
--         Engaged = T{
--             Ear1 = "Eabani Earring", -- 4 DW
--             Ear2 = "Suppanomimi", -- 5 DW
--             Body = "Adhemar Jacket", -- 5 DW
--             Hands = "Taeon Gloves", -- 3 DW
--             Legs = "Carmine Cuisses +1", -- 6 DW
--             Feet = "Taeon Boots" -- 8 DW
--         }
--     }
-- }, "31")
-- -- modes.registerOverride("Dual Wield", T{
-- --     general = T{
-- --         Engaged = T{
-- --             Ear1 = "Eabani Earring", -- 4 DW
-- --             Ear2 = "Suppanomimi", -- 5 DW
-- --             Body = "Adhemar Jacket", -- 5 DW
-- --             Hands = "Taeon Gloves", -- 3 DW
-- --             Legs = "Carmine Cuisses +1", -- 6 DW
-- --             Feet = "Taeon Boots" -- 8 DW
-- --         }
-- --     }
-- -- }, "31")
-- modes.registerOverride("Dual Wield", T{
--     general = T{
--         Engaged = T{
--             Ear1 = "Eabani Earring", -- 4 DW
--             Ear2 = "Suppanomimi", -- 5 DW
--             Body = "Adhemar Jacket", -- 5 DW
--             Hands = "Taeon Gloves", -- 3 DW
--             Legs = "Carmine Cuisses +1", -- 6 DW
--         }
--     }
-- }, "23")
-- modes.registerOverride("Dual Wield", T{
--     general = T{
--         Engaged = T{
--             Ear1 = "Eabani Earring", -- 4
--             Ear2 = "Suppanomimi", -- 5
--             Feet = "Taeon Boots" -- 8
--         }
--     }
-- }, "17")
modes.registerOverride("Snapshot", T{
    preshot = T{
        default = T{
            Body = JSE.Artifact.Body
        },
        buffs = T{
            ['Triple Shot'] = T{
                Body = JSE.Empyrean.Body
            }
        }
    }
}, "Flurry I")

modes.registerOverride("Snapshot", T{
    preshot = T{
        default = T{
            Body = JSE.Artifact.Body,
            Feet = "Pursuer's Gaiters"
        },
        buffs = T{
            ['Triple Shot'] = T{
                Body = JSE.Empyrean.Body
            }
        }
    }
}, "Flurry II")

modes.registerOverride("Turtle", T{
    general = T{
        Idle = T{
            Head = JSE.Empyrean.Head, 
        },
        Engaged = T{
            Neck = "Null Loop",
            Ring1 = "Defending Ring",
            Body = "Malignance Tabard",
            Hands = "Malignance Gloves"
        }
    }
})

modes.registerOverride('Reraise', T{
    general = T{
        Idle = T{
            Neck = "Airmid's Gorget",
            Ring1 = "Warp Ring",
            Ring2 = "Dim. Ring (Holla)"
        }
    }
})

modes.registerOverride('WS under weather', {
    weaponskill = T{
        ['Hot Shot'] = T{
            Waist = "Hachirin-no-Obi"
        },
        ['Leaden Salute'] = T{
            Waist = "Hachirin-no-Obi"
        },
        ['Wildfire'] = T{
            Waist = "Hachirin-no-Obi"
        },
        ['Aeolian Edge'] = T{
            Waist = "Hachirin-no-Obi"
        },
        ['Burning Blade'] = T{
            Waist = "Hachirin-no-Obi"
        }
    }
})

modes.registerOverride('TH', T{
    midshot = T{
        default = T{
            Head = "Wh. Rarab Cap +1",
            Waist = "Chaac Belt",
            Legs = "Herculean Trousers"
        }
    },
    weaponskill = T{
        Requiescat = T{
            Head = "Wh. Rarab Cap +1",
            Waist = "Chaac Belt",
            Legs = "Herculean Trousers"
        }
    }
})

modes.registerOverride('Accuracy', {
    midshot = T{
        default = T{
            Head = JSE.Empyrean.Head,
            Neck = "Null Loop",
            Ear1 = "Telos Earring",
            Ear2 = "Crep. Earring",
            Body = "Malignance Tabard",
            Hands = "Malignance Gloves",
            Ring1 = "Ephramad's Ring",
            Ring2 = "Crepuscular Ring",
            Back = capes.ranged_tp,
            Waist = "Null Belt",
            Legs = JSE.Empyrean.Legs,
            Feet = "Malignance Boots"
        }
    }
}, "Hybrid")
modes.registerOverride('Accuracy', {
    general = T{
        Engaged = T{
            Head = Ambuscade.Mummu.Head,
            Neck = "Null Loop",
            Ear1 = "Mache Earring +1",
            Ear2 = "Telos Earring",
            Body = "Malignance Tabard",
            Hands = Ambuscade.Mummu.Hands,
            Ring1 = "Ephramad's Ring",
            Ring2 = "Ilabrat Ring",
            Back = capes.tp,
            Waist = "Null Belt",
            Legs = JSE.Empyrean.Legs,
            Feet = "Malignance Boots"
        }
    },
    midshot = T{
        default = T{
            Head = JSE.Empyrean.Head,
            Neck = "Null Loop",
            Ear1 = "Telos Earring",
            Ear2 = "Crep. Earring",
            Body = JSE.Artifact.Body,
            Hands = JSE.Empyrean.Hands,
            Ring1 = "Ephramad's Ring",
            Ring2 = "Crepuscular Ring",
            Back = "Null Shawl",
            Waist = "Null Belt",
            Legs = JSE.Empyrean.Legs,
            Feet = "Malignance Boots"
        }
    }
}, 'Max (1435/1453/1440)')

modes.enableWeaponGroups()
modes.registerWeaponGroup('Rolls', {
    Main = augSets.lanun_knife.Rolls,
    Sub = "Nusku Shield",
    constraints = T{
        Constraint.Invert(Constraint.HasDualWield)
    }
}) 
modes.registerWeaponGroup('DW Rolls', {
    Main = augSets.lanun_knife.Rolls,
    Sub = "Demers. Degen +1",
    constraints = T{
        Constraint.HasDualWield
    }
})
modes.registerWeaponGroup('Shooting', {
    Main = augSets.lanun_knife.STP,
    Sub = "Nusku Shield",
    constraints = T{
        Constraint.Invert(Constraint.HasDualWield)
    }
})
modes.registerWeaponGroup('DW Shooting', {
    Main = augSets.lanun_knife.STP,
    Sub = "Kustawi +1",
    constraints = T{
        Constraint.HasDualWield
    }
})
modes.registerWeaponGroup('Naegling', {
    Main = "Naegling",
    Sub = "Demers. Degen +1",
    constraints = T{
        Constraint.HasDualWield,
        Constraint.HasSubjob('NIN')
    }
})
modes.registerWeaponGroup('Naegling Gleti\'s', {
    Main = "Naegling",
    Sub = "Gleti's Knife",
    constraints = T{
        Constraint.HasDualWield,
        Constraint.HasSubjob("DNC")
    }
})
modes.registerWeaponGroup('Tauret', {
    Main = "Tauret",
    Sub = "Gleti's Knife",
    constraints = T{
        Constraint.HasDualWield
    }
})
modes.registerWeaponGroup('Magic WS', {
    Main = "Tauret",
    Sub = "Naegling",
    constraints = T{
        Constraint.HasDualWield
    }
})
modes.registerWeaponGroup('Blunt', {
    Main = 'Gozuki Mezuki',
    Sub = "Alber Strap"
})


modes.enableSecondaryGroups()
modes.registerSecondaryGroup('Rolls', {
    Range = "Compensator",
    Ammo = "Chrono Bullet"
})
modes.registerSecondaryGroup('Anarchy', {
    Range = "Anarchy +2"
})
modes.registerSecondaryGroup('Fomalhaut', {
    Range = "Fomalhaut",
    Ammo = "Chrono Bullet"
})
return smart():aAppendPacker({
    { Name = "Chrono Bullet", Quantity = "All" },
    { Name = "Trump Card", Quantity = 99}
})