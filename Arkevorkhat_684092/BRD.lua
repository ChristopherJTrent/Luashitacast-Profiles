local smart = gFunc.LoadFile("smart.lac/smart.lua")

gFunc.LoadFile('common')

if (not smart) or (not modes) then return nil end

local sets = T{
    general = T{
        Idle = T{
            Head = Ambuscade.Ayanmo.Head,
            Body = Ambuscade.Ayanmo.Body,
            Hands = Ambuscade.Ayanmo.Hands,
            Legs = Ambuscade.Ayanmo.Legs,
            Feet = "Bunzi's Sabots",
            Neck = "Null Loop",
            Ring1 = "Defending Ring",
            Ring2 = "Shneddick Ring",
            Ear1 = "Ethereal Earring",
            Ear2 = "Fili Earring +1",
            Back = "Solemnity Cape",
            Waist = "Svelt. Gouriz +1"
        },
        Engaged = T{
            Head = Ambuscade.Ayanmo.Head,
            Body = Ambuscade.Ayanmo.Body,
            Hands = "Bunzi's Gloves",
            Legs = Ambuscade.Ayanmo.Legs,
            Feet = "Bunzi's Sabots",
            Neck = "Null Loop",
            Ring1 = "Defending Ring",
            Ring2 = "Shneddick Ring",
            Ear1 = "Ethereal Earring",
            Ear2 = "Fili Earring +1",
            Back = "Null Shawl",
            Waist = "Svelt. Gouriz +1"
        }
    },
    precast = T{
        default = T{
            Neck = "Voltsurge Torque",
            Ear1 = "Loquac. Earring",
            Body = Ambuscade.Inyanga.Body,
            Hands = "Gende. Gages +1",
            Ring1 = "Kishar Ring",
            Ring2 = "Prolix Ring",
            Back = "Swith Cape +1",
            Waist = "Channeler's Stone",
            Legs = Ambuscade.Ayanmo.Legs
        },
    },
    midcast = T{
        default = T{

        },
        ['Bard Song'] = T{
            Neck = "Moonbow Whistle",
            Body = "Fili Hongreline +1",
            Legs = Ambuscade.Inyanga.Legs
        },
        ['Healing Magic'] = T{
            Head = {Name = "Vanya Hood", AugPath = "C"},
            Body = "Kaykaus Bliaut",
            Hands = "Telchine Gloves",
            Neck = "Nodens Gorget",
            Ear1 = "Mendi. Earring",
            Ear2 = "Calamitous Earring",
            Ring1 = "Naji's Loop"
        },
        ['Enhancing Magic'] = T{
            Head = "Telchine Cap",
            Hands = "Telchine Gloves",
            Legs = "Telchine Braconi",
            Feet = "Telchine Pigaches"
        }
    },
    weaponskill = T{
        default = T{
            Head = "Nyame Helm",
            Body = "Nyame Mail",
            Hands = "Nyame Gauntlets",
            Legs = "Nyame Flanchard",
            Feet = "Nyame Sollerets",
            Ear1 = "Moonshade Earring",
            Ear2 = "Ishvara Earring",
            --Ring1 = "Cornelia's Ring"
        }
    },
    lockstyle = T{
        "Aoidos' Calot",
        "Fili Hongreline +1",
        "Chasseur's Gants +3",
        "Arbatel Pants +2",
        "Arbatel Loafers +3"
    }
}

modes.enableWeaponGroups()
modes.enableSecondaryGroups()

modes.registerSets('default', sets)

modes.registerWeaponGroup('default', {
    Main = "Kali",
    Sub = "Ammurapi Shield"
})
modes.registerWeaponGroup('dd', {
    Main = "Naegling",
    Sub = "Gleti's Knife",
    constraints = T{
        Constraint.HasDualWield
    }
})
modes.registerWeaponGroup('DD_Fencer', {
    Main = "Naegling",
    Sub = "Ammurapi Shield"
})

modes.registerSecondaryGroup('flute', {
    Range = "Linos"
})
modes.registerSecondaryGroup('harp', {
    Range = "Terpander"
})

return smart()