local QBCore = exports['qb-core']:GetCoreObject()
local time = Config.HealingTime * 1000

RegisterNetEvent('grandma:client:healing', function()
    local player = PlayerPedId()
    local playerData = QBCore.Functions.GetPlayerData()
    
    if playerData.metadata['isdead'] or playerData.metadata['inlaststand'] then
        if playerData['money'][Config.MoneyType] >= Config.Price then

            QBCore.Functions.Progressbar('healing', 'Grandma is helping You!', time, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function()
                
                TriggerServerEvent('grandma:server:billing')
                TriggerEvent('hospital:client:Revive')
            end, function()

            end)
        else 
            QBCore.Functions.Notify('You don\'t have enough money!', 'error')
        end
    else
        QBCore.Functions.Notify('There is nothing wrong with you!', 'error')
    end
end)