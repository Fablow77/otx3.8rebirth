--[[
	TODO
		Unite all related variables / functions in a table
		rewrite functions like "getTasksByPlayer" to "Player.getTasks"
]]

RANK_NONE = 0
RANK_JOIN = 1
RANK_HUNTSMAN = 2
RANK_RANGER = 3
RANK_BIGGAMEHUNTER = 4
RANK_TROPHYHUNTER = 5
RANK_ELITEHUNTER = 6

REWARD_MONEY = 1
REWARD_EXP = 2
REWARD_ACHIEVEMENT = 3
REWARD_STORAGE = 4
REWARD_POINT = 5
REWARD_ITEM = 6

QUESTSTORAGE_BASE = 1500
JOIN_STOR = 100157
KILLSSTORAGE_BASE = 65000
REPEATSTORAGE_BASE = 48950
POINTSSTORAGE = 2500
tasks =
{
	[1] = {killsRequired = 200, raceName = "Rotworms", level = {1, 99999}, premium = false, creatures = {"rotworm", "carrion worm"}, rewards = {{type = "achievement", value = {"Rotworms Task"}},{type = "exp", value = {168000}},{type = "points", value = {5}},{type = "money", value = {10000}}}},
    [2] = {killsRequired = 300, raceName = "Dwarfs", level = {1, 99999}, premium = false, creatures = {"dwarf", "dwarf guard", "dwarf soldier", "dwarf geomancer"}, rewards = {{type = "points", value = {5}},{type = "item", value = {5880, 3}},{type = "exp", value = {212000}},{type = "money", value = {10000}}}},
	[3] = {killsRequired = 300, raceName = "Minotaurs", level = {1, 9999}, premium = false, creatures = {"minotaur", "minotaur mage", "minotaur archer", "minotaur guard"}, rewards = {{type = "points", value = {5}},{type = "item", value = {5878, 4}},{type = "exp", value = {257000}},{type = "money", value = {10000}}}},
	[4] = {killsRequired = 300, raceName = "Barbarians", level = {1, 9999}, premium = false, creatures = {"barbarian bloodwalker", "barbarian brutetamer", "barbarian headsplitter", "barbarian skullhunter"}, rewards = {{type = "achievement", value = {"Barbarians Task"}},{type = "points", value = {5}},{type = "item", value = {7462, 1}},{type = "exp", value = {259000}},{type = "money", value = {10000}}}},
	[5] = {killsRequired = 500, raceName = "Orcs", level = {1, 9999}, premium = false, creatures = {"orc", "orc warrior", "orc warlord", "orc spearman", "orc shaman", "orc rider", "orc leader", "orc berserker"}, rewards = {{type = "points", value = {5}},{type = "item", value = {2475, 1}},{type = "exp", value = {285000}},{type = "money", value = {15000}}}},
	[6] = {killsRequired = 250, raceName = "Hunters", level = {1, 99999}, premium = false, creatures = {"hunter", "amazon", "valkyrie"}, rewards = {{type = "exp", value = {168000}},{type = "item", value = {5875, 1}},{type = "points", value = {5}},{type = "money", value = {10000}}}},
	[7] = {killsRequired = 400, raceName = "Cults", level = {1, 99999}, premium = false, creatures = {"novice of the cult", "enlightened of the cult", "adept of the cult", "acolyte of the cult"}, rewards = {{type = "achievement", value = {"Cults Task"}},{type = "money", value = {10000}},{type = "exp", value = {195000}},{type = "points", value = {5}}}},
	[8] = {killsRequired = 350, raceName = "Cyclops", level = {1, 99999}, premium = false, creatures = {"cyclops", "cyclops smith", "cyclops drone"}, rewards = {{type = "item", value = {2214, 1}},{type = "exp", value = {328000}},{type = "points", value = {5}},{type = "money", value = {20000}}}},
	[9] = {killsRequired = 300, raceName = "Dragons", level = {1, 99999}, premium = false, creatures = {"dragon"}, rewards = {{type = "item", value = {2516, 1}},{type = "item", value = {2187, 1}},{type = "exp", value = {425000}},{type = "points", value = {5}}}},
	[10] = {killsRequired = 300, raceName = "Dragon Lords", level = {1, 99999}, premium = false, creatures = {"dragon lord"}, rewards = {{type = "item", value = {2498, 1}},{type = "item", value = {5948, 4}},{type = "item", value = {5882, 3}},{type = "exp", value = {512000}},{type = "points", value = {10}}}},
	[11] = {killsRequired = 300, raceName = "Bog Raiders", level = {1, 99999}, premium = false, creatures = {"bog raider"}, rewards = {{type = "money", value = {25000}},{type = "exp", value = {485000}},{type = "points", value = {5}}}},
	[12] = {killsRequired = 250, raceName = "Quaras", level = {1, 99999}, premium = false, creatures = {"quara hydromancer", "quara predator", "quara constrictor", "quara mantassin", "quara pincher"}, rewards = {{type = "money", value = {25000}},{type = "exp", value = {278000}},{type = "points", value = {5}}}},
	[13] = {killsRequired = 200, raceName = "War Golems", level = {1, 99999}, premium = false, creatures = {"war golem"}, rewards = {{type = "item", value = {7893, 1}},{type = "points", value = {5}},{type = "money", value = {25000}},{type = "exp", value = {420000}}}},
	[14] = {killsRequired = 200, raceName = "Ancient Scarabs", level = {1, 99999}, premium = false, creatures = {"ancient scarab"}, rewards = {{type = "exp", value = {412000}},{type = "points", value = {5}}}},
	[15] = {killsRequired = 200, raceName = "Sea Serpents", level = {1, 99999}, premium = false, creatures = {"sea serpent"}, rewards = {{type = "achievement", value = {"Sea Serpents Task"}},{type = "money", value = {30000}},{type = "exp", value = {541000}},{type = "points", value = {5}}}},
	[16] = {killsRequired = 300, raceName = "Heros", level = {1, 99999}, premium = false, creatures = {"hero"}, rewards = {{type = "achievement", value = {"Heros Task"}},{type = "money", value = {30000}},{type = "exp", value = {550000}},{type = "points", value = {5}}}},
	[17] = {killsRequired = 350, raceName = "Grim Reapers", level = {1, 99999}, premium = false, creatures = {"grim reaper"}, rewards = {{type = "money", value = {40000}},{type = "exp", value = {623000}},{type = "points", value = {5}}}},
	[18] = {killsRequired = 300, raceName = "Warlocks", level = {1, 99999}, premium = false, creatures = {"warlock"}, rewards = {{type = "item", value = {2466, 1}},{type = "exp", value = {641000}},{type = "points", value = {5}}}},
	[19] = {killsRequired = 300, raceName = "Giant Spiders", level = {1, 99999}, premium = false, creatures = {"giant spider"}, rewards = {{type = "achievement", value = {"Giant Spiders Task"}},{type = "money", value = {30000}},{type = "exp", value = {431000}},{type = "points", value = {5}}}},
	[20] = {killsRequired = 400, raceName = "Frost Dragons", level = {1, 99999}, premium = false, creatures = {"frost dragons"}, rewards = {{type = "item", value = {2492, 1}},{type = "exp", value = {662000}},{type = "points", value = {10}}}},
	[21] = {killsRequired = 300, raceName = "Hydras", level = {1, 99999}, premium = false, creatures = {"hydra"}, rewards = {{type = "item", value = {2195, 1}},{type = "exp", value = {721000}},{type = "points", value = {5}}}},
	[22] = {killsRequired = 400, raceName = "Behemonths", level = {1, 99999}, rank = RANK_RANGER, premium = false, creatures = {"behemonth"}, rewards = {{type = "achievement", value = {"Behemonths Task"}},{type = "money", value = {550000}},{type = "exp", value = {84000}},{type = "points", value = {10}}}},
	[23] = {killsRequired = 300, raceName = "Nightmares", level = {1, 99999}, creatures = {"nightmare"}, premium = false, rewards = {{type = "money", value = {50000}},{type = "exp", value = {712000}},{type = "points", value = {10}}}},
	[24] = {killsRequired = 666, raceName = "Demons", level = {1, 99999}, rank = RANK_RANGER, premium = false, creatures = {"demon"}, rewards = {{type = "item", value = {2520, 1}},{type = "exp", value = {2100000}},{type = "points", value = {10}}}},
    }

