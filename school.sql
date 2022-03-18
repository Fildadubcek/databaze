
CREATE TABLE student (
id int PRIMARY KEY NOT NULL AUTO_INCREMENT ,
firstname VARCHAR (255),
lastaname VARCHAR (255), 
class VARCHAR (255),
email VARCHAR(255));

INSERT INTO student (firstname, lastname, class, email)
VALUES ('Ondřej', 'Čábelka','2c', 'ondrej.cabelka@student.ossp.cz'),
('Jaroslav','Melichar','2c','jaroslav.melichar@student.ossp.cz'),
('Alexandr','Důlovec','2c','alexandr.dulovec@student.ossp.cz'),
('Lukáš','Gremlica','2c','lukas.gremlica@student.ossp.cz'),
('Jaroslav','Kašák','2c','jaroslav.kasak@student.ossp.cz'),
('Jan','Sefzig','2c','jan-sefzig@student.ossp.cz'),
('Zuzana','Sahulková','2c','zuzana.sahulkova@student.ossp.cz'),
('Martin','Hruška','2c','martin.hruska@student.ossp.cz'),
('Daniel','Šuman','2c','daniel.suman@student.ossp.cz'),
('Matěj','Pošík','2c','matej.posik@student.ossp.cz'),
('Filip','Dubček','2c','filip.dubcek@student.ossp.cz');

CREATE TABLE teacher (
id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
firstname VARCHAR(255),
lastname VARCHAR(255),
email VARCHAR(255),
description text);

INSERT INTO teacher (firstname, lastname, email, description)
VALUES ('Martin','Kokeš','martin.kokes@ossp.cz','Borec nakonec noo'),
('Lenka','Sklenářová','lenka.sklenarova@ossp.cz','Matiky dcera'),
('Milan','Hála','milan.hala@ossp.cz','Nelze dělit nulou'),
('Tomáš','Marek','tomas.marek@ossp.cz',':) borec'),
('Anna','Říhová','anna.rihova@ossp.cz','Na pohodičku hodinky');


INSERT INTO classroom (number, description, building, seats_count, is_computers_lab)
VALUES ('19','Nej třída','1','15','1'),
('6A','Koberec','1','30','0'),
('6B','Málá trída','1','20','0'),
('2','Malá třída','1','20','0'),
('1','Grafická třída','1','15','1'),
('9','Velká třída','2','30','0'),
('13','Velká třída do kopce','2','30','0'),
('14','Střední velikost třídy','2','25','0'),
('4','Mála třída','1','15','1'),
('10','Mála třída','2','20','0');

CREATE TABLE classroom (
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
number VARCHAR(25),
description text,
building VARCHAR(2),
seats_count VARCHAR(2),
is_computers_lab TINYINT);

--subject
CREATE TABLE subject (
id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
name VARCHAR(255),
description text);


INSERT INTO subject (name, description)
VALUES ('Webové programování','Základy PHP'),
('Databáze','Fakt bombička'),
('Matematika','Ta se školy netýká<3'),
('Chemie','Peklo na zemi, ale máme pana Hálu'),
('Literatura','Karel IV ujde'),
('Praktická cvičení','Trápení'),
('Značkovací jazyky','Sranda webovky'),
('Tělesná výchova','Na střední je to nuda'),
('Český jazyk','Povinnost'),
('Fyzika','No nevim');
  
  ALTER TABLE subject 
ADD shortname VARCHAR(10);


UPDATE subject 
SET  shorname = 'WP'
WHERE  id=1;

UPDATE subject 
SET  shortname = 'Da'
WHERE  id=2;

UPDATE subject 
SET  shortname = 'Ma'
WHERE  id=3;

UPDATE subject 
SET  shortname = 'Ch'
WHERE  id=4;

UPDATE subject 
SET  shortname = 'Li'
WHERE  id=5;

UPDATE subject 
SET  shortname = 'PRC'
WHERE  id=6;

UPDATE subject 
SET  shortname = 'ZJ'
WHERE  id=7;

UPDATE subject 
SET  shortname = 'TV'
WHERE  id=8;

UPDATE subject 
SET  shortname = 'ČJ'
WHERE  id=9;

UPDATE subject 
SET  shortname = 'Fy'
WHERE  id=10;


-- UNIQUE

ALTER TABLE classroom 
ADD UNIQUE (number);

ALTER TABLE student
ADD UNIQUE (email);

ALTER TABLE teacher
ADD UNIQUE (email);


