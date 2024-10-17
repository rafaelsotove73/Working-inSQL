
/* #################################################
   ### IMPLEMENTACION DE UN TRIGER A UNA TABLA
   ### QUE ENVIA UN CORREO SI SE CREA UNA MAQUINA
   ### EN PRODUCCION
   #################################################
*/


USE [RPS2019]
GO

/****** Object:  Trigger [Creacion_nueva_Maquina]    Script Date: 19/10/2022 09:55:32 a. m. ******/
DROP TRIGGER [dbo].[Creacion_nueva_Maquina]
GO

/****** Object:  Trigger [dbo].[Creacion_nueva_Maquina]    Script Date: 19/10/2022 09:55:32 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Creacion_nueva_Maquina]   
   ON  [dbo].[CPRMachine]
   AFTER INSERT
AS 
BEGIN        
  SET NOCOUNT ON;
 declare @CodMachine varchar(50),
         @DescMachine varchar (130),
		 @UsuarioCreacion varchar(20),
		 @textoCorreo varchar(200)
  BEGIN
  SET @CodMachine = (select CodMachine from inserted)
  SET @DescMachine = (select Description from inserted)
  SET @UsuarioCreacion = (select LastModifiedBy from inserted)

  SET @textoCorreo = 'El usuario de Mantenimiento creo una nueva maquina en RPS en el modulo de Fabricación, Codigo Maquina ' + @CodMachine + ',  Descripción maquina ' + @DescMachine + ', Codigo usuario ' +  @UsuarioCreacion

    EXEC msdb.dbo.sp_send_dbmail
	  --@Profile_name= 'Administrador_Sql',
	  @Profile_name= 'Admin',
      @recipients = 'fernando.caicedo@metaltronic.com.ec;cristina.idrobo@metaltronic.com.ec;diego.nacimba@metaltronic.com.ec;hernan.lopez@metaltronic.com.ec;raul.gallegos@metaltronic.com.ec;karline.alarcon@metaltronic.com.ec;pia.villacis@metaltronic.com.ec',
      @subject = 'Notificación de Creación de una nueva Maquina', 
      @body =  @textoCorreo;
  END
END
GO

ALTER TABLE [dbo].[CPRMachine] DISABLE TRIGGER [Creacion_nueva_Maquina]
GO


