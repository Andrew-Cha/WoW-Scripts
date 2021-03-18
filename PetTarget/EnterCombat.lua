function (self, unitId, unitFrame, envTable, modTable)
    if modTable.isInCombat == true then
        return 
    end
    
    modTable.isInCombat = true
end