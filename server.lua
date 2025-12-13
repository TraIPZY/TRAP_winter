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


AddEventHandler('onResourceStart', function(resourceName)
    if resourceName ~= GetCurrentResourceName() then return end

    print('^4████████╗██████╗  █████╗ ██████╗ ')
    print('^4╚══██╔══╝██╔══██╗██╔══██╗██╔══██╗')
    print('^4   ██║   ██████╔╝███████║██████╔╝')
    print('^4   ██║   ██╔══██╗██╔══██║██╔═══╝ ')
    print('^4   ██║   ██║  ██║██║  ██║██║     ')
    print('^4   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ')
    print('^7')
    print('^6   Discord : https://discord.gg/rjjU2y93X7')
    print('^8   Créé par TRAPZY')
    print('^3   © TRAP Development')

end)
