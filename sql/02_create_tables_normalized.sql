CREATE TABLE Estudiantes (
    ID_Estudiante INT,
    Nombre VARCHAR(255)
);

INSERT INTO Estudiantes (ID_Estudiante, Nombre)
VALUES (1, 'Ana'),
       (2, 'Carlos'),
       (3, 'Berta'),
       (4, 'Diana');

CREATE TABLE Materias (
    ID_Materia INT,
    Nombre_Materia VARCHAR(255)
);

INSERT INTO Materias (ID_Materia, Nombre_Materia)
VALUES (1, 'Matemáticas'),
       (2, 'Ciencias'),
       (3, 'Español');

CREATE TABLE Estudiante_Materia (
    ID_Estudiante INT,
    ID_Materia INT
);

INSERT INTO Estudiante_Materia (ID_Estudiante, ID_Materia)
VALUES (1, 1),
       (1, 2),
       (1, 3),
       (2, 1),
       (2, 3),
       (3, 2),
       (3, 3),
       (4, 3);
