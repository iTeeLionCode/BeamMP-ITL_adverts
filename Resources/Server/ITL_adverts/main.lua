local pluginName = "ITL_adverts"
local pluginVersion = "0.0.1"

local CFG = require("cfg")

local config = CFG.getLocal("main")

function sleep(seconds)
    local ntime = os.time() + seconds
    repeat until os.time() > ntime
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

    if (usersCount > 0 and config.onlineUsersOnly == true) or config.onlineUsersOnly == false then
        if config.random == true then
            row = math.random(1, #config.messages)
        end
    
        MP.SendChatMessage(-1, config.messages[row])
    
        row = row + 1
        if row > #config.messages then
            row = 1
        end
    end

    return row
end

function runMessagesLoop()
    local row = 1
    while true do
        row = sendMessage(row)
        sleep(config.delay)
    end
end

function onInit()

end

runMessagesLoop()
