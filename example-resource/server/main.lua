-- Server-side script for FiveM resource

-- Print when resource starts
AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
        return
    end
    print('^2[' .. resourceName .. '] Resource started successfully!^0')
end)

-- Print when resource stops
AddEventHandler('onResourceStop', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
        return
    end
    print('^1[' .. resourceName .. '] Resource stopped!^0')
end)

-- Player connected event
AddEventHandler('playerConnecting', function(name, setKickReason, deferrals)
    local playerId = source
    local playerName = GetPlayerName(playerId)
    print(string.format('^3Player %s is connecting...^0', playerName))
end)

-- Player joined event
RegisterServerEvent('playerJoined')
AddEventHandler('playerJoined', function()
    local playerId = source
    local playerName = GetPlayerName(playerId)
    print(string.format('^2Player %s has joined the server!^0', playerName))
end)

-- Example command (server-side)
RegisterCommand('serverinfo', function(source, args, rawCommand)
    local playerId = source
    TriggerClientEvent('chat:addMessage', playerId, {
        color = {255, 0, 0},
        multiline = true,
        args = {'Server', 'This is a FiveM resource example!'}
    })
end, false)
