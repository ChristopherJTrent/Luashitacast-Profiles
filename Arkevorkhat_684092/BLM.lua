local smart = gFunc.LoadFile("smart.lac/smart.lua")
if (not smart) or (not modes) then return nil end

local sets = T{
    general = T{
        Idle = T{
            Head = "Agwu's Cap",
            Body = "Agwu's Robe",
            Hands = "Agwu's Gages",
            Legs = "Agwu's Slops",
            Feet = "Agwu's Pigaches",
            Neck = "Null Loop",
            Ear1 = "Ethereal Earring",
            Ear2 = "Eabani Earring",
            Ring1 = "Defending Ring",
            Ring2 = "Shneddick Ring",
            Back = "Solemnity Cape",
            Waist = "Acuity Belt +1"
        },
        Engaged = T{
            Head = "Agwu's Cap",
            Body = "Agwu's Robe",
            Hands = "Agwu's Gages",
            Legs = "Agwu's Slops",
            Feet = "Agwu's Pigaches",
            Neck = "Null Loop",
            Ear1 = "Ethereal Earring",
            Ear2 = "Eabani Earring",
            Ring1 = "Defending Ring",
            Ring2 = "Shneddick Ring",
            Back = "Solemnity Cape",
            Waist = "Acuity Belt +1"
        }
    },
    precast = T{
        default = T{
            Ammo = 'Sapience Orb',
            Head = { Name = 'Merlinic Hood', Augment = { [1] = 'Mag. Acc.+11', [2] = '"Fast Cast"+6', [3] = '"Mag. Atk. Bns."+22' } },
            Neck = 'Voltsurge Torque',
            Ear1 = 'Malignance Earring',
            Ear2 = 'Loquac. Earring',
            Body = { Name = 'Merlinic Jubbah', Augment = { [1] = '"Mag. Atk. Bns."+11', [2] = '"Fast Cast"+6', [3] = 'Mag. Acc.+22' } },
            Hands = { Name = 'Agwu\'s Gages', AugPath='A' },
            Ring1 = 'Kishar Ring',
            Ring2 = 'Prolix Ring',
            Back = 'Swith Cape +1',
            Waist = 'Channeler\'s Stone',
            Legs = { Name = 'Agwu\'s Slops', AugPath='A' },
            Feet = { Name = 'Merlinic Crackows', Augment = { [1] = 'INT+2', [2] = '"Fast Cast"+7', [3] = 'Mag. Acc.+1' } },
        }
    },
    midcast = T{
        default = T{
            Ammo = 'Pemphredo Tathlum',
            Head = Ambuscade.Jhakri.Head,
            Neck = 'Sibyl Scarf',
            Ear1 = 'Malignance Earring',
            Ear2 = 'Regal Earring',
            Body = Ambuscade.Jhakri.Body,
            Ring1 = Ambuscade.Jhakri.Ring,
            Ring2 = 'Metamor. Ring +1',
            Back = 'Tantalic Cape',
            Waist = { Name = 'Acuity Belt +1', AugPath='A' },
            Legs = { Name = 'Agwu\'s Slops', AugPath='A' },
            Feet = Ambuscade.Jhakri.Feet,
        },
        ['Elemental Magic'] = T{}
    }
}

modes.enableWeaponGroups()


modes.enableWeaponGroups()
modes.registerWeaponGroup('default', {
    Main = "Lathi",
    Sub = Ambuscade.Weapon.Grip
})
modes.registerWeaponGroup('low_damage', {
    Main = "Erudite's Staff +1",
    Sub = "Mensch Strap"
})

modes.enableOverrideLayers()

modes.registerOverride('TH', {
    general = T{
        Engaged = T{
            Ammo = "Per. Lucky Egg",
            Head = "Wh. Rarab Cap +1",
            Waist = "Chaac Belt",
        }
    },
    midcast = T{
        ['Elemental Magic'] = T{
            Ammo = "Per. Lucky Egg",
            Head = "Wh. Rarab Cap +1",
            Waist = "Chaac Belt",
        }
    }
})

modes.registerOverride('Idle', {
    general = T{
        Idle = {
            Ammo = "Crepuscular Pebble",
            Head = "Befouled Crown",
            Neck = "Null Loop",


            Body = Ambuscade.Jhakri.Body,
            Hands = "Nyame Gauntlets",
            Ring1 = "Defending Ring",
            Ring2 = "Shneddick Ring",
            Back = "Solemnity Cape",
            Waist = "Plat. Mog. Belt",
            Legs = "Lengo Pants",
            Feet = "Nyame Sollerets"
        }
    }
}, "Refresh")

return smart(sets)