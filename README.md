# bc-sql-3407182-Yojan-Jaime 


# 🎯 Proyecto Semana 01 — Escape Room

## 📋 Descripción
Este proyecto corresponde a la semana 01 del bootcamp de SQL, donde se realiza la creación de un modelo básico de base de datos adaptado al dominio "Escape Room".

Se diseñaron las tablas principales del sistema, se insertaron datos de prueba y se ejecutaron consultas básicas para validar la información.

---

## 🧩 Entidades

Las entidades utilizadas en el proyecto son:

- **bookings**: representa las reservas realizadas por los equipos.
- **rooms**: representa las salas disponibles en el escape room.
- **teams**: representa los equipos de jugadores.

---

## 🛠️ Estructura de la Base de Datos

Se crearon las siguientes tablas:

- bookings (tabla principal)
- rooms
- teams

Cada tabla incluye:
- Clave primaria (id)
- Columnas relevantes según el dominio

---

## 📊 Datos de Prueba

Se insertaron:

- 15 registros en la tabla **bookings**
- 5 registros en la tabla **rooms**
- 5 registros en la tabla **teams**

Los datos son realistas y permiten probar correctamente las consultas.

---

## 🔍 Consultas realizadas

Se implementaron consultas básicas:

- Mostrar todos los registros
- Ordenar datos alfabéticamente
- Contar registros

Ejemplos:

```sql
SELECT * FROM bookings;

SELECT name FROM rooms ORDER BY name;

SELECT COUNT(*) FROM bookings;