ESX = exports['es_extended']:getSharedObject()

local Countdown = {
    isActive = false,
    currentNumber = 0,
    targetNumber = 0
}

RegisterNetEvent('rgx_countdown:start')
AddEventHandler('rgx_countdown:start', function(startNumber)
    if Countdown.isActive then return end
    
    Countdown.isActive = true
    Countdown.currentNumber = startNumber
    Countdown.targetNumber = startNumber

    CreateThread(function()
        while Countdown.isActive and Countdown.currentNumber >= 0 do
            Wait(1000)
            
            TriggerClientEvent('rgx_countdown:update', -1, Countdown.currentNumber)
            
            Countdown.currentNumber = Countdown.currentNumber - 1
            
            if Countdown.currentNumber < 0 then
                Wait(1000)
                TriggerClientEvent('rgx_countdown:complete', -1)
                Countdown.isActive = false
                break
            end
        end
    end)
end)

RegisterNetEvent('rgx_countdown:stop')
AddEventHandler('rgx_countdown:stop', function()
    Countdown.isActive = false
    TriggerClientEvent('rgx_countdown:complete', -1)
end)

exports('StartCountdown', function(number)
    TriggerEvent('rgx_countdown:start', number)
end)

exports('StopCountdown', function()
    TriggerEvent('rgx_countdown:stop')
end)