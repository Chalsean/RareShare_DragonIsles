-- Rare Share Dragon Isles module based on v0.6.1 core module

local AddonName, Addon = ... 
RareShare:LoadModule(
{   -- Waking Shore
    ID = 2022,
    Title = Addon.Loc.Title,
    Colour = "|cffc41f3b",
    Events = {
	},
    Rares = {
        [193198] = {Addon.Loc.Rares[193198], 1, false, false, 72127, 27.6, 76.4},
        [187306] = {Addon.Loc.Rares[187306], 1, false, false, 74067, 32.6, 52.4},
        [190991] = {Addon.Loc.Rares[190991], 1, false, false, 74043, 31.2, 52.6},
        [190986] = {Addon.Loc.Rares[190986], 1, false, false, 74040, 29.8, 58.6},
        [187886] = {Addon.Loc.Rares[187886], 1, false, false, 74054, 33.6, 55.6},
        [187598] = {Addon.Loc.Rares[187598], 1, false, false, 74052, 28.4, 59.2},
        [186783] = {Addon.Loc.Rares[186783], 1, false, false, 74042, 27.4, 60.2},
    },
	Config = function(self)
        if RareShareDB_DragonIsles                               == nil then RareShareDB_DragonIsles                               = {}    end
        if RareShareDB_DragonIsles["Config"]                     == nil then RareShareDB_DragonIsles["Config"]                     = {}    end

        if RareShareDB_DragonIsles["Config"]["Events"]           == nil then RareShareDB_DragonIsles["Config"]["Events"]           = true  end

        if RareShareDB_DragonIsles["Config"]["Sound"]            == nil then RareShareDB_DragonIsles["Config"]["Sound"]            = {}    end
        if RareShareDB_DragonIsles["Config"]["Sound"]["Events"]  == nil then RareShareDB_DragonIsles["Config"]["Sound"]["Events"]  = true  end

        if RareShareDB_DragonIsles["Config"]["TomTom"]           == nil then RareShareDB_DragonIsles["Config"]["TomTom"]           = {}    end
        if RareShareDB_DragonIsles["Config"]["TomTom"]["Events"] == nil then RareShareDB_DragonIsles["Config"]["TomTom"]["Events"] = true  end
    end,
})

RareShare:LoadModule(
{   -- Azure Span
    ID = 2024,
    Title = Addon.Loc.Title,
    Colour = "|cffc41f3b",
    Events = {
	},
    Rares = {
        [197353] = {Addon.Loc.Rares[197353], 1, false, false, 73985, 14.0, 30.8},
        [197356] = {Addon.Loc.Rares[197356], 1, false, false, 74004, 16.2, 33.6},
        [197344] = {Addon.Loc.Rares[197344], 1, false, false, 74032, 11.0, 32.6},
        [197354] = {Addon.Loc.Rares[197354], 1, false, false, 73996, 14.0, 37.6},
        [193691] = {Addon.Loc.Rares[193691], 1, false, false, 74064, 49.2, 38.4},
    },
	Config = function(self)
        if RareShareDB_DragonIsles                               == nil then RareShareDB_DragonIsles                               = {}    end
        if RareShareDB_DragonIsles["Config"]                     == nil then RareShareDB_DragonIsles["Config"]                     = {}    end

        if RareShareDB_DragonIsles["Config"]["Events"]           == nil then RareShareDB_DragonIsles["Config"]["Events"]           = true  end

        if RareShareDB_DragonIsles["Config"]["Sound"]            == nil then RareShareDB_DragonIsles["Config"]["Sound"]            = {}    end
        if RareShareDB_DragonIsles["Config"]["Sound"]["Events"]  == nil then RareShareDB_DragonIsles["Config"]["Sound"]["Events"]  = true  end

        if RareShareDB_DragonIsles["Config"]["TomTom"]           == nil then RareShareDB_DragonIsles["Config"]["TomTom"]           = {}    end
        if RareShareDB_DragonIsles["Config"]["TomTom"]["Events"] == nil then RareShareDB_DragonIsles["Config"]["TomTom"]["Events"] = true  end
    end,
}
)

RareShare:LoadModule(
{   -- Thaldraszus
    ID = 2025,
    Title = Addon.Loc.Title,
    Colour = "|cffc41f3b",
    Events = {
	},
    Rares = {
        [183984] = {Addon.Loc.Rares[183984], 1, false, false, 74086, 47.4, 72.2},
        [193658] = {Addon.Loc.Rares[193658], 1, false, false, 74060, 44.8, 69.0},
        [193664] = {Addon.Loc.Rares[193664], 1, false, false, 74055, 59.6, 58.8},
        [193273] = {Addon.Loc.Rares[193273], 1, false, false, 72116, 36.6, 72.8},
        [193243] = {Addon.Loc.Rares[193243], 1, false, false, 72834, 39.4, 77.0},
    },
	Config = function(self)
        if RareShareDB_DragonIsles                               == nil then RareShareDB_DragonIsles                               = {}    end
        if RareShareDB_DragonIsles["Config"]                     == nil then RareShareDB_DragonIsles["Config"]                     = {}    end

        if RareShareDB_DragonIsles["Config"]["Events"]           == nil then RareShareDB_DragonIsles["Config"]["Events"]           = true  end

        if RareShareDB_DragonIsles["Config"]["Sound"]            == nil then RareShareDB_DragonIsles["Config"]["Sound"]            = {}    end
        if RareShareDB_DragonIsles["Config"]["Sound"]["Events"]  == nil then RareShareDB_DragonIsles["Config"]["Sound"]["Events"]  = true  end

        if RareShareDB_DragonIsles["Config"]["TomTom"]           == nil then RareShareDB_DragonIsles["Config"]["TomTom"]           = {}    end
        if RareShareDB_DragonIsles["Config"]["TomTom"]["Events"] == nil then RareShareDB_DragonIsles["Config"]["TomTom"]["Events"] = true  end
    end,
}
)