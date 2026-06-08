-- Emblem of heroism = 40752
-- Emblem of valor = 40753
-- Emblem of triumph = 47241

-- Allow all WOTLK dungeons
DELETE FROM `disables` WHERE `entry` IN (
    632, -- The Forge of Souls
    650, -- Trial of the Champion
    658, -- Pit of Saron
    668 -- Halls of Reflection
);

-- Make trial of the champion and ICC dungeon boss drop emblems of heroism
UPDATE `creature_loot_template` SET `Item` = 40752 WHERE `Item` = 47241 AND `Entry` IN (
    35490, -- Trial of the Champion heroic
    36497, 36502, -- The forge of souls
    36498, 37677, -- The forge of souls heroic
    36494, 36476, 36658, -- Pit of Saron
    37613, 37627, 36938, -- Pit of Saron heroic
    38112, 38113, -- Halls of Reflection
    38599, 38603 -- Halls of Reflection heroic
);

UPDATE `gameobject_loot_template` SET `Item` = 40752 WHERE `Item` = 47241 AND `Entry` IN (
    27414, -- Trial of the Champion heroic:  Champion's Cache
    27416 -- Trial of the Champion heroic:  Eadric's Cache
);

-- Disable attunments for TBC heroic dungeons
DELETE FROM dungeon_access_requirements WHERE dungeon_access_id IN (
    18, -- Caverns of Time: Opening the Dark Portal
    34, -- Hellfire Citadel: The Shattered Halls
    36, -- Hellfire Citadel: The Blood Furnace
    38, -- Hellfire Citadel: Hellfire Ramparts
    41, -- Coilfang Resevoir: The Steamvault
    43, -- Coilfang Resevoir: The Underbog
    45, -- Coilfang Resevoir: The Slave Pens
    49, -- Tempest Keep: The Arcatraz
    51, -- Tempest Keep: The Botanica
    53, -- Tempest Keep: The Mechanar
    55, -- Auchindoun: Shadow Labyrinth
    57, -- Auchindoun: Sethekk Halls
    59, -- Auchindoun: Mana-Tombs
    61, -- Auchindoun: Auchenai Crypts
    63 -- Caverns Of Time: Escape from Durnholde
);

