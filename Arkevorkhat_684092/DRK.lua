local smart = gFunc.LoadFile("Smart.LAC/smart.lua")
gFunc.LoadFile('common')
if not smart then return nil end
if not modes then return nil end

local capes = T{
    tp = { Name = 'Ankou\'s Mantle', Augment = { [1] = 'Accuracy+20', [2] = '"Dbl.Atk."+10', [3] = 'Attack+20', [4] = 'DEX+20' } },
    wsd = { Name = 'Ankou\'s Mantle', Augment = { [1] = 'STR+30', [2] = 'Weapon skill damage +10%', [3] = 'Attack+20', [4] = 'Accuracy+20' } }
}

local JSE = T{
    Artifact = T{
        Head = "",
        Body = "Ignominy Cuirass +2",
        Hands = "",
        Legs = "Igno. Flan. +1",
        Feet = ""
    },
    Relic = T{
        Head = "Fall. Burgeonet +1",
        Body = "",
        Hands = "",
        Legs = "",
        Feet = ""
    },
    Empyrean = T{
        Head = "Bale Burgeonet",
        Body = "Bale Cuirass",
        Hands = "Bale Gauntlets",
        Legs = "Heath. Flanchard +2",
        Feet = "Heath. Sollerets +2"
    }
}

local sets = T{
    general = T{
        Idle = T{
            Ammo = "Crepuscular Pebble",
            Head = "Nyame Helm",
            Neck = "Bathy Choker +1",
            Ear1 = "Cessance Earring",
            Ear2 = "Brutal Earring",
            Body = "Sakpata's Plate",
            Hands = "Sakpata's Gauntlets",
            Ring1 = "Defending Ring",
            Ring2 = "Shneddick Ring",
            Back = "Solemnity Cape",
            Waist = "Sailfi Belt +1",
            Legs = "Sakpata's Cuisses",
            Feet = "Flam. Gambieras +2"
        },
        Engaged = T{
            Ammo = "Coiste Bodhar",
            Head = Ambuscade.Flamma.Head,
            Neck = "Abyssal Beads +1",
            Ear1 = "Telos Earring",
            Ear2 = "Cessance Earring",
            Body = Odyssey.Sakpata.Body,
            Hands = Odyssey.Sakpata.Hands,
            Ring1 = "Niqmaddu Ring",
            Ring2 = "Ephramad's Ring",
            Back = capes.tp,
            Waist = "Sailfi Belt +1",
            Legs = Odyssey.Sakpata.Legs,
            Feet = Ambuscade.Flamma.Feet
        },
    },
    weaponskill = T{
        default = T{
            Ammo = "Knobkierrie",
            Head = "Nyame Helm",
            Neck = "Fotia Gorget",
            Ear1 = "Moonshade Earring",
            Ear2 = "Ishvara Earring",
            Body = JSE.Artifact.Body,
            Hands = "Nyame Gauntlets",
            Ring1 = "Regal Ring",
            --Ring2 = "Cornelia's Ring",
            Back = capes.wsd,
            Waist = "Fotia Belt",
            Legs = "Nyame Flanchard",
            Feet = JSE.Empyrean.Feet
        },
		['Shadow of Death'] = T{
			Head = "Pixie Hairpin +1",
		}
    },
    precast = T{
        default = T{
            Ammo = "Sapience Orb",
            Head = Odyssey.Sakpata.Head,
            Neck = "Voltsurge Torque",
            Ear1 = "Malignance Earring",
            Ear2 = "Loquac. Earring",
            Body = Odyssey.Sakpata.Body,
            Hands = "Leyline Gloves",
            Ring1 = "Kishar Ring",
            Ring2 = "Prolix Ring",
            Feet = "Odyssean Greaves"
        },
        ["Dark Magic"] = T{
            Head = JSE.Relic.Head
        }
    },
    midcast = T{
        default = T{
            Ammo = "Pemphredo Tathlum",
            Neck = "Reti Pendant",
            Ear1 = "Mendi. Earring",
            Ear2 = "Calamitous Earring",
            Back = "Solemnity Cape"
        },
        Drain = T{
            Ring1 = "Evanescence Ring"
        },
        buffs = T{
            ["Dark Seal"] = T{
                Head = JSE.Relic.Head
            },
            ["Nether Void"] = T{
                Legs = JSE.Empyrean.Legs
            }
        },
        ["Dark Magic"] = T{
            Feet = "Ratri Sollerets"
        },
    },
    ability = T{
        default = T{
            -- ability set goes here
        },
        ["Last Resort"] = T{
            Back = "Ankou's Mantle"
        }
    },
    lockstyle = T{
        Head = JSE.Empyrean.Head,
        Body = JSE.Empyrean.Body,
        Hands = JSE.Empyrean.Hands,
        Legs = JSE.Empyrean.Legs,
        Feet = JSE.Empyrean.Feet
    }
}

modes.enableWeaponGroups()
modes.registerWeaponGroup('scythe', {
	Main = "Agwu's Scythe",
	Sub = Ambuscade.Weapon.Grip,
	constraints = {
		Constraint.HasSubjob('SAM')
	}
})
modes.registerWeaponGroup('greatsword', {
    Main = "Agwu's Claymore",
    Sub = "Alber Strap",
    constraints = {
        Constraint.HasSubjob('SAM')
    }
})


modes.registerWeaponGroup('Loxotic', {
    Main = "Loxotic Mace +1",
    Sub = "Blurred Shield +1"
})
modes.registerWeaponGroup('Green Sword', {
    Main = "Naegling",
    Sub = "Blurred Shield +1" 
})

modes.enableOverrideLayers()

modes.registerOverride('Accuracy', T{
	general = T{
		Engaged = T{
			Neck = "Null Loop",
			Ring2 = "Ephramad's Ring",
		}
	}
}, "Mid Accuracy")

modes.registerOverride('DT', {
    general = T{
        Engaged = T{
            Neck = "Null Loop",
            Ring2 = "Defending Ring"
        }
    }
})

return smart(sets)