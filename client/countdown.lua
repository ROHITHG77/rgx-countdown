ESX = exports['es_extended']:getSharedObject()

AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then return end
    SendNUIMessage({type = 'init'})
end)

RegisterNetEvent('rgx_countdown:update')
AddEventHandler('rgx_countdown:update', function(number)
    SendNUIMessage({
        type = 'updateCountdown',
        number = number
    })
end)

RegisterNetEvent('rgx_countdown:complete')
AddEventHandler('rgx_countdown:complete', function()
    SendNUIMessage({
        type = 'countdownComplete'
    })
end)