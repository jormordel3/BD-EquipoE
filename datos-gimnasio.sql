INSERT INTO CLIENTE VALUES
(1,'Carlos','Pérez Gómez',25,'Calle Mayor 10','600111222','carlos@gmail.com','2024-01-10'),
(2,'Laura','Martínez Ruiz',31,'Av. Libertad 5','611222333','laura@gmail.com','2024-02-15'),
(3,'Miguel','Sánchez López',40,'C/ Sol 22','622333444','miguel@gmail.com','2024-03-01');

INSERT INTO MEMBRESIA VALUES
(1,29.99,'Mensual',1),
(2,79.99,'Trimestral',2),
(3,299.99,'Anual',3);

INSERT INTO MONITOR VALUES
(1,'Ana','García López','12345678A','699111222','ana@gym.com',1400.00,'Fitness'),
(2,'Javier','Ruiz Martín','87654321B','699333444','javier@gym.com',1600.00,'Crossfit');

INSERT INTO GRUPO_MUSCULAR (idMusculo, descripcion, imagen) VALUES
(1,'Pecho',NULL),
(2,'Espalda',NULL),
(3,'Brazo',NULL),
(4,'Hombro',NULL),
(5,'Pierna',NULL);

INSERT INTO EJERCICIO VALUES
('Aperturas',5.00,3,12,0.30,1),
('Remo',7.50,4,10,0.40,2),
('Curl Biceps',6.00,3,12,0.25,3),
('Elevaciones Laterales',4.00,3,15,0.20,4),
('Prensa Piernas',9.50,4,10,0.45,5);

INSERT INTO CLASE VALUES
('Crossfit','2024-06-01 18:00:00',0.90,20,'Sentadilla',2),
('Fuerza','2024-06-02 17:00:00',0.75,15,'Press Banca',1);
