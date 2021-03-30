function onSay(cid, words, param)

local aol = 2173

  if doPlayerRemoveMoney(cid, 20000) == true then
    doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE, "You have bought an aol for 20K.")
    doPlayerAddItem(cid, aol, 1)
    doSendMagicEffect(getCreaturePosition(cid), CONST_ME_MAGIC_BLUE)
  else
    doPlayerSendCancel(cid, "Sorry, You need 20K to buy an aol.")
  end
return true
end