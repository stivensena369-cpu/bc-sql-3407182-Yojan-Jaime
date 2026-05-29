# bc-sql-3407182-Yojan-Jaime

# Base de Datos Escape Room — Semana 03

## Descripción

Este proyecto contiene la implementación DML de una base de datos para un sistema de Escape Room usando SQLite.

Durante esta semana se trabajó la manipulación de datos utilizando:

* `INSERT INTO`
* `UPDATE`
* `DELETE`
* `SELECT`

La base de datos modela las principales entidades del sistema:

* rooms
* teams
* bookings
* clues

---

## Tecnologías utilizadas

* SQLite 3

---

## Operaciones realizadas

### INSERT INTO

Se insertaron datos de prueba para:

* rooms
* teams
* bookings
* clues

---

### UPDATE

Se realizaron actualizaciones sobre:

* duración de salas
* información de equipos
* estado de reservas

---

### DELETE

Se eliminaron registros de pistas fáciles (`easy`) aplicando primero una verificación con `SELECT`.

---

## Buenas prácticas aplicadas

* Uso de `PRIMARY KEY`
* Uso de `FOREIGN KEY`
* Uso de constraints:

  * `NOT NULL`
  * `UNIQUE`
  * `DEFAULT`
  * `CHECK`
* Uso seguro de `UPDATE` y `DELETE` con `WHERE`
* Verificación previa con `SELECT`

---

## Cómo ejecutar el proyecto

### Crear y cargar la base de datos

```bash
sqlite3 scape_room.db < Proyecto-week-3.sql
```

### Abrir SQLite

```bash
sqlite3 scape_room.db
```

### Ver tablas

```sql
.tables
```

### Consultar datos

```sql
SELECT * FROM rooms;
SELECT * FROM teams;
SELECT * FROM bookings;
SELECT * FROM clues;
```

---

## Autor

Yoja Estiben Jaime Sana
