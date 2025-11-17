### Akira Sanchez Garcia 

## Diccionari de dades

# Diccionario de Datos — Formato Completo

---

## MEMBRESIA
| Columna        | Tipo             | Restricción | Descripción                           |
|----------------|------------------|-------------|---------------------------------------|
| `idMembresia`  | `INT`            | PK          | Identificador único de la membresía.  |
| `precio`       | `DECIMAL(5,2)`   |             | Precio de la membresía.               |
| `tipo`         | `VARCHAR(16)`    |             | Tipo o categoría de membresía.        |

---

## CLIENTE
| Columna            | Tipo         | Restricción       | Descripción                           |
|--------------------|--------------|-------------------|---------------------------------------|
| `idCliente`        | `INT`        | PK                | Identificador único del cliente.      |
| `email`            | `VARCHAR(32)`|                   | Correo electrónico del cliente.       |
| `cp`               | `VARCHAR(5)` |                   | Código postal.                        |
| `ciudad`           | `VARCHAR(16)`|                   | Ciudad de residencia.                 |
| `numero`           | `VARCHAR(3)` |                   | Número de la vivienda.                |
| `calle`            | `VARCHAR(32)`|                   | Nombre de la calle.                   |
| `fechaRegistro`    | `DATE`       |                   | Fecha en que se registró.             |
| `fechaNacimiento`  | `DATE`       |                   | Fecha de nacimiento.                  |
| `telefono`         | `VARCHAR(12)`|                   | Teléfono de contacto.                 |
| `apellidos`        | `VARCHAR(32)`|                   | Apellidos del cliente.                |
| `nombre`           | `VARCHAR(12)`|                   | Nombre del cliente.                   |
| `idMembresia`      | `INT`        | FK -> MEMBRESIA   | Membresía contratada por el cliente.  |

---

## CLASE
| Columna      | Tipo           | Restricción | Descripción                     |
|--------------|----------------|-------------|---------------------------------|
| `tipo`       | `VARCHAR(16)`  | PK          | Tipo o nombre de la clase.      |
| `horario`    | `DATE`         |             | Horario de realización.         |
| `duracion`   | `INT`          |             | Duración en minutos.            |
| `aforoMax`   | `INT`          |             | Número máximo de participantes. |

---

## INCLUIR
| Columna        | Tipo         | Restricción           | Descripción                      |
|----------------|--------------|-----------------------|----------------------------------|
| `idMembresia`  | `INT`        | PK, FK -> MEMBRESIA   | Membresía incluida               |
| `tipoClase`    | `VARCHAR(16)`| PK, FK -> CLASE       | Clase incluida en la membresía   |

---

## MONITOR
| Columna      | Tipo           | Restricción | Descripción                     |
|--------------|----------------|-------------|---------------------------------|
| `idMonitor`  | `INT`          | PK          | Identificador único del monitor |
| `nombre`     | `VARCHAR(12)`  |             | Nombre del monitor              |
| `apellidos`  | `VARCHAR(32)`  |             | Apellidos del monitor           |
| `telefono`   | `VARCHAR(12)`  |             | Teléfono de contacto            |
| `salario`    | `INT`          |             | Salario del monitor             |
| `email`      | `VARCHAR(32)`  |             | Correo del monitor              |
| `puesto`     | `VARCHAR(12)`  |             | Puesto o rol dentro del gimnasio|
| `dni`        | `VARCHAR(10)`  |             | DNI del monitor                 |

---

## MONITORIZAR
| Columna      | Tipo           | Restricción           | Descripción         |
|--------------|----------------|-----------------------|---------------------|
| `idMonitor`  | `INT`          | PK, FK -> MONITOR     | Monitor asignado    |
| `tipoClase`  | `VARCHAR(16)`  | PK, FK -> CLASE       | Clase monitorizada  |

---

## EJERCICIO
| Columna            | Tipo         | Restricción | Descripción           |
|--------------------|--------------|-------------|-----------------------|
| `nombreEjercicio`  | `VARCHAR(16)`| PK          | Nombre del ejercicio  |
| `peso`             | `INT`        |             | Peso recomendado      |
| `series`           | `INT`        |             | Series a realizar     |
| `numRepeticiones`  | `INT`        |             | Repeticiones por serie|
| `duracion`         | `INT`        |             | Duración del ejercicio|

---

## REALIZAR
| Columna            | Tipo         | Restricción           | Descripción                           |
|--------------------|--------------|-----------------------|---------------------------------------|
| `tipoClase`        | `VARCHAR(16)`| PK, FK -> CLASE       | Clase donde se realiza el ejercicio   |
| `nombreEjercicio`  | `VARCHAR(16)`| PK, FK -> EJERCICIO   | Ejercicio que se realiza en esa clase |

---

## GRUPO MUSCULAR
| Columna      | Tipo         | Restricción | Descripción                     |
|--------------|--------------|-------------|---------------------------------|
| `idMusculo`  | `INT`        | PK          | Identificador del músculo       |
| `descripcion`| `VARCHAR(64)`|             | Descripción del músculo o zona  |
| `imagen`     | `IMG`        |             | Imagen asociada                 |

---

## ENTRENAR
| Columna             | Tipo            | Restricción               | Descripción                       |
|---------------------|-----------------|---------------------------|-----------------------------------|
| `idMusculo`         | `INT`           | PK, FK -> GRUPO MUSCULAR  | Músculo trabajado                 |
| `nombreEjercicio`   | `VARCHAR(16)`   | PK, FK -> EJERCICIO       | Ejercicio que trabaja ese músculo |

---

## ESPALDA
| Columna      | Tipo       | Restricción               | Descripción                             |
|--------------|------------|---------------------------|-----------------------------------------|
| `idMusculo`  | `INT`      | PK, FK -> GRUPO MUSCULAR  | Músculo que pertenece al grupo ESPALDA  |

---

## BRAZO
| Columna      | Tipo       | Restricción               | Descripción                          |
|--------------|------------|---------------------------|--------------------------------------|
| `idMusculo`  | `INT`      | PK, FK -> GRUPO MUSCULAR  | Músculo que pertenece al grupo BRAZO |

---

## PECHO
| Columna      | Tipo         | Restricción               | Descripción      |
|--------------|--------------|---------------------------|------------------|
| `idMusculo`  | `INT`        | PK, FK -> GRUPO MUSCULAR  | Músculo de PECHO |

---

## PIERNA
| Columna      | Tipo         | Restricción               | Descripción      |
|--------------|--------------|---------------------------|------------------|
| `idMusculo`  | `INT`        | PK, FK -> GRUPO MUSCULAR  | Músculo de PIERNA|

---

## HOMBRO
| Columna      | Tipo         | Restricción               | Descripción          |
|--------------|--------------|---------------------------|----------------------|
| `idMusculo`  | `INT`        | PK, FK -> GRUPO MUSCULAR  | Músculo de HOMBRO    |



