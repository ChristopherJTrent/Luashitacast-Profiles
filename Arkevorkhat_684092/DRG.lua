local smart = gFunc.LoadFile("Smart.lac/smart.lua")
gFunc.LoadFile('common')
if (not smart) or (not modes) then return nil end

local sets = T{
    general = T{
        Idle = T{
            Ammo = "Angon",
            Head = Ambuscade.Flamma.Head,
            Neck = "Null Loop",
            Ear1 = "Mache Earring +1",
            Ear2 = "Telos Earring",
            Body = Ambuscade.Sulevia.Body,
            Hands = Ambuscade.Sulevia.Hands,
            Ring1 = "Defending Ring",
            Ring2 = "Regal Ring",
            Back = "Solemnity Cape",
            Waist = "Sailfi Belt +1",
            Legs = "Carmine Cuisses +1",
            Feet = Ambuscade.Flamma.Feet
        },
        Engaged = T{
            Ammo = "Coiste Bodhar",
            Head = Ambuscade.Flamma.Head,
            Neck = "Null Loop",
            Ear1 = "Sherida Earring",
            Ear2 = "Cessance Earring",
            Body = "Hjarrandi Breast.",
            Hands = Ambuscade.Flamma.Hands,
            Ring1 = "Niqmaddu Ring",
            Ring2 = "Regal Ring",
            Back = "Null Shawl",
            Waist = "Sailfi Belt +1",
            Legs = "Carmine Cuisses +1",
            Feet = Ambuscade.Flamma.Feet
        }
    },
    weaponskill = T{
        default = T{
            Ammo = "Knobkierrie",
            Head = Nyame.Head,
            Neck = "Rep. Plat. Medal",
            Ear1 = "Moonshade Earring",
            Ear2 = "Ishvara Earring",
            Body = Nyame.Body,
            Hands = Nyame.Hands,
            --Ring1 = "Cornelia's Ring",
            Ring2 = "Regal Ring",
            Legs = Nyame.Legs,
            Feet = Ambuscade.Sulevia.Feet
        }
    },
    lockstyle = T{
        "Lancer's Mezail",
        "Lncr. Plackart",
        "Lancer's Vambraces",
        "Lancer's Cuissots",
        "Lncr. Schynbalds"
    }
}

modes.enableWeaponGroups()
modes.registerWeaponGroup('default', {
    Main = "Shining One",
    Sub = Ambuscade.Weapon.Grip
})

return smart(sets)