function (self, unitId, unitFrame, envTable, modTable)    
    if modTable.isInCombat == false then
        return
    end
    
    modTable.isEnabled = false
    modTable.lastGUID = nil
    
    if modTable.lastGlow then
        modTable.lastGlow:Hide()
        modTable.lastGlow = nil
    end
    
    modTable.isInCombat = false
end