tasksByPlayer = 3
repeatTimes = 3

function Player.getPawAndFurRank(self)
	return (self:getStorageValue(POINTSSTORAGE) >= 100 and RANK_ELITEHUNTER or self:getStorageValue(POINTSSTORAGE) >= 70 and RANK_TROPHYHUNTER or self:getStorageValue(POINTSSTORAGE) >= 40 and RANK_BIGGAMEHUNTER or self:getStorageValue(POINTSSTORAGE) >= 30 and RANK_RANGER or self:getStorageValue(POINTSSTORAGE) >= 20 and RANK_HUNTSMAN or self:getStorageValue(JOIN_STOR) == 1 and RANK_JOIN or RANK_NONE)
end

function Player.getPawAndFurPoints(self)
	return math.max(self:getStorageValue(POINTSSTORAGE), 0)
end

function getTaskByName(name, table)
	local t = (table and table or tasks)
	for k, v in pairs(t) do
		if v.name then
			if v.name:lower() == name:lower() then
				return k
			end
		else
			if v.raceName:lower() == name:lower() then
				return k
			end
		end
	end
	return false
end

function Player.getTasks(self)
	local canmake = {}
	local able = {}
	for k, v in pairs(tasks) do
		if self:getStorageValue(QUESTSTORAGE_BASE + k) < 1 and self:getStorageValue(REPEATSTORAGE_BASE + k) < repeatTimes then
			able[k] = true
			if self:getLevel() < v.level[1] or self:getLevel() > v.level[2] then
				able[k] = false
			end
			if v.storage and self:getStorageValue(v.storage[1]) < v.storage[2] then
				able[k] = false
			end

			if v.rank then
				if self:getPawAndFurRank() < v.rank then
					able[k] = false
				end
			end

			if v.premium then
				if not self:isPremium() then
					able[k] = false
				end
			end

			if able[k] then
				canmake[#canmake + 1] = k
			end
		end
	end
	return canmake
end

function Player.canStartTask(self, name, table)
	local v = ""
	local id = 0
	local t = (table and table or tasks)
	for k, i in pairs(t) do
		if i.name then
			if i.name:lower() == name:lower() then
				v = i
				id = k
				break
			end
		else
			if i.raceName:lower() == name:lower() then
				v = i
				id = k
				break
			end
		end
	end
	if v == "" then
		return false
	end
	if self:getStorageValue(QUESTSTORAGE_BASE + id) > 0 then
		return false
	end
	if self:getStorageValue(REPEATSTORAGE_BASE +  id) >= repeatTimes or v.norepeatable and self:getStorageValue(REPEATSTORAGE_BASE +  id) > 0 then
		return false
	end
	if v.level and self:getLevel() >= v.level[1] and self:getLevel() <= v.level[2] then
		if v.premium then
			if self:isPremium() then
				if v.rank then
					if self:getPawAndFurRank() >= v.rank then
						if v.storage then
							if self:getStorageValue(v.storage[1]) >= v.storage then
								return true
							end
						else
							return true
						end
					end
				else
					return true
				end
			else
				return true
			end
		else
			return true
		end
	end
	return false
end

function Player.getStartedTasks(self)
	local tmp = {}
	for k, v in pairs(tasks) do
		if self:getStorageValue(QUESTSTORAGE_BASE + k) > 0 and self:getStorageValue(QUESTSTORAGE_BASE + k) < 2 then
			tmp[#tmp + 1] = k
		end
	end
	return tmp
end

--in case other scripts are using these functions, i'll let them here
function getPlayerRank(cid) local p = Player(cid) return p and p:getPawAndFurRank() end
function getPlayerTasksPoints(cid) local p = Player(cid) return p and p:getPawAndFurPoints() end
function getTasksByPlayer(cid) local p = Player(cid) return p and p:getTasks() end
function canStartTask(cid, name, table) local p = Player(cid) return p and p:canStartTask(name, table) end
function getPlayerStartedTasks(cid) local p = Player(cid) return p and p:getStartedTasks() end
