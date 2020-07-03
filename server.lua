---------------------------------------------------------------------------
-- SHOP EVENTS START
---------------------------------------------------------------------------
RegisterServerEvent("DRP_shop:CheckMoney")
AddEventHandler("DRP_shop:CheckMoney", function(item, price)
    print("done stuff")
    local src = source
    local dataUser = exports["drp_id"]:GetCharacterData(src)

    TriggerEvent("DRP_Bank:GetCharacterMoney", dataUser.charid, function(characterMoney)
        local userMoney = characterMoney.data[1].cash

		if price < userMoney then
			print(item)
            TriggerEvent("DRP_Bank:RemoveCashMoney", dataUser, price)
            TriggerEvent("DRP_Inventory:addInventoryItem", item, 1, src)
        else
            -- no money
        end
    end)
end)
