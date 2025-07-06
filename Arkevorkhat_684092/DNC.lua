local smart = gFunc.LoadFile('Smart.LAC/smart')
gFunc.LoadFile('common')

if not smart then return nil end

local JSE = T{
    Artifact = T{},
    Relic = T{
        Head = "Etoile Tiara",
        Body = "Etoile Casaque",
        Hands = "Etoile Bangles",
        Legs = "Etoile Tights",
        Feet = "Etoile Toe Shoes"
    },
    Empyrean = T{
        Head = "Charis Tiara +1",
        Body = "Charis Casaque",
        Hands = "Charis Bangles",
        Legs = "Charis Tights +1",
        Feet = "Charis Toe Shoes +1"
    }    
}

local sets = T{
    general = T{
        Idle = T{           
            Head = "Adhemar Bonnet +1",
            Neck = "Anu Torque",
            Ear1 = "Sherida Earring",
            Ear2 = "Telos Earring",
            Body = "Malignance Tabard",
            Hands = "Malignance Gloves",
            Ring1 = "Defending Ring",
            Ring2 = "Shneddick Ring",
            Back = "Null Shawl",
            Waist = "Sailfi Belt +1",
            Legs = Ambuscade.Meghanada.Legs,
            Feet = "Malignance Boots"   
        },
        Engaged = T{
            Head = "Adhemar Bonnet +1",
            Neck = "Anu Torque",
            Ear1 = "Sherida Earring",
            Ear2 = "Telos Earring",
            Body = "Malignance Tabard",
            Hands = "Malignance Gloves",
            Ring1 = "Ilabrat Ring",
            Ring2 = "K'ayres Ring",
            Back = "Null Shawl",
            Waist = "Sailfi Belt +1",
            Legs = Ambuscade.Meghanada.Legs,
            Feet = "Malignance Boots"
        }
    },
    weaponskill = T{
        default = T{
            Ammo = "Oshasha's Treatise",
            Head = Nyame.Head,
            Neck = "Rep. Plat. Medal",
            Ear1 = "Moonshade Earring",
            Ear2 = "Ishvara Earring",
            Body = Nyame.Body,
            Hands = Ambuscade.Meghanada.Hands,
            --Ring1 = "Cornelia's Ring",
            Ring2 = "Ilabrat Ring",
            Back = "Toetapper Mantle",
            Waist = "Sailfi Belt +1",
            Legs = Nyame.Legs,
            Feet = Nyame.Feet
        },
        Evisceration = T{
            Ammo = "Crepuscular Pebble",
            Head = Ambuscade.Mummu.Head,
            Neck = "Fotia Gorget",
            Ear2 = "Mache Earring +1",
            Body = Ambuscade.Mummu.Body,
            Hands = Ambuscade.Mummu.Hands,
            Ring1 = "Hetairoi Ring",
            Ring2 = Ambuscade.Mummu.Ring,
            Back = "Tantalic Cape",
            Waist = "Fotia Belt",
            Legs = Ambuscade.Mummu.Legs,
            Feet = Ambuscade.Mummu.Feet
        }
    },
    ability = T{
        default = T{},
        jigs = T{
            Legs = JSE.Relic.Legs
        },
        sambas = T{},
        steps = T{
            Feet = JSE.Relic.Feet
        },
        ['Curing Waltz'] = T{
            Head = JSE.Relic.Head,
        },
        ['Divine Waltz'] = T{
            Head = JSE.Relic.Head
        }
    },
    lockstyle = {
        Head = JSE.Empyrean.Head,
        Body = JSE.Relic.Body,
        Hands = JSE.Relic.Hands,
        Legs = JSE.Relic.Legs,
        Feet = JSE.Relic.Feet
    }
}

modes.enableWeaponGroups()
modes.registerWeaponGroup('default', {
    Main = "Tauret",
    Sub = "Gleti's Knife"
})

modes.enableOverrideLayers()

modes.registerOverride('Ring2', {
    general = T{
        Idle = T{
            Ring2 = "Warp Ring"
        }
    }
}, "Warp Ring")
modes.registerOverride('Ring2', {
    general = T{
        Idle = T{
            Ring2 = "Dim. Ring (Holla)"
        }
    }
}, "Holla")
return smart(sets)