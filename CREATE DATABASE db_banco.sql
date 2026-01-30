create table persona (
	id serial primary key, 
	nombre varchar(100) not null,
	genero varchar(20),
	edad int,
	identificacion varchar(20) unique not null,
	direccion varchar(255),
	telefono varchar(20));

create table cliente ( 
	cliente_id int primary key,
	identificador_negocio varchar(50) unique not null,
	contrasena varchar(255) not null,
	estado boolean not null,
	constraint fk_persona foreign key (cliente_id) references persona(id));

create table cuenta (
	numero_cuenta varchar(20) primary key,
	tipo_cuenta varchar(50) not null,
	saldo_inicial decimal(12,2) not null,
	estado boolean not null, 
	cliente_id int,
	constraint fk_cliente foreign key (cliente_id) references cliente(cliente_id));

create table movimientos (
	id serial primary key,
	fecha timestamp not null,
	tipo_movimiento varchar(50) not null,
	valor decimal(12,2) not null,
	saldo decimal(12,2) not null,
	numero_cuenta varchar(20),
	constraint fk_cuenta foreign key (numero_cuenta) references cuenta(numero_cuenta));
