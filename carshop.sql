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
