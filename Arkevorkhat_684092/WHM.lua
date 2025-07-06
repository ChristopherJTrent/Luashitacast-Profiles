local smart = gFunc.LoadFile('smart.lac/smart')

gFunc.LoadFile('common')

if not smart then return nil end

local sets = T{
    general = T{
        Idle = T{
            Ammo = "Crepuscular Pebble",
            Head = "Nyame Helm",
            Neck = "Null Loop",
            Ear1 = "Ethereal Earring",
            Body = "Kaykaus Bliaut",
            Hands = "Bunzi's Gloves",
            Ring1 = "Defending Ring",
            Ring2 = "Shneddick Ring",
            Back = "Solemnity Cape",
            Legs = "Nyame Flanchard",
            Feet = "Bunzi's Sabots"
        },
        Engaged = T{
            Ammo = "Crepuscular Pebble",
            Head = Ambuscade.Ayanmo.Head,
            Neck = "Null Loop",
            Ear1 = "Telos Earring",
            Ear2 = "Mache Earring +1",
            Body = Ambuscade.Ayanmo.Body,
            Hands = Odyssey.Bunzi.Hands,
            Ring1 = "Rajas Ring",
            Ring2 = "Ilabrat Ring",
            Back = "Null Shawl",
            Waist = "Eschan Stone",
            Legs = Odyssey.Bunzi.Legs,
            Feet = Odyssey.Bunzi.Feet
        }
    },
    precast = T{
        default = T{
                Ammo = "Sapience Orb", -- 2%
                Head = Odyssey.Bunzi.Head, -- 10%
                Neck = "Voltsurge Torque", -- 4%
                Ear1 = "Loquac. Earring", -- 2%
                Ear2 = "Malignance Earring", -- 4%
                Body = Ambuscade.Inyanga.Body, --13%
                Hands = "Gende. Gages +1", -- 7%
                Ring1 = "Kishar Ring", -- 4%
                Ring2 = "Naji's Loop", -- 1%
                Back = "Swith Cape +1", -- 4%
                Waist = "Channeler's Stone", -- 2%
                Legs = "Lengo Pants" -- 5%
                -- Total: 58/80%
        },
        Cure = {
            -- Cure Spellcasting Time gear
            Legs = "Ebers Pant. +1"
        }
    },
    midcast = T{
        default = T{
            Ammo = "Pemphredo Tathlum",
            Head = "Vanya Hood",
            Neck = "Reti Pendant",
            Ear1 = "Calamitous Earring",
            Ear2 = "Mendi. Earring",
            Body = "Kaykaus Bliaut",
            Back = "Solemnity Cape",
            Legs = "Lengo Pants",
            Feet = "Telchine Pigaches"
        },
        Cure = T{
            Hands = "Telchine Gloves",
            Legs = "Ebers Pant. +1"
        },
        Curaga = T{
            Ammo = "Psilomene",
            Neck = "Marked Gorget",
            Ear1 = "Enervating Earring",
            Ear2 = "Ebers Earring",
            Hands = "Telchine Gloves",
            Ring1 = "Mephitas's Ring +1",
            Ring2 = "Lebeche Ring",
            Waist = "Channeler's Stone",
            Legs = "Ebers Pant. +1",
            Feet = "Bunzi's Sabots"
        }
    },
    lockstyle = T{
        Head = "Cumulus Masque +1",
        Body = "Vanya Robe",
        Hands = "Bunzi's Gloves",
        Legs = "Lengo pants",
        Feet = "Bunzi's Sabots"
    }
}

modes.enableWeaponGroups()
modes.registerWeaponGroup("Healing", {
    Main = "Daybreak",
    Sub = "Ammurapi Shield"
})

return smart(sets)