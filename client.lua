local snowActive = true

-- Neige permanente
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if snowActive then
            SetWeatherTypePersist('XMAS')
            SetWeatherTypeNow('XMAS')
            SetWeatherTypeNowPersist('XMAS')
            SetForceVehicleTrails(true)
            SetForcePedFootstepsTracks(true)
        end
    end
end)

-- Animation ramassage
local function PlaySnowballPickUp()
    local playerPed = PlayerPedId()
    local dict = "pickup_object"
    local anim = "pickup_low"

    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(10)
    end

    TaskPlayAnim(playerPed, dict, anim, 8.0, -8.0, 3000, 49, 0, false, false, false)
end

-- Interaction E
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        if IsControlJustReleased(0, 38) then -- E
            local playerPed = PlayerPedId()

            -- 🔒 1) BLOQUE EN VÉHICULE
            if IsPedInAnyVehicle(playerPed, false) then
                goto continue
            end

            -- 🔒 2) BLOQUE DANS LES INTÉRIEURS (solution finale)
            local roomKey = GetRoomKeyFromEntity(playerPed)
            if roomKey ~= 0 then
                goto continue
            end

            -- Animation
            PlaySnowballPickUp()

            Wait(2000)

            -- Donne l’item
            TriggerServerEvent("trap_snow:addSnowball")
        end

        ::continue::
    end
end)
