---------------------------------------------------------------------------
-- SHOP EVENTS START
---------------------------------------------------------------------------
RegisterServerEvent("DRP_shop:CheckMoney")
AddEventHandler("DRP_shop:CheckMoney", function(item, price)
    local src = source
    local dataUser = exports["drp_id"]:GetCharacterData(src)
    local selected = item
    TriggerEvent("DRP_Bank:GetCharacterMoney", dataUser.charid, function(characterMoney)
        local userMoney = characterMoney.data[1].cash

		if price < userMoney then
            if type(selected) == 'table' then
                selected = selected.item
            end
            TriggerEvent("DRP_Bank:RemoveCashMoney", dataUser, price)
            TriggerEvent("DRP_Inventory:addInventoryItem", selected, 1, src)
        else
            -- no money
        end
    end)
end)