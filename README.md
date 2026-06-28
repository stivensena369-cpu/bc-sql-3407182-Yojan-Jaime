# bc-sql-3407182-Yojan-Jaime

# Base de Datos Escape Room — Semana 08

## Descripción

Este proyecto corresponde al Proyecto Integrador de la Etapa 0 del Bootcamp SQL.

Durante esta semana se integraron todos los conceptos aprendidos desde la Semana 01 hasta la Semana 07 utilizando SQLite en un único proyecto funcional del dominio Escape Room.

Se trabajó con:

- DDL (CREATE TABLE)
- DML (INSERT, UPDATE, DELETE)
- SELECT
- WHERE
- ORDER BY
- LIMIT
- BETWEEN
- IN
- LIKE
- COUNT
- SUM
- AVG
- GROUP BY
- HAVING
- IS NULL
- COALESCE
- FOREIGN KEY
- Constraints

---

## Dominio del proyecto

Sistema de gestión de Escape Room.

La base de datos modela las principales entidades:

- rooms
- teams
- bookings
- clues

---

## Tecnologías utilizadas

- SQLite 3

---

## Operaciones realizadas

### DDL

Creación de tablas con:

- PRIMARY KEY
- FOREIGN KEY
- NOT NULL
- UNIQUE
- CHECK
- DEFAULT

### DML

Se insertaron datos de prueba para:

- rooms
- teams
- bookings
- clues

Se realizaron actualizaciones mediante:

- UPDATE

Se eliminaron registros mediante:

- DELETE

---

## Consultas implementadas

### Filtros

Uso de:

- WHERE
- BETWEEN
- IN
- LIKE

### Ordenamiento

Uso de:

- ORDER BY
- LIMIT
- OFFSET

### Funciones de agregación

Uso de:

- COUNT
- SUM
- AVG
- GROUP BY
- HAVING

### Manejo de NULL

Uso de:

- IS NULL
- COALESCE

---

## Buenas prácticas aplicadas

- Uso de PRIMARY KEY
- Uso de FOREIGN KEY
- Activación de PRAGMA foreign_keys = ON
- Uso de NOT NULL
- Uso de UNIQUE
- Uso de CHECK
- Uso de DEFAULT
- Uso seguro de UPDATE con WHERE
- Uso seguro de DELETE con WHERE
- Verificación previa mediante SELECT
- Consultas sin SELECT *
- Uso de alias descriptivos

---

## Cómo ejecutar el proyecto

### Crear y cargar la base de datos

```bash
sqlite3 escape_room.db < Proyecto-week-8.sql
```

### Abrir SQLite

```bash
sqlite3 escape_room.db
```

### Ver tablas

```sql
.tables
```

### Ejecutar el proyecto

```sql
.read Proyecto-week-8.sql
```

### Consultar información

```sql
SELECT id, name, difficulty
FROM rooms;

SELECT id, team_name, players_count
FROM teams;

SELECT id, room_id, team_id, status
FROM bookings;

SELECT id, clue_text, difficulty
FROM clues;
```

---

## Autor

Yojan Stiven Jaime Sana