#Persistent
#SingleInstance
#UseHook
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

Menu, MyMenu, Add, Sistema, MenuHandler
	Menu, SubmenuSistema, Add, Unidades de Red, MenuHandler

Menu, MyMenu, Add, Programas, MenuHandler
	Menu, SubmenuProgramas, Add, Total Commander, MenuHandler
	Menu, SubmenuProgramas, Add, Visual Studio 6, MenuHandler
		Menu, SubmenuVS6, Add, Visual Basic 6, MenuHandler
		Menu, SubmenuVS6, Add, Visual FoxPro 6, MenuHandler
	Menu, SubmenuProgramas, Add, Filezilla, MenuHandler
	Menu, SubmenuProgramas, Add, Paint.NET, MenuHandler
	Menu, SubmenuProgramas, Add, Gary Utilities, MenuHandler

Menu, MyMenu, Add, Bookmarks, MenuHandler
	Menu, SubmenuBookmarks, Add, oraFiteqa, MenuHandler
	Menu, SubmenuBookmarks, Add  ; Separador de línea
	Menu, SubmenuBookmarks, Add, Servidor DESARROLLO, MenuHandler
	Menu, SubmenuBookmarks, Add, Intranet, MenuHandler
	Menu, SubmenuBookmarks, Add  ; Separador de línea
	Menu, SubmenuBookmarks, Add, WebMail Starclass, MenuHandler
	Menu, SubmenuBookmarks, Add, Ladralia en Internet, MenuHandler
		Menu, SubmenuLadraliaInternet, Add, Starclass, MenuHandler
		Menu, SubmenuLadraliaInternet, Add, Gescendep, MenuHandler
		Menu, SubmenuLadraliaInternet, Add, Gesdralia, MenuHandler
		Menu, SubmenuLadraliaInternet, Add, Impo, MenuHandler
		Menu, SubmenuLadraliaInternet, Add, Sedisa, MenuHandler
	Menu, SubmenuBookmarks, Add  ; Separador de línea
	Menu, SubmenuBookmarks, Add, Logmein, MenuHandler
	Menu, SubmenuBookmarks, Add, Cual es mi IP, MenuHandler
	Menu, SubmenuBookmarks, Add  ; Separador de línea
	Menu, SubmenuBookmarks, Add, Ninite, MenuHandler
	Menu, SubmenuBookmarks, Add, Desarrollo Web, MenuHandler
	Menu, SubmenuBookmarks, Add, StackOverflow, MenuHandler
	Menu, SubmenuBookmarks, Add, AutoHotkey, MenuHandler
	Menu, SubmenuBookmarks, Add, Comite Aereobiologia, MenuHandler

; Agregamos los submenus
Menu, MyMenu, Add, Programas, :SubmenuProgramas
Menu, SubmenuProgramas, Add, Visual Studio 6, :SubmenuVS6
Menu, SubmenuBookmarks, Add, Ladralia en Internet, :SubmenuLadraliaInternet
Menu, MyMenu, Add  ; Separador de línea
Menu, MyMenu, Add, Sistema, :SubmenuSistema
Menu, MyMenu, Add, Bookmarks, :SubmenuBookmarks
Menu, MyMenu, Add, Cerrar, MenuHandler  ; Acción vacía, para cerrar el menú.

; -----------------------------------------------------------------------------------------------------
; Menú de SQL Server Management Studio
; -----------------------------------------------------------------------------------------------------

Menu, mSqlServer, Add, Reducir Log, MenuHandlerSqlServer

Menu, mSqlServer, Add  ; Separador de línea

Menu, mSqlServer, Add, Gescendep, MenuHandlerSqlServer
	Menu, SubmenuGescendep, Add, Cambio de Centro [Lucas], MenuHandlerSqlServer
	Menu, SubmenuGescendep, Add  ; Separador de línea
	Menu, SubmenuGescendep, Add, Incidencias, MenuHandlerSqlServer
		Menu, SubmenuGescendepIncidencias, Add, Listado Incidencias, MenuHandlerSqlServer
		Menu, SubmenuGescendepIncidencias, Add, Listado Incidencias [mini], MenuHandlerSqlServer
		Menu, SubmenuGescendepIncidencias, Add, Gestion de Incidencia, MenuHandlerSqlServer
	
	Menu, SubmenuGescendep, Add  ; Separador de línea
	
	Menu, SubmenuGescendep, Add, Contratos, MenuHandlerSqlServer
		Menu, SubmenuGescendepContratos, Add, [GesContratos] Comprueba mediante ID, MenuHandlerSqlServer
		Menu, SubmenuGescendepContratos, Add, [GesContratos] Cambio Estado, MenuHandlerSqlServer
		Menu, SubmenuGescendepContratos, Add, [GesContratos] Cambio Fecha Renovacion, MenuHandlerSqlServer
	
	Menu, SubmenuGescendep, Add  ; Separador de línea
	
	Menu, SubmenuGescendep, Add, Cobros, MenuHandlerSqlServer
		Menu, SubmenuGescendepCobros, Add, [GesCobros] Comprueba mediante ID, MenuHandlerSqlServer
		Menu, SubmenuGescendepCobros, Add, [GesCobros] Cambio Estado, MenuHandlerSqlServer

Menu, mSqlServer, Add  ; Separador de línea

Menu, mSqlServer, Add, Gesdralia, MenuHandlerSqlServer
	Menu, SubmenuGesdralia, Add, [Gesdralia] Permisos, MenuHandlerSqlServer
	Menu, SubmenuGesdralia, Add, [Gesdralia] Backup, MenuHandlerSqlServer
	Menu, SubmenuGesdralia, Add, [Gesdralia] Restaurar, MenuHandlerSqlServer
;	Menu, SubmenuGesdralia, Add, [Gesdralia] Restaurar+Silvia, MenuHandlerSqlServer

; Agregamos los submenus
Menu, mSqlServer, Add, Gescendep, :SubmenuGescendep
Menu, mSqlServer, Add, Gesdralia, :SubmenuGesdralia
Menu, SubmenuGescendep, Add, Incidencias, :SubmenuGescendepIncidencias
Menu, SubmenuGescendep, Add, Contratos, :SubmenuGescendepContratos
Menu, SubmenuGescendep, Add, Cobros, :SubmenuGescendepCobros
Menu, mSqlServer, Add  ; Separador de línea
Menu, mSqlServer, Add, Cerrar [SQL Server], MenuHandlerSqlServer  ; Acción vacía, para cerrar el menú.