-- Drop emblems of valor from TBC raid bosses
DELETE FROM `creature_loot_template` WHERE `Item` IN (29434, 40752, 40753) AND `Entry` IN (
    17225,
    15690,
    15688,
    15689,
    16524,
    15691,
    17533,
    18168,
    17521,
    16457,
    15687,
    16152,
    19044,
    18831,
    17257,
    21216,
    21217,
    21215,
    21214,
    21213,
    21212,
    19514,
    19622,
    19516,
    18805,
    17767,
    17808,
    17888,
    17842,
    17968,
    22887,
    22898,
    22841,
    22871,
    22948,
    22947,
    22917,
    22950,
    23574,
    23576,
    23578,
    23577,
    24239,
    23863,
    24892,
    24882,
    25038,
    25166,
    25165,
    25840,
    25315
);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
    (17257, 40753, 0, 100, 0, 1, 0, 1, 1, 'Magtheridon - Badge of Justice'),
    (18831, 40753, 0, 100, 0, 1, 0, 1, 1, 'High King Maulgar - Badge of Justice'),
    (19044, 40753, 0, 100, 0, 1, 0, 1, 1, 'Gruul - Badge of Justice'),
    (16152, 40753, 0, 100, 0, 1, 0, 1, 1, 'Attumen the Huntsman - Badge of Justice'),
    (15687, 40753, 0, 100, 0, 1, 0, 1, 1, 'Moroes - Badge of Justice'),
    (16457, 40753, 0, 100, 0, 1, 0, 1, 1, 'Maiden of Virtue - Badge of Justice'),
    (17521, 40753, 0, 100, 0, 1, 0, 1, 1, 'The Big Bad Wolf - Badge of Justice'),
    (18168, 40753, 0, 100, 0, 1, 0, 1, 1, 'The Crone - Badge of Justice'),
    (15691, 40753, 0, 100, 0, 1, 0, 1, 1, 'The Curator - Badge of Justice'),
    (16524, 40753, 0, 100, 0, 1, 0, 1, 1, 'Shade of Aran - Badge of Justice'),
    (15689, 40753, 0, 100, 0, 1, 0, 1, 1, 'Netherspite - Badge of Justice'),
    (15688, 40753, 0, 100, 0, 1, 0, 1, 1, 'Terestian Illhoof - Badge of Justice'),
    (15690, 40753, 0, 100, 0, 1, 0, 1, 1, 'Prince Malchezaar - Badge of Justice'),
    (17225, 40753, 0, 100, 0, 1, 0, 1, 1, 'Nightbane - Badge of Justice'),
    (17533, 40753, 0, 100, 0, 1, 0, 1, 1, 'Romulo - Badge of Justice'),
    (21216, 40753, 0, 100, 0, 1, 0, 1, 1, 'Hydross - Badge of Justice'),
    (21217, 40753, 0, 100, 0, 1, 0, 1, 1, 'The Lurker Below - Badge of Justice'),
    (21215, 40753, 0, 100, 0, 1, 0, 1, 1, 'Leotheras - Badge of Justice'),
    (21214, 40753, 0, 100, 0, 1, 0, 1, 1, 'Fathom-Lord Karathress - Badge of Justice'),
    (21213, 40753, 0, 100, 0, 1, 0, 1, 1, 'Morogrim - Badge of Justice'),
    (21212, 40753, 0, 100, 0, 1, 0, 1, 1, 'Lady Vashj - Badge of Justice'),
    (19514, 40753, 0, 100, 0, 1, 0, 1, 1, 'Al\'ar - Badge of Justice'),
    (19622, 40753, 0, 100, 0, 1, 0, 1, 1, 'Kael\'thas - Badge of Justice'),
    (19516, 40753, 0, 100, 0, 1, 0, 1, 1, 'Void Reaver - Badge of Justice'),
    (18805, 40753, 0, 100, 0, 1, 0, 1, 1, 'Solarian - Badge of Justice'),
    (17767, 40753, 0, 100, 0, 1, 0, 1, 1, 'Rage Winterchill - Badge of Justice'),
    (17808, 40753, 0, 100, 0, 1, 0, 1, 1, 'Anetheron - Badge of Justice'),
    (17888, 40753, 0, 100, 0, 1, 0, 1, 1, 'Kaz\'rogal - Badge of Justice'),
    (17842, 40753, 0, 100, 0, 1, 0, 1, 1, 'Azgalor - Badge of Justice'),
    (17968, 40753, 0, 100, 0, 1, 0, 1, 1, 'Archimonde - Badge of Justice'),
    (22887, 40753, 0, 100, 0, 1, 0, 1, 1, 'High Warlord Naj\'entus - Badge of Justice'),
    (22898, 40753, 0, 100, 0, 1, 0, 1, 1, 'Supremus - Badge of Justice'),
    (22841, 40753, 0, 100, 0, 1, 0, 1, 1, 'Shade of Akama - Badge of Justice'),
    (22871, 40753, 0, 100, 0, 1, 0, 1, 1, 'Teron Gorefiend - Badge of Justice'),
    (22948, 40753, 0, 100, 0, 1, 0, 1, 1, 'Gurtogg Bloodboil - Badge of Justice'),
    (22947, 40753, 0, 100, 0, 1, 0, 1, 1, 'Mother Shahraz - Badge of Justice'),
    (22917, 40753, 0, 100, 0, 1, 0, 1, 1, 'Illidan Stormrage - Badge of Justice'),
    (22950, 40753, 0, 100, 0, 1, 0, 1, 1, 'High Nethermancer Zerevor - Badge of Justice'),
    (23574, 40753, 0, 100, 0, 1, 0, 1, 1, 'Akil\'zon - Badge of Justice'),
    (23576, 40753, 0, 100, 0, 1, 0, 1, 1, 'Nalorakk - Badge of Justice'),
    (23578, 40753, 0, 100, 0, 1, 0, 1, 1, 'Jan\'alai - Badge of Justice'),
    (23577, 40753, 0, 100, 0, 1, 0, 1, 1, 'Halazzi - Badge of Justice'),
    (24239, 40753, 0, 100, 0, 1, 0, 1, 1, 'Hex Lord Malacrass - Badge of Justice'),
    (23863, 40753, 0, 100, 0, 1, 0, 1, 1, 'Zul\'jin - Badge of Justice'),
    (24892, 40753, 0, 100, 0, 1, 0, 1, 1, 'Sathrovarr the Corruptor - Badge of Justice'),
    (24882, 40753, 0, 100, 0, 1, 0, 1, 1, 'Brutallus - Badge of Justice'),
    (25038, 40753, 0, 100, 0, 1, 0, 1, 1, 'Felmyst - Badge of Justice'),
    (25166, 40753, 0, 100, 0, 1, 0, 1, 1, 'Grand Warlock Alythess - Badge of Justice'),
    (25165, 40753, 0, 100, 0, 1, 0, 1, 1, 'Lady Sacrolash - Badge of Justice'),
    (25840, 40753, 0, 100, 0, 1, 0, 1, 1, 'Entropius - Badge of Justice'),
    (25315, 40753, 0, 100, 0, 1, 0, 1, 1, 'Kil\'jaeden - Badge of Justice');

