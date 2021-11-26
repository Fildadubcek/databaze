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
ALTER TABLE car ADD FOREIGN KEY (garage_id) REFERENCES garage(id);
ALTER TABLE garage ADD FOREIGN KEY (id) REFERENCES car(garage_id);
ALTER TABLE `car` CHANGE `garage_id` `garage_id` int unsigned NULL AFTER `mafufa… (0.258 s)
ALTER TABLE garage ADD FOREIGN KEY (id) REFERENCES car(garage_id);
ALTER TABLE car ADD FOREIGN KEY (garage_id) REFERENCES garage(id);
ALTER TABLE garage ADD FOREIGN KEY (id) REFERENCES car(garage_id);
ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 5 WHERE id = 20 ;…
ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 5 WHERE id = 19 ;…
ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 4 WHERE id = 18 ;…
ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 4 WHERE id = 17 ;…
ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 4 WHERE id = 16 ;…
ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 3 WHERE id = 15 ;…
ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 3 WHERE id = 14 ;…
ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 3 WHERE id = 13 ;…
ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 3 WHERE id = 12 ;…
ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 3 WHERE id = 11 ;…
ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 2 WHERE id = 10 ;…
ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 2 WHERE id = 9 ; …
ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 1 WHERE id = 5;  
ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 2 WHERE id = 8;  
ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 2 WHERE id = 5;  
ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 2 WHERE id = 8;  
ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 2 WHERE id = 7;  
ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 2 WHERE id = 6;  
ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 1 WHERE id = 5;  
ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 1 WHERE id = 4;  
ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 1 WHERE id = 3;  
ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 1 WHERE id = 2;  
ALTER TABLE car ADD garage_id INT;  UPDATE car SET garage_id = 1 WHERE id = 1; 
        
        
 --accessory
CREATE TABLE accessory(
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
name VARCHAR (255),
description TEXT
);  
INSERT INTO accessory (name, description)
VALUES ('Vyhřívaná sedačka', 'Prostě bude větší teplo')
;




INSERT INTO accessory (name, description)
VALUES ('Hlídání mrtvého bodu', 'Nebude tak lehké se zabít')
;




INSERT INTO accessory (name, description)
VALUES ('Posilovač řízení', 'Nemusíte být korba, aby jste mohl točit volantem')
;




INSERT INTO accessory (name, description)
VALUES ('Elektrické ovládání oken', 'Klička už je velmi zastaralá')
;




INSERT INTO accessory (name, description)
VALUES ('Tempomat', 'Neupadne vám noha, když jedete po dálnici')
;




INSERT INTO accessory (name, description)
VALUES ('Bluetooth', 'Můžete si poslouchat vlastní muziku a ne radio impuls')
;




INSERT INTO accessory (name, description)
VALUES ('Kožená sedadla', 'Tohle nechcete, protože v létě shoříte')
;




INSERT INTO accessory (name, description)
VALUES ('Sledování jízdního pruhu', 'Jestli chcete spát, když řídítě, tak je to ideálí možnost')
;




INSERT INTO accessory (name, description)
VALUES ('Asistent rozjezdu do kopce', 'Nepotřebujete, aby vám to chcíplo v kopci')
;




INSERT INTO accessory (name, description)
VALUES ('Parkovací senzory', 'Neodřete si auto při parkování')
;

-- car and accessory 
        
CREATE TABLE car_accessory(
car_id INT ,
accessory_id INT 
);          
ALTER TABLE car
ADD FOREIGN KEY (id) REFERENCES car_accessory(car_id)
;


ALTER TABLE car_accessory
ADD FOREIGN KEY (car_id) REFERENCES car(id)
;


ALTER TABLE car_accessory
ADD FOREIGN KEY (car_id) REFERENCES car(id);


ALTER TABLE `car_accessory`
ADD FOREIGN KEY (`car_id`, `accessory_id`) REFERENCES `car` (`id`, `id`)


ALTER TABLE `car`
CHANGE `id` `id` int NOT NULL AUTO_INCREMENT FIRST;


ALTER TABLE car_accessory
ADD FOREIGN KEY (car_id) REFERENCES car(id);


ALTER TABLE garage
DROP FOREIGN KEY garage_id;


ALTER TABLE car_accessory
ADD FOREIGN KEY (accessory_id) REFERENCES accessory(id);


ALTER TABLE `accessory`
CHANGE `id` `id` int NOT NULL AUTO_INCREMENT FIRST;


ALTER TABLE car_accessory
ADD FOREIGN KEY (accessory_id) REFERENCES accessory(id);


INSERT INTO car_accessory (car_id, accessory_id)
VALUES ('1', '1');


INSERT INTO car_accessory (car_id, accessory_id)
VALUES ('2', '1');


INSERT INTO car_accessory (car_id, accessory_id)
VALUES ('3', '1');


INSERT INTO car_accessory (car_id, accessory_id)
VALUES ('4', '1');


INSERT INTO car_accessory (car_id, accessory_id)
VALUES ('5', '1');


INSERT INTO car_accessory (car_id, accessory_id)
VALUES ('6', '1');


INSERT INTO car_accessory (car_id, accessory_id)
VALUES ('7', '1');


INSERT INTO car_accessory (car_id, accessory_id)
VALUES ('8', '1');


INSERT INTO car_accessory (car_id, accessory_id)
VALUES ('9', '1');


INSERT INTO car_accessory (car_id, accessory_id)
VALUES ('10', '1');


INSERT INTO car_accessory (car_id, accessory_id)
VALUES ('11', '1');


INSERT INTO car_accessory (car_id, accessory_id)
VALUES ('12', '1');


INSERT INTO car_accessory (car_id, accessory_id)
VALUES ('13', '1');


INSERT INTO car_accessory (car_id, accessory_id)
VALUES ('14', '1');


INSERT INTO car_accessory (car_id, accessory_id)
VALUES ('15', '1');


INSERT INTO car_accessory (car_id, accessory_id)
VALUES ('16', '6, 2, 3');


INSERT INTO car_accessory (car_id, accessory_id)
VALUES ('16', '6');


UPDATE `car_accessory` SET
`car_id` = '16',
`accessory_id` = '8'
WHERE `car_id` = '16' AND `accessory_id` = '6'
LIMIT 1;


ALTER TABLE `car_accessory`
CHANGE `accessory_id` `accessory_id` varchar(255) NULL AFTER `car_id`;


INSERT INTO car_accessory (car_id, accessory_id)
VALUES ('16', '6');


INSERT INTO car_accessory (car_id, accessory_id)
VALUES ('16', '10');


INSERT INTO car_accessory (car_id, accessory_id)
VALUES ('17', '10');


INSERT INTO car_accessory (car_id, accessory_id)
VALUES ('17', '3');


INSERT INTO car_accessory (car_id, accessory_id)
VALUES ('17', '4');


INSERT INTO car_accessory (car_id, accessory_id)
VALUES ('18', '2');


INSERT INTO car_accessory (car_id, accessory_id)
VALUES ('18', '9');


INSERT INTO car_accessory (car_id, accessory_id)
VALUES ('18', '7');


INSERT INTO car_accessory (car_id, accessory_id)
VALUES ('19', '5');


INSERT INTO car_accessory (car_id, accessory_id)
VALUES ('19', '4');


INSERT INTO car_accessory (car_id, accessory_id)
VALUES ('19', '6');


INSERT INTO car_accessory (car_id, accessory_id)
VALUES ('20', '1');


INSERT INTO car_accessory (car_id, accessory_id)
VALUES ('20', '2');


INSERT INTO car_accessory (car_id, accessory_id)
VALUES ('20', '3');


INSERT INTO car_accessory (car_id, accessory_id)
VALUES ('20', '4');


INSERT INTO car_accessory (car_id, accessory_id)
VALUES ('20', '5');


INSERT INTO car_accessory (car_id, accessory_id)
VALUES ('20', '6');
   
INSERT INTO car_accessory (car_id, accessory_id)
VALUES ('20', '7');


INSERT INTO car_accessory (car_id, accessory_id)
VALUES ('20', '8');


INSERT INTO car_accessory (car_id, accessory_id)
VALUES ('20', '9');


INSERT INTO car_accessory (car_id, accessory_id)
VALUES ('20', '10');


SELECT COUNT(*) from car_accessory;

        
        
-- LEFT JOIN
        SELECT c.manufacturer,c.model,c.garage_id,g.name,g.gps_x,g.gps_y
FROM car c
LEFT JOIN garage g ON c.id = g.id;
        
        
-- JOIN tři tabulky dohromady
        SELECT c.model,c.manufacturer,a.name,a.description,c.id
FROM car c
LEFT JOIN car_accessory c_a ON c.id =c_a.car_id
LEFT JOIN accessory a ON c.id=c_a.accessory_id;
