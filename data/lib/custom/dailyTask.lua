-- CONFIGS

local easy = {
minQTDE = 50,
maxQTDE = 300,

minEXP = 25000,
maxEXP = 750000,

prizesID = {2195, 7730},
prizesNAME = {"BoH", "Blue Legs"},
minQTDEPremios = 0,
maxQTDEPremios = 2,

PremioFixoID = 2160,
PremioFixoNAME = "Crystal Coin",
PremioFixoQTDE = 10,

taskPoints = 1
}

local medium = {
minQTDE = 100,
maxQTDE = 400,

minEXP = 50000,
maxEXP = 1500000,

prizesID = {2645, 2520},
prizesNAME = {"Steel Boots", "Demon Shield"},
minQTDEPremios = 1,
maxQTDEPremios = 3,

PremioFixoID = 2160,
PremioFixoNAME = "Crystal Coin",
PremioFixoQTDE = 15,

taskPoints = 2
}

local hard = {
minQTDE = 150,
maxQTDE = 500,

minEXP = 100000,
maxEXP = 3000000,

prizesID = {11773, 2466},
prizesNAME = {"Bag of Points", "Golden Armor"},
minQTDEPremios = 1,
maxQTDEPremios = 2,

PremioFixoID = 2160,
PremioFixoNAME = "Crystal Coin",
PremioFixoQTDE = 20,

taskPoints = 3
}

local expert = {
minQTDE = 200,
maxQTDE = 600,

minEXP = 2000000,
maxEXP = 6000000,

prizesID = {5785, 2472},
prizesNAME = {"3 Days Premium", "Magic Plate Armor"},
minQTDEPremios = 1,
maxQTDEPremios = 2,

PremioFixoID = 2160,
PremioFixoNAME = "Crystal Coin",
PremioFixoQTDE = 25,

taskPoints = 4
}

DT_TasksEasy = {"Rotworm", "Dwarf", "Minotaur", "Barbarian Bloodwalker", "Hunter", "Novice of the Cult", "Cyclops", "Dragon", "Hero", "Warlock"}
DT_TasksMedium = {"Dragon Lord", "Bog Raider", "Quara Constrictor", "War Golem", "Ancient Scarab", "Sea Serpent", "Grim Reaper", "Giant Spider"}
DT_TasksHard = {"Frost Dragon", "Hydra", "Behemoth", "Nightmare"}
DT_TasksExpert = {"Demon", "Juggernaut"}

-- SCRIPT

    
    DT_STORAGES = {
        PONTOS = 367643975,
        EXPERT = 367643974,
        HARD = 367643973,
        MEDIUM = 367643972,
        EASY = 367643971,
        HAVE_STARTED = 367643970,
            }
            
    --RESETAR STORAGES
        for i = 1, 6 do
        db.query('DELETE FROM `player_storage` WHERE `player_storage`.`key` = '.. 367643969+i ..'')
        end   
        
    -- EASY (100-)
        DT_CHOSENTASK_EASY = DT_TasksEasy[math.random(#DT_TasksEasy)]
        DT_NEEDKILL_EASY = math.ceil(math.random(easy.minQTDE, easy.maxQTDE))
        DT_EXPPRIZE_EASY = math.random(easy.minEXP, easy.maxEXP)
        
        DT_PRIZEID_EASY = easy.prizesID
        DT_PRIZENAME_EASY = easy.prizesNAME
        DT_PREMIOQTDE_EASY = math.random(easy.minQTDEPremios, easy.maxQTDEPremios)
        
        DT_PREMIOFIXO_ID_EASY = easy.PremioFixoID
        DT_PREMIOFIXO_NAME_EASY = easy.PremioFixoNAME
        DT_PREMIOFIXO_QTDE_EASY = easy.PremioFixoQTDE
        
        DT_TASKPOINTS_EASY = easy.taskPoints
        
    -- MEDIUM (150-)
        DT_CHOSENTASK_MEDIUM = DT_TasksMedium[math.random(#DT_TasksMedium)]
        DT_NEEDKILL_MEDIUM = math.ceil(math.random(medium.minQTDE, medium.maxQTDE))
        DT_EXPPRIZE_MEDIUM = math.random(medium.minEXP, medium.maxEXP)
        
        DT_PRIZEID_MEDIUM = medium.prizesID
        DT_PRIZENAME_MEDIUM = medium.prizesNAME
        DT_PREMIOQTDE_MEDIUM = math.random(medium.minQTDEPremios, medium.maxQTDEPremios)
        
        DT_PREMIOFIXO_ID_MEDIUM = medium.PremioFixoID
        DT_PREMIOFIXO_NAME_MEDIUM = medium.PremioFixoNAME
        DT_PREMIOFIXO_QTDE_MEDIUM = medium.PremioFixoQTDE
        
        DT_TASKPOINTS_MEDIUM = medium.taskPoints
    
    --HARD (200-)
        DT_CHOSENTASK_HARD = DT_TasksHard[math.random(#DT_TasksHard)]
        DT_NEEDKILL_HARD = math.ceil(math.random(hard.minQTDE, hard.maxQTDE))
        DT_EXPPRIZE_HARD = math.random(hard.minEXP, hard.maxEXP)
        
        DT_PRIZEID_HARD = hard.prizesID
        DT_PRIZENAME_HARD = hard.prizesNAME
        DT_PREMIOQTDE_HARD = math.random(hard.minQTDEPremios, hard.maxQTDEPremios)
        
        DT_PREMIOFIXO_ID_HARD = hard.PremioFixoID
        DT_PREMIOFIXO_NAME_HARD = hard.PremioFixoNAME
        DT_PREMIOFIXO_QTDE_HARD = hard.PremioFixoQTDE
        
        DT_TASKPOINTS_HARD = hard.taskPoints
        
    --EXPERT (200+)
        DT_CHOSENTASK_EXPERT = DT_TasksExpert[math.random(#DT_TasksExpert)]
        DT_NEEDKILL_EXPERT = math.ceil(math.random(expert.minQTDE, expert.maxQTDE))
        DT_EXPPRIZE_EXPERT = math.random(expert.minEXP, expert.maxEXP)
        
        DT_PRIZEID_EXPERT = expert.prizesID
        DT_PRIZENAME_EXPERT = expert.prizesNAME
        DT_PREMIOQTDE_EXPERT = math.random(expert.minQTDEPremios, expert.maxQTDEPremios)
        
        DT_PREMIOFIXO_ID_EXPERT = expert.PremioFixoID
        DT_PREMIOFIXO_NAME_EXPERT = expert.PremioFixoNAME
        DT_PREMIOFIXO_QTDE_EXPERT = expert.PremioFixoQTDE
        
        DT_TASKPOINTS_EXPERT = expert.taskPoints

        -- FUNÇÃO PRA PEGAR OS NOMES DOS ITEM
function getAllTableText(aa, bb, cc)
local tablecheck = aa

if not tablecheck then
    return false
end

local lang = bb
local ponto = ""
if not lang then
    lang = "and"
end
if cc then
ponto = "."
end
local text = ""
for i = 1, #tablecheck do
    if i == 1 then
    text = tablecheck[i]
    elseif i == #tablecheck then
    text = text .." "..lang.." "..tablecheck[i]..""..ponto..""
    else
    text = text ..", "..tablecheck[i]
    end
end
return text
end