; -----------------------------------------------------------------------------------------------------

return  ; Final de la seccion de autoejecucion del script

; -------------------------------------------------------------------------------------------------------------------------------
; MENÚ: GENERAL
; -------------------------------------------------------------------------------------------------------------------------------

MenuHandler: 
	; MsgBox Seleccionaste %A_ThisMenuItem% del menu %A_ThisMenu%.
	Seleccion = %A_ThisMenuItem%
	if (Seleccion = "Unidades de Red")
	{
		Run net use L: /delete
		Run net use M: /delete
		Run net use N: /delete
		Run net use P: /delete
		Run net use S: /delete
		Run net use T: /delete
		Run net use W: /delete
		Run net use X: /delete
		Run net use Y: /delete
		Sleep, 395
		Run net use L: \\pc-desarrollo\LUCAS Misnanas1 /USER:Administrador
		Sleep, 395
		Run net use M: "\\pc-desarrollo\Virtual Machines"
		Sleep, 395
		Run net use N: \\JAVI\f Misnanas1 /USER:Administrator
		Sleep, 395
		Run net use P: \\pc-desarrollo\proyectos
		Sleep, 395
		Run net use S: \\pc-desarrollo\SOFT
		Sleep, 395
		Run net use T: \\JAVI\SOFT
		Sleep, 395
		Run net use W: \\pc-desarrollo\wwwroot
		Sleep, 395
		Run net use X: \\Srv-principal\Comercial buenosdias /USER:recepcion
		Sleep, 395
		Run net use Y: \\Srv-principal\Bitfac
	}

	if (Seleccion = "Total Commander")
	{
		if not WinExist ("ahk_class TTOTAL_CMD")
			Run C:\totalcmd\TOTALCMD.EXE
		WinActivate
	}
	
	if (Seleccion = "Filezilla")
	{
		if not WinExist( "ahk_class wxWindowClassNR" )
			Run %A_ProgramFiles%\FileZilla FTP Client\filezilla.exe
		WinActivate
	}
	
	if (Seleccion = "Paint.NET")
		Run %A_ProgramFiles%\Paint.NET\PaintDotNet.exe
	
	if (Seleccion = "Gary Utilities")
	{
		if not WinExist( "ahk_class Glary-Utilities" )
			Run %A_ProgramFiles%\Glary Utilities\Integrator.exe
		WinActivate
	}

	if (Seleccion = "Visual Basic 6")
		Run %A_ProgramFiles%\Microsoft Visual Studio\VB98\VB6.EXE

	if (Seleccion = "Visual FoxPro 6")
	{
		if not WinExist( "ahk_class VFP66400000" )
			Run %A_ProgramFiles%\Microsoft Visual Studio\Vfp98\VFP6.EXE
		WinActivate
	}

; -----------
; Bookmarks
; -----------

; 1.Ladralia

	if (Seleccion = "WebMail Starclass")
		Run firefox.exe https://serviciodecorreo.es/

	if (Seleccion = "Starclass")
		Run firefox.exe http://www.starclass.es/

	if (Seleccion = "Servidor DESARROLLO")		
		Run firefox.exe http://pc-desarrollo/

	if (Seleccion = "Intranet")
		Run firefox.exe http://ladralia.no-ip.biz:3307/intranet/

	if (Seleccion = "Gescendep")
		Run iexplore.exe https://www.gescendep.es/

	if (Seleccion = "Gesdralia")
		Run iexplore.exe http://www.gescendep.es:8080/

	if (Seleccion = "Impo")
		Run firefox.exe http://www.imposa.es/

	if (Seleccion = "Sedisa")
		Run firefox.exe http://www.sedisa.com/
		
	if (Seleccion = "oraFiteqa")
		Run firefox.exe http://192.168.0.238:8080/oraFiteqa/index.php?email=starclass@starclass.es

; 2.Sitios Web de interes

	if (Seleccion = "Logmein")
		Run firefox.exe https://secure.logmein.com/es/

	if (Seleccion = "Cual es mi IP")
		Run firefox.exe www.cualesmiip.com

	if (Seleccion = "Desarrollo Web")
		Run firefox.exe www.desarrolloweb.com

	if (Seleccion = "Comite Aereobiologia")
		Run firefox.exe www.polenes.com

	if (Seleccion = "StackOverflow")
		Run firefox.exe http://stackoverflow.com/

	if (Seleccion = "Ninite")
		Run firefox.exe http://ninite.com/

	if (Seleccion = "AutoHotkey")
		Run firefox.exe http://www.autohotkey.com/board/forum/
		
return

; -------------------------------------------------------------------------------------------------------------------------------
; FIN MENU GENERAL
; -------------------------------------------------------------------------------------------------------------------------------

; -------------------------------------------------------------------------------------------------------------------------------
; SQL SERVER MANAGEMENT STUDIO: MENU
; -------------------------------------------------------------------------------------------------------------------------------

