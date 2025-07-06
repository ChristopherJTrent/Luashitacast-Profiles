local smart = gFunc.LoadFile('smart.lac/smart.lua')

if not smart then return nil end

local sets = T{
    general = T{
        Idle = T{
            Head = "Nyame Helm",
            Neck = "Bathy Choker +1",
            Body = "Malignance Tabard",
            Hands = "Malignance Gloves",
            Ring1 = "Defending Ring",
            Ring2 = "Shneddick Ring",
            Legs = "Nyame Flanchard",
            Feet = "Malignance Boots"
        },
        Engaged = T{
            Main = 'Sakpata\'s Fists',
            Range = 'Neo Animator',
            Head = 'Mpaca\'s Cap',
            Neck = 'Asperity Necklace',
            Ear1 = 'Mache Earring +1',
            Ear2 = 'Brutal Earring',
            Body = { Name = 'Mpaca\'s Doublet', AugPath='A' },
            Hands = 'Mpaca\'s Gloves',
            Ring1 = 'Gere Ring',
            Ring2 = 'Niqmaddu Ring',
            Back = 'Visucius\'s Mantle',
            Waist = 'Grunfeld Rope',
            Legs = { Name = 'Mpaca\'s Hose', AugPath='A' },
            Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Attack+3', [2] = 'Weapon skill damage +5%', [3] = 'Accuracy+15', [4] = 'AGI+7', [5] = 'Rng.Atk.+21' } },
        }
    },
    weaponskill = T{
        default = T{
            Head = "Nyame Helm",
            Neck = "Rep. Plat. Medal",
            Ear1 = "Moonshade Earring",
            Ear2 = "Ishvara Earring",
            Body = "Nyame Mail",
            Hands = "Nyame Gauntlets",
            --Ring1 = "Cornelia's Ring",
            Ring2 = "Regal Ring",
            Waist = "Fotia Belt",
            Legs = "Nyame Flanchard",
            Feet = "Nyame Sollerets"
        }
    }
}

modes.enableWeaponGroups()
modes.registerWeaponGroup('sakpata', {
    Main = "Sakpata's Fists"
})

modes.enableSecondaryGroups()
modes.registerSecondaryGroup('uncapped', {
    Range = "Neo Animator",
    Ammo = "Automaton Oil +3"
})
modes.registerSecondaryGroup('capped 20', {
    Range = "Neo Animator",
    Ammo = "Automaton Oil"
})

modes.enableOverrideLayers()
modes.registerOverride('warp', {
    general = T{
        Idle = T{
            Ring1 = "Warp Ring",
        }
    }
}, 'warp')
modes.registerOverride('warp', {
    general = T{
        Idle = T{
            Ring1 = "Dim. Ring (Holla)",
        }
    }
}, 'holla')
return smart(sets)