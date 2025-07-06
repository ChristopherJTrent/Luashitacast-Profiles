local smart = gFunc.LoadFile('smart.lac/smart.lua')
gFunc.LoadFile('common')
if not smart or not modes then return nil end

local JSE = T{
    Artifact = T{

    },
    Relic = T{
       Head = "Hes. Crown",
       Body = "Hes. Cyclas",
       Hands = "Hes. Gloves",
       Legs = "Hes. Hose",
       Feet = "Hes. Gaiters"
    },
    Empyrean = T{
        Legs = "Bhikku Hose +2"
    }
}

local sets = T{
    general = T{
        Idle = T{
            Head = "Nyame Helm",
            Body = "Nyame Mail",
            Hands = "Nyame Gauntlets",
            Legs = "Nyame Flanchard",
            Feet = "Nyame Sollerets",
            Ring1 = "Defending Ring",
            Ring2 = "Shneddick Ring"
        },
        Engaged = T{
            Ammo = "Coiste Bodhar",
            Head = "Adhemar Bonnet +1",
            Neck = "Asperity Necklace",
            Ear1 = "Sherida Earring",
            Ear2 = "Schere Earring",
            Body = "Mpaca's Doublet",
            Hands = Ambuscade.Mummu.Hands,
            Ring1 = "Gere Ring",
            Ring2 = "Niqmaddu Ring",
            Back = "Segomo's Mantle",
            Waist = "Grunfeld Rope",
            Legs = JSE.Empyrean.Legs,
            Feet = "Malignance Boots"
        }
    },
    weaponskill = T{
        default = T{
            Ammo = "Knobkierrie",
            Ear1 = "Sherida Earring",
            Ear2 = "Moonshade Earring",
            Head = "Mpaca's Cap",
            Neck = "Fotia Gorget",
            Body = "Mpaca's Doublet",
            Hands = Ambuscade.Mummu.Hands,
            Ring1 = "Regal Ring",
            Ring2 = "Niqmaddu Ring",
            Back = "Segomo's Mantle",
            Waist = "Fotia Belt",
            Legs = "Mpaca's Hose",
            Feet = Ambuscade.Mummu.Feet
        },
        ['Shijin Spiral'] = T{
            Head = "Adhemar Bonnet +1",
            Ear2 = "Mache Earring +1",
            Body = "Malignance Tabard",
            Legs = Ambuscade.Mummu.Legs,
            Feet = "Malignance Boots"
        },
        ['Victory Smite'] = T{
            Ear2 = "Schere Earring",
            Hands = "Mpaca's Gloves",
            Feet = "Nyame Sollerets"
        }
    },
    lockstyle = JSE.Relic
}

modes.enableWeaponGroups()

modes.registerWeaponGroup('default', {
    Main = "Sakpata's Fists"
})

modes.registerWeaponGroup('Ambu', {
    Main = Ambuscade.Weapon.H2H
})

modes.enableOverrideLayers()

modes.registerOverride(
    "Warp",
    {
        general = T{
            Idle = T{
                Ring1 = "Warp Ring"
            }
        }
    }
)

modes.registerOverride('Accuracy', {
    general = T{
        Engaged = T{
            Head = "Mpaca's Cap"
        }
    }
})

modes.registerOverride('TP Denial', {
    general = T{
        Engaged = T{
            Ammo = "Coiste Bodhar",
            Head = "Adhemar Bonnet +1",
            Neck = "Bathy Choker +1",
            Ear1 = "Schere Earring",
            Ear2 = "Sherida Earring",
            Body = Odyssey.Mpaca.Body,
            Hands = "Gazu Bracelets +1",
            Ring1 = "Niqmaddu Ring",
            Ring2 = "Ephramad's Ring",
            Back = "Segomo's Mantle",
            Waist = "Grunfeld Rope",
            Legs = Odyssey.Mpaca.Legs,
            Feet = Ambuscade.Mummu.Feet
        }
    }
})

return smart(sets)