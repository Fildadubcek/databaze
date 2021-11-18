CREATE DATABASE carshop;

CREATE TABLE car (
 id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
 manufacturer VARCHAR (255),
 model VARCHAR (255)
);

DESCRIBE car 
;
# vkládání řádků do tabulky
INSERT INTO car (id, model, manufacturer)
VALUES (' ', ' ', ' ';
SELECT * FROM car;
DROP TABLE car;

#15.10.2021 - Propojení 
ALTER TABLE employee
ADD car_id VARCHAR (255);

UPDATE employee
SET car_id = 1
WHERE id = 1;

UPDATE employee
SET car_id = 1
WHERE id = 2;

UPDATE employee
SET car_id = 2
WHERE id = 3;

UPDATE employee
SET car_id = 2
WHERE id = 4;

UPDATE employee
SET car_id = 7
WHERE id = 5;

UPDATE employee
SET car_id = 7
WHERE id = 6;

UPDATE employee
SET car_id = 5
WHERE id = 7;

UPDATE employee
SET car_id = 5
WHERE id = 8;

UPDATE employee
SET car_id = 9
WHERE id = 9;

UPDATE employee
SET car_id = 9
WHERE id = 10;

-- 
Historie
Upravit 10:26:28 ALTER TABLE car ADD FOREIGN KEY (garage_id) REFERENCES garage(id);
Upravit 10:25:53 ALTER TABLE garage ADD FOREIGN KEY (id) REFERENCES car(garage_id);
Upravit 10:25:33 ALTER TABLE `car` CHANGE `garage_id` `garage_id` int unsigned NULL AFTER `mafufa… (0.258 s)
Upravit 10:25:04 ALTER TABLE garage ADD FOREIGN KEY (id) REFERENCES car(garage_id);
Upravit 10:24:28 ALTER TABLE car ADD FOREIGN KEY (garage_id) REFERENCES garage(id);
Upravit 10:22:27 ALTER TABLE garage ADD FOREIGN KEY (id) REFERENCES car(garage_id);
Upravit 10:20:20 ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 5 WHERE id = 20 ;…
Upravit 10:20:14 ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 5 WHERE id = 19 ;…
Upravit 10:20:10 ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 4 WHERE id = 18 ;…
Upravit 10:20:08 ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 4 WHERE id = 17 ;…
Upravit 10:20:05 ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 4 WHERE id = 16 ;…
Upravit 10:20:01 ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 3 WHERE id = 15 ;…
Upravit 10:19:58 ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 3 WHERE id = 14 ;…
Upravit 10:19:56 ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 3 WHERE id = 13 ;…
Upravit 10:19:53 ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 3 WHERE id = 12 ;…
Upravit 10:19:50 ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 3 WHERE id = 11 ;…
Upravit 10:19:43 ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 2 WHERE id = 10 ;…
Upravit 10:19:40 ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 2 WHERE id = 9 ; …
Upravit 10:19:33 ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 1 WHERE id = 5;  
Upravit 10:19:05 ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 2 WHERE id = 8;  
Upravit 10:19:01 ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 2 WHERE id = 5;  
Upravit 10:18:51 ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 2 WHERE id = 8;  
Upravit 10:18:47 ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 2 WHERE id = 7;  
Upravit 10:18:43 ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 2 WHERE id = 6;  
Upravit 10:18:39 ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 1 WHERE id = 5;  
Upravit 10:18:36 ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 1 WHERE id = 4;  
Upravit 10:18:33 ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 1 WHERE id = 3;  
Upravit 10:18:15 ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 1 WHERE id = 2;  
Upravit 10:17:45 ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 1 WHERE id = 1; 
