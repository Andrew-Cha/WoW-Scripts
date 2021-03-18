function (self, unitId, unitFrame, envTable, modTable)
    local isPetAlive = UnitExists("pet")
    if envTable.isInCombat == false or isPetAlive == false then
        return
    end
    
    local currentGUID = unitFrame.namePlateUnitGUID
    local petTargetGUID = UnitGUID("pettarget")
    
    if currentGUID == modTable.lastGUID then
        print("Pet target died")
        envTable.isEnabled = false
        envTable.lastGUID = nil
        
        if envTable.lastGlow then
            envTable.lastGlow:Hide()
            envTable.lastGlow = nil
        end
    end
end