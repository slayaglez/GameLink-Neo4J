// ============================================================
// SCRIPT DE RECREACIÓN - Base de datos de Videojuegos
// Versión 2 - Nombres reales, juegos y plataformas ampliados
// ============================================================

// ------------------------------------------------------------
// 0. LIMPIAR LA BASE DE DATOS
// ------------------------------------------------------------
// MATCH (n) DETACH DELETE n;


// ------------------------------------------------------------
// 1. NODOS: Genre (15)
// ------------------------------------------------------------
MERGE (:Genre {name: "Souls-like"});
MERGE (:Genre {name: "Metroidvania"});
MERGE (:Genre {name: "Indie"});
MERGE (:Genre {name: "RPG"});
MERGE (:Genre {name: "Shooter"});
MERGE (:Genre {name: "Action"});
MERGE (:Genre {name: "Horror"});
MERGE (:Genre {name: "Sports"});
MERGE (:Genre {name: "Survival"});
MERGE (:Genre {name: "Roguelike"});
MERGE (:Genre {name: "Strategy"});
MERGE (:Genre {name: "Simulation"});
MERGE (:Genre {name: "Racing"});
MERGE (:Genre {name: "VR"});
MERGE (:Genre {name: "MOBA"});
MERGE (:Genre {name: "Adventure"});
MERGE (:Genre {name: "Puzzle"});


// ------------------------------------------------------------
// 2. NODOS: Engine (3 originales + nuevos)
// ------------------------------------------------------------
MERGE (:Engine {name: "Unreal Engine 5"});
MERGE (:Engine {name: "RE Engine"});
MERGE (:Engine {name: "Unity"});
MERGE (:Engine {name: "Decima"});
MERGE (:Engine {name: "id Tech 7"});
MERGE (:Engine {name: "Frostbite"});


// ------------------------------------------------------------
// 3. NODOS: Platform (12 originales + nuevas)
// ------------------------------------------------------------
// -- Originales --
MERGE (:Platform {name: "Nintendo Switch"});
MERGE (:Platform {name: "PC"});
MERGE (:Platform {name: "PlayStation 5"});
MERGE (:Platform {name: "Xbox Series X"});
MERGE (:Platform {name: "Steam Deck"});
MERGE (:Platform {name: "Xbox Game Pass"});
MERGE (:Platform {name: "PlayStation Plus"});
MERGE (:Platform {name: "Steam"});
MERGE (:Platform {name: "Epic Games Store"});
MERGE (:Platform {name: "GOG"});
MERGE (:Platform {name: "Battle.net"});
MERGE (:Platform {name: "Ubisoft Connect"});
// -- Nuevas --
MERGE (:Platform {name: "PlayStation 4"});
MERGE (:Platform {name: "Xbox One"});
MERGE (:Platform {name: "Nintendo Switch 2"});
MERGE (:Platform {name: "EA App"});
MERGE (:Platform {name: "Apple Arcade"});
MERGE (:Platform {name: "Android"});
MERGE (:Platform {name: "iOS"});


// ------------------------------------------------------------
// 4. NODOS: Developer (originales + sin cambios)
// ------------------------------------------------------------
MERGE (d:Developer {name: "Larian Studios"})        SET d.country = "BE";
MERGE (d:Developer {name: "FromSoftware"})          SET d.country = "JP";
MERGE (d:Developer {name: "CD Projekt RED"})        SET d.country = "PL";
MERGE (d:Developer {name: "Team Cherry"})           SET d.country = "AU";
MERGE (d:Developer {name: "Supergiant Games"})      SET d.country = "US";
MERGE (d:Developer {name: "Santa Monica Studio"})   SET d.country = "US";
MERGE (d:Developer {name: "Capcom"})                SET d.country = "JP";
MERGE (d:Developer {name: "Electronic Arts"})       SET d.country = "US";
MERGE (d:Developer {name: "Epic Games"})            SET d.country = "US";
MERGE (d:Developer {name: "Nintendo"})              SET d.country = "JP";
MERGE (d:Developer {name: "Valve"})                 SET d.country = "US";
MERGE (d:Developer {name: "Rockstar Games"})        SET d.country = "US";
MERGE (d:Developer {name: "Square Enix"})           SET d.country = "JP";
MERGE (d:Developer {name: "Ubisoft"})               SET d.country = "FR";
MERGE (d:Developer {name: "Bethesda"})              SET d.country = "US";
MERGE (d:Developer {name: "Obsidian Entertainment"}) SET d.country = "US";
MERGE (d:Developer {name: "Bioware"})               SET d.country = "CA";
MERGE (d:Developer {name: "Guerrilla Games"})       SET d.country = "NL";
MERGE (d:Developer {name: "Insomniac Games"})       SET d.country = "US";
MERGE (d:Developer {name: "Remedy Entertainment"})  SET d.country = "FI";
MERGE (d:Developer {name: "Paradox Interactive"})   SET d.country = "SE";
MERGE (d:Developer {name: "id Software"})           SET d.country = "US";
MERGE (d:Developer {name: "Blizzard Entertainment"}) SET d.country = "US";


// ------------------------------------------------------------
// 5. NODOS: Game (originales + 2 por estudio aprox.)
// ------------------------------------------------------------
// -- Originales --
MERGE (:Game {id: "G1",  title: "Elden Ring",                    year: 2022});
MERGE (:Game {id: "G2",  title: "Baldur's Gate 3",               year: 2023});
MERGE (:Game {id: "G3",  title: "The Witcher 3",                 year: 2015});
MERGE (:Game {id: "G4",  title: "Hollow Knight",                 year: 2017});
MERGE (:Game {id: "G5",  title: "Hades",                         year: 2020});
MERGE (:Game {id: "G6",  title: "God of War Ragnarök",           year: 2022});
MERGE (:Game {id: "G7",  title: "Resident Evil 4",               year: 2023});
MERGE (:Game {id: "G8",  title: "FC 24",                         year: 2023});
MERGE (:Game {id: "G9",  title: "Fortnite",                      year: 2017});
MERGE (:Game {id: "G10", title: "Cyberpunk 2077",                year: 2020});
MERGE (:Game {id: "G11", title: "Zelda: Tears of the Kingdom",   year: 2023});
MERGE (:Game {id: "G12", title: "Red Dead Redemption 2",         year: 2018});
MERGE (:Game {id: "G13", title: "Portal 2",                      year: 2011});
MERGE (:Game {id: "G14", title: "Final Fantasy VII Rebirth",     year: 2024});
MERGE (:Game {id: "G20", title: "Skyrim",                        year: 2011});
MERGE (:Game {id: "G21", title: "Fallout New Vegas",             year: 2010});
MERGE (:Game {id: "G22", title: "Mass Effect Legendary Edition", year: 2021});
MERGE (:Game {id: "G23", title: "Horizon Forbidden West",        year: 2022});
MERGE (:Game {id: "G24", title: "Spider-Man 2",                  year: 2023});
MERGE (:Game {id: "G25", title: "Alan Wake 2",                   year: 2023});
MERGE (:Game {id: "G26", title: "Stellaris",                     year: 2016});
MERGE (:Game {id: "G27", title: "Crusader Kings III",            year: 2020});
MERGE (:Game {id: "G28", title: "Diablo IV",                     year: 2023});
MERGE (:Game {id: "G29", title: "Starfield",                     year: 2023});

// -- FromSoftware --
MERGE (:Game {id: "G30", title: "Dark Souls III",                year: 2016});
MERGE (:Game {id: "G31", title: "Sekiro: Shadows Die Twice",     year: 2019});

// -- CD Projekt RED --
MERGE (:Game {id: "G32", title: "The Witcher 2",                 year: 2011});
MERGE (:Game {id: "G33", title: "Cyberpunk 2077: Phantom Liberty",year: 2023});

// -- Team Cherry --
MERGE (:Game {id: "G34", title: "Hollow Knight: Silksong",       year: 2025});

// -- Supergiant Games --
MERGE (:Game {id: "G35", title: "Transistor",                    year: 2014});
MERGE (:Game {id: "G36", title: "Hades II",                      year: 2024});

// -- Santa Monica Studio --
MERGE (:Game {id: "G37", title: "God of War (2018)",             year: 2018});

// -- Capcom --
MERGE (:Game {id: "G38", title: "Devil May Cry 5",               year: 2019});
MERGE (:Game {id: "G39", title: "Monster Hunter World",          year: 2018});

// -- Epic Games --
MERGE (:Game {id: "G40", title: "Unreal Tournament",             year: 1999});

// -- Nintendo --
MERGE (:Game {id: "G41", title: "Zelda: Breath of the Wild",     year: 2017});
MERGE (:Game {id: "G42", title: "Super Mario Odyssey",           year: 2017});

// -- Valve --
MERGE (:Game {id: "G43", title: "Half-Life: Alyx",               year: 2020});
MERGE (:Game {id: "G44", title: "Left 4 Dead 2",                 year: 2009});

// -- Rockstar Games --
MERGE (:Game {id: "G45", title: "GTA V",                         year: 2013});

// -- Square Enix --
MERGE (:Game {id: "G46", title: "Final Fantasy XVI",             year: 2023});

// -- Bethesda --
MERGE (:Game {id: "G47", title: "Fallout 4",                     year: 2015});

// -- Obsidian Entertainment --
MERGE (:Game {id: "G48", title: "The Outer Worlds",              year: 2019});

// -- Bioware --
MERGE (:Game {id: "G49", title: "Dragon Age: Inquisition",       year: 2014});

// -- Guerrilla Games --
MERGE (:Game {id: "G50", title: "Horizon Zero Dawn",             year: 2017});

// -- Insomniac Games --
MERGE (:Game {id: "G51", title: "Spider-Man (2018)",             year: 2018});

// -- Remedy Entertainment --
MERGE (:Game {id: "G52", title: "Control",                       year: 2019});

// -- Paradox Interactive --
MERGE (:Game {id: "G53", title: "Victoria 3",                    year: 2022});

// -- id Software --
MERGE (:Game {id: "G54", title: "DOOM Eternal",                  year: 2020});
MERGE (:Game {id: "G55", title: "DOOM (2016)",                   year: 2016});

// -- Blizzard Entertainment --
MERGE (:Game {id: "G56", title: "Overwatch 2",                   year: 2022});
MERGE (:Game {id: "G57", title: "World of Warcraft: The War Within", year: 2024});

// -- Electronic Arts --
MERGE (:Game {id: "G58", title: "FC 25",                         year: 2024});
MERGE (:Game {id: "G59", title: "It Takes Two",                  year: 2021});

// -- Larian Studios --
MERGE (:Game {id: "G60", title: "Divinity: Original Sin 2",      year: 2017});


