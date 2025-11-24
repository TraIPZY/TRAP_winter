RegisterNetEvent("trap_snow:addSnowball")
AddEventHandler("trap_snow:addSnowball", function()
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer.canCarryItem("weapon_snowball", 1) then
        xPlayer.addInventoryItem("weapon_snowball", 1)
    else
        TriggerClientEvent('ox_lib:notify', source, {
            type = 'error',
            description = "Ton inventaire est plein !"
        })
    end
end)
