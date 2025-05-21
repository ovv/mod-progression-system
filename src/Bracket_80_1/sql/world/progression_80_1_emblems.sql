-- Emblem of heroism = 40752
-- Emblem of valor = 40753
-- Emblem of triumph = 47241

-- Set daily heroic random reward to emblem of valor
UPDATE `quest_template` SET `RewardItem1` = 40753 WHERE `ID` = 24788;

-- Set daily normal random reward and Nth daily heroic random reward to emblems of heroism
UPDATE `quest_template` SET `RewardItem1` = 40752 WHERE `ID` IN (24789, 24790);

-- Make heroic dungeon boss drop emblems of heroism
UPDATE `creature_loot_template` SET `Item` = 40752 WHERE `Item` = 47241 AND `Entry` IN (
    31558, 31559, 31560, -- The oculus
    30510, 30529, 30532, 30540, 30397, 30398, -- The Nexus
    31456, 31469, 31465, 31464, 31463, -- Ahn'kahet: The Old Kingdom
    31612, 31611, 31610, -- Azjol-Nerub
    31507, 31510, 31508, 31511, 31509, 31512, 31506, -- The Violet Hold
    31370, 31367, 30530, 31368, 29932, -- Gundrak
    31362, 31350, 31349, 31360, -- Drak'Tharon Keep
    31533, 31536, 31537, 31538, -- Halls of Lightning
    31384, 31381, 31386, -- Halls of Stone
    30748, 31679, 31673, -- Utgarde Keep
    30810, 30774, 30807, 30788, -- Utgarde Pinnacle
    31211, 31212, 31215, 32313 -- The culling of Stratholme
);

UPDATE `gameobject_loot_template` SET `Item` = 40752 WHERE `Item` = 47241 AND `Entry` IN (
    24524, -- The oculus:  Cache of Eregos
    26260, -- Halls of Stone: Tribunal Chest
    24589 -- The culling of Stratholme: Dark runned chest
);

-- Make bosses drop emblems of valor
UPDATE `creature_loot_template` SET `Item` = 40753 WHERE `Item` = 47241 AND `Entry` IN (
    -- Naxxramas
    15956, 29249, -- Anub'Rekhan
    15953, 29268, -- Grand Widow Faerlina
    15952, 29278, -- Maexxna
    15954, 29615, -- Noth the Plaguebringer
    15936, 29701, -- Heigan the Unclean
    16011, 29718, -- Loatheb
    16061, 29940, -- Instructor Razuvious
    16060, 29955, -- Gothik the Harvester
    16028, 29324, -- Patchwerk
    15931, 29373, -- Grobbulus
    15932, 29417, -- Gluth
    15928, 29448, -- Thaddius
    15989, 29991, -- Sapphiron
    15990, 30061, -- Kel'Thuzad

    -- Ruby Sanctum
    28860, 31311, -- Sartharion

    -- Vault of Archavon
    31125, 31722 -- Archavon
);

UPDATE `gameobject_loot_template` SET `Item` = 40753 WHERE `Item` = 47241 AND `Entry` IN (
    25192, 25193 -- Naxxramas: Four Horsemen chest
);
