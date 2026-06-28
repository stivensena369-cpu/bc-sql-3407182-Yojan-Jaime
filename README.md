# bc-sql-3407182-Yojan-Jaime

# Base de Datos Escape Room — Semana 09

## Descripción

Durante esta semana se implementaron consultas utilizando **INNER JOIN** y **LEFT JOIN** para relacionar la información almacenada en las tablas del sistema Escape Room.

Se realizaron consultas que permiten visualizar reservas junto con sus salas y equipos, identificar salas sin reservas y generar reportes utilizando funciones de agregación.

---

## Tecnologías utilizadas

- SQLite 3

---

## Temas trabajados

- INNER JOIN
- LEFT JOIN
- Relaciones entre tablas
- Detección de registros sin relación
- COUNT()
- GROUP BY
- ORDER BY
- Alias de columnas

---

## Consultas implementadas

### INNER JOIN

Se relacionaron las tablas:

- rooms
- bookings

para mostrar únicamente las salas que tienen reservas.

---

### INNER JOIN con tres tablas

Se relacionaron:

- rooms
- bookings
- teams

para mostrar el nombre de la sala, el equipo y la fecha de la reserva.

---

### LEFT JOIN

Se listaron todas las salas, incluyendo aquellas que no poseen reservas.

---

### Detección de registros huérfanos

Se utilizó:

- LEFT JOIN
- IS NULL

para identificar salas sin reservas.

---

### Reporte con agregación

Se utilizó:

- LEFT JOIN
- COUNT()
- GROUP BY

para contar la cantidad de reservas realizadas por cada sala.

---

## Cómo ejecutar el proyecto

Crear la base de datos:

```bash
sqlite3 escape_room.db < Proyecto-week-9.sql