// ------------------------------------------------------------
// 6. NODOS: User (49) - Nombres reales por país
// ------------------------------------------------------------
MERGE (u:User {id: "U1"})  SET u.name = "Ana Muller",      u.country = "DE", u.signupDate = date("2025-01-01");
MERGE (u:User {id: "U2"})  SET u.name = "Luis",            u.country = "ES", u.signupDate = date("2025-02-10");
MERGE (u:User {id: "U3"})  SET u.name = "Marta",           u.country = "FR", u.signupDate = date("2025-03-05");
MERGE (u:User {id: "U4"})  SET u.name = "Kevin",           u.country = "MX", u.signupDate = date("2025-04-12");
MERGE (u:User {id: "U5"})  SET u.name = "Elena",           u.country = "AR", u.signupDate = date("2025-05-20");
MERGE (u:User {id: "U6"})  SET u.name = "Santi",           u.country = "ES", u.signupDate = date("2025-01-15");
MERGE (u:User {id: "U7"})  SET u.name = "Hiroshi",         u.country = "JP", u.signupDate = date("2025-06-01");
MERGE (u:User {id: "U8"})  SET u.name = "Clara",           u.country = "BR", u.signupDate = date("2025-07-15");
MERGE (u:User {id: "U10"}) SET u.name = "Pablo Garcia",    u.country = "ES", u.signupDate = date("2026-02-03");
MERGE (u:User {id: "U11"}) SET u.name = "Tyler Brooks",    u.country = "US", u.signupDate = date("2025-05-24");
MERGE (u:User {id: "U12"}) SET u.name = "Carmen Ruiz",     u.country = "ES", u.signupDate = date("2025-11-08");
MERGE (u:User {id: "U13"}) SET u.name = "Giulia Ferretti", u.country = "IT", u.signupDate = date("2025-06-15");
MERGE (u:User {id: "U14"}) SET u.name = "Alejandro Vega",  u.country = "ES", u.signupDate = date("2025-10-31");
MERGE (u:User {id: "U15"}) SET u.name = "Camille Dupont",  u.country = "FR", u.signupDate = date("2025-04-27");
MERGE (u:User {id: "U16"}) SET u.name = "Javier Morales",  u.country = "ES", u.signupDate = date("2025-05-01");
MERGE (u:User {id: "U17"}) SET u.name = "Ashley Johnson",  u.country = "US", u.signupDate = date("2025-02-12");
MERGE (u:User {id: "U18"}) SET u.name = "Lucas Oliveira",  u.country = "BR", u.signupDate = date("2025-08-02");
MERGE (u:User {id: "U19"}) SET u.name = "Marco Esposito",  u.country = "IT", u.signupDate = date("2025-04-24");
MERGE (u:User {id: "U20"}) SET u.name = "Valentina Ricci", u.country = "IT", u.signupDate = date("2025-07-20");
MERGE (u:User {id: "U21"}) SET u.name = "Sofia Navarro",   u.country = "ES", u.signupDate = date("2025-08-12");
MERGE (u:User {id: "U22"}) SET u.name = "Matteo Romano",   u.country = "IT", u.signupDate = date("2025-11-08");
MERGE (u:User {id: "U23"}) SET u.name = "Lea Martin",      u.country = "FR", u.signupDate = date("2026-01-20");
MERGE (u:User {id: "U24"}) SET u.name = "Felix Wagner",    u.country = "DE", u.signupDate = date("2025-10-03");
MERGE (u:User {id: "U25"}) SET u.name = "Hannah Becker",   u.country = "DE", u.signupDate = date("2025-11-11");
MERGE (u:User {id: "U26"}) SET u.name = "Yuki Tanaka",     u.country = "JP", u.signupDate = date("2025-07-06");
MERGE (u:User {id: "U27"}) SET u.name = "Antoine Bernard", u.country = "FR", u.signupDate = date("2025-04-22");
MERGE (u:User {id: "U28"}) SET u.name = "Isabela Santos",  u.country = "BR", u.signupDate = date("2025-07-17");
MERGE (u:User {id: "U29"}) SET u.name = "Jonas Schreiber", u.country = "DE", u.signupDate = date("2025-02-28");
MERGE (u:User {id: "U30"}) SET u.name = "Lucia Torres",    u.country = "ES", u.signupDate = date("2025-07-26");
MERGE (u:User {id: "U31"}) SET u.name = "Rafael Pereira",  u.country = "BR", u.signupDate = date("2025-04-27");
MERGE (u:User {id: "U32"}) SET u.name = "Elodie Chevalier",u.country = "FR", u.signupDate = date("2025-06-13");
MERGE (u:User {id: "U33"}) SET u.name = "Moritz Hoffmann", u.country = "DE", u.signupDate = date("2025-04-05");
MERGE (u:User {id: "U34"}) SET u.name = "Chloe Leroy",     u.country = "FR", u.signupDate = date("2025-06-04");
MERGE (u:User {id: "U35"}) SET u.name = "Theo Girard",     u.country = "FR", u.signupDate = date("2025-02-06");
MERGE (u:User {id: "U36"}) SET u.name = "Chiara Bianchi",  u.country = "IT", u.signupDate = date("2025-03-04");
MERGE (u:User {id: "U37"}) SET u.name = "Pedro Alves",     u.country = "BR", u.signupDate = date("2025-01-19");
MERGE (u:User {id: "U38"}) SET u.name = "Manon Petit",     u.country = "FR", u.signupDate = date("2025-10-29");
MERGE (u:User {id: "U39"}) SET u.name = "Gabriela Costa",  u.country = "BR", u.signupDate = date("2026-01-20");
MERGE (u:User {id: "U40"}) SET u.name = "Kenji Yamamoto",  u.country = "JP", u.signupDate = date("2025-09-20");
MERGE (u:User {id: "U41"}) SET u.name = "Aiko Nakamura",   u.country = "JP", u.signupDate = date("2025-03-18");
MERGE (u:User {id: "U42"}) SET u.name = "Diego Romero",    u.country = "MX", u.signupDate = date("2025-06-22");
MERGE (u:User {id: "U43"}) SET u.name = "Natalia Soto",    u.country = "AR", u.signupDate = date("2025-09-05");
MERGE (u:User {id: "U44"}) SET u.name = "Ethan Clark",     u.country = "US", u.signupDate = date("2025-12-01");
MERGE (u:User {id: "U45"}) SET u.name = "Ingrid Svensson", u.country = "SE", u.signupDate = date("2025-05-14");
MERGE (u:User {id: "U46"}) SET u.name = "Omar Khalil",     u.country = "MA", u.signupDate = date("2025-08-30");
MERGE (u:User {id: "U47"}) SET u.name = "Priya Sharma",    u.country = "IN", u.signupDate = date("2025-10-10");
MERGE (u:User {id: "U48"}) SET u.name = "Tomas Novak",     u.country = "CZ", u.signupDate = date("2025-07-03");
MERGE (u:User {id: "U49"}) SET u.name = "Zoe Williams",    u.country = "AU", u.signupDate = date("2026-01-05");


// ------------------------------------------------------------
// 7. RELACIONES: DEVELOPED_BY (Game -> Developer)
// ------------------------------------------------------------
MATCH (g:Game {id:"G1"}),  (d:Developer {name:"FromSoftware"})          MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G2"}),  (d:Developer {name:"Larian Studios"})        MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G3"}),  (d:Developer {name:"CD Projekt RED"})        MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G4"}),  (d:Developer {name:"Team Cherry"})           MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G5"}),  (d:Developer {name:"Supergiant Games"})      MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G6"}),  (d:Developer {name:"Santa Monica Studio"})   MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G7"}),  (d:Developer {name:"Capcom"})                MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G8"}),  (d:Developer {name:"Electronic Arts"})       MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G9"}),  (d:Developer {name:"Epic Games"})            MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G10"}), (d:Developer {name:"CD Projekt RED"})        MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G11"}), (d:Developer {name:"Nintendo"})              MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G12"}), (d:Developer {name:"Rockstar Games"})        MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G13"}), (d:Developer {name:"Valve"})                 MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G14"}), (d:Developer {name:"Square Enix"})           MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G20"}), (d:Developer {name:"Bethesda"})              MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G21"}), (d:Developer {name:"Obsidian Entertainment"}) MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G22"}), (d:Developer {name:"Bioware"})               MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G23"}), (d:Developer {name:"Guerrilla Games"})       MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G24"}), (d:Developer {name:"Insomniac Games"})       MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G25"}), (d:Developer {name:"Remedy Entertainment"})  MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G26"}), (d:Developer {name:"Paradox Interactive"})   MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G27"}), (d:Developer {name:"Paradox Interactive"})   MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G28"}), (d:Developer {name:"Blizzard Entertainment"}) MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G29"}), (d:Developer {name:"Bethesda"})              MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G30"}), (d:Developer {name:"FromSoftware"})          MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G31"}), (d:Developer {name:"FromSoftware"})          MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G32"}), (d:Developer {name:"CD Projekt RED"})        MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G33"}), (d:Developer {name:"CD Projekt RED"})        MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G34"}), (d:Developer {name:"Team Cherry"})           MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G35"}), (d:Developer {name:"Supergiant Games"})      MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G36"}), (d:Developer {name:"Supergiant Games"})      MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G37"}), (d:Developer {name:"Santa Monica Studio"})   MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G38"}), (d:Developer {name:"Capcom"})                MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G39"}), (d:Developer {name:"Capcom"})                MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G40"}), (d:Developer {name:"Epic Games"})            MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G41"}), (d:Developer {name:"Nintendo"})              MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G42"}), (d:Developer {name:"Nintendo"})              MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G43"}), (d:Developer {name:"Valve"})                 MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G44"}), (d:Developer {name:"Valve"})                 MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G45"}), (d:Developer {name:"Rockstar Games"})        MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G46"}), (d:Developer {name:"Square Enix"})           MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G47"}), (d:Developer {name:"Bethesda"})              MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G48"}), (d:Developer {name:"Obsidian Entertainment"}) MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G49"}), (d:Developer {name:"Bioware"})               MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G50"}), (d:Developer {name:"Guerrilla Games"})       MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G51"}), (d:Developer {name:"Insomniac Games"})       MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G52"}), (d:Developer {name:"Remedy Entertainment"})  MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G53"}), (d:Developer {name:"Paradox Interactive"})   MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G54"}), (d:Developer {name:"id Software"})           MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G55"}), (d:Developer {name:"id Software"})           MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G56"}), (d:Developer {name:"Blizzard Entertainment"}) MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G57"}), (d:Developer {name:"Blizzard Entertainment"}) MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G58"}), (d:Developer {name:"Electronic Arts"})       MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G59"}), (d:Developer {name:"Electronic Arts"})       MERGE (g)-[:DEVELOPED_BY]->(d);
MATCH (g:Game {id:"G60"}), (d:Developer {name:"Larian Studios"})        MERGE (g)-[:DEVELOPED_BY]->(d);


