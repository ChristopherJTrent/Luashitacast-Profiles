local smart = gFunc.LoadFile("Smart.LAC/smart.lua")

if (not smart) or (not modes) then return nil end

local sets = T{
    general = T{
        Idle = T{
            Ammo = "Crepuscular Pebble",
            Head = "Nyame Helm",
            Neck = "Bathy Choker +1",
            Ear1 = "Eabani Earring",
            Ear2 = "Ethereal Earring",
            Body = "Hashishin Mintan +2",
            Hands = "Nyame Gauntlets",
            Ring1 = "Defending Ring",
            Back = "Solemnity Cape",
            Waist = "Sailfi Belt +1",
            Legs = "Carmine Cuisses +1",
            Feet = "Nyame Sollerets"
        },
        Engaged = T{
            Ammo = "Coiste Bodhar",
            Head = "Adhemar Bonnet +1",
            Neck = "Asperity Necklace",
            Ear1 = "Brutal Earring",
            Ear2 = "Cessance Earring",
            Body = Ambuscade.Ayanmo.Body,
            Hands = "Nyame Gauntlets",
            Ring1 = "Ilabrat Ring",
            Ring2 = "Hetairoi Ring",
            Back = "Null Shawl",
            Waist = "Sailfi Belt +1",
            Legs = "Taeon Tights",
            Feet = "Herculean Boots"
        }
    },
    precast = T{
        default = T{
            Ammo = "Sapience Orb",
            Head = "Herculean Helm",
            Neck = "Voltsurge Torque",
            Ear1 = "Loquac. Earring",
            Body = "Dread Jupon",
            Ring1 = "Prolix Ring",
            Ring2 = "Kishar Ring",
            Legs = Ambuscade.Ayanmo.Legs,
            Back = "Swith Cape +1"
        },
        ['Blue Magic'] = T{
            Body = "Hashishin Mintan +2",
            Hands = "Hashi. Bazu. +1"
        }
    },
    midcast = T{
        default = T{    
            Ammo = "Pemphredo Tathlum",
            Head = Ambuscade.Jhakri.Head,
            Neck = "Sibyl Scarf",
            Ear1 = "Hecate's Earring",
            Ear2 = "Regal Earring",
            Body = Ambuscade.Jhakri.Body,
            Hands = "Nyame Gauntlets",
            Ring1 = "Metamor. Ring +1",
            Ring2 = Ambuscade.Jhakri.Ring,
            Back = "Izdubar Mantle",
            Waist = "Acuity Belt +1",
            Legs = "Hashishin Tayt +2",
            Feet = Ambuscade.Jhakri.Feet
        }
    },
    lockstyle = T{
        "Hashishin Kavuk +2",
        "Hashishin Mintan +2",
        "Hashi. Bazu. +1",
        "Hashishin Tayt +2",
        "Hashishin Basmak"
    }
}

modes.enableWeaponGroups()

modes.registerWeaponGroup('default', {
    Main = "Naegling",
    Sub = "Culminus"
})
modes.registerWeaponGroup('dual-wield', {
    Main = "Naegling",
    Sub = "Sakpata's Sword"
})
modes.registerWeaponGroup('nuking', {
    Main = "Bunzi's Rod",
    Sub = "Maxentius"
})
modes.registerWeaponGroup('1dmg', {
    Main = "Twinned Blade",
    Sub = "Blizzard Brand"
})

modes.enableOverrideLayers()

modes.registerOverride('DT', {
    general = T{
        Engaged = T{
            Body = "Malignance Tabard",
            Feet = "Malignance Boots"
        }
    }
}, "Hybrid")
modes.registerOverride('DT', {
    general = T{
        Engaged = T{
            Body = "Hashishin Mintan +2",
            Hands = "Nyame Gauntlets",
            Legs = "Hashishin Tayt +2",
            Ring1 = "Defending Ring",
            Neck = "Null Loop",
            Ammo = "Crepuscular Pebble"
        }
    }
}, "Turtle")

modes.registerOverride('Learning', T{
    general = T{
        Idle = T{
            Hands = "Assim. Bazu."
        },
        Engaged = T{
            Head = "Herculean Helm",
            Hands = "Assim. Bazu.",
            Feet = "Malignance Boots"
        }
    },
    midcast = T{
        default = T{
            Hands = "Assim. Bazu."
        }
    },
    Weaponskill = T{
        default = T{
            Hands = "Assim. Bazu."
        }
    }
})

modes.registerOverride('TH', {
    general = {
        Engaged = {
            Ammo = "Per. Lucky Egg",
            Waist = "Chaac Belt",
            Legs = "Herculean Trousers"
        }
    },
    midcast = T{
        default = {
            Ammo = "Per. Lucky Egg",
            Waist = "Chaac Belt",
            Legs = "Herculean Trousers"
        }
    },
})

return smart(sets)