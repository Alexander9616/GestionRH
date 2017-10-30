create database bdPYMES;
go
use bdPYMES;
go

create table DiasLaborales
(
idDia int identity(1,1) primary key,
dia varchar(20) not null,
estado int default 0
);

create table Horarios
(
idHorario int identity(1,1) primary key,
horaEntrada time not null,
inicioReceso time not null,
finalReceso time not null,
horaSalida time not null,
dia int foreign key references DiasLaborales(idDia),
estado int default 0
);

create table Salarios
(
idSalario int identity(1,1) primary key,
salario money not null,
estado int default 0
);

create table Cargos
(
idCargo int identity(1,1) primary key,
Cargo nvarchar(20) not null,
idHorario int foreign key references Horarios(idHorario),
idSalario int foreign key references Salarios(idSalario),
);

create table EstadoEmpleados
(
idEstado int identity(1,1) primary key,
estado varchar(20) not null
);

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
idEstado int foreign key references EstadoEmpleados(idEstado)
);

create table EmpleadosCargo
(
id int identity (1,1) primary key not null,
idEmpleado char(20) foreign key references Empleados(idEmpleado),
idCargo int foreign key references Cargos(idCargo),
);

create table EstadoPermiso
(
idEstado int identity(1,1) primary key,
estado varchar(20) not null
);

create table MotivosPermiso
(
idMotivo int identity(1,1) primary key,
motivo nvarchar(30) not null,
estado int default 0
);
--Crear una tabla de duracion de permisos horas y dias 
create table DuracionPermisos
(
idDuracion int identity(1,1) primary key not null,
duracion varchar (30) not null,
estado int default 0
--se agregara la duracion como texto pues pueden ser meses, horas o dias, la logica validara la duracion
);

create table Permisos
(
idPermiso int identity (1,1) primary key,
idEmpleado char(20) foreign key references Empleados(idEmpleado),
FechaHora datetime default sysdatetime(),
duracion int foreign key references DuracionPermisos(idDuracion),
idMotivo int foreign key references MotivosPermiso(idMotivo),
idEstado int foreign key references EstadoPermiso(idEstado)
);

create table PorcentajeValoracion
(
idPorcentaje int identity(1,1) primary key,
calificacion varchar(10),
puntos float not null
);

create table EstadoValoracion
(
idEstado int identity(1,1) primary key,
estado varchar(20) not null
);

create table PuntosValorar
(
idPunto int identity(1,1) primary key,
valoracion nvarchar(70) not null,
idEstado int foreign key references EstadoValoracion(idEstado),
);

create table Valoraciones
(
idValoracion int identity(1,1) primary key,
idEmpleado char(20) foreign key references Empleados(idEmpleado),
FechaValoracion datetime default sysdatetime(),
idPunto int foreign key references PuntosValorar(idPunto),
idPorcentaje int foreign key references PorcentajeValoracion(idPorcentaje),
evaluador char(20) foreign key references Empleados(idEmpleado)
);

create table Auditoria
(
idAuditoria int identity(1,1) primary key,
idUsuario char(20) foreign key references Empleados(idEmpleado),
descripcion nvarchar(150) not null,
fechaHora datetime default sysdatetime()
);

--Procedimientos Almacenados para Insertar
go 
CREATE PROCEDURE stpAgregarDiasLaborales
@dia varchar(20)
AS
BEGIN

	SET NOCOUNT ON;
	
	insert into DiasLaborales(dia) values (@dia);

END
GO

CREATE PROCEDURE stpAgregarHorario
@horaEntrada time,
@inicioReceso time,
@finalReceso time,
@horaSalida time,
@dia int
AS
BEGIN

	SET NOCOUNT ON;
	
	insert into Horarios(horaEntrada,inicioReceso,finalReceso,horaSalida,dia) values(@horaEntrada,@inicioReceso,@finalReceso,@horaSalida,@dia);

END
GO
CREATE PROCEDURE stpAgregarSalario
@monto money
AS
BEGIN

	SET NOCOUNT ON;
	
	insert into Salarios(salario) values (@monto);

END
GO

CREATE PROCEDURE stpAgregarCargo
@cargo nvarchar(20),
@horario int,
@salario int
AS
BEGIN

	SET NOCOUNT ON;
	
	insert into Cargos(Cargo,idHorario,idSalario) values(@cargo,@horario,@salario);

END
GO

CREATE PROCEDURE stpAgregarEstadoEmpleado
@estado varchar(20)
AS
BEGIN

	SET NOCOUNT ON;
	
	insert into EstadoEmpleados(estado) values(@estado);

END
GO

CREATE PROCEDURE stpAgregarEmpleados
@id char(20),
@nombres nvarchar(50),
@apellidos nvarchar(50),
@dui char(10),
@nit char(17),
@clave nvarchar(20),
@direccion nvarchar(150),
@estado int
AS
BEGIN

	SET NOCOUNT ON;
	
	insert into Empleados(idEmpleado,nombres,apellidos,dui,nit,clave,direccion,idEstado) values(@id,@nombres,@apellidos,@dui,@nit,@clave,@direccion,@estado);

