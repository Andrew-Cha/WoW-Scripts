function (self, unitId, unitFrame, envTable, modTable)
    local isPetAlive = UnitExists("pet")
    if modTable.isInCombat == false or isPetAlive == false then
        return
    end
    
    local currentGUID = unitFrame.namePlateUnitGUID
    local petTargetGUID = UnitGUID("pettarget")
    
    if petTargetGUID == nil then
        if modTable.lastGUID == nil then return end
        
        if modTable.lastGlow then
            modTable.lastGlow:Hide()
            modTable.lastGlow = nil
        end
        
        modTable.isEnabled = false
        modTable.lastGUID = nil
        
        return
    end
    
    if currentGUID ~= petTargetGUID then
        return
    end
    
    if modTable.lastGUID == currentGUID then
        return
    else 
        if modTable.lastGlow ~= nil then
            modTable.lastGlow:Hide()
        end
        
        modTable.lastGlow = Plater.CreateNameplateGlow(unitFrame.healthBar)
        modTable.lastGUID = currentGUID
        modTable.isEnabled = true
    end
end