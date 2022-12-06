local AddonName, Addon = ...

--if (GetLocale() == "enUS") then
	Addon.Loc = {
		Title = "Dragon Isles",
		Events = {
			["Prefix"] = "Event started for",
		},
		Rares = {
			-- Azure Span
			[197353] = "Blisterhide",
			[197344] = "Snarglebone",
			[197354] = "Gnarls",
			[193691] = "Fisherman Tinnak",
			[197356] = "High Shaman Rotknuckle",
			-- Waking Shore
			[193198] = "Captain Lancer",
			[187306] = "Morchok",
			[190991] = "Char",
			[190986] = "Battlehorn Pyrhus",
			[187886] = "Turboris",
			[187598] = "Rohzor Forgesmash",
			[186783] = "Cauldronbearer Blakor",
			-- Thaldraszus
			[183984] = "The Weeping Vilomah",
			[193658] = "Corrupted Proto-Dragon",
			[193664] = "Ancient Protector", -- The Ancient Protector has been awakened.
			[193273] = "Liskron the Dazzling",
			[193243] = "Acrosoth",
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