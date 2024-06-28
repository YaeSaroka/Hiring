-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE InsertarInformacionPersonalEmpleado
	@Nombre_Apellido varchar(max), @Mail varchar(254),@telefono varchar(max), @acerca_de_mi varchar(max), @profesion_actual varchar(max), @estilo varchar(max), @ubicacion varchar(max), @foto_perfil varchar(max)
AS
BEGIN
	INSERT INTO Informacion_Personal_Empleado(nombre_apellido, mail, telefono, acerca_de_mi, profesion_actual, estilo, ubicacion, foto_perfil)
	VALUES (@Nombre_Apellido,@Mail,@telefono, @acerca_de_mi, @profesion_actual,@estilo,@ubicacion,@foto_perfil )
END
GO


CREATE PROCEDURE InsertarNecesidad
	@Nombre varchar(max), @id_info_empleado int
AS
BEGIN
	INSERT INTO Necesidad
	VALUES (@Nombre, @id_info_empleado)
END
GO

CREATE PROCEDURE SelectNecesidad
	@id_info_empleado int
AS
BEGIN
	SELECT nombre
	FROM Necesidad
	WHERE id_info_empleado=@id_info_empleado
END
GO

CREATE PROCEDURE InsertarInformacionEmpleadoEducacion
	@fecha_expedicion DATE, @fecha_caducidad DATE, @id_info_empleado int
AS 
BEGIN
	INSERT INTO Informacion_Empleado_Educacion(fecha_expedicion,fecha_caducidad, id_info_empleado)
	VALUES (@fecha_expedicion, @fecha_caducidad,@id_info_empleado)
END 
GO

CREATE PROCEDURE InsertarEducacion
	@titulo varchar (max), @nombre_institucion varchar (max), @disciplina_academica varchar(max), @actividades_grupo varchar(max), @descripcion varchar(max), @id_info_empleado int
AS
BEGIN
	INSERT INTO Educacion (titulo, nombre_institucion,disciplina_academica,actividades_grupo,descripcion

	

	

