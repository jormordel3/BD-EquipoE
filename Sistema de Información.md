## Javier García, Akira Sanchez y Jorge Morales | Grupo E

### Sistema de información

Una cadena de gimnasios gestiona la información de sus clientes, las membresías que contratan, las clases que se imparten, los monitores que las dirigen y los ejercicios asociados a los distintos grupos musculares.

De cada **cliente** se necesitan sus datos personales: nombre, apellidos, teléfono, email, fecha de registro y dirección completa (calle, número, ciudad y código postal). Cada **cliente** está identificado por un <u>identificador único propio del mismo gimnasio</u>. **cliente** puede pagar una **membresía**, y cada **membresía** puede ser pagada por varios **clientes**.

Cada **membresía** cuenta con un <u>identificador</u>, un tipo y un precio. Las **membresías** incluyen diferentes clases ofrecidas por el gimnasio.

Las **clases** tienen un nombre, <u>tipo</u>, horario, duración y aforo máximo. Una **clase** puede estar incluida en distintas **membresías**, y cada **membresía** puede incluir varias **clases**. Además, una clase debe ser impartida y controlada por un **monitor**, aunque un **monitor** puede encargarse de varias **clases**.

De cada **monitor** se quiere guardar su <u>id</u>, nombre, apellidos, email, teléfono, DNI, puesto y salario.

En cada **clase** se realizan unos **ejercicios**. De cada **ejercicio** se guarda un <u>nombre</u>, una duración, número de repeticiones, series y peso asignado. Cada **ejercicio** pertenece a un único **grupo muscular**, aunque un mismo **grupo muscular** puede contener diferentes **ejercicios**.

Por último, cada **grupo muscular** está identificado por un <u>código</u> y tiene una descripción y una imagen asociada.