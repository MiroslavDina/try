
QBCore = exports['qb-core']:GetCoreObject()

RegisterCommand("try", function(source, args, rawCommand)
    local randomAnswer = math.random(1, 2) -- Generate a random number between 1 and 2
    local playerName = GetPlayerName(PlayerId())

    local message = ""
    if randomAnswer == 1 then
        message = "NO" -- Display "No"
    else
        message = "YES" -- Display "Yes"
    end

    local chatMessage = {
        color = {255, 255, 255}, -- You can customize the color
        multiline = true,
        args = {playerName, message}
    }
    TriggerEvent('chat:addMessage', chatMessage)
end, false)
