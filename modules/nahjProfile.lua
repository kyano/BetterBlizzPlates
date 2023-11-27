-- Setting up the database
BetterBlizzPlatesDB = BetterBlizzPlatesDB or {}
BBP = BBP or {}

local nahjAuraWhitelist = {
    {
        ["id"] = 102351,
        ["entryColors"] = {
            ["text"] = {
                ["r"] = 1,
                ["g"] = 1,
                ["b"] = 0,
            },
        },
        ["name"] = "",
        ["comment"] = "",
    }, -- [1]
}

local function updateAuraList(nahjList, userList)
    for _, newEntry in ipairs(nahjList) do
        local isEntryExists = false
        local entryId = newEntry.id or ""
        local entryName = newEntry.name or ""

        for _, existingEntry in ipairs(userList) do
            local existingId = existingEntry.id or ""
            local existingName = existingEntry.name or ""

            if (entryId ~= "" and entryId == existingId) or (entryName ~= "" and entryName == existingName) then
                isEntryExists = true
                break
            end
        end

        if not isEntryExists then
            local entryToAdd = {}
            if entryName ~= "" then
                entryToAdd.name = entryName
            else
                entryToAdd.id = entryId
                entryToAdd.name = ""
            end
            entryToAdd.entryColors = newEntry.entryColors
            entryToAdd.flags = newEntry.flags
            entryToAdd.comment = newEntry.comment or ""
            table.insert(userList, entryToAdd)
        end
    end
end

