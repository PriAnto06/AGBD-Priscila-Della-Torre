CREATE TABLE "Materias" (
    "Materias_id" INTEGER NOT NULL,
	"Matematica_id"	INTEGER NOT NULL,
	"Ingles_id"	INTEGER NOT NULL,
	"Quimica_id"	INTEGER NOT NULL,
	"ApoyoM_id"	INTEGER NOT NULL,
	FOREIGN KEY("Matematica_id") REFERENCES "Matematica"("Matematica_id"),
	FOREIGN KEY("Ingles_id") REFERENCES "Ingles"("Ingles_id"),
	FOREIGN KEY("Quimica_id") REFERENCES "Quimica"("Quimica_id"),
	FOREIGN KEY("ApoyoM_id") REFERENCES "ApoyoM"("ApoyoM_id"),
	PRIMARY KEY("Materias_id" AUTOINCREMENT)
);

CREATE TABLE [Matematica] (
	[Matematica]	INTEGER NOT NULL,
	[Apuntes]	VARCHAR(60) NOT NULL,
	[Profesor]	VARCHAR(60) NOT NULL,
	PRIMARY KEY([Matematica] AUTOINCREMENT)
);


CREATE TABLE [Ingles] (
	[Ingles_id]	INTEGER NOT NULL,
	[Apuntes]	VARCHAR(60) NOT NULL,
	[Profesor]	VARCHAR(60) NOT NULL,
	PRIMARY KEY([[Ingles_id]] AUTOINCREMENT)
);

CREATE TABLE [Quimica] (
	[Quimica_id]	INTEGER NOT NULL,
	[Apuntes]	VARCHAR(60) NOT NULL,
	[Profesor]	VARCHAR(60) NOT NULL,
	PRIMARY KEY([[Quimica_id]] AUTOINCREMENT)
);

CREATE TABLE [ApoyoM] (
	[ApoyoM_id]	INTEGER NOT NULL,
	[Apuntes]	VARCHAR(60) NOT NULL,
	[Profesor]	VARCHAR(60) NOT NULL,
	PRIMARY KEY([ApoyoM_id] AUTOINCREMENT)
);

CREATE TABLE "Taller" (
    "Taller_id" INTEGER NOT NULL,
	"ProgramacionWeb_id"	INTEGER NOT NULL,
	"AGBD_id"	INTEGER NOT NULL,
	"AED_id"	INTEGER NOT NULL,
	"TAP_id"	INTEGER NOT NULL,
	"DiseñoSoftware_id" INTEGER NOT NULL,
	FOREIGN KEY("ProgramacionWeb_id") REFERENCES "ProgramacionWeb"("ProgramacionWeb_id"),
	FOREIGN KEY("AGBD_id") REFERENCES "AGBD"("AGBD_id"),
	FOREIGN KEY("TAP_id") REFERENCES "TAP"("TAP_id"),
	FOREIGN KEY("DiseñoSoftware_id") REFERENCES "DiseñoSoftware"("DiseñoSoftware_id"),
	PRIMARY KEY("Taller_id" AUTOINCREMENT)
)



CREATE TABLE [ProgramacionWeb] (
	[ProgramacionWeb_id]	INTEGER NOT NULL,
	[Apuntes]	VARCHAR(60) NOT NULL,
	[Profesor]	VARCHAR(60) NOT NULL,
	PRIMARY KEY([[ProgramacionWeb_id]] AUTOINCREMENT)
);

CREATE TABLE [AGBD] (
	[AGBD_id]	INTEGER NOT NULL,
	[Apuntes]	VARCHAR(60) NOT NULL,
	[Profesor]	VARCHAR(60) NOT NULL,
	PRIMARY KEY([[AGBD_id]] AUTOINCREMENT)
);

CREATE TABLE [AED] (
	[AED_id]	INTEGER NOT NULL,
	[Apuntes]	VARCHAR(60) NOT NULL,
	[Profesor]	VARCHAR(60) NOT NULL,
	PRIMARY KEY([AED_id] AUTOINCREMENT)
);

CREATE TABLE [TAP] (
	[TAP_id]	INTEGER NOT NULL,
	[Apuntes]	VARCHAR(60) NOT NULL,
	[Profesor]	VARCHAR(60) NOT NULL,
	PRIMARY KEY([[TAP_id]] AUTOINCREMENT)
);