MenuHandlerSqlServer:
	Seleccion = %A_ThisMenuItem%

	if (Seleccion = "Reducir Log")
	{	
		InputBox, BASEDATOS, Introduce La Base de Datos a Reducir El Log, SC_GESCENDEP - SC_GESDRALIA...
		
		If StrLen(BASEDATOS) < 1
		{
			MsgBox, 0, Parametros No Validos, PARAMETRO NO VALIDO
		}else{
			Send USE %BASEDATOS%{enter}GO{enter}CHECKPOINT{enter}GO{enter}ALTER DATABASE %BASEDATOS% SET RECOVERY SIMPLE{enter}GO{enter}ALTER DATABASE %BASEDATOS% SET RECOVERY FULL{enter}GO{enter}DBCC SHRINKFILE ('%BASEDATOS%_log', 1){enter}{F5}
		}
	}	
	
	if (Seleccion = "Cambio de Centro [Lucas]")
	{	
		InputBox, NUMCENTRO, Introduce El Centro a reasignar a Lucas, Centros: 1-RIV 2-PIN 3-MAB 4-GET 5-ARG 6-GIJ
		
		If StrLen(NUMCENTRO) < 1
		{
			MsgBox, 0, Parametros No Validos, PARAMETRO NO VALIDO
		}else{
			Send USE SC_GESCENDEP{enter}GO{enter}{enter}BEGIN{enter}DECLARE @Empresa AS INT, @Centro AS INT, @Usuario AS INT{enter}{enter}SET @Centro = %NUMCENTRO%{enter}SET @Usuario = 2{enter}{enter}SELECT @Empresa = c.ID_Empresa FROM _Centros c WHERE c.ID_Centro = @Centro{enter}{enter}UPDATE _Empleados SET ID_Empresa = @Empresa, ID_Centro = @Centro WHERE ID_Empleado = @Usuario{enter}{enter}SELECT * FROM _Empleados WHERE ID_Empleado = @Usuario{enter}END
			Send {F5}
		}
	}
	
	if (Seleccion = "Listado Incidencias")
	{
		Send USE SC_GESCENDEP{enter}GO{enter}SELECT {enter}it.ID_IncidenciaTecnica AS ID, {enter}e.Nombre {+} ' ' {+} e.Apellido1 AS Empleado,{enter}c.ID_Empresa AS Empresa,{enter}it.ID_Centro, {enter}c.Descripcion AS Centro,{enter}it.FechaAlta,{enter}tit.TipoIncidenciaTecnica,{enter}eit.EstadoIncidenciaTecnica AS Estado,{enter}it.IncidenciaTecnica,{enter}it.Detalle{enter}FROM IncidenciasTecnicas it, _Centros c, _Empleados e,  __TiposIncidenciaTecnica tit, __EstadosIncidenciaTecnica eit{enter}WHERE it.ID_Centro = c.ID_Centro{enter}AND it.ID_Empleado = e.ID_Empleado{enter}AND it.ID_TipoIncidenciaTecnica = tit.ID_TipoIncidenciaTecnica{enter}AND it.ID_EstadoIncidenciaTecnica = eit.ID_EstadoIncidenciaTecnica{enter}AND it.FechaCierre IS NULL{enter}ORDER BY it.ID_IncidenciaTecnica DESC{Enter}{F5}{Home}
	}

	if (Seleccion = "Listado Incidencias [mini]")
	{
		Send USE SC_GESCENDEP{enter}GO{enter}SELECT{enter}it.ID_IncidenciaTecnica AS ID,{enter}'Empresa:' {+} Cast(c.ID_Empresa AS VARCHAR) {+} ' / Centro:' {+} CAST(it.ID_Centro AS VARCHAR) AS EmpresaCentro,{enter}it.IncidenciaTecnica,{enter}it.Detalle{enter}FROM IncidenciasTecnicas it, _Centros c, _Empleados e,  __TiposIncidenciaTecnica tit, __EstadosIncidenciaTecnica eit{enter}WHERE it.ID_Centro = c.ID_Centro AND it.ID_Empleado = e.ID_Empleado AND it.ID_TipoIncidenciaTecnica = tit.ID_TipoIncidenciaTecnica AND it.ID_EstadoIncidenciaTecnica = eit.ID_EstadoIncidenciaTecnica AND it.FechaCierre IS NULL ORDER BY it.ID_IncidenciaTecnica DESC{Enter}{F5}{Home}
	}
	
	if (Seleccion = "Gestion de Incidencia")
	{
		InputBox, NUMINCIDENCIA, Incidencia: Gestion,Introduce el Numero de Incidencia a Gestionar
		InputBox, ESTADOINCIDENCIA, Incidencia: Estado, Estados: 31-PEN 32-EN PROC 33-EN PR. 34-FIN 35-CAN 36-NR
		InputBox, OBSERVACIONES, Incidencia: Gestion Observaciones,Introduce la observación a indicar a los usuarios
		Send {enter}{-}{-} CIERRE DE INCIDENCIA{enter}{enter}USE SC_GESCENDEP{enter}GO{enter}BEGIN{enter}DECLARE @Incidencia AS INT,  @Empresa AS INT,  @Centro AS INT, @EstadoIncidencia AS INT, @Tratamiento AS INT, @Fecha AS datetime, @Observaciones AS varchar(250){enter}{enter}SET @Incidencia = %NUMINCIDENCIA%{enter}SET @Tratamiento = %ESTADOINCIDENCIA%{enter}SET @Observaciones = '%OBSERVACIONES%'{enter}{enter}SET @Fecha = CONVERT(smalldatetime,CONVERT (varchar, GETDATE(),112)){enter}{enter}SELECT @Centro = it.ID_Centro  FROM IncidenciasTecnicas it  WHERE it.ID_IncidenciaTecnica = @Incidencia{enter}SELECT @Empresa = c.ID_Empresa FROM _Centros c WHERE c.ID_Centro = @Centro{enter}SELECT @EstadoIncidencia = ID_EstadoIncidenciaTecnica FROM __EstadosIncidenciaTecnica WHERE ID_Empresa = @Empresa AND ID_CodigoTratamiento = @Tratamiento{enter}{enter}UPDATE IncidenciasTecnicas SET ID_EstadoIncidenciaTecnica = @EstadoIncidencia, FechaCierre = @Fecha, Observaciones = @Observaciones WHERE ID_IncidenciaTecnica = @Incidencia{enter}{enter}END
		Send {F5}
	}

	if (Seleccion = "[GesContratos] Comprueba mediante ID")
	{
		InputBox, IDCONTRATO, ID Del Contrato,Introduce el ID Del Contrato
	
		If StrLen(IDCONTRATO) < 1
		{
			MsgBox, 0, Parametros No Validos, PARAMETROS NO VALIDOS
		}else{
			Send {enter}{-}{-} GESCENDEP: COMPROBAR CENTRO, NUM_SOCIO SEGUN ID_CONTRATO{enter}USE SC_GESCENDEP{enter}GO{enter}SELECT Clientes.ID_Cliente, Cod_Cliente, Contratos.ID_Centro, _Centros.Descripcion AS NombreCentro, Contratos.ID_Contrato{enter}FROM Clientes, Contratos, _Centros{enter}WHERE Clientes.ID_Cliente = Contratos.ID_Cliente{enter}AND Contratos.ID_Centro = _Centros.ID_Centro{enter}AND Contratos.ID_Contrato = %IDCONTRATO%{enter}GO{enter}{F5}
		}
	}
	
	if (Seleccion = "[GesContratos] Cambio de Estado")
	{
		InputBox, IDCONTRATO, ID Del Contrato,Introduce el ID Del Contrato
		InputBox, IDTRATAMIENTO, Introduce ID Del Tratamiento del Contrato, Valores Posibles: 5-ACT 6-SUS 7-CAN 8-PRO

		If StrLen(IDCONTRATO) < 1 OR StrLen(IDTRATAMIENTO) < 1
		{
			MsgBox, 0, Parametros No Validos, PARAMETROS NO VALIDOS
		}
		else
		{
			Send {enter}{-}{-} PROCEDIMIENTO DE CAMBIO DE ESTADO DEL CONTRATO{enter}USE SC_GESCENDEP{enter}GO{enter}BEGIN{enter}DECLARE @ID_Contrato AS INT, @EstadoContrato AS INT, @Trat AS INT, @Empresa AS INT{enter}{enter}SET @ID_Contrato = %IDCONTRATO%{enter}SET @Trat = %IDTRATAMIENTO%{enter}{enter}SELECT @Empresa = ID_Empresa FROM Contratos, _Centros WHERE Contratos.ID_Centro = _Centros.ID_Centro AND Contratos.ID_Contrato = @ID_Contrato{enter}{enter}SELECT @EstadoContrato = ID_EstadoContrato FROM __EstadosContrato WHERE ID_Empresa = @Empresa AND ID_CodigoTratamiento = @Trat{enter}{enter}
			If (IDTRATAMIENTO = 7){
				Send UPDATE Contratos SET ID_EstadoContrato = @EstadoContrato, FechaBaja = CONVERT(varchar, getdate(), 112) WHERE ID_Contrato = @ID_Contrato
			} 
			else 
			{
				Send UPDATE Contratos SET ID_EstadoContrato = @EstadoContrato, FechaBaja = NULL WHERE ID_Contrato = @ID_Contrato			
			}
			Send {enter}END{enter}GO{F5}
		}
	}

	if (Seleccion = "[GesContratos] Cambio Fecha Renovacion")
	{
		InputBox, IDCONTRATO, ID Del Contrato,Introduce el ID Del Contrato
		InputBox, FECHARENOVACION, Fecha de Renovacion,Introduce Fecha De Renovacion (formato ISO:'AAAAMMDD')
		
		If StrLen(IDCONTRATO) < 1 OR StrLen(FECHARENOVACION) < 1
		{
			MsgBox, 0, Parametros No Validos, PARAMETROS NO VALIDOS
		}else{
			Send {enter}{-}{-} PROCEDIMIENTO DE CAMBIO DE FECHA DE RENOVACION DE UN CONTRATO{enter}USE SC_GESCENDEP{enter}GO{enter}UPDATE Contratos SET FechaRenovacion = '%FECHARENOVACION%' WHERE ID_Contrato = %IDCONTRATO%{enter}GO{enter}{F5}
		}
	}

	if (Seleccion = "[GesCobros] Comprueba mediante ID")
	{
		InputBox, IDCOBRO, ID Del Cobro,Introduce el ID Del Cobro
	
		If StrLen(IDCOBRO) < 1
		{
			MsgBox, 0, Parametros No Validos, PARAMETROS NO VALIDOS
		}else{
			Send {enter}{-}{-} GESCENDEP: COMPROBAR CENTRO, NUM_SOCIO SEGUN ID_COBRO{enter}USE SC_GESCENDEP{enter}GO{enter}SELECT Clientes.ID_Cliente, Cod_Cliente, Contratos.ID_Centro, _Centros.Descripcion AS NombreCentro, Contratos.ID_Contrato, Cobros.ID_Cobro{enter}FROM Clientes, Contratos, Cobros, _Centros{enter}WHERE Clientes.ID_Cliente = Contratos.ID_Cliente{enter}AND Contratos.ID_Contrato = Cobros.ID_Contrato{enter}AND Contratos.ID_Centro = _Centros.ID_Centro{enter}AND Cobros.ID_Cobro = %IDCOBRO%{enter}GO{enter}{F5}
		}
	}

	if (Seleccion = "[GesCobros] Cambio Estado")
	{
		InputBox, IDCOBRO, ID Del Cobro,Introduce el ID Del Cobro
		InputBox, IDTRATAMIENTO, Introduce ID Del Tratamiento del Cobro, Valores Posibles: 12-PREV 13-FAC 14-CONF 15-ANUL

		If StrLen(IDCOBRO) < 1 OR StrLen(IDTRATAMIENTO) < 1
		{
			MsgBox, 0, Parametros No Validos, PARAMETROS NO VALIDOS
		}else{
			Send {enter}{-}{-} PROCEDIMIENTO DE CAMBIO DE ESTADO DEL COBRO{enter}USE SC_GESCENDEP{enter}GO{enter}BEGIN{enter}DECLARE @ID_Cobro AS INT, @EstadoCobro AS INT, @Trat AS INT, @Empresa AS INT{enter}{enter}SET @ID_Cobro = %IDCOBRO%{enter}SET @Trat = %IDTRATAMIENTO%{enter}{enter}SELECT @Empresa = ID_Empresa FROM Cobros, Contratos, _Centros WHERE Contratos.ID_Contrato = Cobros.ID_Contrato AND Contratos.ID_Centro = _Centros.ID_Centro AND Cobros.ID_Cobro = @ID_Cobro{enter}{enter}SELECT @EstadoCobro = ID_EstadoCobro FROM __EstadosCobro WHERE ID_Empresa = @Empresa AND ID_CodigoTratamiento = @Trat{enter}{enter}UPDATE Cobros SET ID_EstadoCobro = @EstadoCobro WHERE ID_Cobro = @ID_Cobro{enter}{enter}SELECT * FROM Cobros WHERE ID_Cobro = @ID_Cobro{enter}END{enter}GO{enter}
			Send {F5}
		}
	}

	if (Seleccion = "[Gesdralia] Permisos")
	{
		Send USE [SC_GESDRALIA]{enter}GO{enter}CREATE USER [gesdralia] FOR LOGIN [gesdralia]{enter}GO{enter}EXEC sp_addrolemember N'db_accessadmin', N'gesdralia'{enter}GO{enter}EXEC sp_addrolemember N'db_backupoperator', N'gesdralia'{enter}GO{enter}EXEC sp_addrolemember N'db_datareader', N'gesdralia'{enter}GO{enter}EXEC sp_addrolemember N'db_datawriter', N'gesdralia'{enter}GO{enter}EXEC sp_addrolemember N'db_ddladmin', N'gesdralia'{enter}GO{enter}EXEC sp_addrolemember N'db_owner', N'gesdralia'{enter}GO{enter}EXEC sp_addrolemember N'db_securityadmin', N'gesdralia'{enter}GO{enter}CREATE USER [ruben] FOR LOGIN [ruben]{enter}GO{enter}EXEC sp_addrolemember N'db_accessadmin', N'ruben'{enter}GO{enter}EXEC sp_addrolemember N'db_backupoperator', N'ruben'{enter}GO{enter}EXEC sp_addrolemember N'db_datareader', N'ruben'{enter}GO{enter}EXEC sp_addrolemember N'db_datawriter', N'ruben'{enter}GO{enter}EXEC sp_addrolemember N'db_ddladmin', N'ruben'{enter}GO{enter}EXEC sp_addrolemember N'db_owner', N'ruben'{enter}GO{enter}EXEC sp_addrolemember N'db_securityadmin', N'ruben'{enter}GO{enter}CREATE USER [silvia] FOR LOGIN [silvia]{enter}GO{enter}EXEC sp_addrolemember N'db_accessadmin', N'silvia'{enter}GO{enter}EXEC sp_addrolemember N'db_backupoperator', N'silvia'{enter}GO{enter}EXEC sp_addrolemember N'db_datareader', N'silvia'{enter}GO{enter}EXEC sp_addrolemember N'db_datawriter', N'silvia'{enter}GO{enter}EXEC sp_addrolemember N'db_ddladmin', N'silvia'{enter}GO{enter}EXEC sp_addrolemember N'db_owner', N'silvia'{enter}GO{enter}EXEC sp_addrolemember N'db_securityadmin', N'silvia'{enter}GO{enter}{F5}
	}	

	if (Seleccion = "[Gesdralia] Backup")
	{
		InputBox, NOMBACKUP, Nombre del Backup,Introduce el Nombre del Backup a realizar sin .BAK
		
		If StrLen(NOMBACKUP) < 1
		{
			MsgBox, 0, Parametros No Validos, PARAMETROS NO VALIDOS
		}else{
			Send USE [master]{enter}GO{enter}BACKUP DATABASE [SC_GESDRALIA] TO DISK = N'E:\PROYECTOS\LABORATORIOS ALCALA FARMA\%NOMBACKUP%.BAK' WITH NOFORMAT, INIT, NAME = N'SC_GESDRALIA-Copia de seguridad completa', SKIP, NOREWIND, NOUNLOAD, STATS = 10{enter}{F5}
		}
	}

	if (Seleccion = "[Gesdralia] Restaurar")
	{
		InputBox, NOMBACKUP, Nombre del Backup,Introduce el Nombre del Backup a restaurar sin .BAK

		If StrLen(NOMBACKUP) < 1
		{
			MsgBox, 0, Parametros No Validos, PARAMETROS NO VALIDOS
		}else{
			Send -- Kill all processes connected to a database.{enter}USE [master];{enter}{enter}declare @DatabaseName varchar(50);{enter}{enter}declare @Spid varchar(20);{enter}{enter}declare @Command varchar(50);{enter}{enter}set @DatabaseName = 'SC_GESDRALIA';{enter}{enter}print 'This query''s SPID: ' {+} convert(varchar, @@spid);{enter}{enter}-- Select all SPIDs except the SPID for this connection{enter}declare SpidCursor cursor for{enter}select spid from master.dbo.sysprocesses{enter}where dbid = db_id(@DatabaseName){enter}and spid {!}{=} @@spid{enter}{enter}open SpidCursor{enter}{enter}fetch next from SpidCursor into @spid{enter}{enter}while @@fetch_status = 0{enter}begin{enter}print 'Killing process: ' {+} rtrim(@spid);{enter}set @Command = 'kill ' {+} rtrim(@spid) {+} ';';{enter}print @Command;{enter}execute(@Command);{enter}fetch next from SpidCursor into @spid{enter}end{enter}{enter}close SpidCursor{enter}deallocate SpidCursor{enter}{enter}GO{enter}RESTORE DATABASE [SC_GESDRALIA] FROM DISK = N'E:\BACKUPS_BD_PRODU\GESDRALIA\%NOMBACKUP%.BAK' WITH FILE = 1, MOVE N'SC_GESDRALIA_dat' TO N'E:\BASES DE DATOS\SC_GESDRALIA.mdf',  MOVE N'SC_GESDRALIA_log' TO N'E:\BASES DE DATOS\SC_GESDRALIA.ldf', NOUNLOAD, REPLACE, STATS = 10{enter}{F5}
		}
	}

