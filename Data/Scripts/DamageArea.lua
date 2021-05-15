local propTrigger = script:GetCustomProperty("Trigger"):WaitForObject()

function OnBeginOverlap(theTrigger, player)
    if player and player:IsA("Player") then
        player.serverUserData.Manager.RegisterDamageSource(script.id, 5)
    end
end

function OnEndOverlap(theTrigger, player)
    if player and player:IsA("Player") then
        player.serverUserData.Manager.UnRegisterDamageSource(script.id)
    end
end

propTrigger.beginOverlapEvent:Connect(OnBeginOverlap)
propTrigger.endOverlapEvent:Connect(OnEndOverlap)