function BBP.NahjProfile()
    updateAuraList(nahjAuraWhitelist, BetterBlizzPlatesDB.auraWhitelist)

    local db = BetterBlizzPlatesDB
	db.nameplateAuraTaller = false
	db.totemIndicatorScale = 1.299999952316284
	db.NamePlateClassificationScale = "1.25"
	db.defaultLargeNamePlateFont = "Fonts\\FRIZQT__.TTF"
	db.executeIndicatorAnchor = "LEFT"
	db.arenaIdYPos = 0
	db.nameplateFriendlyWidthScale = 65
	db.nameplatePlayerLargerScale = "1.8"
	db.nameplateDefaultFriendlyHeight = 45
	db.friendlyNpBuffFilterLessMinite = false
	db.otherNpdeBuffFilterWatchList = true
	db.castBarRecolorInterrupt = false
	db.customTextureFriendly = "Dragonflight (BBP)"
	db.colorNPCName = false
	db.absorbIndicatorYPos = 0
	db.targetIndicatorYPos = 0
	db.friendlyNpBuffFilterAll = false
	db.focusTargetIndicatorTexture = "Shattered DF (BBP)"
	db.personalNpdeBuffEnable = false
	db.nameplateDefaultEnemyHeight = 45
	db.otherNpBuffFilterWatchList = true
	db.castbarEventsOn = true
	db.targetIndicatorScale = 1
	db.showNameplateCastbarTimer = true
	db.partyIndicatorModeOff = true
	db.questIndicatorAnchor = "LEFT"
	db.otherNpdeBuffPandemicGlow = false
	db.otherNpdeBuffEnable = false
	db.castBarShieldAnchor = "LEFT"
	db.otherNpBuffBlueBorder = false
	db.combatIndicatorXPos = 0
	db.friendlyNpdeBuffFilterWatchList = false
	db.focusTargetIndicatorColorNameplate = false
	db.reopenOptions = false
	db.hasSaved = true
	db.nameplateAuraWidthGap = 4
	db.otherNpdeBuffFilterBlizzard = true
	db.defaultLargeFontSize = 12
	db.NamePlateVerticalScale = 2.799999952316284
	db.castBarDragonflightShield = true
	db.focusTargetIndicatorTestMode = false
	db.partyIndicatorModeThree = false
	db.absorbIndicatorAnchor = "LEFT"
	db.arenaIndicatorModeOff = false
	db.absorbIndicatorScale = 1
	db.arenaIndicatorModeFour = true
	db.nameplateAuraSquare = false
	db.castBarEmphasisSparkHeight = 35
	db.nameplateEnemyHeight = 50
	db.nameplateAurasYPos = 0
	db.castBarEmphasisColor = false
	db.defaultNamePlateFont = "Fonts\\FRIZQT__.TTF"
	db.customFontSize = 12
	db.nameplateAurasCenteredAnchor = false
	db.questIndicatorYPos = 0
	db.friendlyNpBuffPurgeGlow = false
	db.arenaIdXPos = 0
	db.castBarShieldYPos = 0
	db.showCastBarIconWhenNoninterruptible = false
	db.nameplateDefaultLargeEnemyHeight = 64.125
	db.castBarTextScale = 1
	db.otherNpdeBuffFilterAll = false
	db.colorNPC = false
	db.focusTargetIndicatorScale = 1
	db.questIndicator = false
	db.executeIndicatorXPos = 0
	db.showNameplateTargetText = false
	db.partySpecScale = 1
	db.nameplateMinScale = 0.8800000190734864
	db.friendlyNpdeBuffFilterAll = false
	db.raidmarkIndicatorAnchor = "TOP"
	db.totemIndicatorHideNameAndShiftIconDown = false
	db.petIndicator = false
	db.enemyNameplateHealthbarHeight = 10.8
	db.customFont = "Yanone (BBP)"
	db.defaultLargeNamePlateFontFlags = ""
	db.personalNpBuffEnable = true
	db.nameplateAuraRelativeAnchor = "TOPLEFT"
	db.combatIndicatorEnemyOnly = true
	db.totemIndicatorAnchor = "TOP"
	db.healerIndicatorYPos = 0
	db.totemIndicatorYPos = 0
	db.nameplateLargerScale = "1.1"
	db.defaultNamePlateFontFlags = ""
	db.fadeOutNPCsAlpha = 0.2
	db.castBarRecolor = false
	db.combatIndicator = false
	db.useCustomFont = false
	db.otherNpdeBuffFilterLessMinite = false
	db.defaultFontSize = 9
	db.combatIndicatorAnchor = "CENTER"
	db.nameplateAuraHeightGap = 4
	db.hideNPC = false
	db.nameplateHorizontalScale = "1.4"
	db.healerIndicatorEnemyOnly = true
	db.executeIndicatorFriendly = false
	db.hideNameplateAuras = false
	db.combatIndicatorPlayersOnly = true
	db.friendlyNameColor = false
	db.arenaModeSettingKey = "4: Replace name with spec + ID on top"
	db.arenaSpecScale = 1
	db.combatIndicatorArenaOnly = true
	db.nameplateOverlapH = "0.8"
	db.focusTargetIndicatorYPos = 0
	db.castBarEmphasisText = false
	db.nameplateFriendlyWidth = 65
	db.petIndicatorScale = 1
	db.personalNpdeBuffFilterAll = false
	db.totemIndicatorTestMode = false
	db.totemIndicatorGlowOff = false
	db.nameplateAuraScale = 1
	db.executeIndicatorThreshold = 40
	db.totemIndicatorScaleUpImportant = true
	db.combatIndicatorScale = 1
	db.personalNpBuffFilterAll = false
	db.partyModeSettingKey = "Off"
	db.hideTargetHighlight = true
	db.focusTargetIndicatorXPos = 0
	db.partyIndicatorModeFour = false
	db.arenaSpecXPos = 0
	db.friendlyNpdeBuffEnable = false
	db.arenaIndicatorModeFive = false
	db.combatIndicatorYPos = 0
	db.enableCastbarEmphasis = false
	db.healerIndicator = true
    db.healerIndicatorBgOnly = true
	db.shortArenaSpecName = true
	db.classColorPersonalNameplate = true
	db.fadeOutNPC = false
	db.otherNpdeBuffFilterOnlyMe = false
	db.arenaIndicatorTestMode = false
	db.nameplateDefaultLargeFriendlyWidth = 154
	db.personalNpdeBuffFilterWatchList = true
	db.castBarShieldXPos = 0
	db.castBarEmphasisIcon = false
	db.absorbIndicatorEnemyOnly = false
	db.executeIndicatorShowDecimal = true
	db.castBarEmphasisIconScale = 2
	db.partyIndicatorModeOne = false
	db.castBarEmphasisHeightValue = 24
	db.questIndicatorXPos = 0
	db.healerIndicatorXPos = 0
	db.executeIndicatorAlwaysOn = false
	db.castBarIconXPos = 0
	db.wasOnLoadingScreen = false
	db.executeIndicatorNotOnFullHp = false
	db.focusTargetIndicatorAnchor = "TOPRIGHT"
	db.nameplateFriendlyHeight = 60
	db.nameplateMaxScaleScale = 1.100000023841858
	db.healerIndicatorTestMode = false
	db.friendlyNpdeBuffFilterLessMinite = false
	db.nameplateEnemyWidth = 135
	db.totemIndicatorScaleScale = 1.299999952316284
	db.friendlyNpBuffEmphasisedBorder = false
	db.arenaIndicatorModeThree = false
	db.totemIndicator = true
	db.absorbIndicatorOnPlayersOnly = true
	db.castBarIconScale = 1
	db.petIndicatorYPos = 0
	db.raidmarkIndicatorXPos = 0
	db.nameplateAuraRowAmount = 5
	db.castBarEmphasisOnlyInterruptable = false
	db.arenaIndicatorModeOne = false
	db.raidmarkIndicatorYPos = 0
	db.executeIndicatorYPos = 0
	db.otherNpBuffFilterLessMinite = false
	db.testAllEnabledFeatures = false
	db.enemyNameScale = 1
	db.enemyNameScaleScale = 1
	db.castBarHeight = 18.8
	db.friendlyClassColorName = true
	db.nameplateDefaultLargeEnemyWidth = 154
	db.showCastbarIfTarget = false
	db.removeRealmNames = true
	db.castBarIconAnchor = "LEFT"
	db.enemyClassColorName = true
	db.absorbIndicator = true
	db.partyIndicatorModeTwo = false
	db.totemIndicatorXPos = 0
	db.absorbIndicatorXPos = 0
	db.personalNpBuffFilterWatchList = true
	db.nameplateMaxScale = 1.100000023841858
	db.castBarEmphasisTextScale = 2
	db.targetIndicatorAnchor = "TOP"
	db.useCustomTextureForBars = false
	db.friendlyHealthBarColor = false
	db.targetIndicator = false
	db.nameplateAuraAnchor = "BOTTOMLEFT"
	db.nameplateGlobalScale = "1.0"
	db.absorbIndicatorTestMode = false
	db.nameplateDefaultLargeFriendlyHeight = 64.125
	db.personalNpBuffFilterLessMinite = false
	db.petIndicatorTestMode = false
	db.partyIndicatorModeFive = false
	db.petIndicatorAnchor = "CENTER"
	db.castBarEmphasisHealthbarColor = false
	db.arenaIndicatorModeTwo = false
	db.nameplateOverlapV = "1.3600000143051"
	db.nameplateEnemyWidthScale = 135
	db.otherNpBuffEnable = true
	db.castBarEmphasisHeight = false
	db.friendlyNpBuffFilterWatchList = false
	db.partyIDScale = 1
	db.arenaIdAnchor = "TOP"
	db.arenaIDScale = 1
	db.otherNpBuffFilterAll = false
	db.castBarIconYPos = 0
	db.largeNameplates = true
	db.executeIndicatorTestMode = false
	db.targetIndicatorXPos = 0
	db.friendlyNpdeBuffFilterOnlyMe = false
	db.hideDefaultPersonalNameplateAuras = false
	db.raidmarkIndicatorScale = 1
	db.focusTargetIndicator = false
	db.castBarShieldScale = 1
	db.arenaSpecYPos = 0
	db.nameplateDefaultEnemyWidth = 110
	db.otherNpBuffPurgeGlow = false
	db.friendlyNpBuffEnable = false
	db.version = "1.00"
	db.friendlyNameScale = 1
	db.petIndicatorXPos = 0
	db.arenaSpecAnchor = "TOP"
	db.healerIndicatorAnchor = "TOPRIGHT"
	db.NamePlateVerticalScaleScale = 2.799999952316284
	db.targetIndicatorTestMode = false
	db.friendlyNpBuffFilterOnlyMe = false
	db.personalNpBuffFilterBlizzard = true
	db.customTexture = "Dragonflight (BBP)"
	db.friendlyNameplateClickthrough = true
	db.nameplateMotionSpeed = "0.05"
	db.enableCastbarCustomization = false
	db.questIndicatorScale = 1
	db.otherNpBuffEmphasisedBorder = false
	db.nameplateAuraRowAbove = true
	db.nameplateSelectedScale = "1.25"
	db.healerIndicatorScale = 1
	db.friendlyNpBuffBlueBorder = false
	db.executeIndicatorScale = 1
	db.nameplateDefaultFriendlyWidth = 110
	db.executeIndicator = false
	db.combatIndicatorSap = true
	db.questIndicatorTestMode = false
	db.nameplateAurasNoNameYPos = 0
	db.friendlyNpdeBuffFilterBlizzard = false
	db.nameplateAurasXPos = 0
	db.enableNameplateAuraCustomisation = true
	db.personalNpdeBuffFilterLessMinite = false
	db.raidmarkIndicator = false
	db.maxAurasOnNameplate = 12
	db.friendlyNameplatesOnlyInArena = true
	db.hideNPCArenaOnly = false
	db.hideNPCWhitelistOn = false
end