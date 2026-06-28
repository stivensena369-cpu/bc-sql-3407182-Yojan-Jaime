# bc-sql-3407182-Yojan-Jaime

# Base de Datos Escape Room — Semana 04

## Descripción

Este proyecto contiene la implementación de consultas **SELECT** sobre una base de datos para un sistema de **Escape Room** utilizando SQLite.

Durante esta semana se trabajó con consultas para recuperar información de la base de datos utilizando:

* SELECT
* WHERE
* ORDER BY
* LIMIT
* OFFSET

La base de datos modela las principales entidades del sistema:

* rooms
* teams
* bookings
* clues

---

# Tecnologías utilizadas

* SQLite 3

---

# Operaciones realizadas

## SELECT

Se desarrollaron consultas para:

* Listar información de las salas.
* Filtrar salas por dificultad.
* Filtrar salas utilizando múltiples condiciones (AND).
* Ordenar resultados mediante ORDER BY.
* Obtener los primeros registros con LIMIT.
* Implementar paginación utilizando LIMIT y OFFSET.

---

# Buenas prácticas aplicadas

* Uso de columnas explícitas (sin `SELECT *`).
* Uso de alias descriptivos con `AS`.
* Uso de filtros mediante `WHERE`.
* Ordenamiento con `ORDER BY`.
* Uso de `LIMIT` para restringir resultados.
* Uso de `OFFSET` para implementar paginación.

---

# Cómo ejecutar el proyecto

## Crear y cargar la base de datos

```bash
sqlite3 escape_room.db < Proyecto-week-4.sql
```

## Abrir SQLite

```bash
sqlite3 escape_room.db
```

## Ver tablas

```sql
.tables
```

## Ejecutar consultas

```sql
SELECT id, name, difficulty FROM rooms;

SELECT id, team_name FROM teams;

SELECT id, status FROM bookings;

SELECT id, clue_text FROM clues;
```

---

# Autor

**Yojan Stiven Jaime Sana**
