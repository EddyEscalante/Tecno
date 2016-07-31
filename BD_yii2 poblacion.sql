--Verificando la existencia de la Base a crear
if db_id('yii2') IS NOT NULL
	BEGIN
		USE master
		DROP DATABASE yii2
	END	
GO
--Creando la Base de datos 
CREATE DATABASE yii2
USE yii2
GO
----------------------------------------------------------------------------------
--------------------------------P O B L A C I O N---------------------------------------
----------------------------------------------------------------------------------

INSERT INTO USUARIO VALUES (7852166,'Eddy ','Escalante',73650500,1);
INSERT INTO USUARIO VALUES (123,'Ale ','Molloja',7777777,1);



INSERT INTO TIPO VALUES (1,'Administrador','Jefe de la Empresa',1);
INSERT INTO TIPO VALUES (2,'Vendedor','Empleado de la Empresa',1);


INSERT INTO TIPOUSUARIO VALUES (7852166,1);
INSERT INTO TIPOUSUARIO VALUES (7852166,2);
INSERT INTO TIPOUSUARIO VALUES (123,2);

INSERT INTO CASOUSO VALUES (1,'Gestionar TipoVideo',1);
INSERT INTO CASOUSO VALUES (2,'Gestionar Video',1);
INSERT INTO CASOUSO VALUES (3,'Gestionar Usuario',1);
INSERT INTO CASOUSO VALUES (4,'Gestionar TipoUsuario',1);
INSERT INTO CASOUSO VALUES (5,'Asignar Privilegios',1);
INSERT INTO CASOUSO VALUES (6,'Registrar Ficha de Prestamo',1);


INSERT INTO CUTIPO VALUES (1,1,1);
INSERT INTO CUTIPO VALUES (1,2,1);
INSERT INTO CUTIPO VALUES (1,3,1);
INSERT INTO CUTIPO VALUES (1,4,1);
INSERT INTO CUTIPO VALUES (1,5,1);
INSERT INTO CUTIPO VALUES (2,2,1);
INSERT INTO CUTIPO VALUES (2,5,1);


INSERT INTO MODULO VALUES (1,'Administrador',1);
INSERT INTO MODULO VALUES (2,'Parametros',1);
INSERT INTO MODULO VALUES (3,'Ventas',1);

INSERT INTO CU_MODULO VALUES (4,1,1);
INSERT INTO CU_MODULO VALUES (5,1,2);

INSERT INTO CU_MODULO VALUES (1,2,1);
INSERT INTO CU_MODULO VALUES (2,2,2);
INSERT INTO CU_MODULO VALUES (3,2,3);

INSERT INTO CU_MODULO VALUES (6,3,1);

INSERT INTO TIPOVIDEO VALUES (1,'Anime','Caricaturas de infantes',1);
INSERT INTO TIPOVIDEO VALUES (2,'Pelicula','Cortrometrajes de la vida',1);
INSERT INTO TIPOVIDEO VALUES (3,'Series','Suceso de anecdotas',1);

INSERT INTO VIDEO VALUES (1,'Rambo',2,15,1,2);
INSERT INTO VIDEO VALUES (2,'Rambo2',2,15,1,2);

INSERT INTO FICHAPRESTAMO VALUES (1,7852166,'Eddy','Cerca',5,'12/05/2016');

INSERT INTO DETALLE VALUES (1,1,2);
INSERT INTO DETALLE VALUES (1,2,2);
