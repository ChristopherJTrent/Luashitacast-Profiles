local smart = gFunc.LoadFile('smart.lac/smart')
gFunc.LoadFile('common.lua')

if not smart then return nil end

---@type JSE
local JSE = T{
    
    Empyrean = T{
        Head = "Unkai Kabuto",
        Body = "Kasuga Domaru +2",
        Hands = "Kasuga Kote +2",
        Legs = "Kasuga Haidate +2",
        Feet = "Unkai Sune-ate"
    }
}

local sets = T{
    general = T{
        Idle = T{
            Ammo = "Crepuscular Pebble",
            Head = Nyame.Head,
            Neck = "Bathy Choker +1",
            Ear1 = "Eabani Earring",
            Ear2 = "Influx Earring",
            Body = JSE.Empyrean.Body,
            Hands = Nyame.Hands,
            Back = "Null Shawl",
            Waist = "Null Belt",
            Legs = JSE.Empyrean.Legs,
            Feet = Nyame.Feet,
            Ring1 = "Defending Ring",
            Ring2 = "Shneddick Ring"
        },
        Engaged = T{
            Ammo = "Coiste Bodhar",
            Head = Ambuscade.Flamma.Head,
            Neck = "Moonbeam Nodowa",
            Ear1 = "Telos Earring",
            Ear2 = "Crep. Earring",
            Body = JSE.Empyrean.Body,
            Hands = Ambuscade.Flamma.Hands,
            Ring1 = "Ephramad's Ring",
            Ring2 = "Ilabrat Ring",
            Back = "Null Shawl",
            Waist = "Sailfi Belt +1",
            Legs = JSE.Empyrean.Legs,
            Feet = Ambuscade.Flamma.Feet
        }
    },
    weaponskill = T{
        default = T{
            Ammo = "Knobkierrie",
            Head = "Mpaca's Cap",
            Neck = "Rep. Plat. Medal",
            Ear1 = "Moonshade Earring",
            Ear2 = "Ishvara Earring",
            Body = "Nyame Mail",
            Hands = JSE.Empyrean.Hands,
            Ring1 = "Ephramad's Ring",
            Ring2 = "Regal Ring",
            Waist = "Fotia Belt",
            Legs = "Nyame Flanchard",
            Feet = "Nyame Sollerets"
        }
    },
    lockstyle = {
        JSE.Empyrean.Head,
        JSE.Empyrean.Body,
        JSE.Empyrean.Hands,
        JSE.Empyrean.Legs,
        JSE.Empyrean.Feet,
        "Mutsunokami"
    }
}

modes.enableWeaponGroups()
modes.registerWeaponGroup('gKT', {
    Main = "Ichigohitofuri",
    Sub = Ambuscade.Weapon.Grip
})
modes.registerWeaponGroup('Polearm', {
    Main = Ambuscade.Weapon.Polearm,
    Sub = Ambuscade.Weapon.Grip
})

modes.enableOverrideLayers()

modes.registerOverride('Warps',{
    general = T{
        Idle = T{
            Ring1 = "Warp Ring"
        }
    }
}, "Warp")
modes.registerOverride('Warps',{
    general = T{
        Idle = T{
            Ring1 = "Dim. Ring (Holla)"
        }
    }
}, "Holla")

modes.registerOverride('DT', {
    general = T{
        Engaged = T{
            Hands = "Nyame Gauntlets",
            Ring1 = "Defending Ring"
        }
    }
})

modes.registerOverride('JSENeck', {
    general = T{
        Idle = T{
            Neck = "Sam. Nodowa +1",
        },
        Engaged = T{
            Neck = "Sam. Nodowa +1"
        }
    }
})

return smart(sets)