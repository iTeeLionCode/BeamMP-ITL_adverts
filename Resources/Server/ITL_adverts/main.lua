pluginName = "ITLadverts"
pluginVersion = "0.0.2"
lastMessage = 1

CFG = require("cfg")

function getPlayersCount()
    local count = 0
    local players = MP.GetPlayers()
    if players ~= nil then
        for key, playerName in pairs(players) do
            count = count + 1
        end
    end
    return count
end

function sendMessage(row)
    local usersCount = getPlayersCount();

    if (usersCount > 0 and pluginConfig.onlineUsersOnly == true) or pluginConfig.onlineUsersOnly == false then
        if pluginConfig.random == true then
            row = math.random(1, #pluginConfig.messages)
        end
    
        MP.SendChatMessage(-1, pluginConfig.messages[row])
    
        row = row + 1
        if row > #pluginConfig.messages then
            row = 1
        end
    end

    return row
end

function onInit()
    pluginConfig = CFG.getLocal("main")

    function SendMessageLoopTimerHandler()
        lastMessage = sendMessage(lastMessage)
    end

    MP.RegisterEvent("SendMessageLoopTimer", "SendMessageLoopTimerHandler")

    MP.CreateEventTimer("SendMessageLoopTimer", pluginConfig.delay * 1000)
end
