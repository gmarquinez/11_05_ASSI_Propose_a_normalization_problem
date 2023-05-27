# Normalization Problem 

For this normalization work I have proposed a simple database that does not comply at all with the normal form 1NF, about students and the subjects they receive.

For example, the "Students" table records the student's ID, her name and the subjects, instead of having a separate entry for each subject, all the subjects that a student is taking are put in the same cell:

| ID_Estudiante | Nombre | Materias                       |
|---------------|--------|--------------------------------|
| 1             | Ana    | Matemáticas, Ciencias, Español |
| 2             | Carlos | Matemáticas, Español           |
| 3             | Berta  | Ciencias, Español              |
| 4             | Ana    | Matemáticas, Ciencias, Español |
| 5             | Diana  | Español                        |


## Solution Normalization
To normalize this data into the 1NF, 2NF, and 3NF normal forms, we will need to create multiple tables to eliminate duplication and separate groups of values. Here is the layout:

### First Normal Form (1NF):

### Students Table.

| ID_Estudiante | Nombre |
|---------------|--------|
| 1             | Ana    |
| 2             | Carlos |
| 3             | Berta  |
| 4             | Diana  |

### Subject Table

| ID_Materia | Nombre_Materia |
|------------|----------------|
| 1          | Matemáticas    |
| 2          | Ciencias       |
| 3          | Español        |

### Student Table Subjects.

| ID_Estudiante | ID_Materia |
|---------------|------------|
| 1             | 1          |
| 1             | 2          |
| 1             | 3          |
| 2             | 1          |
| 2             | 3          |
| 3             | 2          |
| 3             | 3          |
| 4             | 3          |

## Conclusion.

>This complies with 1NF because now each value in each column is indivisible, that is, unique, there are no duplicates.

>For Second Normal Form (2NF), we need to make sure there are no partial dependencies. Since the primary keys are simple (not compound), 2NF is satisfied.

> The Third Normal Form (3NF) requires that there be no transitive dependencies. This design is already 3NF compliant because all the columns in each table depend solely on the primary key.

Therefore, this design is 1NF, 2NF, and 3NF compliant.