CREATE TABLE [DiseñoSoftware] (
	[DiseñoSoftware_id]	INTEGER NOT NULL,
	[Apuntes]	VARCHAR(60) NOT NULL,
	[Profesor]	VARCHAR(60) NOT NULL,
	PRIMARY KEY([DiseñoSoftware_id] AUTOINCREMENT)
);
--para ver hacer 
SELECT * FROM Ingles

INSERT INTO Ingles (Apuntes,Profesor) VALUES
('Present Continuos','Gabriel Beronda')
INSERT INTO Ingles (Apuntes,Profesor) VALUES
('On Christmas year','Gabriel Beronda')
INSERT INTO Ingles (Apuntes,Profesor) VALUES
('Going will future simple','Gabriel Beronda')
INSERT INTO Ingles (Apuntes,Profesor) VALUES
('Future:Going to','Gabriel Beronda');
INSERT INTO Ingles (Apuntes,Profesor) VALUES
('Grammar Going to','Gabriel Beronda');
INSERT INTO Ingles (Apuntes,Profesor) VALUES
('Grammar Be going to','Gabriel Beronda');
INSERT INTO Ingles (Apuntes,Profesor) VALUES
('Presente Simple positve-negative','Gabriel Beronda');
INSERT INTO Ingles (Apuntes,Profesor) VALUES
('Presente Simple fun activities','Gabriel Beronda');
INSERT INTO Ingles (Apuntes,Profesor) VALUES
('Past simple','Gabriel Beronda');
INSERT INTO Ingles (Apuntes,Profesor) VALUES
('Past Continuos irregular verbs','Gabriel Beronda');
INSERT INTO Ingles (Apuntes,Profesor) VALUES
('Past Continuos irregular verbs and regular verbs','Gabriel Beronda');
INSERT INTO Ingles (Apuntes,Profesor) VALUES
('Past Continuos irregular verbs and regular verbs grammar','Gabriel Beronda');
INSERT INTO Ingles (Apuntes,Profesor) VALUES
('verb to be','Gabriel Beronda');
INSERT INTO Ingles (Apuntes,Profesor) VALUES
('past verb to be','Gabriel Beronda');

INSERT INTO AGBD (Apuntes,Profesor) VALUES
('Conceptos basicos de base de datos','Tomas Mayorga');
INSERT INTO AGBD (Apuntes,Profesor) VALUES
('sistema de gestion de base de datos','Tomas Mayorga');
INSERT INTO AGBD (Apuntes,Profesor) VALUES
('Introduccion a sql historias y usos','Tomas Mayorga');
INSERT INTO AGBD (Apuntes,Profesor) VALUES
('Sentencias ,CREATE,ALTER,DROP','Tomas Mayorga');
INSERT INTO AGBD (Apuntes,Profesor) VALUES
('Tipos de datos en SQL','Tomas Mayorga');
INSERT INTO AGBD (Apuntes,Profesor) VALUES
('Sentencias ,INSERT,SELECT,UPDATE,DELETE','Tomas Mayorga');
INSERT INTO AGBD (Apuntes,Profesor) VALUES
('Consultas simples en SQL,SELECT,WHERE,ORDER BY,LIMIT','Tomas Mayorga');
INSERT INTO AGBD (Apuntes,Profesor) VALUES
('Funciones de agregado en SQL,COUNT,SUM,AVG,MAX,MIN','Tomas Mayorga');
INSERT INTO AGBD (Apuntes,Profesor) VALUES
('Agrupaciones y subconsultas en SQL,GROUP BY,HAVING','Tomas Mayorga');
INSERT INTO AGBD (Apuntes,Profesor) VALUES
('Joins en SQL,INNER JOIN,LEFT JOIN,RIGHT JOIN,FULL JOIN','Tomas Mayorga');

INSERT INTO TAP (Apuntes,Profesor) VALUES
('Introduccion a Algoritmos','Julian Impelluso');
INSERT INTO TAP (Apuntes,Profesor) VALUES
('Introduccion a TIC-80','Julian Impelluso');
INSERT INTO TAP (Apuntes,Profesor) VALUES
('Unidad 1','Julian Impelluso');
INSERT INTO TAP (Apuntes,Profesor) VALUES
('Unidad 2-Funciones','Julian Impelluso');

INSERT INTO DiseñoSoftware (Apuntes,Profesor) VALUES
('Introduccion a Git y Github','Andres Navarro');
INSERT INTO DiseñoSoftware (Apuntes,Profesor) VALUES
('Introduccion a Flask + ejercicios','Andres Navarro');