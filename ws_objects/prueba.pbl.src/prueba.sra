$PBExportHeader$prueba.sra
$PBExportComments$Generated Application Object
forward
global type prueba from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global variables
 


end variables

global type prueba from application
string appname = "prueba"
string displayname = "Pruebas"
string themepath = "C:\Users\mpalacios\Desktop\pb 2019 example\theme190"
string themename = "Flat Design Blue"
boolean nativepdfvalid = false
boolean nativepdfincludecustomfont = false
string nativepdfappname = ""
long richtextedittype = 2
long richtexteditx64type = 3
long richtexteditversion = 1
string richtexteditkey = ""
string appicon = ""
string appruntimeversion = "22.0.0.1900"
end type
global prueba prueba

type variables
Datetime          			idt_fecha_hoy
end variables

on prueba.create
appname="prueba"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on prueba.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;// //ls_nombre Ma Elena González      Copyright (C) 			11-sep-2009	
////Lenguaje:			Power Builder Enterprise/32 Versión 6.5
////Sistema:				Sistema Integral de Administración de Portafolios
////Responsables:		Ma Elena González Alavez 
////Descripción:			Apertura del Sistema
////Observaciones:
// 
//String 		ls_command_line, ls_autocommit, ls_password, ls_user_valida, ls_sql
//Long 			li_pos, li_pos2, li_pos3, li_pos4, li_pos5, li_pos6, ll_externo, li_pos7
//Datetime 	ldt_fecha
//
//ls_command_line = CommandParm()
//
////ls_command_line  = "SY_DES1/DELFIN/2/0"
////se separan los dos parametros, vienen divididos por /
////LLEGAN EN MINUSCULAS, LAS DOS VARIABLES
//
//li_pos   = Pos(ls_command_line,"/")
//li_pos2 = Pos(ls_command_line,"/",li_pos + 1)
//li_pos3 = Pos(ls_command_line,"/",li_pos2 + 1)
//li_pos4 = Pos(ls_command_line,"/",li_pos3 + 1)
//li_pos5 = Pos(ls_command_line,"/",li_pos4 + 1)
//li_pos6 = Pos(ls_command_line,"/",li_pos5 + 1)
//li_pos7 = Pos(ls_command_line,"/",li_pos6 + 1)
//
//gs_usuario  			= Mid(ls_command_line,1,li_pos - 1)
//ls_password 		= Mid(ls_command_line, li_pos + 1,(li_pos2 - li_pos) - 1  )
//gi_tipo_usuario 	= Integer(Mid(ls_command_line,li_pos2 + 1,1))
//gs_rol_usuario 		= String(Mid(ls_command_line,li_pos3 + 1,1))
//gcs_titulo 			= Mid(ls_command_line,li_pos4 + 1,(li_pos5 - li_pos4) - 1)
//gcs_ejecutable 		= String(Mid(ls_command_line,li_pos5 + 1,(li_pos6 - li_pos5) - 1))
// 
//
////gcs_basededatos = Mid(ls_command_line,li_pos6 + 1)
//gcs_basededatos 	= String(Mid(ls_command_line, li_pos6 + 1, (li_pos7 - li_pos6) - 1))
//gi_modulo 			= Integer(Mid(ls_command_line,li_pos7 + 1))
//
//If gi_modulo = 2 then
//	GCS_SISTEMA 	= "MODULO DE CLIENTES"
//ElseIf gi_modulo = 8 then
//	GCS_SISTEMA 	= "MODULO WEB"
//End if
//
////Bandera para cerrar ventanas en la consulta de historicos
////gi_cierra = 1
//
//
///*gi_modulo    		(2 - Clientes		8 - Web)         Apagar para ejecutable*/
//gi_modulo			= 2
//
///////*++++++++++++++++++++++++EJECUTABLES++++++++++++++++++++++++++++++++*/
/////*&&&&&&**Prender "A" o "B", segun sea el caso**&&&&*/
////
/////////*A.*************PRODUCCIÓN PESOS, USD, USD2 Y CONSOL****************/
///*##DEBE DE APUNTA A ICONOS E IMAGENES DE COLUMBUS##*/
////sqlca.dbms 			= "O10 Oracle10g (10.1.0)"
////sqlca.database 		="siapii" 
////sqlca.servername 	= "192.168.16.14:1531/PROD" 
////ls_autocommit		= "1"
////sqlca.DBParm 		= "PBCatalogOwner='siapii'" 
////
///*****************************************************************A*/
//
///////*B.***********************PRODUCCIÓN ASESORES (AUTEM)********************/
///*##DEBE DE APUNTA A ICONOS E IMAGENES DE AUTEM##*/
////sqlca.dbms 			= "O10 Oracle10g (10.1.0)"
////sqlca.database 		="asesores"  
////sqlca.servername 	= "192.168.16.14:1531/ASESORES"
////ls_autocommit		= "1"
////sqlca.DBParm 		= "PBCatalogOwner='asesor'"
///////**********************************************************************B**/
//
///*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
////
///////*---------------------------------------------DESARROLLO--------------------------------------------------*/
///////**Comentar este bloque cuanado se haga exe, bloque solo para DESARROLLO**//
/////* Para pruebas de desarrollo y para generar el ejecutable, comentar esto:	*/
//
////gs_usuario 				= 'SY_MPG'
////ls_password 			= 'sy_mpg'
////gi_tipo_usuario			= 2
////gs_rol_usuario			= '0'  
////  
////gcs_titulo			= 'SIAPII-ORA DESARROLLO'	  
////gcs_ejecutable 		= 'ASESOR'  /*SIAPII,SIAPII_USD,SIAPII_USD2, SIAPII_CONSOL, ASESOR_USD*/   
////gcs_basededatos 	= 'SIAPII-ORA*DESA'	 
////
/////*Parámetros de conexión a la base de datos (DESARROLLO)*/
////sqlca.dbms 			= "O10 Oracle10g (10.1.0)"
////sqlca.database 		= "asesor" /*"asesor"*/
//////sqlca.servername 	= "192.168.16.12:1531/DESA2" /*DESA2,DESA3,DESA4,DESA5,TEST*/
////////sqlca.servername 	= "192.168.16.14:1531/PROD" 
////sqlca.servername 	= "192.168.16.14:1531/ASESORES" 
////ls_autocommit		= "1"
//// sqlca.DBParm 		= "PBCatalogOwner='asesor'"  /*"asesor"*/
////////////*D----------------------------------------------------------------------------------------------------------------D*/
//gs_usuario 				= 'SY_EZC'
//ls_password 			= 'sy_ezc'
//gi_tipo_usuario			= 2
//gs_rol_usuario			= '0'  
//  
//gcs_titulo			= 'SIAPII-ORA DESARROLLO'	  
//gcs_ejecutable 		= 'SIAPII'  /*SIAPII,SIAPII_USD,SIAPII_USD2, SIAPII_CONSOL, ASESOR_USD*/   
//gcs_basededatos 	= 'SIAPII-ORA*DESA'	 
//
///*Parámetros de conexión a la base de datos (DESARROLLO)*/
//sqlca.dbms 			= "O10 Oracle10g (10.1.0)"
//sqlca.database 		= "siapii" /*"asesor"*/
//sqlca.servername 	= "192.168.16.12:1531/DESA3" /*DESA2,DESA3,DESA4,DESA5,TEST*/
//////sqlca.servername 	= "192.168.16.14:1531/PROD" 
////sqlca.servername 	=  "192.168.16.14:1531/PROD" 
//ls_autocommit		= "1"
// sqlca.DBParm 		= "PBCatalogOwner='siapii'"  /*"asesor"*/
////
//// 
// 
//
//sqlca.logid		= TRIM(gs_usuario)
//sqlca.logpass	= TRIM(ls_password)
//
//If ls_autocommit = "1" then
//	sqlca.autocommit = true
//else
//	sqlca.autocommit = false
//end if
//
//connect using (sqlca);
//IF SQLCA.SQLCODE <> 0 THEN 
//	MESSAGEBOX("AVISO CONNECT", SQLCA.SQLERRTEXT)
//END IF
//
////Se modifica la sesión del usuario para cambiar al esquema de la base que eligió
//ls_sql = "ALTER SESSION SET CURRENT_SCHEMA = " + GCS_EJECUTABLE 
//execute immediate :ls_sql using sqlca;
//IF SQLCA.SQLCODE <> 0 THEN 
//	MESSAGEBOX("AVISO ALTER SESSION", SQLCA.SQLERRTEXT)
//END IF
//
//gs_usuario 			= (gs_usuario)
//gs_seg_logid   		= (gs_usuario)
//gs_seg_logpass 	= (ls_password)
//
////sqlca.sps_fecha(ref idt_fecha_hoy)
//gd_fecha_sistema 	= date(idt_fecha_hoy)
//
////obtiene la ruta de ejecutables
//SELECT PARAMETRO.VALOR_PARAMETRO1  
//INTO :GCS_RUTA_EJECUTABLE  
//FROM PARAMETRO  
//WHERE ( PARAMETRO.ID_TIPO_PARAMETRO 	= 10 )
//AND ( PARAMETRO.ID_PARAMETRO 				= 1 ) ;
//			
////Obtiene base de datos historia
//SELECT PARAMETRO.VALOR_PARAMETRO1  
//INTO :gcs_historico_db
//FROM PARAMETRO  
//WHERE ( PARAMETRO.ID_TIPO_PARAMETRO 	= 11 )
//AND ( PARAMETRO.ID_PARAMETRO 				= 7 ) ;
//
//ls_user_valida  = upper(gs_seg_logid)
//
//SELECT NVL(count(*),0)
//INTO :ll_externo
//FROM PARAMETRO
//WHERE ID_TIPO_PARAMETRO 		= 26
//AND UPPER(VALOR_PARAMETRO1) = :gs_seg_logid;
//
//if ll_externo > 0 then
//	select valor_parametro1
//	into :GCS_RUTA_EJECUTABLE
//	from parametro 
//	where id_tipo_parametro 	= 10 
//	and id_parametro 				= 18;
//end if
//
////gf_temporales_globales_modulo()
////Open(w_tipo) //Consume api
////w_principal.title = w_principal.title + " ( " + "Usuario: " +  gs_usuario + " , Base de Datos: " +gcs_basededatos+")"
//

Open(w_principal) //RibbonBar
end event

