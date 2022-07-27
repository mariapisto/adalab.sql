CREATE SCHEMA alteracion_tablas;

USE alteracion_tablas;

CREATE TABLE t1 (a INTEGER, b CHAR(10));

-- renombramos la tabla 1 como t2
ALTER TABLE t1 RENAME t2;

-- esta es otra forma de renombrar tablas en mysql
RENAME TABLE t2 TO t1;

ALTER TABLE t2 
MODIFY COLUMN