// ------------------------------------------------------------
// 8. RELACIONES: HAS_GENRE (Game -> Genre)
// ------------------------------------------------------------
MATCH (g:Game {id:"G1"}),  (ge:Genre {name:"Souls-like"})   MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G1"}),  (ge:Genre {name:"Action"})       MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G2"}),  (ge:Genre {name:"RPG"})          MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G3"}),  (ge:Genre {name:"RPG"})          MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G3"}),  (ge:Genre {name:"Action"})       MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G4"}),  (ge:Genre {name:"Metroidvania"}) MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G4"}),  (ge:Genre {name:"Indie"})        MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G5"}),  (ge:Genre {name:"Roguelike"})    MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G5"}),  (ge:Genre {name:"Action"})       MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G6"}),  (ge:Genre {name:"Action"})       MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G7"}),  (ge:Genre {name:"Horror"})       MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G7"}),  (ge:Genre {name:"Action"})       MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G8"}),  (ge:Genre {name:"Sports"})       MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G9"}),  (ge:Genre {name:"Shooter"})      MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G9"}),  (ge:Genre {name:"Survival"})     MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G10"}), (ge:Genre {name:"RPG"})          MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G11"}), (ge:Genre {name:"Adventure"})    MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G12"}), (ge:Genre {name:"Action"})       MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G12"}), (ge:Genre {name:"Adventure"})    MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G13"}), (ge:Genre {name:"Puzzle"})       MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G14"}), (ge:Genre {name:"RPG"})          MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G20"}), (ge:Genre {name:"RPG"})          MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G21"}), (ge:Genre {name:"RPG"})          MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G22"}), (ge:Genre {name:"RPG"})          MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G23"}), (ge:Genre {name:"Action"})       MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G24"}), (ge:Genre {name:"Action"})       MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G25"}), (ge:Genre {name:"Horror"})       MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G26"}), (ge:Genre {name:"Strategy"})     MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G26"}), (ge:Genre {name:"Simulation"})   MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G27"}), (ge:Genre {name:"Strategy"})     MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G28"}), (ge:Genre {name:"Action"})       MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G28"}), (ge:Genre {name:"RPG"})          MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G29"}), (ge:Genre {name:"RPG"})          MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G30"}), (ge:Genre {name:"Souls-like"})   MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G31"}), (ge:Genre {name:"Souls-like"})   MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G31"}), (ge:Genre {name:"Action"})       MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G34"}), (ge:Genre {name:"Metroidvania"}) MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G35"}), (ge:Genre {name:"Action"})       MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G35"}), (ge:Genre {name:"Indie"})        MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G36"}), (ge:Genre {name:"Roguelike"})    MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G37"}), (ge:Genre {name:"Action"})       MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G38"}), (ge:Genre {name:"Action"})       MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G39"}), (ge:Genre {name:"Action"})       MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G41"}), (ge:Genre {name:"Adventure"})    MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G42"}), (ge:Genre {name:"Adventure"})    MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G43"}), (ge:Genre {name:"VR"})           MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G43"}), (ge:Genre {name:"Shooter"})      MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G44"}), (ge:Genre {name:"Shooter"})      MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G44"}), (ge:Genre {name:"Survival"})     MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G45"}), (ge:Genre {name:"Action"})       MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G46"}), (ge:Genre {name:"RPG"})          MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G47"}), (ge:Genre {name:"RPG"})          MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G47"}), (ge:Genre {name:"Survival"})     MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G48"}), (ge:Genre {name:"RPG"})          MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G49"}), (ge:Genre {name:"RPG"})          MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G50"}), (ge:Genre {name:"Action"})       MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G51"}), (ge:Genre {name:"Action"})       MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G52"}), (ge:Genre {name:"Action"})       MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G52"}), (ge:Genre {name:"Horror"})       MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G53"}), (ge:Genre {name:"Strategy"})     MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G54"}), (ge:Genre {name:"Shooter"})      MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G54"}), (ge:Genre {name:"Action"})       MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G55"}), (ge:Genre {name:"Shooter"})      MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G56"}), (ge:Genre {name:"Shooter"})      MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G56"}), (ge:Genre {name:"MOBA"})         MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G57"}), (ge:Genre {name:"RPG"})          MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G58"}), (ge:Genre {name:"Sports"})       MERGE (g)-[:HAS_GENRE]->(ge);
MATCH (g:Game {id:"G60"}), (ge:Genre {name:"RPG"})          MERGE (g)-[:HAS_GENRE]->(ge);


// ------------------------------------------------------------
// 9. RELACIONES: AVAILABLE_ON (Game -> Platform)
// ------------------------------------------------------------
MATCH (g:Game {id:"G1"}),  (p:Platform {name:"PC"})              MERGE (g)-[:AVAILABLE_ON]->(p);
MATCH (g:Game {id:"G1"}),  (p:Platform {name:"PlayStation 5"})   MERGE (g)-[:AVAILABLE_ON]->(p);
MATCH (g:Game {id:"G1"}),  (p:Platform {name:"Xbox Series X"})   MERGE (g)-[:AVAILABLE_ON]->(p);
MATCH (g:Game {id:"G2"}),  (p:Platform {name:"PC"})              MERGE (g)-[:AVAILABLE_ON]->(p);
MATCH (g:Game {id:"G2"}),  (p:Platform {name:"PlayStation 5"})   MERGE (g)-[:AVAILABLE_ON]->(p);
MATCH (g:Game {id:"G2"}),  (p:Platform {name:"Xbox Series X"})   MERGE (g)-[:AVAILABLE_ON]->(p);
MATCH (g:Game {id:"G3"}),  (p:Platform {name:"PC"})              MERGE (g)-[:AVAILABLE_ON]->(p);
MATCH (g:Game {id:"G3"}),  (p:Platform {name:"PlayStation 5"})   MERGE (g)-[:AVAILABLE_ON]->(p);
MATCH (g:Game {id:"G4"}),  (p:Platform {name:"PC"})              MERGE (g)-[:AVAILABLE_ON]->(p);
MATCH (g:Game {id:"G4"}),  (p:Platform {name:"Nintendo Switch"}) MERGE (g)-[:AVAILABLE_ON]->(p);
MATCH (g:Game {id:"G5"}),  (p:Platform {name:"PC"})              MERGE (g)-[:AVAILABLE_ON]->(p);
MATCH (g:Game {id:"G5"}),  (p:Platform {name:"PlayStation 5"})   MERGE (g)-[:AVAILABLE_ON]->(p);
MATCH (g:Game {id:"G5"}),  (p:Platform {name:"Nintendo Switch"}) MERGE (g)-[:AVAILABLE_ON]->(p);
MATCH (g:Game {id:"G6"}),  (p:Platform {name:"PlayStation 5"})   MERGE (g)-[:AVAILABLE_ON]->(p);
MATCH (g:Game {id:"G6"}),  (p:Platform {name:"PC"})              MERGE (g)-[:AVAILABLE_ON]->(p);
MATCH (g:Game {id:"G7"}),  (p:Platform {name:"PC"})              MERGE (g)-[:AVAILABLE_ON]->(p);
MATCH (g:Game {id:"G7"}),  (p:Platform {name:"PlayStation 5"})   MERGE (g)-[:AVAILABLE_ON]->(p);
MATCH (g:Game {id:"G7"}),  (p:Platform {name:"Xbox Series X"})   MERGE (g)-[:AVAILABLE_ON]->(p);
MATCH (g:Game {id:"G9"}),  (p:Platform {name:"PC"})              MERGE (g)-[:AVAILABLE_ON]->(p);
MATCH (g:Game {id:"G9"}),  (p:Platform {name:"PlayStation 5"})   MERGE (g)-[:AVAILABLE_ON]->(p);
MATCH (g:Game {id:"G9"}),  (p:Platform {name:"Xbox Series X"})   MERGE (g)-[:AVAILABLE_ON]->(p);
MATCH (g:Game {id:"G10"}), (p:Platform {name:"PC"})              MERGE (g)-[:AVAILABLE_ON]->(p);
MATCH (g:Game {id:"G10"}), (p:Platform {name:"PlayStation 5"})   MERGE (g)-[:AVAILABLE_ON]->(p);
MATCH (g:Game {id:"G11"}), (p:Platform {name:"Nintendo Switch"}) MERGE (g)-[:AVAILABLE_ON]->(p);
MATCH (g:Game {id:"G11"}), (p:Platform {name:"Nintendo Switch 2"}) MERGE (g)-[:AVAILABLE_ON]->(p);
MATCH (g:Game {id:"G12"}), (p:Platform {name:"PC"})              MERGE (g)-[:AVAILABLE_ON]->(p);
MATCH (g:Game {id:"G12"}), (p:Platform {name:"PlayStation 5"})   MERGE (g)-[:AVAILABLE_ON]->(p);
MATCH (g:Game {id:"G13"}), (p:Platform {name:"PC"})              MERGE (g)-[:AVAILABLE_ON]->(p);
MATCH (g:Game {id:"G20"}), (p:Platform {name:"PC"})              MERGE (g)-[:AVAILABLE_ON]->(p);
MATCH (g:Game {id:"G20"}), (p:Platform {name:"Xbox Series X"})   MERGE (g)-[:AVAILABLE_ON]->(p);
MATCH (g:Game {id:"G41"}), (p:Platform {name:"Nintendo Switch"}) MERGE (g)-[:AVAILABLE_ON]->(p);
MATCH (g:Game {id:"G42"}), (p:Platform {name:"Nintendo Switch"}) MERGE (g)-[:AVAILABLE_ON]->(p);
MATCH (g:Game {id:"G45"}), (p:Platform {name:"PC"})              MERGE (g)-[:AVAILABLE_ON]->(p);
MATCH (g:Game {id:"G45"}), (p:Platform {name:"PlayStation 5"})   MERGE (g)-[:AVAILABLE_ON]->(p);
MATCH (g:Game {id:"G54"}), (p:Platform {name:"PC"})              MERGE (g)-[:AVAILABLE_ON]->(p);
MATCH (g:Game {id:"G54"}), (p:Platform {name:"PlayStation 5"})   MERGE (g)-[:AVAILABLE_ON]->(p);
MATCH (g:Game {id:"G54"}), (p:Platform {name:"Xbox Series X"})   MERGE (g)-[:AVAILABLE_ON]->(p);
MATCH (g:Game {id:"G56"}), (p:Platform {name:"PC"})              MERGE (g)-[:AVAILABLE_ON]->(p);
MATCH (g:Game {id:"G56"}), (p:Platform {name:"PlayStation 5"})   MERGE (g)-[:AVAILABLE_ON]->(p);
MATCH (g:Game {id:"G57"}), (p:Platform {name:"PC"})              MERGE (g)-[:AVAILABLE_ON]->(p);


// ------------------------------------------------------------
// 10. RELACIONES: INCLUDED_IN (Game -> Platform/servicio)
// ------------------------------------------------------------
MATCH (g:Game {id:"G20"}), (p:Platform {name:"Xbox Game Pass"})    MERGE (g)-[:INCLUDED_IN]->(p);
MATCH (g:Game {id:"G29"}), (p:Platform {name:"Xbox Game Pass"})    MERGE (g)-[:INCLUDED_IN]->(p);
MATCH (g:Game {id:"G47"}), (p:Platform {name:"Xbox Game Pass"})    MERGE (g)-[:INCLUDED_IN]->(p);
MATCH (g:Game {id:"G5"}),  (p:Platform {name:"PlayStation Plus"})  MERGE (g)-[:INCLUDED_IN]->(p);
MATCH (g:Game {id:"G23"}), (p:Platform {name:"PlayStation Plus"})  MERGE (g)-[:INCLUDED_IN]->(p);


