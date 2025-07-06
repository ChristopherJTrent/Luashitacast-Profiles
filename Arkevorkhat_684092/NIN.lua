local smart = gFunc.LoadFile("Smart.LAC/smart.lua")
if (not smart) or (not modes) then return nil end

local sets = T{
    general = T{
        Idle = T{
            Head = 'Nyame Helm',
            Neck = 'Null Loop',
            Ear1 = 'Mache Earring +1',
            Ear2 = 'Eabani Earring',
            Body = 'Nyame Mail',
            Hands = 'Nyame Gauntlets',
            Ring1 = 'Defending Ring',
            Ring2 = 'Shneddick Ring',
            Back = 'Solemnity Cape',
            Waist = 'Sailfi Belt +1',
            Legs = 'Nyame Flanchard',
            Feet = "Nyame Sollerets",
        },
        Engaged = T{
            Ammo = "Date Shuriken",
            Head = 'Mpaca\'s Cap',
            Neck = 'Iskur Gorget',
            Ear1 = 'Cessance Earring',
            Ear2 = 'Telos Earring',
            Body = "Mpaca's Doublet",
            Hands = 'Mummu Wrists +2',
            Ring1 = 'Hetairoi Ring',
            Ring2 = 'Gere Ring',
            Back = 'Null Shawl',
            Waist = 'Sailfi Belt +1',
            Legs = 'Mpaca\'s Hose',
            Feet = "Malignance Boots"
        }
    },
    weaponskill = T{
        default = T{
            Head = "Nyame Helm",
            Body = "Nyame Mail",
            Hands = "Nyame Gauntlets",
            Legs = "Nyame Flanchard",
            Feet = "Herculean Boots",
            Ear1 = "Moonshade Earring",
            Ear2 = "Ishvara Earring",
            --Ring1 = "Cornelia's Ring",
            Back = "Tantalic Cape"
        }, 
        ----------------------------
        --   Katana Weaponskills  --
        ----------------------------
        ['Blade: Rin'] = T{
            Neck = "Rep. Plat. Medal"
        },
        ['Blade: Retsu'] = T{
            Neck = "Rep. Plat. Medal"
        },
        ['Blade: Teki'] = T{
            Neck = "Sibyl Scarf"
        },
        ['Blade: Chi'] = T{
            Neck = "Sibyl Scarf"
        },
        ['Blade: To'] = T{
            Neck = 'Sibyl Scarf'
        },
        ['Blade: Ten'] = T{
            Neck = "Rep. Plat. Medal"
        },
        ---------------------------
        --   Other Weaponskills  --
        ---------------------------
        ['Savage Blade'] = T{
            Neck = "Rep. Plat. Medal"
        }
    },
    precast = T{
        default = T{
            Head = "Herculean Helm",
            Neck = "Voltsurge Torque",
            Body = "Dread Jupon",
            Hands = "Leyline Gloves",
            Ring1 = "Prolix Ring",
            Ring2 = "Kishar Ring",
            Ear1 = "Loquac. Earring"
        }
    },
    midcast = T{
        default = T{
            Head = "Nyame Helm",
            Neck = "Sibyl Scarf",
            Ear1 = "Hecate's Earring",
            Ear2 = "Moonshade Earring",
            Body = "Nyame Mail",
            Hands = "Nyame Gauntlets",
            Ring1 = "Dingir Ring",
            Back = "Izdubar Mantle",
            Waist = "Eschan Stone",
            Legs = "Nyame Flanchard",
            Feet = "Nyame Sollerets"
        }
    },
    item = T{
        default = {},
        ['Holy Water'] = T{
            Ring1 = "Purity Ring"
        }
    },
    lockstyle = T{
        Head = "Cumulus Masque +1",
        Body = "Esthete's Coat",
        Legs = "Arbatel Pants +2",
        Feet = "Arbatel Loafers +3"
    }
}

modes.enableWeaponGroups()

modes.registerWeaponGroup('default', {
    Main = "Kunimitsu",
    Sub = "Gleti's Knife"
})

modes.registerWeaponGroup('Dual KTs', {
    Main = "Kunimitsu",
    Sub = "Aizushintogo"
})

modes.registerWeaponGroup('TrialWeapon', {
    Main = "Kodachi of Trials",
    Sub = "Aizushintogo"
})

modes.registerWeaponGroup('Green Sword', {
    Main = "Naegling",
    Sub = "Gleti's Knife"
})
modes.registerWeaponGroup('Procs', {
    Main = nil,
    Sub = nil
})

modes.enableOverrideLayers()

modes.registerOverride('TH', {
    general = T{
        Engaged = T{
            Waist = "Chaac Belt",
            Legs = "Herculean Trousers"
        }
    }
})
return smart(sets):aAppendPacker({
    "Debahocho +1",
    "Esoteric Athame",
    "Blizzard Brand",
    "Twinned Blade",
    "Soulflayer's Wand",
    "Goujian",
    "Alber Strap",
    "Mutsunokami",
    "Lost Sickle +1",
    "Tzee Xicu's Blade",
    "Lamia Staff",
    { Name = "Chonofuda", Quantity = 99},
    { Name = "Inoshishinofuda", Quantity = 99},
    { Name = "Shikanofuda", Quantity = 99}
})

-- local warps = sets:copy(true)
-- warps.general.Idle.Ring1 = "Warp Ring"
-- warps.general.Idle.Ring2 = "Dim. Ring (Holla)"

-- local th = sets:copy(true)
-- th.general.Engaged.Head = "Wh. Rarab Cap +1"
-- th.general.Engaged.Waist = 'Chaac Belt'

-- modes.registerSets("default", sets)
-- modes.registerSets("warps", warps)
-- modes.registerSets('th', th)
-- return smart():aAppendPacker({
--     "Esoteric Athame",
--     "Debahocho +1",
--     "Blizzard Brand",
--     "Twinned Blade",
--     "Soulflayer's Wand",
--     "Goujian",
--     "Mutsunokami",
--     "Ark Scythe",
--     "Tzee Xicu's Blade",
--     "Lamia Staff",
--     "Tauret",
--     "Gleti's Knife"
-- })