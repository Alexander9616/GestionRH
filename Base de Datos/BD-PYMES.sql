create database bdPYMES;
go
use bdPYMES;
go

create table DiasLaborales
(
	idDia int identity(1,1) primary key,
	dia varchar(20) not null,
);
go
insert into DiasLaborales(dia) values('Lunes');
insert into DiasLaborales(dia) values('Martes');
insert into DiasLaborales(dia) values('Miercoles');
insert into DiasLaborales(dia) values('Jueves');
insert into DiasLaborales(dia) values('Viernes');
go
create table Horarios
(
	idHorario int identity(1,1) primary key,
	horaEntrada time(4) not null,
	inicioReceso time(4) not null,
	finalReceso time (4)not null,
	horaSalida time (4) not null,
);
go
insert into Horarios(horaEntrada,inicioReceso,finalReceso,horaSalida)
values	('8:00AM','12:00','1:00PM','5:00PM'),
		('9:00AM','12:00','1:00PM','5:00PM'),
		('10:00AM','12:00','1:00PM','5:00PM'),
		('10:30:00AM','12:00','1:00PM','5:00PM');

go
create table Dias_Horarios
(
	idHorario int foreign key references Horarios(idHorario),
	idDia int foreign key references DiasLaborales(idDia)
);

go
insert into Dias_Horarios values(1,1);
insert into Dias_Horarios values(2,2);
insert into Dias_Horarios values(3,1);
insert into Dias_Horarios values(4,4);
insert into Dias_Horarios values(4,2);
go
create table Cargos
(
	idCargo int identity(1,1) primary key,
	Cargo nvarchar(20) not null,
);
go
insert into Cargos values('Empleado');
insert into Cargos values('Administrador');
insert into Cargos values('Gerente');
go
create table EstadoEmpleados
(
	idEstado int identity(1,1) primary key,
	estado varchar(20) not null
);
go
insert into EstadoEmpleados values('Activo');
insert into EstadoEmpleados values('Receso');
insert into EstadoEmpleados values('Permiso');
insert into EstadoEmpleados values('Incapacidad');
go
create table Empleados
(
	idEmpleado char(20) primary key not null,
	nombres nvarchar(50) not null,
	apellidos nvarchar(50) not null,
	dui char(10)not null,
	nit char (17) not null,
	[Fecha Ingreso] date default sysdatetime(),
	clave nvarchar(20) not null,
	direccion nvarchar (150) not null,
	salario money not null,
	idHorario int foreign key references Horarios(idHorario),
	idEstado int foreign key references EstadoEmpleados(idEstado)
);
go
insert into Empleados (idEmpleado,nombres,apellidos,dui,nit,clave,direccion,salario,idEstado) values
('Empleado1', 'Oscar', 'Duran', '00000000-0', '00000000-0', '1234','dsdsdsdsd',450.00,1),
('Administrador1', 'Rene', 'Hernandez', '00000000-0', '00000000-0', '1234', 'dsdsdsd',450.00,1),
('Gerente1', 'Ismael', 'Cortez', '00000000-0', '00000000-0', '1234','dsadsadsadsad',450.00,1);
go
create table EmpleadosCargo
(
	idEmpleado char(20) foreign key references Empleados(idEmpleado),
	idCargo int foreign key references Cargos(idCargo),
);
go
insert into EmpleadosCargo values('Empleado1',1);
insert into EmpleadosCargo values('Administrador1',2);
insert into EmpleadosCargo values('Gerente1',3);
go
create table Empleados_Horarios
(
idEmpleado char(20) foreign key references Empleados(idEmpleado),
idHorario int foreign key references Horarios(idHorario)
);
go
insert into Empleados_Horarios values ('Empleado1',1);
insert into Empleados_Horarios values('Administrador1',2);
insert into Empleados_Horarios values('Gerente1',3);
go
create table EstadoPermiso
(
	idEstado int identity(1,1) primary key,
	estado varchar(20) not null
);
go
insert into EstadoPermiso values('En Espera');
insert into EstadoPermiso values('Permitido');
insert into EstadoPermiso values('Negado');
go
create table MotivosPermiso
(
	idMotivo int identity(1,1) primary key,
	motivo nvarchar(30) not null,
);
go
insert into MotivosPermiso values('Incapacidad');
insert into MotivosPermiso values('Luto');
insert into MotivosPermiso values('Embarazo');
insert into MotivosPermiso values('Otro');
go
create table descripcionDuracion
(
	idDescripcion int identity(1,1) primary key,
	descripcion varchar(10) not null
);
go
insert into descripcionDuracion values('Hora');
insert into descripcionDuracion values('Dia');
insert into descripcionDuracion values('Mes');
go
create table DuracionPermisos
(
	idDuracion int identity(1,1) primary key not null,
	duracion int not null,
	idDescripcion int foreign key references descripcionDuracion(idDescripcion)
);
go
insert into DuracionPermisos values(1,1);
insert into DuracionPermisos values(1,2);
insert into DuracionPermisos values(15,2);
insert into DuracionPermisos values(3,3);
go

create table Permisos
(
	idPermiso int identity (1,1) primary key,
	idEmpleado char(20) foreign key references Empleados(idEmpleado),
	FechaHora datetime default sysdatetime(),
	duracion int foreign key references DuracionPermisos(idDuracion),
	diaInicio date,
	diFinal date,
	idMotivo int foreign key references MotivosPermiso(idMotivo),
	idEstado int foreign key references EstadoPermiso(idEstado)
);

go
select Empleados.idEmpleado,Empleados.nombres,Empleados.apellidos,Horarios.horaEntrada,Horarios.horaSalida,DiasLaborales.dia
from Empleados inner join Empleados_Horarios 
on Empleados.idEmpleado=Empleados_Horarios.idEmpleado inner join Horarios
on Empleados_Horarios.idHorario=Horarios.idHorario inner join Dias_Horarios
on Horarios.idHorario= Dias_Horarios.idHorario inner join DiasLaborales
on DiasLaborales.idDia=Dias_Horarios.idDia