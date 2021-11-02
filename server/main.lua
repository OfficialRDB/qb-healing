local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('grandma:server:billing', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    Player.Functions.RemoveMoney(Config.MoneyType, Config.Price, 'grandma-revived')
    TriggerClientEvent('QBCore:Notify', src, 'Grandma charged you $'..Config.Price, 'success')
end)