;	if (Seleccion = "[Gesdralia] Restaurar+Silvia")
;	{
;		InputBox, NOMBACKUP, Nombre del Backup,Introduce el Nombre del Backup a restaurar sin .BAK
;
;		If StrLen(NOMBACKUP) < 1
;		{
;			MsgBox, 0, Parametros No Validos, PARAMETROS NO VALIDOS
;		}else{
;			Send -- Kill all processes connected to a database.{enter}USE [master];{enter}{enter}declare @DatabaseName varchar(50);{enter}{enter}declare @Spid varchar(20);{enter}{enter}declare @Command varchar(50);{enter}{enter}set @DatabaseName = 'SC_GESDRALIA';{enter}{enter}print 'This query''s SPID: ' {+} convert(varchar, @@spid);{enter}{enter}-- Select all SPIDs except the SPID for this connection{enter}declare SpidCursor cursor for{enter}select spid from master.dbo.sysprocesses{enter}where dbid = db_id(@DatabaseName){enter}and spid {!}{=} @@spid{enter}{enter}open SpidCursor{enter}{enter}fetch next from SpidCursor into @spid{enter}{enter}while @@fetch_status = 0{enter}begin{enter}print 'Killing process: ' {+} rtrim(@spid);{enter}set @Command = 'kill ' {+} rtrim(@spid) {+} ';';{enter}print @Command;{enter}execute(@Command);{enter}fetch next from SpidCursor into @spid{enter}end{enter}{enter}close SpidCursor{enter}deallocate SpidCursor{enter}{enter}GO{enter}RESTORE DATABASE [SC_GESDRALIA] FROM DISK = N'E:\PROYECTOS\LABORATORIOS ALCALA FARMA\%NOMBACKUP%.BAK' WITH FILE = 1, MOVE N'SC_GESDRALIA_dat' TO N'E:\BASES DE DATOS\SC_GESDRALIA.mdf',  MOVE N'SC_GESDRALIA_log' TO N'E:\BASES DE DATOS\SC_GESDRALIA.ldf', NOUNLOAD, REPLACE, STATS = 10{enter}GO{enter}USE SC_GESDRALIA{enter}CREATE USER [silvia] FOR LOGIN [silvia]{enter}GO{enter}EXEC sp_addrolemember N'db_accessadmin', N'silvia'{enter}GO{enter}EXEC sp_addrolemember N'db_backupoperator', N'silvia'{enter}GO{enter}EXEC sp_addrolemember N'db_datareader', N'silvia'{enter}GO{enter}EXEC sp_addrolemember N'db_datawriter', N'silvia'{enter}GO{enter}EXEC sp_addrolemember N'db_ddladmin', N'silvia'{enter}GO{enter}EXEC sp_addrolemember N'db_owner', N'silvia'{enter}GO{enter}EXEC sp_addrolemember N'db_securityadmin', N'silvia'{enter}GO{enter}{F5}
;		}
;	}
	
