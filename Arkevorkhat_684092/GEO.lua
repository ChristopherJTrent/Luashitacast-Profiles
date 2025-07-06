local smart = gFunc.LoadFile('smart.lac/smart.lua')

if not smart or not modes then
    print("load failed")
    return nil
end

local JSE = T{
    Artifact = T{
        Head = "Geomancy Galero",
        Body = "Geo. Tunic +1",
        Hands = "Geo. Mitaines +1",
        Legs = "Geomancy Pants",
        Feet = "Geomancy Sandals"
    },
    Relic = T{
        Body = "Bagua Tunic",
        Legs = "Bagua Pants",
        Feet = "Bagua Sandals"
    },
    Empyrean = T{
        Head = "Azimuth Hood +2",
        Body = "Azimuth Coat",
        Feet = "Azimuth Gaiters"
    }
}

local sets = T{
    general = T{
        Idle = T{
            Head = "Nyame Helm",
            Neck = "Null Loop",
            Ear1 = "Genmei Earring",
            Ear2 = "Ethereal Earring",
            Body = Ambuscade.Jhakri.Body,
            Hands = "Nyame Gauntlets",
            Ring1 = "Defending Ring",
            Ring2 = "Shneddick Ring",
            Back = "Solemnity Cape",
            Waist = "Chaac Belt",
            Legs = "Nyame Flanchard",
            Feet = "Nyame Sollerets"
        },
        Engaged = T{
            Head = "Agwu's Cap",
            Neck = "Null Loop",
            Ear1 = "Genmei Earring",
            Ear2 = "Ethereal Earring",
            Body = "Agwu's Robe",
            Hands = "Agwu's Gages",
            Ring1 = "Defending Ring",
            Ring2 = "Purity Ring",
            Back = "Null Shawl",
            Waist = "Chaac Belt",
            Legs = "Agwu's Slops",
            Feet = "Agwu's Pigaches"
        },
        geocolure = T{
            Head = JSE.Empyrean.Head,
            Body = "Nyame Mail",
            Ear2 = "Handler's Earring",
            Hands = JSE.Artifact.Hands,
            Waist = "Isa Belt",
            Feet = JSE.Relic.Feet
        }
    },
    precast = T{
        default = T{
            Head = "Merlinic Hood",
            Neck = "Voltsurge Torque",
            Ear1 = "Malignance Earring",
            Ear2 = "Loquac. Earring",
            Body = "Merlinic Jubbah",
            Hands = "Agwu's Gages",
            Ring1 = "Naji's Loop",
            Ring2 = "Kishar Ring",
            Back = "Swith Cape +1",
            Waist = "Channeler's Stone",
            Legs = "Agwu's Slops",
            Feet = "Merlinic Crackows"
        }
    },
    midcast = T{
        default = T{

        },
        Geomancy = T{
            Head = JSE.Empyrean.Head,
            Neck = "Incanter's Torque",
            Ear1 = "Mendi. Earring",
            Ear2 = "Azimuth Earring",
            Body = JSE.Relic.Body,
            Hands = JSE.Artifact.Hands,
            Back = "Lifestream Cape",
            Legs = JSE.Relic.Legs,
            Feet = JSE.Empyrean.Feet
        },
        ['Elemental Magic'] = T{
            Head = Ambuscade.Jhakri.Head,
            Neck = "Sibyl Scarf",
            Ear1 = "Regal Earring",
            Ear2 = "Malignance Earring",
            Body = {Name = "Merlinic Jubbah", Augment = {"\"Magic Atk. Bonus\"+20"}},
            Hands = Ambuscade.Jhakri.Hands,
            Ring1 = Ambuscade.Jhakri.Ring,
            Ring2 = "Shiva Ring",
            Waist = "Acuity Belt +1",
            Legs = "Merlinic Shalwar",
            Feet = Ambuscade.Jhakri.Feet
        }
    },
    lockstyle = T{
        Sub = "Diamond Buckler",
        Range = "Dunna",
        Head = JSE.Artifact.Head,
        Body = JSE.Artifact.Body,
        Hands = JSE.Artifact.Hands,
        Legs = JSE.Artifact.Legs,
        Feet = JSE.Artifact.Feet
    }
}

modes.enableWeaponGroups()

modes.registerWeaponGroup('Indicoloure', {
    Main = "Gada",
    Sub = "Genmei Shield"
})
modes.registerWeaponGroup('Geocolure', {
    Main = "Solstice",
    Sub = "Genmei Shield"
})
modes.registerWeaponGroup('Nuking', {
    Main = "Bunzi's Rod",
    Sub = "Ammurapi Shield"
})
modes.registerWeaponGroup('Melee', {
    Main = "Maxentius",
    Sub = "Ammurapi Shield"
})

return smart(sets)