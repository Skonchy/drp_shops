---------------------------------------------------------------------------
-- MAIN THREAD
---------------------------------------------------------------------------
Citizen.CreateThread(function()
    for k, v in pairs(DRPConfig.Locations) do
        for i = 1, #v.Blip.Pos do
            local blip = AddBlipForCoord(v.Blip.Pos[i].x, v.Blip.Pos[i].y, v.Blip.Pos[i].z)
			SetBlipSprite(blip, v.Blip.Sprite)
			SetBlipColour(blip, v.Blip.Color)
			SetBlipScale(blip, v.Blip.Scale)
			SetBlipAsShortRange(blip, true)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString(v.Blip.Name)
			EndTextCommandSetBlipName(blip)
        end
    end

    while true do
        local waitTime = 1000

        for k, v in pairs(DRPConfig.Locations) do
            for i = 1, #v.Shop_Marker.Pos do
                local pedCoords = GetEntityCoords(PlayerPedId(), false)
                local isInMarker = false

                if Vdist2(pedCoords, v.Shop_Marker.Pos[i].x, v.Shop_Marker.Pos[i].y, v.Shop_Marker.Pos[i].z + 1.0, true) < 0.7 then
                    isInMarker = true
                end

                local distance = Vdist2(pedCoords.x, pedCoords.y, pedCoords.z, v.Shop_Marker.Pos[i].x, v.Shop_Marker.Pos[i].y, v.Shop_Marker.Pos[i].z)

                if distance < 10.0 then
                    waitTime = 2
                    DrawMarker(v.Shop_Marker.Marker, v.Shop_Marker.Pos[i].x, v.Shop_Marker.Pos[i].y, v.Shop_Marker.Pos[i].z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, v.Shop_Marker.Size.x, v.Shop_Marker.Size.y, v.Shop_Marker.Size.z, v.Shop_Marker.Color.r, v.Shop_Marker.Color.g, v.Shop_Marker.Color.b, 100, false, false, 2, false, false, false, false)

                    if isInMarker and not IsPedInAnyVehicle(PlayerPedId(), true) then
                        if IsControlJustPressed(1, 86) then
                            TriggerEvent("DRP_shop:OpenShopMenu", DRPConfig.Items)
                        end
                    end
                end
            end
        end

        Citizen.Wait(waitTime)
    end
end)
---------------------------------------------------------------------------
-- NUI TRIGGER EVENTS
---------------------------------------------------------------------------
RegisterNetEvent("DRP_shop:OpenShopMenu")
AddEventHandler("DRP_shop:OpenShopMenu", function(items)
	SetNuiFocus(true, true)
    SendNUIMessage({
        type = "open_shop_menu",
		items = items,
    })
end)
---------------------------------------------------------------------------
-- NUI CALLBACKS
---------------------------------------------------------------------------
RegisterNUICallback("close_shop", function(data, callback)
	SetNuiFocus(false, false)
	callback("ok")
end)

RegisterNUICallback("Buy_item", function(data, callback)
	--local plate = GenerateRandomPlate()
    TriggerServerEvent("DRP_shop:CheckMoney", data.selectedItem, data.price)
	callback("ok")
end)