# bc-sql-3407182-Yojan-Jaime

# Base de Datos Escape Room — Semana 02

## Descripción

Este proyecto contiene el diseño DDL de una base de datos para un sistema de Escape Room usando SQLite.

La base de datos modela las principales entidades del sistema:

- rooms
- teams
- bookings
- clues

El proyecto incluye:

- Creación de tablas con `CREATE TABLE`
- Relaciones mediante `PRIMARY KEY` y `FOREIGN KEY`
- Uso de constraints:
  - `NOT NULL`
  - `UNIQUE`
  - `DEFAULT`
  - `CHECK`
- Datos de prueba usando `INSERT INTO`

---

## Tecnologías utilizadas

- SQLite 3
- SQL

---

## Estructura de la base de datos

### rooms
Almacena la información de las salas del Escape Room.

### teams
Almacena la información de los equipos de jugadores.

### bookings
Guarda las reservas realizadas por los equipos.

### clues
Contiene las pistas disponibles dentro de cada sala.

---

## Cómo ejecutar el proyecto

Crear y cargar la base de datos:



sqlite3 escape_room.db < semana-02.sql


## Abrir la base de datos:

sqlite3 escape_room.db

## Ver las tablas:

.tables

## Consultar datos:

SELECT (poner todo o lo que quieras ver de la tabla seleciona, NUNCA usar "SELECT *") FROM rooms;

## Autor

Stiven Sana














