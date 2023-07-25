ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-------------Tenue de plongée
ESX.RegisterUsableItem('plongee', function(source)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    xPlayer.removeInventoryItem('plongee', 1)
        TriggerClientEvent('esx_tenues:settenueplongee', _source)
end)