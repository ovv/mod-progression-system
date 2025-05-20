
-- Allow all WOTLK dungeons
DELETE FROM `disables` WHERE `entry` IN (
    632, -- The Forge of Souls
    650, -- Trial of the Champion
    658, -- Pit of Saron
    668 -- Halls of Reflection
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

-- Drop emblems of heroism from TBH heroic dungeons bosses
UPDATE creature_loot_template SET `Item` = 40752 WHERE `Item`=29434 AND Entry IN (
    15687, -- Moroes
    15688, -- Terestian Illhoof
    15689, -- Netherspite
    15690, -- Prince Malchezaar
    15691, -- The Curator
    16152, -- Attumen the Huntsman
    16457, -- Maiden of Virtue
    16524, -- Shade of Aran
    17225, -- Nightbane
    17257, -- Magtheridon
    17521, -- The Big Bad Wolf
    17533, -- Romulo
    17534, -- Julianne
    17767, -- Rage Winterchill
    17808, -- Anetheron
    17842, -- Azgalor
    17888, -- Kaz'rogal
    17968, -- Archimonde
    18168, -- The Crone
    18433, -- Omor the Unscarred
    18436, -- Watchkeeper Gargolmar
    18601, -- Broggok
    18607, -- Keli'dan the Breaker
    18621, -- The Maker
    18805, -- Solarian
    18831, -- High King Maulgar
    19044, -- Gruul the Dragonkiller
    19514, -- Al'ar
    19516, -- Void Reaver
    19622, -- Kael'thas
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
    21212, -- Lady Vashj
    21213, -- Morogrim
    21214, -- Fathom-Lord Karathress
    21215, -- Leotheras
    21216, -- Hydross
    21217, -- The Lurker Below
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
    22841, -- Shade of Akama
    22871, -- Teron Gorefiend
    22887, -- High Warlord Naj'entus
    22898, -- Supremus
    22917, -- Illidan Stormrage
    22930, -- Yor
    22947, -- Mother Shahraz
    22948, -- Gurtogg Bloodboil
    22950, -- High Nethermancer Zerevor
    23035, -- Anzu
    23420, -- Essence of Anger
    23574, -- Akil'zon
    23576, -- Nalorakk
    23577, -- Halazzi
    23578, -- Jan'alai
    23863, -- Zul'jin
    24239, -- Hex Lord Malacrass
    24857, -- Kael'thas Sunstrider
    24882, -- Brutallus
    24892, -- Sathrovarr the Corruptor
    25038, -- Felmyst
    25165, -- Lady Sacrolash
    25166, -- Grand Warlock Alythess
    25315, -- Kil'jaeden
    25560, -- Priestess Delrissa
    25562, -- Selin Fireheart
    25573, -- Vexallus
    25840, -- Entropius
    28194 -- Prince Tenris Mirkblood
);
