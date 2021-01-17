function onKill(player, target)
local monster = getCreatureName(target)
    
local KILL_EASY = player:getStorageValue(DT_STORAGES.EASY)
local KILL_MEDIUM = player:getStorageValue(DT_STORAGES.MEDIUM)
local KILL_HARD = player:getStorageValue(DT_STORAGES.HARD)
local KILL_EXPERT = player:getStorageValue(DT_STORAGES.EXPERT)

local isDOING = player:getStorageValue(DT_STORAGES.HAVE_STARTED)

if isDOING == 1 then
    if monster:lower() == DT_CHOSENTASK_EASY:lower() then
                player:setStorageValue(DT_STORAGES.EASY, KILL_EASY + 1)
        if KILL_EASY >= DT_NEEDKILL_EASY then
                player:sendChannelMessage('', '[DAILY TASK] You successully killed '..DT_NEEDKILL_EASY..' '..monster..'. ', 8, 12)
            else
                player:sendChannelMessage('', '[DAILY TASK] You killed a '..monster..'. There are still '..DT_NEEDKILL_EASY-KILL_EASY-1 ..' to kill.', 8, 12)
        end
    end
elseif isDOING == 2 then
    if monster:lower() == DT_CHOSENTASK_MEDIUM:lower() then
                player:setStorageValue(DT_STORAGES.MEDIUM, KILL_MEDIUM + 1)
        if KILL_MEDIUM >= DT_NEEDKILL_MEDIUM then
                player:sendChannelMessage('', '[DAILY TASK] You successully killed '..DT_NEEDKILL_MEDIUM..' '..monster..'.', 8, 12)
            else
                player:sendChannelMessage('', '[DAILY TASK] You killed a '..monster..'. There are still '..DT_NEEDKILL_MEDIUM-KILL_MEDIUM-1 ..' to kill.', 8, 12)       
        end
    end
elseif isDOING == 3 then
    if monster:lower() == DT_CHOSENTASK_HARD:lower() then
                player:setStorageValue(DT_STORAGES.HARD, KILL_HARD + 1)
        if KILL_HARD >= DT_NEEDKILL_HARD then
                player:sendChannelMessage('', '[DAILY TASK] You successully killed '..DT_NEEDKILL_HARD..' '..monster..'.', 8, 12)
            else
                player:sendChannelMessage('', '[DAILY TASK] You killed a '..monster..'. There are still '..DT_NEEDKILL_HARD-KILL_HARD-1 ..' to kill.', 8, 12)       
        end
    end
elseif isDOING == 4 then
    if monster:lower() == DT_CHOSENTASK_EXPERT:lower() then
                player:setStorageValue(DT_STORAGES.MEDIUM, KILL_EXPERT + 1)
        if KILL_EXPERT >= DT_NEEDKILL_EXPERT then
                player:sendChannelMessage('', '[DAILY TASK] You successully killed '..DT_NEEDKILL_EXPERT..' '..monster..'.', 8, 12)
            else
                player:sendChannelMessage('', '[DAILY TASK] You killed a '..monster..'. There are still '..DT_NEEDKILL_EXPERT-KILL_EXPERT-1 ..' to kill.', 8, 12)       
        end
    end
end

return true
end