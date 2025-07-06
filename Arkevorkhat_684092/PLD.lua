---@type smart
local smart = gFunc.LoadFile('smart.lac/smart.lua')
if not smart then return nil end

gFunc.LoadFile('common')

assert(modes ~= nil, "Modes is unexpectedly nil.")

local JSE = T{
    Artifact = T{
        Body = "Rev. Surcoat +1"
    },
    Empyrean = T{
        Legs = "Chev. Cuisses +2"
    }
}

local sets = T{
    general = T{
        Idle = T{
            Ammo = "Crepuscular Pebble",
            Head = Odyssey.Sakpata.Head,
            Neck = "Null Loop",
            Ear1 = "Odnowa Earring +1",
            Ear2 = "Chev. Earring +1",
            Body = JSE.Artifact.Body,
            Hands = "Sakpata's Gauntlets",
            Ring1 = "Moonbeam Ring",
            Ring2 = "Ephramad's Ring",
            Back = "Rudianos's Mantle",
            Waist = "Plat. Mog. Belt",
            Legs = JSE.Empyrean.Legs,
            Feet = "Nyame Sollerets"
        },
        Engaged = T{
            Ammo = "Crepuscular Pebble",
            Head = Odyssey.Sakpata.Head,
            Neck = "Null Loop",
            Ear1 = "Odnowa Earring +1", 
            Ear2 = "Chev. Earring +1",
            Body = JSE.Artifact.Body,
            Hands = "Sakpata's Gauntlets",
            Ring1 = "Moonbeam Ring",
            Ring2 = "Ephramad's Ring",
            Back = "Rudianos's Mantle",
            Waist = "Plat. Mog. Belt",
            Legs = JSE.Empyrean.Legs,
            Feet = "Nyame Sollerets"
        }
    },
    weaponskill = T{
        default = T{
            Ammo = "Oshasha's Treatise",
            Head = "Nyame Helm",
            Neck = "Fotia Gorget",
            Ear1 = "Moonshade Earring",
            Ear2 = "Ishvara Earring",
            Body = "Nyame Mail",
            Hands = "Nyame Gauntlets",
            Ring1 = "Regal Ring",
            Ring2 = "Rajas Ring",
            Waist = "Fotia Belt", 
            Legs = "Nyame Flanchard",
            Feet = "Nyame Sollerets"
        }
    },
    precast = T{
        default = T{
            Ammo = "Sapience Orb",
            Neck = "Voltsurge Torque",
            Ear2 = 'Loquac. Earring',
            Body = "Odyss. Chestplate",
            Ring1 = "Kishar Ring",
            Ring2 = "Prolix Ring",
            Legs = {Name='Eschite Cuisses', AugPath='D'},
            Feet = "Odyssean Greaves"
        },
        Cure = T{
            Ear2 = "Mendi. Earring"
        }
    },
    midcast = T{
        default = T{
            Ammo = "Staunch Tathlum",
            Head = "Cab. Coronet +1",
            Neck = "Moonbeam Necklace",
            Ear1 = "Odnowa Earring +1",
            Ear2 = "Halasz Earring",
            Body = "Rev. Surcoat +1",
            Hands = "Sakpata's Gauntlets",
            Ring1 = "Moonbeam Ring",
            Ring2 = "Apeile Ring",
            Waist = "Plat. Mog. Belt",
            Legs = "Carmine Cuisses +1",
            Feet = "Odyssean Greaves"
        },
        enmity = T{
            Ammo = "Sapience Orb",
            Head = "Cab. Coronet +1",
            Neck = "Moonbeam Necklace",
            Ear1 = "Tuisto Earring",
            Ear2 = "Cassie Earring",
            Body = "Rev. Surcoat +1",
            Hands = "Yorium Gauntlets",
            Ring1 = "Petrov Ring",
            Ring2 = "Apeile Ring",
            Back = "Tantalic Cape",
            Legs = {Name = "Eschite Cuisses", AugPath="A"},
            Feet = "Yorium Sabatons"
        },
        Cure = T{
            Ear2 = "Chev. Earring +1"
        }
    },
    ability = T{
        default = T{},
        enmity = T{
            
        }
    },
    lockstyle = T{
        "Twinned Blade",
        "Twinned Shield",
        "Creed Armet",
        "Mekira Meikogai",
        "Yorium Gauntlets",
        "Odyssean Cuisses",
        "Odyssean Greaves"
    }
}

modes.enableWeaponGroups()
modes.registerWeaponGroup('Tanking', {
    Main = "Sakpata's Sword",
    Sub = "Priwen"
})
modes.registerWeaponGroup('DD', {
    Main = "Naegling",
    Sub = "Priwen"
})
modes.registerWeaponGroup('DW', {
    Main = "Naegling",
    Sub = "Demers. Degen +1",
    constraints = T{
        Constraint.HasDualWield
    }
})

modes.enableOverrideLayers()
modes.registerOverride('warp', {
    general = T{
        Idle = T{
            Ring1 = "Warp Ring",
            Ring2 = "Dim. Ring (Holla)"
        }
    }
})

modes.registerOverride('DD', {
    
})
return smart(sets)