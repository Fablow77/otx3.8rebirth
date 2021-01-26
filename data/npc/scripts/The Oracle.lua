local keywordHandler = KeywordHandler:new()

local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
function onCreatureAppear(cid)              npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)           npcHandler:onCreatureDisappear(cid)         end
function onCreatureSay(cid, type, msg)      npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                          npcHandler:onThink()                        end

function creatureSayCallback(cid, type, msg)
    if(not npcHandler:isFocused(cid)) then
        return false
    end
    local player = Player(cid)
    local reblevel = 1400  -- reborn level
    if(msgcontains(msg, 'rebirth')) then
        selfSay('Are you ready to be reborn and to start a new life?', cid)
    elseif(msgcontains(msg, 'yes')) then
		if(doPlayerRemoveMoney(cid, 2000000)) then
        	if player:getLevel() >= reblevel then
            	player:doRebirth()
            	player:remove()
				else
       				selfSay('Come back when you have some money!')
      		  end  
        else
           selfSay('Come back when your level is '..reblevel..'.')   
        end            
    end
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
