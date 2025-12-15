create database GIMNASIO;

use GIMNASIO;

create table MEMBRESIA(
  idMembresia int AUTO_INCREMENT,
  precio decimal(5,2) not null,
  tipo varchar(64) not null,
  constraint PK_MEMBRESIA primary key(idMembresia));


create table CLIENTE(
  idCliente int AUTO_INCREMENT,
  nombre varchar(128) not null,
  apellidos varchar(320) not null,
  edad int,
  email varchar(128) not null,
  calle VARCHAR(100),
  numero VARCHAR(10),
  ciudad VARCHAR(50),
  cp VARCHAR(10),
  telefono varchar(15) not null,
  fechaRegistro date,
  membresia int,
  constraint PK_CLIENTE primary key(idCliente),
  constraint FK_CLIENTE_MEMBRESIA foreign key(membresia) references MEMBRESIA(idMembresia)); 


create table MONITOR(
  idMonitor int AUTO_INCREMENT,
  nombre varchar(128) not null,
  apellidos varchar(128) not null,
  dni varchar(11) not null,
  telefono varchar(11) not null,
  email varchar(164) not null,
  salario decimal(10,2) not null,
  puesto varchar(64),
  constraint PK_MONITOR primary key(idMonitor),
  constraint CHK_SALARIO check(salario>=1000));

create table GRUPO_MUSCULAR(
  idMusculo int AUTO_INCREMENT,
  nombre VARCHAR(64),
  descripcion varchar(64),
  imagen blob,
  constraint PK_GRPMSC primary key(idMusculo));

create table EJERCICIO(
  idEjercicio int AUTO_INCREMENT,
  nombre varchar(64),
  peso decimal(6,2),
  series int,
  numRepeticiones int,
  duracion decimal(10,2),
  musculo int,
  constraint PK_EJERCICIO primary key(idEjercicio),
  constraint FK_EJERCICIO_MUSCULO foreign key(musculo) references GRUPO_MUSCULAR(idMusculo));

create table CLASE(
  idClase int AUTO_INCREMENT,
  tipo  varchar(32),
  horario datetime not null,
  duracion int not null,
  aforoMax int not null,
  monitor int,
  constraint PK_CLASE primary key(idClase),
  constraint FK_CLASE_MONITOR foreign key(monitor) references MONITOR(idMonitor));
