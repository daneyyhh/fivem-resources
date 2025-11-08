-- Client-side script for FiveM resource

-- Event triggered when the player spawns
AddEventHandler('playerSpawning', function()
    print('Player spawned!')
end)

-- Command to display a notification
RegisterCommand('notify', function(source, args, rawCommand)
    local message = table.concat(args, ' ')
    if message == '' then
        message = 'Hello from FiveM!'
    end
    
    -- Display notification
    SetNotificationTextEntry('STRING')
    AddTextComponentString(message)
    DrawNotification(false, false)
end, false)

-- Thread example - runs continuously
CreateThread(function()
    while true do
        Wait(0)
        
        -- Example: Display coordinates when pressing E
        if IsControlJustPressed(0, 38) then -- E key
            local playerPed = PlayerPedId()
            local coords = GetEntityCoords(playerPed)
            print(string.format('Player coords: x=%.2f, y=%.2f, z=%.2f', coords.x, coords.y, coords.z))
        end
    end
end)