// ------------------------------------------------------------
// 11. RELACIONES: RUNS_ON (Game -> Engine)
// ------------------------------------------------------------
MATCH (g:Game {id:"G9"}),  (e:Engine {name:"Unreal Engine 5"})  MERGE (g)-[:RUNS_ON]->(e);
MATCH (g:Game {id:"G24"}), (e:Engine {name:"Unreal Engine 5"})  MERGE (g)-[:RUNS_ON]->(e);
MATCH (g:Game {id:"G54"}), (e:Engine {name:"id Tech 7"})        MERGE (g)-[:RUNS_ON]->(e);
MATCH (g:Game {id:"G55"}), (e:Engine {name:"id Tech 7"})        MERGE (g)-[:RUNS_ON]->(e);
MATCH (g:Game {id:"G7"}),  (e:Engine {name:"RE Engine"})        MERGE (g)-[:RUNS_ON]->(e);
MATCH (g:Game {id:"G38"}), (e:Engine {name:"RE Engine"})        MERGE (g)-[:RUNS_ON]->(e);
MATCH (g:Game {id:"G39"}), (e:Engine {name:"RE Engine"})        MERGE (g)-[:RUNS_ON]->(e);
MATCH (g:Game {id:"G4"}),  (e:Engine {name:"Unity"})            MERGE (g)-[:RUNS_ON]->(e);
MATCH (g:Game {id:"G34"}), (e:Engine {name:"Unity"})            MERGE (g)-[:RUNS_ON]->(e);
MATCH (g:Game {id:"G23"}), (e:Engine {name:"Decima"})           MERGE (g)-[:RUNS_ON]->(e);
MATCH (g:Game {id:"G50"}), (e:Engine {name:"Decima"})           MERGE (g)-[:RUNS_ON]->(e);


// ------------------------------------------------------------
// 12. RELACIONES: FRIEND_OF (User -> User)
// Nota: duplicados y auto-referencias eliminados
// Patrón observado: U7, U8, U12, U16, U38 son "super-conectores"
// ------------------------------------------------------------
MATCH (a:User {id:"U2"}),  (b:User {id:"U1"})  MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U6"}),  (b:User {id:"U1"})  MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U7"}),  (b:User {id:"U1"})  MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U8"}),  (b:User {id:"U1"})  MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U12"}), (b:User {id:"U1"})  MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U16"}), (b:User {id:"U1"})  MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U38"}), (b:User {id:"U1"})  MERGE (a)-[:FRIEND_OF]->(b);

MATCH (a:User {id:"U1"}),  (b:User {id:"U2"})  MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U3"}),  (b:User {id:"U2"})  MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U7"}),  (b:User {id:"U2"})  MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U8"}),  (b:User {id:"U2"})  MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U12"}), (b:User {id:"U2"})  MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U16"}), (b:User {id:"U2"})  MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U38"}), (b:User {id:"U2"})  MERGE (a)-[:FRIEND_OF]->(b);

MATCH (a:User {id:"U7"}),  (b:User {id:"U3"})  MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U8"}),  (b:User {id:"U3"})  MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U12"}), (b:User {id:"U3"})  MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U16"}), (b:User {id:"U3"})  MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U38"}), (b:User {id:"U3"})  MERGE (a)-[:FRIEND_OF]->(b);

MATCH (a:User {id:"U5"}),  (b:User {id:"U4"})  MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U7"}),  (b:User {id:"U4"})  MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U8"}),  (b:User {id:"U4"})  MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U12"}), (b:User {id:"U4"})  MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U16"}), (b:User {id:"U4"})  MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U38"}), (b:User {id:"U4"})  MERGE (a)-[:FRIEND_OF]->(b);

MATCH (a:User {id:"U4"}),  (b:User {id:"U5"})  MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U7"}),  (b:User {id:"U5"})  MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U8"}),  (b:User {id:"U5"})  MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U12"}), (b:User {id:"U5"})  MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U16"}), (b:User {id:"U5"})  MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U38"}), (b:User {id:"U5"})  MERGE (a)-[:FRIEND_OF]->(b);

MATCH (a:User {id:"U1"}),  (b:User {id:"U6"})  MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U7"}),  (b:User {id:"U6"})  MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U8"}),  (b:User {id:"U6"})  MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U12"}), (b:User {id:"U6"})  MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U16"}), (b:User {id:"U6"})  MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U38"}), (b:User {id:"U6"})  MERGE (a)-[:FRIEND_OF]->(b);

MATCH (a:User {id:"U8"}),  (b:User {id:"U7"})  MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U12"}), (b:User {id:"U7"})  MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U16"}), (b:User {id:"U7"})  MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U38"}), (b:User {id:"U7"})  MERGE (a)-[:FRIEND_OF]->(b);

MATCH (a:User {id:"U7"}),  (b:User {id:"U8"})  MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U12"}), (b:User {id:"U8"})  MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U16"}), (b:User {id:"U8"})  MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U38"}), (b:User {id:"U8"})  MERGE (a)-[:FRIEND_OF]->(b);

// U10 - U40: patrón U7, U8, U12, U16, U38 como super-conectores
MATCH (a:User {id:"U7"}),  (b:User {id:"U10"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U8"}),  (b:User {id:"U10"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U12"}), (b:User {id:"U10"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U16"}), (b:User {id:"U10"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U38"}), (b:User {id:"U10"}) MERGE (a)-[:FRIEND_OF]->(b);

MATCH (a:User {id:"U7"}),  (b:User {id:"U11"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U8"}),  (b:User {id:"U11"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U12"}), (b:User {id:"U11"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U16"}), (b:User {id:"U11"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U38"}), (b:User {id:"U11"}) MERGE (a)-[:FRIEND_OF]->(b);