return

; -------------------------------------------------------------------------------------------------------------------------------
; FIN SQL SERVER MANAGEMENT STUDIO: MENU
; -------------------------------------------------------------------------------------------------------------------------------

; ----------------------------------------------------------------------------------
; El menú se puede incluso asignar a ventanas específicas aunque se defina arriba!!!
; ----------------------------------------------------------------------------------

MButton::Menu, MyMenu, Show  ; Botón del medio del ratón

; ------------------
; Remapeo de teclas
; ------------------
; Asignar tecla Bloq.Despl la funcionalidad de "Copiar" es decir, presionar Ctrl+C

SC046:: ;Este es el codigo para la tecla "Bloq.Despl" 
	Send ^c 
	return 

; Asignar tecla "Pausa" la funcionalidad de "Pegar" es decir, presionar Ctrl+V

SC045:: ;Este es el codigo para la tecla "Pausa" 
	Send ^v 
	return

#IfWinActive ahk_class WindowsForms10.Window.8.app.0.378734a ;Teclas rápidas específicas del Paint .NET
	#F1::Send ^s
	#F2::Send {Enter}
	#F3::Send ^w

	#F12::
		InputBox, VECES, Veces a hacer,Introduce el numero de imagenes
		Loop, %VECES%
		{
		    Send ^s
		    Sleep, 380
		    Send {Enter}
		    Sleep, 380
		    Send ^w
		    Sleep, 380
		}
		return

