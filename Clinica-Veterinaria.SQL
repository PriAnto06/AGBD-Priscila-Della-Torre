INSERT INTO Veterinarios (Veterinario_id, Nombre, Apellido, Especialidad, Telefono, Email) VALUES
( 'Laura', 'Gómez', 'Cirugía', '555-123-4567', 'laura.gomez.vet@gmail.com'),
( 'Andrés', 'Morales', 'Dermatología', '555-234-5678', 'andres.morales.vet@gmail.com'),
( 'Camila', 'Rodríguez', 'Oftalmología', '555-345-6789', 'camila.rodriguez.vet@gmail.com'),
( 'Diego', 'Pérez', 'Medicina Interna', '555-456-7890', 'diego.perez.vet@gmail.com'),
( 'Valentina', 'Herrera', 'Odontología', '555-567-8901', 'valentina.herrera.vet@gmail.com'),
( 'Javier', 'Soto', 'Neurología', '555-678-9012', 'javier.soto.vet@gmail.com'),
( 'Sofía', 'Mendoza', 'Anestesiología', '555-789-0123', 'sofia.mendoza.vet@gmail.com'),
( 'Nicolás', 'Ríos', 'Oncología', '555-890-1234', 'nicolas.rios.vet@gmail.com'),
( 'Mariana', 'Díaz', 'Rehabilitación', '555-901-2345', 'mariana.diaz.vet@gmail.com'),
( 'Tomás', 'Silva', 'Cardiología', '555-012-3456', 'tomas.silva.vet@gmail.com'),
( 'Paula', 'Fernández', 'Medicina Felina', '555-101-1121', 'paula.fernandez.vet@gmail.com'),
( 'Esteban', 'Vargas', 'Exóticos y Silvestres', '555-202-2232', 'esteban.vargas.vet@gmail.com'),
( 'Lucía', 'Navarro', 'Geriatría', '555-303-3343', 'lucia.navarro.vet@gmail.com'),
( 'Fernando', 'Cárdenas', 'Urgencias', '555-404-4454', 'fernando.cardenas.vet@gmail.com'),
( 'Juliana', 'Castillo', 'Diagnóstico por Imágenes', '555-505-5565', 'juliana.castillo.vet@gmail.com'),
('Mateo', 'Ramírez', 'Etología', '555-606-6676', 'mateo.ramirez.vet@gmail.com'),
( 'Daniela', 'Paredes', 'Patología', '555-707-7787', 'daniela.paredes.vet@gmail.com'),
( 'Alejandro', 'Torres', 'Traumatología', '555-808-8898', 'alejandro.torres.vet@gmail.com'),
( 'Carla', 'Ibáñez', 'Nutrición', '555-909-9909', 'carla.ibanez.vet@gmail.com'),
( 'Bruno', 'Escobar', 'Reproducción Animal', '555-000-1111', 'bruno.escobar.vet@gmail.com');

INSERT INTO Mascotas (Nombre, Especie,"Raza ", Edad, Peso) VALUES
('Luna', 'Perro', 'Labrador', 4, 28),
('Milo', 'Gato', 'Siamés', 2, 4),
('Toby', 'Perro', 'Bulldog Francés', 5, 12),
('Simba', 'Gato', 'Persa', 3, 5.1),
('Nala', 'Perro', 'Golden Retriever', 6, 32),
('Max', 'Perro', 'Beagle', 4, 10.3)

INSERT INTO Mascotas (Nombre, Especie,"Raza ", Edad, Peso) VALUES
('Lola', 'Conejo', 'Cabeza de León', 1, 1),
('Rocky', 'Perro', 'Rottweiler', 7, 43),
('Mía', 'Gato', 'Mestiza', 2, 3),
('Bruno', 'Perro', 'Pug', 5, 8),
('Olivia', 'Gato', 'Maine Coon', 3, 6),
('Bobby', 'Perro', 'Caniche', 6, 6),
('Coco', 'Conejo', 'Rex', 2, 2),
('Greta', 'Perro', 'Dachshund', 3, 9),
('Chispa', 'Gato', 'Bengala', 1, 43),
('Thor', 'Perro', 'Pastor Alemán', 5, 35),
('Bella', 'Perro', 'Border Collie', 4, 20),
('Pelusa', 'Gato', 'Angora', 6, 5),
('Roco', 'Conejo', 'Mini Lop', 2, 17),
('Fiona', 'Perro', 'Boxer', 3, 29);











CREATE TABLE "Citas" (
	"Cita_id"	INTEGER NOT NULL,
	"Cliente_id"	INTEGER NOT NULL,
	"Mascota_id"	INTEGER NOT NULL,
	"Veterinario_id"	INTEGER NOT NULL,
	"Fecha"	DATETIME NOT NULL,
	"Hora"	DATETIME NOT NULL,
	"Motivo "	VARCHAR(60) NOT NULL,
	"Estado"	VARCHAR(50) NOT NULL,
	FOREIGN KEY("Mascota_id") REFERENCES "Mascotas"("Mascota_id"),
	FOREIGN KEY("Veterinario_id") REFERENCES "Veterinarios"("Veterinario_id"),
	FOREIGN KEY("Cliente_id") REFERENCES "Clientes"("Cliente_id"),
	PRIMARY KEY("Cita_id" AUTOINCREMENT)
);

CREATE TABLE "Vacunacion_de_mascotas" (
	"Vacunacion_id"	INTEGER NOT NULL,
	"Mascota_id"	INTEGER NOT NULL,
	"Vacuna_id"	INTEGER NOT NULL,
	"Fecha_aplicacion"	DATETIME,
	"Fecha_proxima"	DATETIME,
	"Veterinario_id"	INTEGER NOT NULL,
	PRIMARY KEY("Vacunacion_id" AUTOINCREMENT),
    FOREIGN KEY ("Veterinario_id") REFERENCES Veterinarios("Veterinario_id"),
    FOREIGN KEY ("Mascota_id") REFERENCES Mascotas("Mascota_id"),
    FOREIGN KEY ("Vacuna_id") REFERENCES Vacunas("Vacuna_id")
);


DROP table "Vacunacion de Mascotas"