END
GO

CREATE PROCEDURE stpEmpleadosCargos
@idEmpleado char(20),
@idCargo int
AS
BEGIN

	SET NOCOUNT ON;
	
	insert into EmpleadosCargo(idEmpleado,idCargo) values(@idEmpleado,@idCargo);

END
GO

CREATE PROCEDURE stpAgregarEstadoPermiso
@estado varchar(20)
AS
BEGIN

	SET NOCOUNT ON;
	
	insert into EstadoPermiso(estado) values(@estado);

END
GO

CREATE PROCEDURE stpAgregarMotivosPermiso
@motivo nvarchar(30)
AS
BEGIN

	SET NOCOUNT ON;
	
	insert into MotivosPermiso(motivo) values(@motivo);

END
GO

CREATE PROCEDURE stpAgregarDuracionPermisos
@duracion varchar(30)
AS
BEGIN

	SET NOCOUNT ON;
	
	insert into DuracionPermisos(duracion) values(@duracion);

END
GO

CREATE PROCEDURE stpAgregarPermiso
@idEmpleado char(20),
@duracion int,
@motivo int,
@estado int
AS
BEGIN

	SET NOCOUNT ON;
	
	insert into Permisos(idEmpleado,duracion,idMotivo,idEstado) values(@idEmpleado,@duracion,@motivo,@estado);

END
GO

CREATE PROCEDURE stpAgregarPorcentajeValoracion
@calificacion varchar(10),
@puntos float
AS
BEGIN

	SET NOCOUNT ON;
	
	insert into PorcentajeValoracion(calificacion,puntos) values(@calificacion,@puntos);

END
GO
CREATE PROCEDURE stpAgregarEstadoValoracion
@estado varchar(20)
AS
BEGIN

	SET NOCOUNT ON;
	
	insert into EstadoValoracion(estado) values(@estado);

END
GO

CREATE PROCEDURE stpAgregarPuntoValorar
@valoracion nvarchar(70),
@estado int
AS
BEGIN

	SET NOCOUNT ON;
	
	insert into PuntosValorar(valoracion,idEstado) values(@valoracion,@estado);

END
GO

CREATE PROCEDURE stpAgregarValoracion
@idEmpleado char(20),
@punto int,
@evaluador char(20)
AS
BEGIN

	SET NOCOUNT ON;
	
	insert into Valoraciones(idEmpleado,idPunto,evaluador) values(@idEmpleado,@punto,@evaluador);

END
GO


--Procedimientos almacenados para actualizar registros

CREATE PROCEDURE stpActualizarHorarios
@idHorario int,
@horaEntrada time,
@inicioReceso time,
@finalReceso time,
@horaSalida time
AS
BEGIN

	SET NOCOUNT ON;
	
	UPDATE Horarios set horaEntrada=@horaEntrada,inicioReceso=@inicioReceso,finalReceso=@finalReceso,horaSalida=@horaSalida
	where idHorario=@idHorario;

END
GO

CREATE PROCEDURE stpActualizarSalarios
@idSalario int,
@salario money
AS
BEGIN

	SET NOCOUNT ON;
	
	update Salarios set salario=@salario where idSalario=@idSalario;

END
GO

insert into DiasLaborales(dia) values('Lunes'),
								('Martes'),
								('Miercoles'),
								('Jueves'),
								('Viernes');

insert into Horarios(horaEntrada,inicioReceso,finalReceso,horaSalida,dia)
values('8:00AM','12:00','1:00PM','5:00PM',1),
		('8:00AM','12:00','1:00PM','5:00PM',2),
		('8:00AM','12:00','1:00PM','5:00PM',3),
		('8:00AM','12:00','1:00PM','5:00PM',4),
		('8:00AM','12:00','1:00PM','5:00PM',5);

insert into Salarios(salario) values(450.00),
							(850.00),
							(950.00);

insert into Cargos values('Empleado',1,1);
insert into Cargos values('Administrador',1,2);
insert into Cargos values('Gerente',1,3);

insert into EstadoEmpleados values('Activo');
insert into EstadoEmpleados values('Receso');
insert into EstadoEmpleados values('Permiso');
insert into EstadoEmpleados values('Baja');

insert into Empleados (idEmpleado,nombres,apellidos,dui,nit,clave,direccion,idEstado) values
('Empleado1', 'Oscar', 'Duran', '00000000-0', '00000000-0', '1234','dsdsdsdsd',1),
 ('Administrador1', 'Rene', 'Hernandez', '00000000-0', '00000000-0', '1234', 'dsdsdsd',1),
 ('Gerente1', 'Ismael', 'Cortez', '00000000-0', '00000000-0', '1234','dsadsadsadsad',1);

 insert into EmpleadosCargo values
 ('Empleado1',1),
 ('Administrador1',2),
 ('Gerente1',3);

 select * from EmpleadosCargo
