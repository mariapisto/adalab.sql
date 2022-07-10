	CREATE TABLE Empleadas (
    id_empleada	INT NOT NULL AUTO_INCREMENT,
    salario INT,
    nombre VARCHAR(45) NOT NULL,
    apellido VARCHAR(45) NOT NULL,
    PRIMARY KEY (id_empleada));
    
    CREATE TABLE productos2 (
    id_producto INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) DEFAULT NULL,
    color ENUM('rojo','amarillo','azul') DEFAULT NULL,
    precio INT DEFAULT NULL,
    stock FLOAT DEFAULT NULL,
    PRIMARY KEY (id_producto));
    
    /* "El código de la documentación aparece sin especificar la PRIMARY KEY, pero me da un error de definición de tabla, PREGUNTA: ¿siempre que 
		exista un valor auto-incremental tiene que ser Primary Key? y ¿ no puedes definir más de un valor por tabla que tenga la propiedad de auto-incremental?" */
        
   CREATE TABLE personas (
    id INT NOT NULL,
    apellido VARCHAR(255) NOT NULL,
    nombre VARCHAR(255),
    edad INT,
    ciudad varchar(255) DEFAULT 'Madrid'
);

CREATE TABLE productos3 (
    id_producto INT NOT NULL AUTO_INCREMENT,   
    nombre VARCHAR(100) DEFAULT NULL,   
    color ENUM('rojo','amarillo','azul') DEFAULT NULL,   
    precio INT DEFAULT NULL,   
    stock FLOAT DEFAULT NULL,   
    PRIMARY KEY (id_producto),   
    CONSTRAINT precio_positivo CHECK ((precio > 0))   
    );
    
CREATE TABLE Personas2 (
		id INT NOT NULL, 
        apellido VARCHAR(255) NOT NULL, 
        nombre VARCHAR (255),
        edad INT NOT NULL CHECK (edad > 16),
        ciudad VARCHAR (255) DEFAULT 'Madrid'
        );
        
/* He intentado crear el CHECK al finalizar la definición de las columnas, pero me da un error.
 Me pide que el check lo incluya en las restricciones de la columna, al definir dicha columna. Así, sí que me lo ha hecho bien */
 
 
-- CREATE TABLE Pedidos (
 -- id_pedidos
 -- productos_pedidos
 
/*me gustaría crear una tabla Pedidos en la que definir los productos comprados por cada pedido, pero me surge la DUDA: ¿debo definir cada
columna de producto, tal que: "producto1", "producto2", "producto3"? si es así, estoy limitando el número de productos de cada pedido.
Me gustaría poder hacerlo de otra forma. Quiero incluir el id_producto de cada producto incluído en pedidos. Penando a futuro, para poder ir
bajando las existencias de stock(en tabla stock, por ejemplo). ALGUNA SUGERENCIA?*/

CREATE TABLE empleadas_en_proyectos (
	id_empleada INT NOT NULL,
    id_proyecto INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (`id_proyecto`),
    CONSTRAINT `fk_empleadas_en_proyectos`
    FOREIGN KEY (`id_empleada`) REFERENCES `Empleadas` (id_empleada) ON DELETE CASCADE);
    
    
    /*Ejercicio: Crea una copia de la tabla Pedidos que definimos anteriormente, pero sin incluir el NumeroPedido dentro de la misma. Haz que se llame PedidosPorPersona.
    
ME FALTA ESTE EJERCICIO, YA QUE NO TENGO DEFINIDA LA TABLA PEDIDOS*/


    