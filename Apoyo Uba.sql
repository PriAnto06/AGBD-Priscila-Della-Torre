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

