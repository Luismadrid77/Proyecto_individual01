Create Database proyecto_individual_1;
Use proyecto_individual_1;
SELECT @@global.secure_file_priv;

/*Creamos las tablas de las ventas semanales  */

DROP TABLE IF EXISTS `precios_semana_20200413`;
CREATE TABLE IF NOT EXISTS `precios_semana_20200413` (
  	`Precio` 		FLOAT(20,10),
  	`Producto_id` 	VARCHAR(20),
	`Sucursal_id`   VARCHAR(20)
); -- ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
LOAD DATA INFILE "C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\precios_semana_20200413"
INTO TABLE `precios_semana_20200413` 
FIELDS TERMINATED BY ',' ENCLOSED BY '' ESCAPED BY '' 
LINES TERMINATED BY '\n' IGNORE 1 LINES;

DROP TABLE IF EXISTS `precios_semana_20200503`;
CREATE TABLE IF NOT EXISTS `precios_semana_20200503` (
  	`Precio` 		FLOAT(20,10),
  	`Producto_id` 	VARCHAR(20),
	`Sucursal_id`   VARCHAR(20)
); -- ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
LOAD DATA INFILE "C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\CSV\\precios_semana_20200503.csv"
INTO TABLE `precios_semana_20200503` 
FIELDS TERMINATED BY ',' ENCLOSED BY '' ESCAPED BY '' 
LINES TERMINATED BY '\n' IGNORE 1 LINES;

DROP TABLE IF EXISTS `precios_semana_20200518`;
CREATE TABLE IF NOT EXISTS `precios_semana_20200518` (
  	`Precio` 		FLOAT(20,10),
  	`Producto_id` 	VARCHAR(20),
	`Sucursal_id`   VARCHAR(20) not null
); -- ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
LOAD DATA INFILE "C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\CSV\\precios_semana_20200518.csv"
INTO TABLE `precios_semana_20200518` 
FIELDS TERMINATED BY ',' ENCLOSED BY '' ESCAPED BY '' 
LINES TERMINATED BY '\n' IGNORE 1 LINES;

DROP TABLE IF EXISTS `precios_semanas_20200419_20200426`;
CREATE TABLE IF NOT EXISTS `precios_semanas_20200419_20200426` (
  	`Precio` 		varchar(100),
  	`Producto_id` 	VARCHAR(20),
	`Sucursal_id`   VARCHAR(20) not null
); -- ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
LOAD DATA INFILE "C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\CSV\\precios_semanas_20200419_20200426.csv"
INTO TABLE `precios_semanas_20200419_20200426` 
FIELDS TERMINATED BY ',' ENCLOSED BY '' ESCAPED BY '' 
LINES TERMINATED BY '\n' IGNORE 1 LINES;





