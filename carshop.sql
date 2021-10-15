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