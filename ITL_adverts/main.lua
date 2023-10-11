pluginName = "ITL_adverts"
pluginVersion = "1.0.0"
lastMessage = 1

CFG = require("cfg")

function getPluginInfo()
    return pluginName .. " ("..pluginVersion..")"
end

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

        if pluginConfig.messages[row] ~= nil then
            if type(pluginConfig.messages[row]) == "string" then
                MP.SendChatMessage(-1, pluginConfig.messages[row])
            elseif type(pluginConfig.messages[row]) == "table" then
                for key, rowItem in pairs(pluginConfig.messages[row]) do
                    MP.SendChatMessage(-1, rowItem)
                end
            end
        end

        row = row + 1
        if row > #pluginConfig.messages then
            row = 1
        end
    end

    return row
end

function onInit()

    pluginConfig = CFG.getLocal("main.config.json")

    print(pluginConfig)

    function SendMessageLoopTimerHandler()
        lastMessage = sendMessage(lastMessage)
    end

    MP.RegisterEvent("SendMessageLoopTimer", "SendMessageLoopTimerHandler")

    MP.CreateEventTimer("SendMessageLoopTimer", pluginConfig.delay * 1000)

    print("Plugin loaded: " .. getPluginInfo())

end
