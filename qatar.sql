CREATE DATABASE qatar;
USE qatar;

CREATE TABLE Selecciones (
	idSeleccion INT PRIMARY KEY,
	seleccion VARCHAR(56) NOT NULL UNIQUE,
	seleccionador VARCHAR(75)
);

CREATE TABLE Jugadores (
	idJugador INT PRIMARY KEY,
	jugador VARCHAR(75) NOT NULL,
	fechaNacimiento DATE NOT NULL,
	equipo VARCHAR(75),
	codSeleccion INT NOT NULL,
	FOREIGN KEY (codSeleccion) REFERENCES Selecciones (idSeleccion)
);

CREATE TABLE Partidos (
	idPartido INT PRIMARY KEY,
	eqLocal INT NOT NULL,
	visitante INT NOT NULL,
	estadio VARCHAR(50) NOT NULL,
	golesLocal INT NOT NULL,
	golesVisitante INT NOT NULL,
	FOREIGN KEY (eqLocal) REFERENCES Selecciones (idSeleccion),
	FOREIGN KEY (visitante) REFERENCES Selecciones (idSeleccion)
);

CREATE TABLE Goles (
	idGol INT PRIMARY KEY,
	codJugador INT NOT NULL,
	codPartido INT NOT NULL,
	minuto INT NOT NULL,
	propiaPuerta INT NOT NULL,
	FOREIGN KEY (codJugador) REFERENCES Jugadores (idJugador),
	FOREIGN KEY (codPartido) REFERENCES Partidos (idPartido)
);


INSERT INTO Selecciones VALUES (1, 'España', 'Luis Enrique');
INSERT INTO Selecciones VALUES (2, 'Alemania', 'Flink');
INSERT INTO Selecciones VALUES (3, 'Brasil', 'Tite');
INSERT INTO Selecciones VALUES (4, 'Francia', 'Deschamps');
INSERT INTO Selecciones VALUES (5, 'Argentina', 'Scaloni');
INSERT INTO Selecciones VALUES (6, 'Portugal', 'Costa');

INSERT INTO Jugadores VALUES (1, 'Maradona', '1960-10-30', 'Boca', 5);
INSERT INTO Jugadores VALUES (2, 'Cantona', '1966-05-24', 'United', 4);
INSERT INTO Jugadores VALUES (3, 'Pelé', '1940-10-23', 'Santos', 3);
INSERT INTO Jugadores VALUES (4, 'Casillas', '1981-05-20', 'Madrid', 1);
INSERT INTO Jugadores VALUES (5, 'Beckenbauer', '1945-09-11', 'Munich', 2);
INSERT INTO Jugadores VALUES (6, 'Figo', '1972-11-04', 'Madrid', 6);

COMMIT;