#IfWinActive ; Cerramos las teclas rápidas específicas para Paint.NET

; django-admin.py startproject mysite ; Crear el projecto de Django
; python manage.py runserver 8080 ; Arrancar servidor de desarrollo de Django en un puerto específico

; ----------------------
; Teclas de Función
; ----------------------

#F1::
	MsgBox,4,Navegador de Internet, SI = [Internet Explorer] - NO = [Mozilla Firefox]
	IfMsgBox, Yes
	{
	if not WinExist( "ahk_class IEFrame" )
		Run iexplore.exe
	WinActivate
	Return
	}else{
	if not WinExist( "ahk_class MozillaWindowClass" )
		Run %A_ProgramFiles%\Mozilla Firefox\firefox.exe
	WinActivate
	Return
	}

; !F1:: Run outlook.exe

#F2::
	MsgBox,4,Entornos Desarrollo, SI = [Notepad++] - NO = [VS2010]
	IfMsgBox, Yes
	{
	if not WinExist( "ahk_class Notepad++" )
		Run %A_ProgramFiles%\notepad++\notepad++.exe
	WinActivate
	Return
	}else{
		if not WinExist( "ahk_class HwndWrapper[DefaultDomain;;dabe6bbf-b770-41bc-b00f-333dcb19eff1]" )
			Run %A_ProgramFiles%\Microsoft Visual Studio 10.0\Common7\IDE\devenv.exe
		WinActivate
		Return
	}

!F2:: 
	MsgBox,4,Gestor Base de Datos, SI = [SQL Server Management Studio] - NO = [MySQL Workbench CE]
	IfMsgBox, Yes
	{
	if not WinExist( "Microsoft SQL Server Management Studio ahk_class wndclass_desked_gsk")
			Run %A_ProgramFiles%\Microsoft SQL Server\90\Tools\Binn\VSShell\Common7\IDE\SqlWb.exe
		WinActivate
		Return
	}else{
		if not WinExist( "ahk_class WindowsForms10.Window.8.app.0.1a0e24_r14_ad1")
			Run %A_ProgramFiles%\MySQL\MySQL Workbench 5.2 CE\MySQLWorkbench.exe
		WinActivate
		Return
	}

#F3:: 
	MsgBox,4,Utilidades, SI = [RDC Manager] - NO = [VirtualBox]
	IfMsgBox, Yes
	{
	if not WinExist( "ahk_class WindowsForms10.Window.8.app.0.3ce0bb8" )
		Run %A_ProgramFiles%\Remote Desktop Connection Manager\RDCMan.exe
	WinActivate
	Return
	}else{
		if not WinExist( "Oracle VM VirtualBox Administrador ahk_class QWidget" )
			Run %A_ProgramFiles%\Oracle\VirtualBox\VirtualBox.exe
		WinActivate
		Return
	}

#F4::
	; --------------------------
	; ORACLE
	; --------------------------
	Run sqlplus fiteqa_visitas/13wk68f4@192.168.0.238/orcl
	Return
	

; ------------------
; BEYOND COMPARE
; ------------------

#F12:: 
	Run %A_ProgramFiles%\Beyond Compare 3\BCompare.exe /silent @C:\bc_repositoriopersonal.txt
	Return

; -----------------------------
; Combinaciones Microsoft Word
; -----------------------------

#IfWinActive ahk_class OpusApp ; Remapear el F3 (Buscar Siguiente a la combinación de SHIFT+F4 de Word)
	F3::+F4
#IfWinActive ; Cerramos las teclas específicas de Word

; ------------------------------------------------------------------------------------------
; Combinaciones específicas para Notepad++. Importante coger bien la ahk_class con el spy :)
; ------------------------------------------------------------------------------------------

