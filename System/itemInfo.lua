    main = function()
    iiFiles = {
    "System/itemInfo_custom.lua",
    "System/itemInfo_KR.lua",
    }

    _TempItems = {}
    _Num = 0


    function CheckItem(ItemID, DESC)
    if not (_TempItems[ItemID]) then
    _TempItems[ItemID] = DESC
    _Num = _Num + 1
    else
    myTbl = {}
    for pos,val in pairs(_TempItems[ItemID]) do
    myTbl[pos] = val
    end

    for pos,val in pairs(DESC) do
    if not (myTbl[pos]) or myTbl[pos] == "" then
    myTbl[pos] = val
    end

    end

    _TempItems[ItemID] = myTbl
    end

    end



    for i,iiFile in pairs(iiFiles) do
    d = dofile(iiFile)
    end



    for ItemID,DESC in pairs(_TempItems) do

    result, msg = AddItem(ItemID, DESC.unidentifiedDisplayName, DESC.unidentifiedResourceName, DESC.identifiedDisplayName, DESC.identifiedResourceName, DESC.slotCount, DESC.ClassNum)
    if not result then
    return false, msg
    end
    for k,v in pairs(DESC.unidentifiedDescriptionName) do
    result, msg = AddItemUnidentifiedDesc(ItemID, v)
    if not result then
    return false, msg
    end
    end
    for k,v in pairs(DESC.identifiedDescriptionName) do
    result, msg = AddItemIdentifiedDesc(ItemID, v)
    if not result then
    return false, msg
    end
    end
    end


    _TempItems = nil

    return true, "good"
    end