MATCH (a:User {id:"U7"}),  (b:User {id:"U12"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U8"}),  (b:User {id:"U12"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U16"}), (b:User {id:"U12"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U38"}), (b:User {id:"U12"}) MERGE (a)-[:FRIEND_OF]->(b);

MATCH (a:User {id:"U7"}),  (b:User {id:"U13"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U8"}),  (b:User {id:"U13"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U12"}), (b:User {id:"U13"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U16"}), (b:User {id:"U13"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U38"}), (b:User {id:"U13"}) MERGE (a)-[:FRIEND_OF]->(b);

MATCH (a:User {id:"U7"}),  (b:User {id:"U14"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U8"}),  (b:User {id:"U14"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U12"}), (b:User {id:"U14"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U16"}), (b:User {id:"U14"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U38"}), (b:User {id:"U14"}) MERGE (a)-[:FRIEND_OF]->(b);

MATCH (a:User {id:"U7"}),  (b:User {id:"U15"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U8"}),  (b:User {id:"U15"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U12"}), (b:User {id:"U15"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U16"}), (b:User {id:"U15"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U38"}), (b:User {id:"U15"}) MERGE (a)-[:FRIEND_OF]->(b);

MATCH (a:User {id:"U7"}),  (b:User {id:"U16"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U8"}),  (b:User {id:"U16"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U12"}), (b:User {id:"U16"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U38"}), (b:User {id:"U16"}) MERGE (a)-[:FRIEND_OF]->(b);

MATCH (a:User {id:"U7"}),  (b:User {id:"U17"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U8"}),  (b:User {id:"U17"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U12"}), (b:User {id:"U17"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U16"}), (b:User {id:"U17"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U38"}), (b:User {id:"U17"}) MERGE (a)-[:FRIEND_OF]->(b);

MATCH (a:User {id:"U7"}),  (b:User {id:"U18"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U8"}),  (b:User {id:"U18"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U12"}), (b:User {id:"U18"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U16"}), (b:User {id:"U18"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U38"}), (b:User {id:"U18"}) MERGE (a)-[:FRIEND_OF]->(b);

MATCH (a:User {id:"U7"}),  (b:User {id:"U19"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U8"}),  (b:User {id:"U19"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U12"}), (b:User {id:"U19"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U16"}), (b:User {id:"U19"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U38"}), (b:User {id:"U19"}) MERGE (a)-[:FRIEND_OF]->(b);

MATCH (a:User {id:"U7"}),  (b:User {id:"U20"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U8"}),  (b:User {id:"U20"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U12"}), (b:User {id:"U20"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U16"}), (b:User {id:"U20"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U38"}), (b:User {id:"U20"}) MERGE (a)-[:FRIEND_OF]->(b);

MATCH (a:User {id:"U7"}),  (b:User {id:"U21"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U8"}),  (b:User {id:"U21"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U12"}), (b:User {id:"U21"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U16"}), (b:User {id:"U21"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U38"}), (b:User {id:"U21"}) MERGE (a)-[:FRIEND_OF]->(b);

MATCH (a:User {id:"U7"}),  (b:User {id:"U22"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U8"}),  (b:User {id:"U22"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U12"}), (b:User {id:"U22"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U16"}), (b:User {id:"U22"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U38"}), (b:User {id:"U22"}) MERGE (a)-[:FRIEND_OF]->(b);

MATCH (a:User {id:"U7"}),  (b:User {id:"U23"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U8"}),  (b:User {id:"U23"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U12"}), (b:User {id:"U23"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U16"}), (b:User {id:"U23"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U38"}), (b:User {id:"U23"}) MERGE (a)-[:FRIEND_OF]->(b);

MATCH (a:User {id:"U7"}),  (b:User {id:"U24"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U8"}),  (b:User {id:"U24"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U12"}), (b:User {id:"U24"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U16"}), (b:User {id:"U24"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U38"}), (b:User {id:"U24"}) MERGE (a)-[:FRIEND_OF]->(b);

MATCH (a:User {id:"U7"}),  (b:User {id:"U25"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U8"}),  (b:User {id:"U25"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U12"}), (b:User {id:"U25"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U16"}), (b:User {id:"U25"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U38"}), (b:User {id:"U25"}) MERGE (a)-[:FRIEND_OF]->(b);

MATCH (a:User {id:"U7"}),  (b:User {id:"U26"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U8"}),  (b:User {id:"U26"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U12"}), (b:User {id:"U26"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U16"}), (b:User {id:"U26"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U38"}), (b:User {id:"U26"}) MERGE (a)-[:FRIEND_OF]->(b);

MATCH (a:User {id:"U7"}),  (b:User {id:"U27"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U8"}),  (b:User {id:"U27"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U12"}), (b:User {id:"U27"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U16"}), (b:User {id:"U27"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U38"}), (b:User {id:"U27"}) MERGE (a)-[:FRIEND_OF]->(b);

MATCH (a:User {id:"U7"}),  (b:User {id:"U28"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U8"}),  (b:User {id:"U28"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U12"}), (b:User {id:"U28"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U16"}), (b:User {id:"U28"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U38"}), (b:User {id:"U28"}) MERGE (a)-[:FRIEND_OF]->(b);

MATCH (a:User {id:"U7"}),  (b:User {id:"U29"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U8"}),  (b:User {id:"U29"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U12"}), (b:User {id:"U29"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U16"}), (b:User {id:"U29"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U38"}), (b:User {id:"U29"}) MERGE (a)-[:FRIEND_OF]->(b);

MATCH (a:User {id:"U7"}),  (b:User {id:"U30"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U8"}),  (b:User {id:"U30"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U12"}), (b:User {id:"U30"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U16"}), (b:User {id:"U30"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U38"}), (b:User {id:"U30"}) MERGE (a)-[:FRIEND_OF]->(b);

MATCH (a:User {id:"U7"}),  (b:User {id:"U31"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U8"}),  (b:User {id:"U31"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U12"}), (b:User {id:"U31"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U16"}), (b:User {id:"U31"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U38"}), (b:User {id:"U31"}) MERGE (a)-[:FRIEND_OF]->(b);

MATCH (a:User {id:"U7"}),  (b:User {id:"U32"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U8"}),  (b:User {id:"U32"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U12"}), (b:User {id:"U32"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U16"}), (b:User {id:"U32"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U38"}), (b:User {id:"U32"}) MERGE (a)-[:FRIEND_OF]->(b);

MATCH (a:User {id:"U7"}),  (b:User {id:"U33"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U8"}),  (b:User {id:"U33"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U12"}), (b:User {id:"U33"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U16"}), (b:User {id:"U33"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U38"}), (b:User {id:"U33"}) MERGE (a)-[:FRIEND_OF]->(b);

MATCH (a:User {id:"U7"}),  (b:User {id:"U34"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U8"}),  (b:User {id:"U34"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U12"}), (b:User {id:"U34"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U16"}), (b:User {id:"U34"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U38"}), (b:User {id:"U34"}) MERGE (a)-[:FRIEND_OF]->(b);

MATCH (a:User {id:"U7"}),  (b:User {id:"U35"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U8"}),  (b:User {id:"U35"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U12"}), (b:User {id:"U35"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U16"}), (b:User {id:"U35"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U38"}), (b:User {id:"U35"}) MERGE (a)-[:FRIEND_OF]->(b);

MATCH (a:User {id:"U7"}),  (b:User {id:"U36"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U8"}),  (b:User {id:"U36"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U12"}), (b:User {id:"U36"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U16"}), (b:User {id:"U36"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U38"}), (b:User {id:"U36"}) MERGE (a)-[:FRIEND_OF]->(b);

MATCH (a:User {id:"U7"}),  (b:User {id:"U37"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U8"}),  (b:User {id:"U37"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U12"}), (b:User {id:"U37"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U16"}), (b:User {id:"U37"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U38"}), (b:User {id:"U37"}) MERGE (a)-[:FRIEND_OF]->(b);

MATCH (a:User {id:"U7"}),  (b:User {id:"U38"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U8"}),  (b:User {id:"U38"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U12"}), (b:User {id:"U38"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U16"}), (b:User {id:"U38"}) MERGE (a)-[:FRIEND_OF]->(b);

MATCH (a:User {id:"U7"}),  (b:User {id:"U39"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U8"}),  (b:User {id:"U39"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U12"}), (b:User {id:"U39"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U16"}), (b:User {id:"U39"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U38"}), (b:User {id:"U39"}) MERGE (a)-[:FRIEND_OF]->(b);

MATCH (a:User {id:"U7"}),  (b:User {id:"U40"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U8"}),  (b:User {id:"U40"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U12"}), (b:User {id:"U40"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U16"}), (b:User {id:"U40"}) MERGE (a)-[:FRIEND_OF]->(b);
MATCH (a:User {id:"U38"}), (b:User {id:"U40"}) MERGE (a)-[:FRIEND_OF]->(b);


// ------------------------------------------------------------
// 13. RELACIONES: SUBSCRIBED_TO (User -> Platform)
// ------------------------------------------------------------
MATCH (u:User {id:"U1"}),  (p:Platform {name:"PlayStation Plus"})  MERGE (u)-[:SUBSCRIBED_TO]->(p);
MATCH (u:User {id:"U2"}),  (p:Platform {name:"Xbox Game Pass"})    MERGE (u)-[:SUBSCRIBED_TO]->(p);
MATCH (u:User {id:"U3"}),  (p:Platform {name:"PlayStation Plus"})  MERGE (u)-[:SUBSCRIBED_TO]->(p);
MATCH (u:User {id:"U6"}),  (p:Platform {name:"Xbox Game Pass"})    MERGE (u)-[:SUBSCRIBED_TO]->(p);
MATCH (u:User {id:"U7"}),  (p:Platform {name:"PlayStation Plus"})  MERGE (u)-[:SUBSCRIBED_TO]->(p);
MATCH (u:User {id:"U10"}), (p:Platform {name:"Xbox Game Pass"})    MERGE (u)-[:SUBSCRIBED_TO]->(p);
MATCH (u:User {id:"U11"}), (p:Platform {name:"Xbox Game Pass"})    MERGE (u)-[:SUBSCRIBED_TO]->(p);
MATCH (u:User {id:"U14"}), (p:Platform {name:"PlayStation Plus"})  MERGE (u)-[:SUBSCRIBED_TO]->(p);
MATCH (u:User {id:"U17"}), (p:Platform {name:"Xbox Game Pass"})    MERGE (u)-[:SUBSCRIBED_TO]->(p);
MATCH (u:User {id:"U20"}), (p:Platform {name:"PlayStation Plus"})  MERGE (u)-[:SUBSCRIBED_TO]->(p);
MATCH (u:User {id:"U24"}), (p:Platform {name:"Xbox Game Pass"})    MERGE (u)-[:SUBSCRIBED_TO]->(p);
MATCH (u:User {id:"U26"}), (p:Platform {name:"PlayStation Plus"})  MERGE (u)-[:SUBSCRIBED_TO]->(p);
MATCH (u:User {id:"U33"}), (p:Platform {name:"Xbox Game Pass"})    MERGE (u)-[:SUBSCRIBED_TO]->(p);
MATCH (u:User {id:"U40"}), (p:Platform {name:"PlayStation Plus"})  MERGE (u)-[:SUBSCRIBED_TO]->(p);


// ------------------------------------------------------------
// 14. RELACIONES: WANTS_TO_PLAY (User -> Game)
// ------------------------------------------------------------
MATCH (u:User {id:"U1"}),  (g:Game {id:"G34"}) MERGE (u)-[:WANTS_TO_PLAY]->(g); // Hollow Knight: Silksong
MATCH (u:User {id:"U3"}),  (g:Game {id:"G36"}) MERGE (u)-[:WANTS_TO_PLAY]->(g); // Hades II
MATCH (u:User {id:"U4"}),  (g:Game {id:"G2"})  MERGE (u)-[:WANTS_TO_PLAY]->(g); // Baldur's Gate 3
MATCH (u:User {id:"U5"}),  (g:Game {id:"G14"}) MERGE (u)-[:WANTS_TO_PLAY]->(g); // FF VII Rebirth
MATCH (u:User {id:"U7"}),  (g:Game {id:"G31"}) MERGE (u)-[:WANTS_TO_PLAY]->(g); // Sekiro
MATCH (u:User {id:"U8"}),  (g:Game {id:"G60"}) MERGE (u)-[:WANTS_TO_PLAY]->(g); // Divinity OS2
MATCH (u:User {id:"U11"}), (g:Game {id:"G54"}) MERGE (u)-[:WANTS_TO_PLAY]->(g); // DOOM Eternal
MATCH (u:User {id:"U13"}), (g:Game {id:"G25"}) MERGE (u)-[:WANTS_TO_PLAY]->(g); // Alan Wake 2
MATCH (u:User {id:"U15"}), (g:Game {id:"G10"}) MERGE (u)-[:WANTS_TO_PLAY]->(g); // Cyberpunk 2077
MATCH (u:User {id:"U18"}), (g:Game {id:"G37"}) MERGE (u)-[:WANTS_TO_PLAY]->(g); // God of War 2018
MATCH (u:User {id:"U20"}), (g:Game {id:"G1"})  MERGE (u)-[:WANTS_TO_PLAY]->(g); // Elden Ring
MATCH (u:User {id:"U22"}), (g:Game {id:"G49"}) MERGE (u)-[:WANTS_TO_PLAY]->(g); // Dragon Age
MATCH (u:User {id:"U25"}), (g:Game {id:"G46"}) MERGE (u)-[:WANTS_TO_PLAY]->(g); // FF XVI
MATCH (u:User {id:"U29"}), (g:Game {id:"G52"}) MERGE (u)-[:WANTS_TO_PLAY]->(g); // Control
MATCH (u:User {id:"U32"}), (g:Game {id:"G36"}) MERGE (u)-[:WANTS_TO_PLAY]->(g); // Hades II
MATCH (u:User {id:"U35"}), (g:Game {id:"G30"}) MERGE (u)-[:WANTS_TO_PLAY]->(g); // Dark Souls III
MATCH (u:User {id:"U39"}), (g:Game {id:"G2"})  MERGE (u)-[:WANTS_TO_PLAY]->(g); // Baldur's Gate 3
MATCH (u:User {id:"U44"}), (g:Game {id:"G56"}) MERGE (u)-[:WANTS_TO_PLAY]->(g); // Overwatch 2
MATCH (u:User {id:"U47"}), (g:Game {id:"G42"}) MERGE (u)-[:WANTS_TO_PLAY]->(g); // Super Mario Odyssey
MATCH (u:User {id:"U49"}), (g:Game {id:"G4"})  MERGE (u)-[:WANTS_TO_PLAY]->(g); // Hollow Knight


// ------------------------------------------------------------
// 15. RELACIONES: BLOCKED (User -> User)  [97 total aprox.]
// Basado en el patrón observado: U9 (ausente), cuentas tóxicas
// ------------------------------------------------------------
MATCH (a:User {id:"U1"}),  (b:User {id:"U20"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U2"}),  (b:User {id:"U33"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U3"}),  (b:User {id:"U44"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U4"}),  (b:User {id:"U17"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U5"}),  (b:User {id:"U29"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U6"}),  (b:User {id:"U36"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U7"}),  (b:User {id:"U22"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U8"}),  (b:User {id:"U41"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U10"}), (b:User {id:"U30"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U11"}), (b:User {id:"U18"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U12"}), (b:User {id:"U45"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U13"}), (b:User {id:"U28"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U14"}), (b:User {id:"U37"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U15"}), (b:User {id:"U46"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U16"}), (b:User {id:"U23"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U17"}), (b:User {id:"U4"})  MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U18"}), (b:User {id:"U39"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U19"}), (b:User {id:"U31"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U20"}), (b:User {id:"U1"})  MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U21"}), (b:User {id:"U47"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U22"}), (b:User {id:"U7"})  MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U23"}), (b:User {id:"U16"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U24"}), (b:User {id:"U38"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U25"}), (b:User {id:"U32"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U26"}), (b:User {id:"U48"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U27"}), (b:User {id:"U34"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U28"}), (b:User {id:"U13"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U29"}), (b:User {id:"U5"})  MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U30"}), (b:User {id:"U10"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U31"}), (b:User {id:"U19"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U32"}), (b:User {id:"U25"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U33"}), (b:User {id:"U2"})  MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U34"}), (b:User {id:"U27"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U35"}), (b:User {id:"U49"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U36"}), (b:User {id:"U6"})  MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U37"}), (b:User {id:"U14"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U38"}), (b:User {id:"U24"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U39"}), (b:User {id:"U11"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U40"}), (b:User {id:"U43"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U41"}), (b:User {id:"U8"})  MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U42"}), (b:User {id:"U26"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U43"}), (b:User {id:"U40"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U44"}), (b:User {id:"U3"})  MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U45"}), (b:User {id:"U12"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U46"}), (b:User {id:"U15"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U47"}), (b:User {id:"U21"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U48"}), (b:User {id:"U42"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U49"}), (b:User {id:"U35"}) MERGE (a)-[:BLOCKED]->(b);
// Bloqueos adicionales (usuarios muy activos bloquean más)
MATCH (a:User {id:"U1"}),  (b:User {id:"U42"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U2"}),  (b:User {id:"U48"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U7"}),  (b:User {id:"U43"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U8"}),  (b:User {id:"U46"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U12"}), (b:User {id:"U49"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U16"}), (b:User {id:"U42"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U38"}), (b:User {id:"U43"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U3"}),  (b:User {id:"U48"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U5"}),  (b:User {id:"U46"}) MERGE (a)-[:BLOCKED]->(b);
MATCH (a:User {id:"U6"}),  (b:User {id:"U49"}) MERGE (a)-[:BLOCKED]->(b);


// ------------------------------------------------------------
// 16. RELACIONES: PLAYED (User -> Game) con propiedades
// ~489 relaciones - distribución realista por popularidad del juego
// ------------------------------------------------------------
// --- Elden Ring (G1) - muy popular ---
MATCH (u:User {id:"U1"}),  (g:Game {id:"G1"}) MERGE (u)-[:PLAYED {hours:120, rating:9, lastPlayed:date("2025-03-15"), review:"Masterpiece"}]->(g);
MATCH (u:User {id:"U2"}),  (g:Game {id:"G1"}) MERGE (u)-[:PLAYED {hours:89,  rating:8, lastPlayed:date("2025-04-20")}]->(g);
MATCH (u:User {id:"U3"}),  (g:Game {id:"G1"}) MERGE (u)-[:PLAYED {hours:55,  rating:9, lastPlayed:date("2025-02-10")}]->(g);
MATCH (u:User {id:"U5"}),  (g:Game {id:"G1"}) MERGE (u)-[:PLAYED {hours:200, rating:10,lastPlayed:date("2026-01-05")}]->(g);
MATCH (u:User {id:"U7"}),  (g:Game {id:"G1"}) MERGE (u)-[:PLAYED {hours:310, rating:10,lastPlayed:date("2026-02-01"), review:"GOTY every year"}]->(g);
MATCH (u:User {id:"U12"}), (g:Game {id:"G1"}) MERGE (u)-[:PLAYED {hours:75,  rating:8, lastPlayed:date("2025-06-18")}]->(g);
MATCH (u:User {id:"U16"}), (g:Game {id:"G1"}) MERGE (u)-[:PLAYED {hours:44,  rating:7, lastPlayed:date("2025-08-22")}]->(g);
MATCH (u:User {id:"U19"}), (g:Game {id:"G1"}) MERGE (u)-[:PLAYED {hours:130, rating:9, lastPlayed:date("2025-11-30")}]->(g);
MATCH (u:User {id:"U24"}), (g:Game {id:"G1"}) MERGE (u)-[:PLAYED {hours:88,  rating:8, lastPlayed:date("2025-09-14")}]->(g);
MATCH (u:User {id:"U26"}), (g:Game {id:"G1"}) MERGE (u)-[:PLAYED {hours:160, rating:10,lastPlayed:date("2026-01-20")}]->(g);
MATCH (u:User {id:"U29"}), (g:Game {id:"G1"}) MERGE (u)-[:PLAYED {hours:40,  rating:6, lastPlayed:date("2025-07-03")}]->(g);
MATCH (u:User {id:"U33"}), (g:Game {id:"G1"}) MERGE (u)-[:PLAYED {hours:95,  rating:9, lastPlayed:date("2025-10-19")}]->(g);
MATCH (u:User {id:"U40"}), (g:Game {id:"G1"}) MERGE (u)-[:PLAYED {hours:220, rating:10,lastPlayed:date("2026-02-15")}]->(g);

// --- Baldur's Gate 3 (G2) ---
MATCH (u:User {id:"U1"}),  (g:Game {id:"G2"}) MERGE (u)-[:PLAYED {hours:180, rating:10,lastPlayed:date("2025-12-25"), review:"Best RPG ever"}]->(g);
MATCH (u:User {id:"U3"}),  (g:Game {id:"G2"}) MERGE (u)-[:PLAYED {hours:220, rating:10,lastPlayed:date("2026-01-10")}]->(g);
MATCH (u:User {id:"U6"}),  (g:Game {id:"G2"}) MERGE (u)-[:PLAYED {hours:95,  rating:9, lastPlayed:date("2025-05-14")}]->(g);
MATCH (u:User {id:"U8"}),  (g:Game {id:"G2"}) MERGE (u)-[:PLAYED {hours:145, rating:9, lastPlayed:date("2025-09-01")}]->(g);
MATCH (u:User {id:"U13"}), (g:Game {id:"G2"}) MERGE (u)-[:PLAYED {hours:60,  rating:8, lastPlayed:date("2025-07-22")}]->(g);
MATCH (u:User {id:"U15"}), (g:Game {id:"G2"}) MERGE (u)-[:PLAYED {hours:250, rating:10,lastPlayed:date("2026-02-10")}]->(g);
MATCH (u:User {id:"U21"}), (g:Game {id:"G2"}) MERGE (u)-[:PLAYED {hours:75,  rating:8, lastPlayed:date("2025-11-05")}]->(g);
MATCH (u:User {id:"U27"}), (g:Game {id:"G2"}) MERGE (u)-[:PLAYED {hours:110, rating:9, lastPlayed:date("2025-12-01")}]->(g);
MATCH (u:User {id:"U35"}), (g:Game {id:"G2"}) MERGE (u)-[:PLAYED {hours:190, rating:10,lastPlayed:date("2026-01-28")}]->(g);
MATCH (u:User {id:"U43"}), (g:Game {id:"G2"}) MERGE (u)-[:PLAYED {hours:55,  rating:7, lastPlayed:date("2025-10-10")}]->(g);

// --- The Witcher 3 (G3) ---
MATCH (u:User {id:"U2"}),  (g:Game {id:"G3"}) MERGE (u)-[:PLAYED {hours:200, rating:10,lastPlayed:date("2025-01-20")}]->(g);
MATCH (u:User {id:"U4"}),  (g:Game {id:"G3"}) MERGE (u)-[:PLAYED {hours:150, rating:9, lastPlayed:date("2025-03-08")}]->(g);
MATCH (u:User {id:"U6"}),  (g:Game {id:"G3"}) MERGE (u)-[:PLAYED {hours:280, rating:10,lastPlayed:date("2025-06-30"), review:"Mi juego favorito"}]->(g);
MATCH (u:User {id:"U10"}), (g:Game {id:"G3"}) MERGE (u)-[:PLAYED {hours:120, rating:9, lastPlayed:date("2025-04-15")}]->(g);
MATCH (u:User {id:"U14"}), (g:Game {id:"G3"}) MERGE (u)-[:PLAYED {hours:95,  rating:8, lastPlayed:date("2025-08-11")}]->(g);
MATCH (u:User {id:"U22"}), (g:Game {id:"G3"}) MERGE (u)-[:PLAYED {hours:175, rating:10,lastPlayed:date("2025-12-20")}]->(g);
MATCH (u:User {id:"U30"}), (g:Game {id:"G3"}) MERGE (u)-[:PLAYED {hours:60,  rating:7, lastPlayed:date("2025-05-25")}]->(g);
MATCH (u:User {id:"U38"}), (g:Game {id:"G3"}) MERGE (u)-[:PLAYED {hours:310, rating:10,lastPlayed:date("2026-01-15")}]->(g);

// --- Hollow Knight (G4) ---
MATCH (u:User {id:"U4"}),  (g:Game {id:"G4"}) MERGE (u)-[:PLAYED {hours:45,  rating:9, lastPlayed:date("2025-02-14")}]->(g);
MATCH (u:User {id:"U7"}),  (g:Game {id:"G4"}) MERGE (u)-[:PLAYED {hours:80,  rating:9, lastPlayed:date("2025-04-01")}]->(g);
MATCH (u:User {id:"U11"}), (g:Game {id:"G4"}) MERGE (u)-[:PLAYED {hours:35,  rating:8, lastPlayed:date("2025-06-10")}]->(g);
MATCH (u:User {id:"U18"}), (g:Game {id:"G4"}) MERGE (u)-[:PLAYED {hours:60,  rating:9, lastPlayed:date("2025-09-22")}]->(g);
MATCH (u:User {id:"U25"}), (g:Game {id:"G4"}) MERGE (u)-[:PLAYED {hours:55,  rating:10,lastPlayed:date("2025-11-17")}]->(g);
MATCH (u:User {id:"U41"}), (g:Game {id:"G4"}) MERGE (u)-[:PLAYED {hours:28,  rating:7, lastPlayed:date("2025-08-05")}]->(g);
MATCH (u:User {id:"U49"}), (g:Game {id:"G4"}) MERGE (u)-[:PLAYED {hours:42,  rating:8, lastPlayed:date("2026-01-30")}]->(g);

// --- Hades (G5) ---
MATCH (u:User {id:"U3"}),  (g:Game {id:"G5"}) MERGE (u)-[:PLAYED {hours:90,  rating:9, lastPlayed:date("2025-03-20")}]->(g);
MATCH (u:User {id:"U5"}),  (g:Game {id:"G5"}) MERGE (u)-[:PLAYED {hours:120, rating:10,lastPlayed:date("2025-05-05")}]->(g);
MATCH (u:User {id:"U8"}),  (g:Game {id:"G5"}) MERGE (u)-[:PLAYED {hours:75,  rating:9, lastPlayed:date("2025-07-18")}]->(g);
MATCH (u:User {id:"U16"}), (g:Game {id:"G5"}) MERGE (u)-[:PLAYED {hours:55,  rating:8, lastPlayed:date("2025-10-03")}]->(g);
MATCH (u:User {id:"U23"}), (g:Game {id:"G5"}) MERGE (u)-[:PLAYED {hours:100, rating:9, lastPlayed:date("2025-12-15")}]->(g);
MATCH (u:User {id:"U32"}), (g:Game {id:"G5"}) MERGE (u)-[:PLAYED {hours:65,  rating:8, lastPlayed:date("2025-09-28")}]->(g);
MATCH (u:User {id:"U36"}), (g:Game {id:"G5"}) MERGE (u)-[:PLAYED {hours:40,  rating:7, lastPlayed:date("2025-06-12")}]->(g);
MATCH (u:User {id:"U45"}), (g:Game {id:"G5"}) MERGE (u)-[:PLAYED {hours:85,  rating:9, lastPlayed:date("2026-01-08")}]->(g);

// --- God of War Ragnarök (G6) ---
MATCH (u:User {id:"U1"}),  (g:Game {id:"G6"}) MERGE (u)-[:PLAYED {hours:55,  rating:9, lastPlayed:date("2025-02-28")}]->(g);
MATCH (u:User {id:"U6"}),  (g:Game {id:"G6"}) MERGE (u)-[:PLAYED {hours:70,  rating:10,lastPlayed:date("2025-04-10")}]->(g);
MATCH (u:User {id:"U8"}),  (g:Game {id:"G6"}) MERGE (u)-[:PLAYED {hours:48,  rating:8, lastPlayed:date("2025-08-20")}]->(g);
MATCH (u:User {id:"U14"}), (g:Game {id:"G6"}) MERGE (u)-[:PLAYED {hours:62,  rating:9, lastPlayed:date("2025-10-15")}]->(g);
MATCH (u:User {id:"U20"}), (g:Game {id:"G6"}) MERGE (u)-[:PLAYED {hours:50,  rating:8, lastPlayed:date("2025-07-04")}]->(g);
MATCH (u:User {id:"U26"}), (g:Game {id:"G6"}) MERGE (u)-[:PLAYED {hours:75,  rating:10,lastPlayed:date("2025-12-31")}]->(g);
MATCH (u:User {id:"U37"}), (g:Game {id:"G6"}) MERGE (u)-[:PLAYED {hours:43,  rating:7, lastPlayed:date("2025-09-09")}]->(g);

// --- Resident Evil 4 (G7) ---
MATCH (u:User {id:"U2"}),  (g:Game {id:"G7"}) MERGE (u)-[:PLAYED {hours:25,  rating:9, lastPlayed:date("2025-05-01")}]->(g);
MATCH (u:User {id:"U7"}),  (g:Game {id:"G7"}) MERGE (u)-[:PLAYED {hours:30,  rating:8, lastPlayed:date("2025-03-25")}]->(g);
MATCH (u:User {id:"U12"}), (g:Game {id:"G7"}) MERGE (u)-[:PLAYED {hours:22,  rating:8, lastPlayed:date("2025-07-14")}]->(g);
MATCH (u:User {id:"U19"}), (g:Game {id:"G7"}) MERGE (u)-[:PLAYED {hours:18,  rating:7, lastPlayed:date("2025-06-06")}]->(g);
MATCH (u:User {id:"U28"}), (g:Game {id:"G7"}) MERGE (u)-[:PLAYED {hours:35,  rating:9, lastPlayed:date("2025-11-11")}]->(g);
MATCH (u:User {id:"U42"}), (g:Game {id:"G7"}) MERGE (u)-[:PLAYED {hours:28,  rating:8, lastPlayed:date("2025-10-05")}]->(g);

// --- FC 24 (G8) ---
MATCH (u:User {id:"U2"}),  (g:Game {id:"G8"}) MERGE (u)-[:PLAYED {hours:300, rating:7, lastPlayed:date("2025-09-15")}]->(g);
MATCH (u:User {id:"U4"}),  (g:Game {id:"G8"}) MERGE (u)-[:PLAYED {hours:450, rating:8, lastPlayed:date("2026-02-20")}]->(g);
MATCH (u:User {id:"U10"}), (g:Game {id:"G8"}) MERGE (u)-[:PLAYED {hours:200, rating:6, lastPlayed:date("2025-08-30")}]->(g);
MATCH (u:User {id:"U14"}), (g:Game {id:"G8"}) MERGE (u)-[:PLAYED {hours:550, rating:9, lastPlayed:date("2026-03-01")}]->(g);
MATCH (u:User {id:"U21"}), (g:Game {id:"G8"}) MERGE (u)-[:PLAYED {hours:180, rating:7, lastPlayed:date("2025-11-25")}]->(g);
MATCH (u:User {id:"U30"}), (g:Game {id:"G8"}) MERGE (u)-[:PLAYED {hours:400, rating:8, lastPlayed:date("2026-01-30")}]->(g);
MATCH (u:User {id:"U42"}), (g:Game {id:"G8"}) MERGE (u)-[:PLAYED {hours:250, rating:7, lastPlayed:date("2025-12-10")}]->(g);

// --- Fortnite (G9) ---
MATCH (u:User {id:"U5"}),  (g:Game {id:"G9"}) MERGE (u)-[:PLAYED {hours:500, rating:7, lastPlayed:date("2026-02-28")}]->(g);
MATCH (u:User {id:"U10"}), (g:Game {id:"G9"}) MERGE (u)-[:PLAYED {hours:800, rating:8, lastPlayed:date("2026-03-05")}]->(g);
MATCH (u:User {id:"U11"}), (g:Game {id:"G9"}) MERGE (u)-[:PLAYED {hours:350, rating:6, lastPlayed:date("2025-12-20")}]->(g);
MATCH (u:User {id:"U17"}), (g:Game {id:"G9"}) MERGE (u)-[:PLAYED {hours:620, rating:7, lastPlayed:date("2026-02-15")}]->(g);
MATCH (u:User {id:"U42"}), (g:Game {id:"G9"}) MERGE (u)-[:PLAYED {hours:1200,rating:9, lastPlayed:date("2026-03-08")}]->(g);
MATCH (u:User {id:"U44"}), (g:Game {id:"G9"}) MERGE (u)-[:PLAYED {hours:400, rating:7, lastPlayed:date("2026-01-18")}]->(g);
MATCH (u:User {id:"U48"}), (g:Game {id:"G9"}) MERGE (u)-[:PLAYED {hours:280, rating:6, lastPlayed:date("2025-11-10")}]->(g);

// --- Cyberpunk 2077 (G10) ---
MATCH (u:User {id:"U3"}),  (g:Game {id:"G10"}) MERGE (u)-[:PLAYED {hours:85,  rating:8, lastPlayed:date("2025-04-18")}]->(g);
MATCH (u:User {id:"U6"}),  (g:Game {id:"G10"}) MERGE (u)-[:PLAYED {hours:120, rating:9, lastPlayed:date("2025-07-07")}]->(g);
MATCH (u:User {id:"U12"}), (g:Game {id:"G10"}) MERGE (u)-[:PLAYED {hours:70,  rating:8, lastPlayed:date("2025-09-19")}]->(g);
MATCH (u:User {id:"U16"}), (g:Game {id:"G10"}) MERGE (u)-[:PLAYED {hours:95,  rating:7, lastPlayed:date("2025-06-28")}]->(g);
MATCH (u:User {id:"U24"}), (g:Game {id:"G10"}) MERGE (u)-[:PLAYED {hours:110, rating:9, lastPlayed:date("2025-12-05")}]->(g);
MATCH (u:User {id:"U29"}), (g:Game {id:"G10"}) MERGE (u)-[:PLAYED {hours:65,  rating:7, lastPlayed:date("2025-08-14")}]->(g);
MATCH (u:User {id:"U38"}), (g:Game {id:"G10"}) MERGE (u)-[:PLAYED {hours:140, rating:9, lastPlayed:date("2026-01-22")}]->(g);

// --- Zelda: TotK (G11) ---
MATCH (u:User {id:"U7"}),  (g:Game {id:"G11"}) MERGE (u)-[:PLAYED {hours:150, rating:10,lastPlayed:date("2025-05-10")}]->(g);
MATCH (u:User {id:"U11"}), (g:Game {id:"G11"}) MERGE (u)-[:PLAYED {hours:95,  rating:9, lastPlayed:date("2025-07-28")}]->(g);
MATCH (u:User {id:"U26"}), (g:Game {id:"G11"}) MERGE (u)-[:PLAYED {hours:200, rating:10,lastPlayed:date("2025-11-15")}]->(g);
MATCH (u:User {id:"U40"}), (g:Game {id:"G11"}) MERGE (u)-[:PLAYED {hours:130, rating:9, lastPlayed:date("2025-10-08")}]->(g);
MATCH (u:User {id:"U47"}), (g:Game {id:"G11"}) MERGE (u)-[:PLAYED {hours:80,  rating:8, lastPlayed:date("2025-09-30")}]->(g);

// --- Red Dead Redemption 2 (G12) ---
MATCH (u:User {id:"U1"}),  (g:Game {id:"G12"}) MERGE (u)-[:PLAYED {hours:100, rating:9, lastPlayed:date("2025-01-15")}]->(g);
MATCH (u:User {id:"U4"}),  (g:Game {id:"G12"}) MERGE (u)-[:PLAYED {hours:130, rating:10,lastPlayed:date("2025-04-22")}]->(g);
MATCH (u:User {id:"U17"}), (g:Game {id:"G12"}) MERGE (u)-[:PLAYED {hours:90,  rating:9, lastPlayed:date("2025-08-16")}]->(g);
MATCH (u:User {id:"U22"}), (g:Game {id:"G12"}) MERGE (u)-[:PLAYED {hours:75,  rating:8, lastPlayed:date("2025-06-03")}]->(g);
MATCH (u:User {id:"U34"}), (g:Game {id:"G12"}) MERGE (u)-[:PLAYED {hours:155, rating:10,lastPlayed:date("2025-12-14")}]->(g);
MATCH (u:User {id:"U44"}), (g:Game {id:"G12"}) MERGE (u)-[:PLAYED {hours:60,  rating:8, lastPlayed:date("2025-10-27")}]->(g);

// --- Portal 2 (G13) ---
MATCH (u:User {id:"U3"}),  (g:Game {id:"G13"}) MERGE (u)-[:PLAYED {hours:15,  rating:10,lastPlayed:date("2025-02-05")}]->(g);
MATCH (u:User {id:"U8"}),  (g:Game {id:"G13"}) MERGE (u)-[:PLAYED {hours:12,  rating:10,lastPlayed:date("2025-03-14")}]->(g);
MATCH (u:User {id:"U15"}), (g:Game {id:"G13"}) MERGE (u)-[:PLAYED {hours:18,  rating:10,lastPlayed:date("2025-07-09")}]->(g);
MATCH (u:User {id:"U25"}), (g:Game {id:"G13"}) MERGE (u)-[:PLAYED {hours:10,  rating:9, lastPlayed:date("2025-09-05")}]->(g);
MATCH (u:User {id:"U45"}), (g:Game {id:"G13"}) MERGE (u)-[:PLAYED {hours:20,  rating:10,lastPlayed:date("2025-11-22")}]->(g);

// --- FF VII Rebirth (G14) ---
MATCH (u:User {id:"U7"}),  (g:Game {id:"G14"}) MERGE (u)-[:PLAYED {hours:75,  rating:9, lastPlayed:date("2025-04-30")}]->(g);
MATCH (u:User {id:"U13"}), (g:Game {id:"G14"}) MERGE (u)-[:PLAYED {hours:90,  rating:8, lastPlayed:date("2025-06-20")}]->(g);
MATCH (u:User {id:"U26"}), (g:Game {id:"G14"}) MERGE (u)-[:PLAYED {hours:110, rating:9, lastPlayed:date("2025-08-18")}]->(g);
MATCH (u:User {id:"U40"}), (g:Game {id:"G14"}) MERGE (u)-[:PLAYED {hours:80,  rating:8, lastPlayed:date("2025-10-12")}]->(g);

// --- Skyrim (G20) ---
MATCH (u:User {id:"U2"}),  (g:Game {id:"G20"}) MERGE (u)-[:PLAYED {hours:400, rating:9, lastPlayed:date("2025-01-10")}]->(g);
MATCH (u:User {id:"U6"}),  (g:Game {id:"G20"}) MERGE (u)-[:PLAYED {hours:600, rating:10,lastPlayed:date("2025-05-20"), review:"Nunca me cansaré"}]->(g);
MATCH (u:User {id:"U10"}), (g:Game {id:"G20"}) MERGE (u)-[:PLAYED {hours:250, rating:8, lastPlayed:date("2025-07-15")}]->(g);
MATCH (u:User {id:"U17"}), (g:Game {id:"G20"}) MERGE (u)-[:PLAYED {hours:350, rating:9, lastPlayed:date("2025-09-28")}]->(g);
MATCH (u:User {id:"U33"}), (g:Game {id:"G20"}) MERGE (u)-[:PLAYED {hours:180, rating:7, lastPlayed:date("2025-11-03")}]->(g);
MATCH (u:User {id:"U44"}), (g:Game {id:"G20"}) MERGE (u)-[:PLAYED {hours:220, rating:8, lastPlayed:date("2025-12-28")}]->(g);

// --- Fallout New Vegas (G21) ---
MATCH (u:User {id:"U1"}),  (g:Game {id:"G21"}) MERGE (u)-[:PLAYED {hours:180, rating:10,lastPlayed:date("2025-02-22")}]->(g);
MATCH (u:User {id:"U11"}), (g:Game {id:"G21"}) MERGE (u)-[:PLAYED {hours:210, rating:9, lastPlayed:date("2025-05-30")}]->(g);
MATCH (u:User {id:"U21"}), (g:Game {id:"G21"}) MERGE (u)-[:PLAYED {hours:140, rating:9, lastPlayed:date("2025-08-07")}]->(g);
MATCH (u:User {id:"U38"}), (g:Game {id:"G21"}) MERGE (u)-[:PLAYED {hours:300, rating:10,lastPlayed:date("2025-10-31")}]->(g);
MATCH (u:User {id:"U46"}), (g:Game {id:"G21"}) MERGE (u)-[:PLAYED {hours:90,  rating:8, lastPlayed:date("2025-12-18")}]->(g);

// --- Mass Effect LE (G22) ---
MATCH (u:User {id:"U3"}),  (g:Game {id:"G22"}) MERGE (u)-[:PLAYED {hours:120, rating:10,lastPlayed:date("2025-03-28")}]->(g);
MATCH (u:User {id:"U8"}),  (g:Game {id:"G22"}) MERGE (u)-[:PLAYED {hours:150, rating:10,lastPlayed:date("2025-06-15")}]->(g);
MATCH (u:User {id:"U15"}), (g:Game {id:"G22"}) MERGE (u)-[:PLAYED {hours:90,  rating:9, lastPlayed:date("2025-09-12")}]->(g);
MATCH (u:User {id:"U22"}), (g:Game {id:"G22"}) MERGE (u)-[:PLAYED {hours:200, rating:10,lastPlayed:date("2025-11-28")}]->(g);

// --- Horizon Forbidden West (G23) ---
MATCH (u:User {id:"U1"}),  (g:Game {id:"G23"}) MERGE (u)-[:PLAYED {hours:60,  rating:8, lastPlayed:date("2025-03-01")}]->(g);
MATCH (u:User {id:"U6"}),  (g:Game {id:"G23"}) MERGE (u)-[:PLAYED {hours:80,  rating:8, lastPlayed:date("2025-06-08")}]->(g);
MATCH (u:User {id:"U20"}), (g:Game {id:"G23"}) MERGE (u)-[:PLAYED {hours:55,  rating:7, lastPlayed:date("2025-08-25")}]->(g);
MATCH (u:User {id:"G23"}), (g:Game {id:"G24"}) MERGE (u)-[:PLAYED {hours:35,  rating:8, lastPlayed:date("2025-10-20")}]->(g);
MATCH (u:User {id:"U36"}), (g:Game {id:"G23"}) MERGE (u)-[:PLAYED {hours:70,  rating:9, lastPlayed:date("2025-12-08")}]->(g);

// --- Spider-Man 2 (G24) ---
MATCH (u:User {id:"U5"}),  (g:Game {id:"G24"}) MERGE (u)-[:PLAYED {hours:30,  rating:9, lastPlayed:date("2025-04-05")}]->(g);
MATCH (u:User {id:"U14"}), (g:Game {id:"G24"}) MERGE (u)-[:PLAYED {hours:25,  rating:8, lastPlayed:date("2025-07-19")}]->(g);
MATCH (u:User {id:"U24"}), (g:Game {id:"G24"}) MERGE (u)-[:PLAYED {hours:40,  rating:9, lastPlayed:date("2025-10-02")}]->(g);
MATCH (u:User {id:"U37"}), (g:Game {id:"G24"}) MERGE (u)-[:PLAYED {hours:20,  rating:7, lastPlayed:date("2025-12-22")}]->(g);

// --- Alan Wake 2 (G25) ---
MATCH (u:User {id:"U3"}),  (g:Game {id:"G25"}) MERGE (u)-[:PLAYED {hours:20,  rating:9, lastPlayed:date("2025-05-12")}]->(g);
MATCH (u:User {id:"U12"}), (g:Game {id:"G25"}) MERGE (u)-[:PLAYED {hours:18,  rating:8, lastPlayed:date("2025-08-03")}]->(g);
MATCH (u:User {id:"U29"}), (g:Game {id:"G25"}) MERGE (u)-[:PLAYED {hours:22,  rating:9, lastPlayed:date("2025-11-18")}]->(g);
MATCH (u:User {id:"U45"}), (g:Game {id:"G25"}) MERGE (u)-[:PLAYED {hours:16,  rating:8, lastPlayed:date("2026-01-12")}]->(g);

// --- Stellaris (G26) ---
MATCH (u:User {id:"U16"}), (g:Game {id:"G26"}) MERGE (u)-[:PLAYED {hours:500, rating:9, lastPlayed:date("2026-02-10")}]->(g);
MATCH (u:User {id:"U24"}), (g:Game {id:"G26"}) MERGE (u)-[:PLAYED {hours:300, rating:8, lastPlayed:date("2025-10-25")}]->(g);
MATCH (u:User {id:"U33"}), (g:Game {id:"G26"}) MERGE (u)-[:PLAYED {hours:200, rating:8, lastPlayed:date("2025-08-18")}]->(g);
MATCH (u:User {id:"U45"}), (g:Game {id:"G26"}) MERGE (u)-[:PLAYED {hours:150, rating:7, lastPlayed:date("2025-06-05")}]->(g);

// --- Crusader Kings III (G27) ---
MATCH (u:User {id:"U16"}), (g:Game {id:"G27"}) MERGE (u)-[:PLAYED {hours:400, rating:10,lastPlayed:date("2026-03-01")}]->(g);
MATCH (u:User {id:"U24"}), (g:Game {id:"G27"}) MERGE (u)-[:PLAYED {hours:250, rating:9, lastPlayed:date("2025-12-15")}]->(g);
MATCH (u:User {id:"U48"}), (g:Game {id:"G27"}) MERGE (u)-[:PLAYED {hours:180, rating:9, lastPlayed:date("2025-09-14")}]->(g);

// --- Diablo IV (G28) ---
MATCH (u:User {id:"U5"}),  (g:Game {id:"G28"}) MERGE (u)-[:PLAYED {hours:150, rating:8, lastPlayed:date("2025-07-30")}]->(g);
MATCH (u:User {id:"U11"}), (g:Game {id:"G28"}) MERGE (u)-[:PLAYED {hours:200, rating:9, lastPlayed:date("2025-10-18")}]->(g);
MATCH (u:User {id:"U17"}), (g:Game {id:"G28"}) MERGE (u)-[:PLAYED {hours:100, rating:7, lastPlayed:date("2025-12-02")}]->(g);
MATCH (u:User {id:"U44"}), (g:Game {id:"G28"}) MERGE (u)-[:PLAYED {hours:250, rating:8, lastPlayed:date("2026-02-05")}]->(g);

// --- Starfield (G29) ---
MATCH (u:User {id:"U2"}),  (g:Game {id:"G29"}) MERGE (u)-[:PLAYED {hours:40,  rating:6, lastPlayed:date("2025-04-08")}]->(g);
MATCH (u:User {id:"U10"}), (g:Game {id:"G29"}) MERGE (u)-[:PLAYED {hours:55,  rating:7, lastPlayed:date("2025-07-22")}]->(g);
MATCH (u:User {id:"U17"}), (g:Game {id:"G29"}) MERGE (u)-[:PLAYED {hours:35,  rating:5, lastPlayed:date("2025-06-14")}]->(g);
MATCH (u:User {id:"U33"}), (g:Game {id:"G29"}) MERGE (u)-[:PLAYED {hours:60,  rating:6, lastPlayed:date("2025-09-01")}]->(g);

// --- Dark Souls III (G30) ---
MATCH (u:User {id:"U7"}),  (g:Game {id:"G30"}) MERGE (u)-[:PLAYED {hours:200, rating:10,lastPlayed:date("2025-03-10")}]->(g);
MATCH (u:User {id:"U19"}), (g:Game {id:"G30"}) MERGE (u)-[:PLAYED {hours:150, rating:9, lastPlayed:date("2025-06-25")}]->(g);
MATCH (u:User {id:"U26"}), (g:Game {id:"G30"}) MERGE (u)-[:PLAYED {hours:180, rating:9, lastPlayed:date("2025-09-17")}]->(g);
MATCH (u:User {id:"U40"}), (g:Game {id:"G30"}) MERGE (u)-[:PLAYED {hours:250, rating:10,lastPlayed:date("2025-12-28")}]->(g);

// --- GTA V (G45) ---
MATCH (u:User {id:"U4"}),  (g:Game {id:"G45"}) MERGE (u)-[:PLAYED {hours:800, rating:9, lastPlayed:date("2026-02-25")}]->(g);
MATCH (u:User {id:"U10"}), (g:Game {id:"G45"}) MERGE (u)-[:PLAYED {hours:600, rating:8, lastPlayed:date("2026-01-10")}]->(g);
MATCH (u:User {id:"G45"}), (g:Game {id:"G45"}) MERGE (u)-[:PLAYED {hours:400, rating:7, lastPlayed:date("2025-11-20")}]->(g);
MATCH (u:User {id:"U42"}), (g:Game {id:"G45"}) MERGE (u)-[:PLAYED {hours:1000,rating:9, lastPlayed:date("2026-03-07")}]->(g);
MATCH (u:User {id:"U44"}), (g:Game {id:"G45"}) MERGE (u)-[:PLAYED {hours:500, rating:8, lastPlayed:date("2026-01-28")}]->(g);

// --- DOOM Eternal (G54) ---
MATCH (u:User {id:"U5"}),  (g:Game {id:"G54"}) MERGE (u)-[:PLAYED {hours:35,  rating:9, lastPlayed:date("2025-04-12")}]->(g);
MATCH (u:User {id:"U11"}), (g:Game {id:"G54"}) MERGE (u)-[:PLAYED {hours:50,  rating:10,lastPlayed:date("2025-07-04"), review:"INSANE"}]->(g);
MATCH (u:User {id:"U17"}), (g:Game {id:"G54"}) MERGE (u)-[:PLAYED {hours:30,  rating:8, lastPlayed:date("2025-09-10")}]->(g);
MATCH (u:User {id:"U44"}), (g:Game {id:"G54"}) MERGE (u)-[:PLAYED {hours:45,  rating:9, lastPlayed:date("2025-12-06")}]->(g);

// --- Overwatch 2 (G56) ---
MATCH (u:User {id:"U9"}),  (g:Game {id:"G56"}) MERGE (u)-[:PLAYED {hours:600, rating:7, lastPlayed:date("2026-02-20")}]->(g);
MATCH (u:User {id:"U17"}), (g:Game {id:"G56"}) MERGE (u)-[:PLAYED {hours:400, rating:6, lastPlayed:date("2026-01-05")}]->(g);
MATCH (u:User {id:"U42"}), (g:Game {id:"G56"}) MERGE (u)-[:PLAYED {hours:800, rating:8, lastPlayed:date("2026-03-08")}]->(g);
MATCH (u:User {id:"G56"}), (g:Game {id:"G57"}) MERGE (u)-[:PLAYED {hours:200, rating:7, lastPlayed:date("2025-10-15")}]->(g);
