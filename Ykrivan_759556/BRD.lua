local smart = gFunc.LoadFile('smart.lac/smart.lua')
if not smart then return nil end

---@type sets
local sets = T{ -- the structure of the sets file is described on the github wiki
    general = T{
        Idle = T{
            Head = "Aya. Zucchetto",
            Body = "Ayanmo Corazza",
            Hands = "Aya. Manopolas",
            Legs = "Aya. Cosciales +1",
            Feet = "Aoidos' Cothrn. +1"
        }
    },
    precast = T{
        default = T{
            Body = "Inyanga Jubbah",
            Legs = "Aya. Cosciales +1",
        }
    },
    midcast = T{
        defualt = T{

        },
        dummySongs = T{
            Range = "Terpander",
            Body = "Ayanmo Corazza",
            Legs = "Aya. Cosciales +1"
        },
        ['Bard Song'] = T{
            Range = "Eminent Flute",
            Body = "Aoidos' Hngrln. +1",
            Legs = "Inyanga Shalwar +1"
        }
    },
    settings = T{
        DummySongs = {
            "Fowl Aubade",
            "Shining Fantasia",
            "Scop's Operetta",
            "Puppet's Operetta"
        }
    }
}

-- Weapon Groups Example
-- modes.enableWeaponGroups()
-- modes.registerWeaponGroup('example', {Main = "Ark Scythe", Sub = "Tenax Strap"})

-- Secondary Groups Example
-- modes.enableSecondaryGroups()
-- modes.registerSecondaryGroup('example', {Range = 'Mizukage-no-yumi, Ammo = "Wooden Arrow"})

-- Override Layers example
-- modes.enableOverrideLayers()
-- modes.registerOverride('Warp Ring', {
--     general = T{
--         Idle = T{
--             Ring1 = "Warp Ring"
--         }
--     }
-- })

return smart(sets)