#IfWinActive ahk_class Notepad++ ;Teclas rápidas específicas del Notepad++

	F10::Send ^+U ; Convertir a mayusculas
	F12::Send ^+P ; Macros Con F12 en vez de pantalla completa

	:*:ndate::
		FormatTime, CurrentDateTime,, d/M/yyyy
		SendInput %CurrentDateTime%{Enter}
		Return

	; --------------------------------
	; HTML Hotstrings
	; --------------------------------

	:O:h1::<h1></h1>{Left 5}
	:O:h2::<h2></h2>{Left 5}
	:O:h3::<h3></h3>{Left 5}
	:O:h4::<h4></h4>{Left 5}
	:O:h5::<h5></h5>{Left 5}
	:O:h6::<h6></h6>{Left 5}
	; :O:i::<i></i>{Left 4}
	; :O:b::<b></b>{Left 4}
	; :O:p::<p></p>{Left 4}
	; :O:a::<a href=""></a>{Left 4}
	:O:div::<div id="" class=""></div>{Left 6}
	:O:img::<img src="" alt="" />{Left 11}
	:O:ul::<ul>{Enter}{Tab}<li>{Enter}{Tab}{Enter}{Backspace}</li>{Enter}</ul>{Left 6}{Delete}{Up}{Up}{End}
	:O:ul::<ol>{Enter}{Tab}<li>{Enter}{Tab}{Enter}{Backspace}</li>{Enter}</ol>{Left 6}{Delete}{Up}{Up}{End}
	:O:li::<li></li>{Left 5}
	:O:table::<table>{Enter}{Tab}<tr>{Enter}{Tab}<td></td>{Enter}{Backspace}</tr>{Enter}{Backspace}</table>{Up}{Up}{Right 4}
	:O:tr::<tr>{Enter}{Tab}<td></td>{Enter}{Backspace}</tr>{Up}{Right 3}
	:O:td::<td></td>{Left 4}
	:O:formp::<form name="formname" method="post" action="">{Enter}{Tab}{Enter}{Backspace}</form>{Up}
	:O:formg::<form name="formname" method="get" action="">{Enter}{Tab}{Enter}{Backspace}</form>{Up}
	:O:label::<label for=""></label>{Left 8}
	:O:input::<input type="" id="" name="" />{Left 4}
	:O:button::<button></button>{Left 9}
	:O:style::<style type="text/css"></style>{Left 8}
	:O:css::<link type="text/css" rel="stylesheet" media="screen" href="" >{Left 3}
	:O:js::<script type='text/javascript'></script>{Left 9}
	:O:meta::<meta http-equiv="Content-Type" content="text/html;" >
	:O:ico::<link type="image/x-icon" rel="shortcut icon" href="" >{Left 3}
	:O:body::<body>{Enter}{Tab}{Enter}{Backspace}</body>{Up}
	:O:title::<title>{Enter}{Tab}{Enter}{Backspace}</title>{Up}
	:O:head::<head>{Enter}{Tab}{Enter}{Backspace}</head>{Up}
	:O:html::<html>{Enter}{Tab}<head>{Enter}{Tab}{Enter}{Backspace}</head>{Enter}<title>{Enter}{Tab}{Enter}{Backspace}</title>{Enter}{Backspace}</html>{Up}{Up}
	:O:dummy::Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec sed pede. Etiam ante purus, consectetuer id, bibendum fermentum, accumsan sed, nunc. Vestibulum dignissim, leo vel aliquam dignissim, nibh ligula cursus tortor, in vulputate neque lorem eu sem. Morbi nibh nulla, tempus ac, varius sed, porta sit amet, nulla. Proin laoreet. Phasellus quis tortor eu augue rutrum posuere. Suspendisse quis dolor vitae nisl fermentum rutrum. Etiam mi mauris, imperdiet sed, volutpat ac, ornare in, urna. Sed laoreet turpis nec sem. Nam consectetuer, tellus rhoncus lacinia euismod, augue tellus consectetuer sem, a molestie tellus nisi a dolor. Nunc tempus ante sit amet arcu. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam vitae quam. Integer consectetuer lacinia ligula. Praesent adipiscing viverra libero.
		
#IfWinActive ; Cerramos las teclas rápidas /combinaciones específicas para Notepad++

; --------------------------------
; SQL Server Management Studio
; --------------------------------

#IfWinActive Microsoft SQL Server Management Studio ahk_class wndclass_desked_gsk ;Teclas rápidas específicas del SQL Server Management Studio

MButton::Menu, mSqlServer, Show  ; Botón del medio del ratón

::form::FROM 

F3:: Send ^3 ; CTRL + 3 ES pasar a SQL cuando abrimos Tabla

F6:: Send ^R ; No funciona todavia

::SSF::Send SELECT * FROM{Space}

:*:fiso::
		FormatTime, CurrentDateTime,, yyyyMMdd
		SendInput '%CurrentDateTime%'{Space}
		Return

; -----------------------
; FITNESS KING: PRO-SQL
; -----------------------

; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

::gecontrato::{-}{-} GESCENDEP: ESTADOS DEL CONTRATO{enter}{enter}USE SC_GESCENDEP{enter}GO{enter}{enter}SELECT ec.*{enter}FROM __EstadosContrato ec, _Centros c{enter}WHERE ec.ID_Empresa = c.ID_Empresa{enter}AND c.ID_Centro = 
::gecobro::{-}{-} GESCENDEP: ESTADOS DEL COBRO{enter}{enter}USE SC_GESCENDEP{enter}GO{enter}{enter}SELECT ec.*{enter}FROM __EstadosCobro ec, _Centros c{enter}WHERE ec.ID_Empresa = c.ID_Empresa{enter}AND c.ID_Centro = 
::gecliente::{-}{-} GESCENDEP: ESTADOS DEL CLIENTE{enter}{enter}USE SC_GESCENDEP{enter}GO{enter}{enter}SELECT ec.*{enter}FROM __EstadosCliente ec, _Centros c{enter}WHERE ec.ID_Empresa = c.ID_Empresa{enter}AND c.ID_Centro = 

; -------------------------------------------------------------------
; CONSULTAS PARA VERIFICACIONES DE CLIENTES
; -------------------------------------------------------------------

