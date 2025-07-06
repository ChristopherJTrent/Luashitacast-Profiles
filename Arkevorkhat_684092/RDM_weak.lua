local smart = gFunc.LoadFile('Smart.lac/smart')
gFunc.LoadFile('common')

if not smart then return nil end

local sets = T{
    general = T{
        Idle = T{
            Head = Ambuscade.Ayanmo.Head,
            Body = Ambuscade.Ayanmo.Body,
            Hands = Ambuscade.Ayanmo.Hands,
            Legs = Ambuscade.Ayanmo.Legs,
            Feet = Ambuscade.Ayanmo.Feet,
            Back = "Solemnity Cape"
        },
        Engaged = T{
            Head = Ambuscade.Ayanmo.Head,
            Neck = "Asperity Necklace",
            Ear1 = "Brutal Earring",
            Ear2 = "Enervating Earring",
            Body = Ambuscade.Ayanmo.Body,
            Hands= "Taeon Gloves",
            Ring1 = "Rajas Ring",
            Ring2 = "K'ayres Ring",
            Back = "Atheling Mantle",
            Waist = "Chiner's Belt +1",
            Legs = "Taeon Tights",
            Feet = "Taeon Boots"
        }
    },
    weaponskill = T{
        default = T{
            Ear2 = "Moonshade Earring",
            Hands = Ambuscade.Jhakri.Hands
        }
    },
    lockstyle = {
        "Viti. Chapeau +2",
        "Atrophy Tabard +2",
        "Atrophy Gloves +2",
        "Arbatel Pants +2",
        "Arbatel Loafers +3"
    }
}
modes.enableWeaponGroups()
modes.registerWeaponGroup('DW', {
    Main = "Demers. Degen +1",
    Sub = "Nibiru Cudgel",
    constraints = T{
        Constraint.HasDualWield
    }
})
modes.registerWeaponGroup('casting', {
    Main = "Nibiru Cudgel",
    Sub = "Genmei Shield",
    constraints = T{
        Constraint.Invert(Constraint.HasDualWield)
    }
})

return smart(sets)