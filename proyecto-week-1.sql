-- ============================================
-- PROYECTO SEMANAL: Escape Room
-- Semana 01
-- ============================================

-- ============================================
-- PASO 1: Tabla principal → bookings (reservas)
-- ============================================

CREATE TABLE bookings (
    id INTEGER PRIMARY KEY,
    team_name TEXT NOT NULL,
    room_name TEXT NOT NULL,
    booking_date TEXT NOT NULL,
    players_count INTEGER
);

-- ============================================
-- PASO 2: Tabla secundaria → rooms
-- ============================================

CREATE TABLE rooms (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    difficulty TEXT,
    max_players INTEGER
);

-- ============================================
-- PASO 3: Tabla secundaria → teams
-- ============================================

CREATE TABLE teams (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    members_count INTEGER
);

-- ============================================
-- PASO 4: INSERTS (DATOS)
-- ============================================

-- 15 BOOKINGS
INSERT INTO bookings VALUES
(1,'Team Alpha','Haunted House','2026-04-01',5),
(2,'Team Beta','Prison Break','2026-04-02',4),
(3,'Team Gamma','Bank Heist','2026-04-03',6),
(4,'Team Delta','Zombie Lab','2026-04-04',5),
(5,'Team Omega','Haunted House','2026-04-05',3),
(6,'Team X','Prison Break','2026-04-06',4),
(7,'Team Y','Bank Heist','2026-04-07',5),
(8,'Team Z','Zombie Lab','2026-04-08',6),
(9,'Team Fire','Haunted House','2026-04-09',5),
(10,'Team Ice','Prison Break','2026-04-10',4),
(11,'Team Storm','Bank Heist','2026-04-11',6),
(12,'Team Shadow','Zombie Lab','2026-04-12',5),
(13,'Team Ghost','Haunted House','2026-04-13',4),
(14,'Team Dragon','Prison Break','2026-04-14',5),
(15,'Team Titan','Bank Heist','2026-04-15',6);

-- 5 ROOMS
INSERT INTO rooms VALUES
(1,'Haunted House','Hard',6),
(2,'Prison Break','Medium',5),
(3,'Bank Heist','Hard',6),
(4,'Zombie Lab','Extreme',7),
(5,'Mystery Room','Easy',4);

-- 5 TEAMS
INSERT INTO teams VALUES
(1,'Team Alpha',5),
(2,'Team Beta',4),
(3,'Team Gamma',6),
(4,'Team Delta',5),
(5,'Team Omega',3);

-- ============================================
-- PASO 5: SELECTS
-- ============================================

-- Mostrar todos los bookings
SELECT *
FROM bookings;

-- Mostrar nombres de rooms ordenados
SELECT name
FROM rooms
ORDER BY name;

-- Contar total de bookings
SELECT COUNT(*) AS total_bookings
FROM bookings;