-- Drop emblems of heroism from TBC heroic dungeons bosses
UPDATE creature_loot_template SET `Item` = 40752 WHERE `Item` IN (29434, 40752) AND Entry IN (
    17534, -- Julianne
    18433, -- Omor the Unscarred
    18436, -- Watchkeeper Gargolmar
    18601, -- Broggok
    18607, -- Keli'dan the Breaker
    18621, -- The Maker
    19893, -- Mennu the Betrayer
    19894, -- Quagmirran
    19895, -- Rokmar the Crackler
    20168, -- Ghaz'an
    20169, -- Hungarfen
    20183, -- Swamplord Musel'ek
    20184, -- The Black Stalker
    20266, -- Nexus-Prince Shaffar
    20267, -- Pandemonius
    20268, -- Tavarok
    20306, -- Exarch Maladaar
    20318, -- Shirrak the Dead Watcher
    20521, -- Captain Skarloc
    20531, -- Epoch Hunter
    20535, -- Lieutenant Drake
    20568, -- Grand Warlock Nethekurse
    20596, -- Warbringer O'mrogg
    20597, -- Warchief Kargath Bladefist
    20629, -- Hydromancer Thespia
    20630, -- Mekgineer Steamrigger
    20633, -- Warlord Kalithresh
    20636, -- Ambassador Hellmaw
    20637, -- Blackheart the Inciter
    20653, -- Grandmaster Vorpil
    20657, -- Murmur
    20690, -- Darkweaver Syth
    20706, -- Talon King Ikiss
    20737, -- Aeonus
    20738, -- Chrono Lord Deja
    20745, -- Temporus
    20923, -- Blood Guard Porung
    21533, -- Mechano-Lord Capacitus
    21536, -- Nethermancer Sepethrea
    21537, -- Pathaleon the Calculator
    21551, -- Commander Sarannis
    21558, -- High Botanist Freywinn
    21559, -- Laj
    21581, -- Thorngrin the Tender
    21582, -- Warp Splinter
    21590, -- Dalliah the Doomsayer
    21601, -- Harbinger Skyriss
    21624, -- Wrath-Scryer Soccothrates
    21626, -- Zereketh the Unbound
    22930, -- Yor
    23035, -- Anzu
    23420, -- Essence of Anger
    24857, -- Kael'thas Sunstrider
    25560, -- Priestess Delrissa
    25562, -- Selin Fireheart
    25573, -- Vexallus
    28194 -- Prince Tenris Mirkblood
);
