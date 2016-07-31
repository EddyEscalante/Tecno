--verificando la existencia de la base a crear
if db_id('yii2') is not null
	begin
		use master
		drop database yii2
	end	
go
--creando la base de datos 
create database yii2
use yii2
go
----------------------------------------------------------------------------------
--------------------------------t a b l a s---------------------------------------
----------------------------------------------------------------------------------
---//////////////////////////////////////////////////////////
create table usuario
(
	ci int not null primary key,
	nombres varchar(200) not null,
	apellidos varchar(200) not null,
	telefono int not null,
	estado int not null
);

create table tipo
(
	id int not null primary key,
	nombre varchar(50) not null,
	descripcion varchar(50) not null,
	estado int not null
);
create table tipousuario
(
	ci_usuario int not null,
	id_tipo int not null,
	primary key(id_tipo,ci_usuario),
	foreign key(ci_usuario) references usuario(ci)
	on delete cascade on update cascade,
	foreign key(id_tipo) references tipo(id)
	on delete cascade on update cascade	
);
create table casouso
(
	id int not null primary key,
	nombre varchar(50) not null,
	estado int not null
);
create table cutipo
(
	id_tipo int not null,
	id_cu int not null,
	estado int not null,
	primary key(id_tipo,id_cu),
	foreign key(id_cu) references casouso(id)
	on delete cascade on update cascade,
	foreign key(id_tipo) references tipo(id)
	on delete cascade on update cascade
);
create table modulo
(
	id int not null primary key,
	nombre varchar(50) not null,
	estado int not null
);
create table cumodulo
(
	id_cu int not null,
	id_modulo int not null,
	nroorden int not null,
	primary key(id_cu,id_modulo),
	foreign key(id_cu) references casouso(id)
	on delete cascade on update cascade,
	foreign key(id_modulo) references modulo(id)
	on delete cascade on update cascade
);
create table tipovideo
(
	id int not null primary key,
	nombre varchar(50) not null,
	descripcion varchar(50) not null,
	estado int not null
);
create table video
(
	id int not null,
	nombre varchar(50) not null,
	duracion int not null,
	costo int not null,
	estado int not null,
	id_tipovideo int not null,
	primary key(id),
	foreign key(id_tipovideo) references tipovideo(id)
	on delete cascade on update cascade
);
create table fichaprestamo
(
	nro int not null,
	ci_usuario int not null,
	nombre varchar(50) not null,
	direccion varchar(255) not null,
	dias int not null,
	fecha date not null,
	primary key(nro),
	foreign key(ci_usuario) references usuario(ci)
	on delete cascade on update cascade
);
create table detalle
(
	nro_ficha int not null,
	id_video int not null,
	monto int not null,
	primary key(nro_ficha,id_video),
	foreign key(id_video) references video(id)
	on delete cascade on update cascade,
	foreign key(nro_ficha) references fichaprestamo(nro)
	on delete cascade on update cascade	
);
