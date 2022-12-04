-- Rare Share Dragon Isles module based on v0.6.1 core module

local AddonName, Addon = ... 

RareShare:LoadModule({
    ID = 2024,  -- UiMapID
    Title = Addon.Loc.Title,
    Colour = "|cffc41f3b",
    Events = {
		-- CHAT_MSG_MONSTER_YELL = function(self, text, name, ...)
		-- 	RareShare:CheckDragonIslesEvent(text, name)
        -- end,
		-- CHAT_MSG_MONSTER_EMOTE = function(self, text, name, ...)
		-- 	RareShare:CheckDragonIslesEvent(text, name)
        -- end,
		-- BEHAVIORAL_NOTIFICATION = function(self, text, name, ...)
		-- 	RareShare:CheckDragonIslesEvent(text, name)
        -- end,
	},
    Rares = {
        [193259] = {Addon.Loc.Rares[193259], 1, false, false, 0, 16.8, 27.4},
        [197353] = {Addon.Loc.Rares[197353], 1, false, false, 0, 14.0, 30.8},
        [197356] = {Addon.Loc.Rares[197356], 1, false, false, 0, 16.2, 33.6},
        [197344] = {Addon.Loc.Rares[197344], 1, false, false, 0, 11.0, 32.6},
        [197354] = {Addon.Loc.Rares[197354], 1, false, false, 0, 14.0, 37.6},
        [193269] = {Addon.Loc.Rares[193269], 1, false, false, 0, 19.4, 43.4},
        [193149] = {Addon.Loc.Rares[193149], 1, false, false, 0, 26.8, 49.6},
        [193157] = {Addon.Loc.Rares[193157], 1, false, false, 0, 27.8, 46.4},
        [193251] = {Addon.Loc.Rares[193251], 1, false, false, 0, 32.6, 29.2},
        [193225] = {Addon.Loc.Rares[193225], 1, false, false, 0, 20.6, 49.4},
        [190244] = {Addon.Loc.Rares[190244], 1, false, false, 0, 36.8, 34.2},
        [198004] = {Addon.Loc.Rares[198004], 1, false, false, 0, 40.4, 48.2},
        [193691] = {Addon.Loc.Rares[193691], 1, false, false, 0, 49.2, 38.4},
        [194270] = {Addon.Loc.Rares[194270], 1, false, false, 0, 52.8, 35.8},
        [193238] = {Addon.Loc.Rares[193238], 1, false, false, 0, 55.0, 34.2},
        [194210] = {Addon.Loc.Rares[194210], 1, false, false, 0, 56.6, 30.2},
        [193201] = {Addon.Loc.Rares[193201], 1, false, false, 0, 58.0, 54.0},
        [193632] = {Addon.Loc.Rares[193632], 1, false, false, 0, 59.6, 54.8},
        [193063] = {Addon.Loc.Rares[193063], 1, false, false, 0, 64.4, 30.2},
        [193196] = {Addon.Loc.Rares[193196], 1, false, false, 0, 70.2, 25.2},
        [193116] = {Addon.Loc.Rares[193116], 1, false, false, 0, 73.2, 26.4},
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

function RareShare:CheckDragonIslesEvent(inText, inSourceName)
    if (RareShareDB_DragonIsles["Config"]["Events"]) then
        local Module = RareShare:GetModule(1970)
        local Msg = Addon.Loc.Events.Prefix .. " "
        local X, Y, Rare, RareID, QuestID
		
		for id, text in pairs (Addon.Loc.Events) do
			if(string.find(inText, text)) then
				RareID = id
				Rare = Addon.Loc.Rares[RareID]
				QuestID = Module.Rares[RareID][5]
				x = Module.Rares[RareID][6]
				y = Module.Rares[RareID][7]
				break
			end
		end
        
        if Rare == nil or QuestID == nil then return end
		
		-- Blizzard keeps broadcasting even after Helmix is done for some reason
		if C_QuestLog.IsQuestFlaggedCompleted(QuestID) == true then return end
		
		Msg = Msg .. Rare .. " (" .. x .. ", " .. y .. ")"
		
		-- Set hyperlink
		local hyperlink = RareShare:GetPinHyperlink(x, y)
		if hyperlink ~= nil then
			Msg = Msg .. " " .. hyperlink
		end
        RareShare:Log(Msg, 3, 1970)
		
		-- Play standard Rare Share sound
        if (RareShareDB["Config"]["Sound"]["Master"] == true) then
            RareShare:PlaySound()
        end
		
		-- Set TomTom
        if (RareShare.TomTom == true) and (RareShareDB["Config"]["TomTom"]["Master"] == true) then
            RareShare:CreateTomTomWaypoint(x/100, y/100, Rare)
        end				
	end
end