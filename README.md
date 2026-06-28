# bc-sql-3407182-Yojan-Jaime

# Base de Datos Escape Room — Semana 05

## Descripción

Este proyecto contiene la implementación de operadores y filtros sobre una base de datos para un sistema de Escape Room utilizando SQLite.

Durante esta semana se trabajó con consultas utilizando:

* BETWEEN
* IN
* LIKE

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

## BETWEEN

Se realizaron consultas utilizando rangos para filtrar registros.

## IN

Se implementaron filtros utilizando listas de valores.

## LIKE

Se realizaron búsquedas mediante patrones de texto utilizando comodines (`%`).

## Filtros combinados

Se combinaron BETWEEN, IN y LIKE utilizando AND y ORDER BY.

---

# Buenas prácticas aplicadas

* Uso de columnas explícitas.
* Uso de alias con AS.
* Uso de BETWEEN para rangos.
* Uso de IN para listas de valores.
* Uso de LIKE para búsqueda de texto.
* Uso de ORDER BY para ordenar resultados.

---

# Cómo ejecutar el proyecto

## Crear y cargar la base de datos

```bash
sqlite3 escape_room.db < Proyecto-week-5.sql
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




