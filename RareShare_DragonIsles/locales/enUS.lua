local AddonName, Addon = ...

--if (GetLocale() == "enUS") then
	Addon.Loc = {
		Title = "Dragon Isles",
		Events = {
			["Prefix"] = "Event started for",
			-- [183953] = "rises to serve Cartel Xy once more.",
			-- [183814] = "collapse shakes the mountains.",
			-- [180924] = "emerges from suspension as it senses food nearby!",
			-- [180746] = "readies itself for its final stand.",
			-- [183748] = "The ground vibrates... something burrows beneath the surface!",
			-- [180978] = "cautiously emerges from the depths below.",
			-- [183516] = "The Matriarch's vengeful shriek echoes across Zereth Mortis.",
			-- [178778] = "screeches in pain!",
		},
		Rares = {
			[193259] = "Blue Terror",
			[197353] = "Blisterhide",
			[197356] = "High Shaman Rotknuckle",
			[197344] = "Snarglebone",
			[197354] = "Gnarls",
			[193269] = "Grumbletrunk",
			[193149] = "Skag the Thrower",
			[193157] = "Dragonhunter Gorund",
			[193251] = "Gruffy",
			[193225] = "Notfar the Unbearable",
			[190244] = "Mahg the Trampler",
			[198004] = "Mange the Outcast",
			[193691] = "Fisherman Tinnak",
			[194270] = "Arcane Devourer",
			[193238] = "Spellwrought Snowman",
			[194210] = "Azure Pathfinder",
			[193201] = "Muka the Raker",
			[193632] = "Wilrive",
			[193063] = "Frigidpelt Matriarch",
			[193196] = "Trilvarus Loreweaver",
			[193116] = "Beogoka",
		},
		Config = {
			["Events"] = {
				"Enable Event Announcements",
				"Enables/Disables notifying of newly spawned events",
			},
			["EventSounds"] = {
				"Enable Event Sounds",
				"Enables/Disables sounds for newly spawned events"
			},
			["EventWaypoints"] = {
				"Enable Event TomTom Waypoints",
				"Enables/Disables automatic TomTom waypoints to newly spawned events",
			}
		},
	}
--end