::geidcliente::{-}{-} GESCENDEP: PERTENENCIA DEL CLIENTE AL CENTRO{enter}{enter}USE SC_GESCENDEP{enter}GO{enter}SELECT ID_Cliente, Cod_Cliente, Descripcion As Centro{enter}FROM Clientes cl, _Centros c{enter}WHERE cl.ID_Empresa = c.ID_Empresa{enter}AND ID_Cliente = 
::gecodcliente::{-}{-} GESCENDEP: PERTENENCIA DEL CLIENTE AL CENTRO{enter}{enter}USE SC_GESCENDEP{enter}GO{enter}SELECT ID_Cliente, Cod_Cliente, Descripcion As Centro{enter}FROM Clientes cl, _Centros c{enter}WHERE cl.ID_Empresa = c.ID_Empresa{enter}AND Cod_Cliente = ''

; --------------------------------------------------------
; DE MOMENTO NO SE USA (HISTÓRICO DOCUMENTACIÓN)
; --------------------------------------------------------
;	MsgBox,4,PRO-SQL FITNESS KING 3 - CONSULTA DE COBROS DE SOCIO POR CENTRO, SI = [Tengo el ID_Cliente] - NO = [Tengo el Cod_Cliente]
;	IfMsgBox, Yes
;	{
;		InputBox, IDCLIENTE, Id Del Socio,Introduce ID Del Socio
;		InputBox, IDCOBRO, Id Del Cobro,Introduce ID Del Cobro
;		InputBox, IDCENTRO, Id Del Centro,Introduce ID Del Centro
;		Send {enter}{-}{-} CONSULTA DE COBROS DE SOCIO POR CENTRO{enter}USE SC_GESCENDEP{enter}GO{enter}SELECT c.ID_Cliente, c.Cod_Cliente, cob.* {enter}FROM Contratos co, Clientes c, Cobros cob{enter}WHERE c.ID_Cliente = co.ID_Cliente {enter}AND co.ID_Contrato = cob.ID_Contrato{enter}AND c.ID_Cliente = %IDCLIENTE%{enter}AND cob.ID_Cobro = %IDCOBRO%{enter}AND co.ID_Centro = %IDCENTRO%{enter}ORDER BY cob.ID_Cobro DESC
;		Send {F5}
;		Return
;	}else{
;		InputBox, CODCLIENTE, Id Del Socio,Introduce Codigo Del Socio
;		InputBox, IDCOBRO, Id Del Cobro,Introduce ID Del Cobro
;		InputBox, IDCENTRO, Id Del Centro,Introduce ID Del Centro
;		Send {enter}{-}{-} CONSULTA DE COBROS DE SOCIO POR CENTRO{enter}USE SC_GESCENDEP{enter}GO{enter}SELECT c.ID_Cliente, c.Cod_Cliente, cob.* {enter}FROM Contratos co, Clientes c, Cobros cob{enter}WHERE c.ID_Cliente = co.ID_Cliente {enter}AND co.ID_Contrato = cob.ID_Contrato{enter}AND c.Cod_Cliente = '%CODCLIENTE%'{enter}AND cob.ID_Cobro = %IDCOBRO%{enter}AND co.ID_Centro = %IDCENTRO%{enter}ORDER BY cob.ID_Cobro DESC
;		Send {F5}
;		Return
;	}

#IfWinActive ; Cerramos las teclas rápidas específicas de SQL Server Management Studio

; ---------------------------
; Correcciones ortográficas
; ---------------------------

; --------
; Comunes
; --------

::HTLM::HTML
::htlm::html
::apel::apple
::fiteca::Fiteqa
::fiteka::Fiteqa
::fqt::Fiteqa
::. hay::. Hay
::aprece::parece
::aprovchando::aprovechando
::aprovechand::aprovechando
::asbtracto::abstracto
::asbtraco::abstracto
::abstraco::abstracto
::asepcto::aspecto
::asi::así
::asignaión::asignación
::atículo::artículo
::androit::android
::brev::breve
::brve::breve
::btella::botella
::búsqeuda::búsqueda
::cacnción::canción
::cacniones::canciones
::calculo::cálculo
::camiar::cambiar
::cancioens::canciones
::dfiniendo::definiendo
::dia::día
::enotnces::entonces
::enrgía::energía
::entnoces::entonces
::entoce::entonces
::entoces::entonces
::entonce::entonces
::fiseta::fiesta
::imporante::importante
::importane::importante
::incluiods::incluídos
::incompredido::incomprendido
::la la::la
::lapiz::lápiz
::las las::las
::llmada::llamada
::lo lo::lo
::lorgo::logro
::los los::los
::ltra::letra
::manú::menú
::maquina::máquina
::mas::más
::preferentemetne::preferentemente
::preferncia::preferencia
::preferncias::preferencias
::prefiria::prefería
::pregutnado::preguntado
::pregutnale::preguntale
::pregutnar::preguntar
::princpio::principio
::priodo::período
::prmeros::primeros
::probablente::probablemente
::prodccuion::producción
::producion::producción
::productiividad::productividad
::produto::producto
::proemsas::promesas
::promixa::próxima
::proque::porque
::públca::pública
::transformacion::transformación
::transformción::transformación
::vovler::volver
::vurro::burro
::helath::health

; ---------------------------------------------
; CORREGIR MAYÚSCULA AL COMIENZO DE LA ORACIÓN
; ---------------------------------------------

::. a::. A
::. e::. E
::. o::. O
::. u::. U
::. y::. Y
::. que::. Que
::. qué::. Qué
::. como::. Como
::. cómo::. Cómo
::. cual::. Cual
::. cuál::. Cuál
::. por que::. Por que
::. por qué::. Por qué
::. donde::. Donde
::. dónde::. Dónde
::. quien::. Quien
::. quién::. Quién
::. cuando::. Cuando
::. cuándo::. Cuándo
::.Por::. Por
::.por::. Por

; ---------------
; Cadenas rápidas
; ---------------

:*:jc@::juancarlos@starclas.com
:*:vm@::victor.martinez@starclass.es
:*:javi@::javier.perez@starclass.es

; --------------------------------------------------------------
; Buscadores: Uso copiamos con control+c lo que queremos buscar.
; --------------------------------------------------------------

#g:: ; -> Win+g = GOOGLE
	Run http://www.google.com/search?q=%clipboard%
Return

#b:: ; -> Win+b = BING
	Run http://www.bing.com/search?q=%clipboard%
Return
