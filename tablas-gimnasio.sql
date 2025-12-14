create database GIMNASIO;

use GIMNASIO;

create table CLIENTE(
  idCliente int,
  nombre varchar(128) not null,
  apellidos varchar(320) not null,
  edad int,
  direccion varchar(128),
  telefono varchar(11) not null,
  email varchar(128) not null,
  fechaRegistro date,
  constraint PK_CLIENTE primary key(idCliente));

create table MEMBRESIA(
  idMembresia int,
  precio decimal(5,2) not null,
  tipo varchar(64) not null,
  cliente int,
  constraint PK_MEMBRESIA primary key(idMembresia),
  constraint FK_MEMBRESIA foreign key(cliente) references CLIENTE(idCliente));

create table MONITOR(
  idMonitor int,
  nombre varchar(128) not null,
  apellidos varchar(128) not null,
  dni vachar(11) not null,
  telefono varchar(11) not null,
  email varchar(164) not null,
  salario decimal(10,2) not null,
  puesto varchar(64),
  constraint PK_MONITOR primary key(idMonitor),
  constraint CHK_SALARIO check(salario>=1000));

create table GRUPO_MUSCULAR(
  idMusculo int,
  descripcion varchar(64),
  imagen img,
  constraint PK_GRPMSC primary key(idMusculo));

create table EJERCICIO(
  nombre varchar(64),
  peso decimal(3,2),
  series int,
  numRepeticiones int,
  duracion decimal(1,2)
  musculo int,
  constraint PK_EJERCICIO primary key(nombre),
  constraint FK_EJERCICIO foreign key(musculo) references GRUPO_MUSCULAR(idMusculo));

create table CLASE(
  tipo  varchar(32),
  horario datetime not null,
  duracion decimal(1,2) not null,
  aforoMax int not null,
  nombreEjercicio varchar(64),
  monitor int,
  constraint PK_CLASE primary key(tipo),
  constraint FK_CLASE foreign key(nombreEjercicio) references EJECICIO(nombre),
  constraint FK_CLASE2 foreign key(monitor) references MONITOR(idMonitor));
