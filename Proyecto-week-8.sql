-- ============================================
-- PROYECTO INTEGRADOR
-- Semana 08 — Capstone Stage 0
-- Dominio: Escape Room
-- ============================================

PRAGMA foreign_keys = ON;

--- ============================================
-- LIMPIEZA
-- ============================================

DROP TABLE IF EXISTS bookings;
DROP TABLE IF EXISTS clues;
DROP TABLE IF EXISTS teams;
DROP TABLE IF EXISTS rooms;

-- ============================================
-- TABLA: rooms
-- ============================================

CREATE TABLE IF NOT EXISTS rooms (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL UNIQUE,
    difficulty TEXT NOT NULL
        CHECK (difficulty IN ('easy','medium','hard')),
    max_players INTEGER NOT NULL
        CHECK (max_players BETWEEN 2 AND 10),
    duration_minutes INTEGER NOT NULL DEFAULT 60,
    is_active INTEGER NOT NULL DEFAULT 1
);

-- ============================================
-- TABLA: teams
-- ============================================

CREATE TABLE IF NOT EXISTS teams (
    id INTEGER PRIMARY KEY,
    team_name TEXT NOT NULL UNIQUE,
    players_count INTEGER NOT NULL
        CHECK (players_count BETWEEN 1 AND 10),
    created_at TEXT DEFAULT CURRENT_TIMESTAMP
);

-- ============================================
-- TABLA: bookings
-- ============================================

CREATE TABLE IF NOT EXISTS bookings (
    id INTEGER PRIMARY KEY,
    room_id INTEGER NOT NULL,
    team_id INTEGER NOT NULL,
    booking_date TEXT NOT NULL,
    status TEXT NOT NULL DEFAULT 'pending'
        CHECK(status IN ('pending','confirmed','cancelled')),

    FOREIGN KEY(room_id) REFERENCES rooms(id),
    FOREIGN KEY(team_id) REFERENCES teams(id)
);

-- ============================================
-- TABLA: clues
-- ============================================

CREATE TABLE IF NOT EXISTS clues (
    id INTEGER PRIMARY KEY,
    room_id INTEGER NOT NULL,
    clue_text TEXT NOT NULL,
    difficulty TEXT NOT NULL
        CHECK(difficulty IN ('easy','medium','hard')),

    FOREIGN KEY(room_id) REFERENCES rooms(id)
);

-- ============================================
-- DATOS: rooms
-- ============================================

INSERT INTO rooms (name,difficulty,max_players)
VALUES
('Zombie Lab','hard',6),
('Haunted Mansion','medium',5),
('Space Station X','hard',8),
('Ancient Pyramid','easy',4),
('Secret Bunker','medium',6),
('Prison Break','hard',7),
('Lost Jungle','easy',5),
('Alien Invasion','hard',8),
('Mystery Castle','medium',6),
('The Hidden Temple','easy',4),
('Cyber Heist','hard',5),
('Abandoned Hospital','medium',6),
('Time Machine','easy',4),
('Volcano Escape','hard',7),
('Underwater Mission','medium',5);

-- ============================================
-- DATOS: teams
-- ============================================

INSERT INTO teams(team_name,players_count)
VALUES
('The Escapers',5),
('Puzzle Masters',4),
('Night Raiders',6),
('Brainstorm',3),
('Code Breakers',5);

-- ============================================
-- DATOS: clues
-- ============================================

INSERT INTO clues(room_id,clue_text,difficulty)
VALUES
(1,'Look behind the red door','easy'),
(1,'The code is hidden in the books','medium'),
(2,'The key is under the table','easy'),
(3,'Follow the blinking lights','hard'),
(4,'Numbers on the wall are important','medium');

-- ============================================
-- DATOS: bookings
-- ============================================

INSERT INTO bookings(room_id,team_id,booking_date,status)
VALUES
(1,1,'2026-05-10','confirmed'),
(2,2,'2026-05-11','pending'),
(3,3,'2026-05-12','confirmed'),
(4,4,'2026-05-13','cancelled'),
(5,5,'2026-05-14','confirmed');

-- ============================================
-- UPDATE
-- ============================================

UPDATE rooms
SET duration_minutes=90
WHERE id=1;

UPDATE teams
SET
    players_count=6,
    team_name='Ultimate Escapers'
WHERE id=2;

UPDATE bookings
SET status='cancelled'
WHERE room_id=3;

-- ============================================
-- DELETE
-- ============================================

SELECT
    id,
    clue_text,
    difficulty
FROM clues
WHERE difficulty='easy';

DELETE FROM clues
WHERE difficulty='easy';

-- ============================================
-- VERIFICACIÓN
-- ============================================

SELECT
    id,
    name,
    difficulty,
    max_players,
    duration_minutes,
    is_active
FROM rooms
ORDER BY id;

SELECT
    id,
    team_name,
    players_count,
    created_at
FROM teams
ORDER BY id;

SELECT
    id,
    room_id,
    team_id,
    booking_date,
    status
FROM bookings
ORDER BY id;

SELECT
    id,
    room_id,
    clue_text,
    difficulty
FROM clues
ORDER BY id;



-- Reporte 1

SELECT
    COUNT(*) AS total_rooms,
    SUM(max_players) AS total_capacity,
    AVG(max_players) AS average_capacity
FROM rooms;

-- Reporte 2

SELECT
    difficulty,
    COUNT(*) AS total_rooms,
    AVG(max_players) AS average_players
FROM rooms
WHERE is_active = 1
GROUP BY difficulty
ORDER BY total_rooms DESC;

-- Reporte 3

SELECT
    difficulty,
    COUNT(*) AS total_rooms
FROM rooms
GROUP BY difficulty
HAVING COUNT(*) >= 3;

-- Reporte 4

SELECT
    team_name,
    COALESCE(created_at,'No registration date') AS registration_date
FROM teams
WHERE created_at IS NULL;


-- Reporte 5


SELECT
    name,
    max_players
FROM rooms
WHERE max_players BETWEEN 4 AND 8
AND difficulty IN ('medium','hard')
AND name LIKE '%a%'
ORDER BY max_players DESC
LIMIT 5;