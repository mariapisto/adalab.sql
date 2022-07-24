CREATE SCHEMA ejercicios_sql;

USE ejercicios_sql;

CREATE TABLE productos (
    id_producto INT,
    nombre VARCHAR(100),
    color ENUM('rojo','amarillo','azul'),
    precio INT,
    stock FLOAT
    );

CREATE TABLE empleadas (
	id_empleada INT,
    salario INT,
    nombre VARCHAR(45),
    apellido VARCHAR(45),
    pais VARCHAR(45)
    );
    
INSERT INTO ejercicios_sql.empleadas VALUES(1, 2500, "Ana", "González", "España");
INSERT INTO ejercicios_sql.empleadas VALUES(2, 4000, "María", "López", "España");
INSERT INTO ejercicios_sql.empleadas VALUES(3, 3000, "Lucía", "Ramos", "España");
INSERT INTO ejercicios_sql.empleadas VALUES(4, 5000, "Elena", "Bueno", "España");
INSERT INTO ejercicios_sql.empleadas VALUES(5, 1500, "Rocío", "García", "Francia");

ALTER TABLE empleadas MODIFY COLUMN id_empleada INT NOT NULL PRIMARY KEY;
ALTER TABLE empleadas MODIFY COLUMN nombre VARCHAR(45) NOT NULL;
ALTER TABLE empleadas MODIFY COLUMN apellido VARCHAR(45) NOT NULL;
ALTER TABLE empleadas MODIFY COLUMN pais VARCHAR(45) NOT NULL;


-- Por algún motivo que no comprendo, no me permite crear esta tabla con el check, he probado con constrain y sin ella. REferenciando la columna a su tabla, y sin hacerlo. ¿?
/*
CREATE TABLE personas2 (
    id INT NOT NULL,
    apellido VARCHAR(255) NOT NULL,
    nombre VARCHAR(255),
    edad INT NOT NULL,
    ciudad varchar(255) DEFAULT 'Madrid'
    CHECK ((edad > 16)),
    PRIMARY KEY (id));
*/

CREATE TABLE pedidos (
id_pedidos INT NOT NULL,
id_empleada INT NOT NULL,
CONSTRAINT fk_id_empleada
FOREIGN KEY (id_empleada) REFERENCES empleadas (id_empleada),
PRIMARY KEY (id_pedidos));





