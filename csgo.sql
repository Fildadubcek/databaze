CREATE DATABASE counter_strike;

CREATE TABLE teams (
id int PRIMARY KEY NOT NULL AUTO_INCREMENT, 
name VARCHAR (255),
earnings VARCHAR(255),
coach VARCHAR(255));

CREATE TABLE players(
id int PRIMARY KEY NOT NULL AUTO_INCREMENT, 
name VARCHAR (255),
team_id VARCHAR(255)
);

CREATE TABLE sponsors (
id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
name VARCHAR (255),
team_id int);

CREATE TABLE skins ( 
id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
name VARCHAR(255),
player_id int);

CREATE TABLE maps( 
id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
name VARCHAR(255),
player_id int);

INSERT INTO teams (name, earnings, coach)
VALUES ('FaZe Clan', '$4,967,196.62 ', 'RobbaN'),
('Ninjas in Pyjamas ', '$3,427,974.2', 'JAEGARN'),
('Team Liquid', '$5,195,852.73', 'adreN'),
('G2 Sports', '$3,310,934.42', 'XTQZZZ'),
('Fnatic', '$5,658,382.16', 'keita');

INSERT INTO sponsors (name, team_id)
VALUES ('ASOS','5'),
('Red Bull','4'),
('Monster Energy','3'),
('Razer','2'),
('Nissan','1');

ALTER TABLE sponsors 
ADD FOREIGN KEY (team_id) REFERENCES teams(id);

ALTER TABLE skins 
ADD FOREIGN KEY (player_id) REFERENCES players (id);

ALTER TABLE maps
ADD FOREIGN KEY (player_id) REFERENCES players(id);

INSERT INTO players (name, age)
VALUES ('karrigan','32'),
('hampus','23'),
('nitrO','26'),
('Aleksib','25'),
('KRIMZ','28');

INSERT INTO skins (name, player_id)
VALUES ('Dragon Lore','1'),
('Desolate Space','2'),
('Fire Serpent','3'),
('Fade','4'),
('Medusa','5');


INSERT INTO maps(name, player_id, description)
VALUES ('Mirage','1','Nejpopulárnější mapička'),
('Dust 2','2','Po updatu žádná sláva'),
('Vertigo','3','Začíná se dostávat do popředí'),
('Cache','4','Nikdo už ji nehraje'),
('Nuke','5','Tahle mapa je nostalgie a klasika');

UPDATE players 
SET team_id = '1' , description ='Nejkvalitnější kapitán všech dob'
WHERE id = 1 ;

UPDATE players 
SET team_id = '2' , description ='Ne moc známý kapitán'
WHERE id = 2;

UPDATE players 
SET team_id = '3' , description ='Starší a zkušený kapitán'
WHERE id = 3;

UPDATE players 
SET team_id = '4' , description ='Kapitán mého oblíbeného týmu'
WHERE id = 4;

UPDATE players 
SET team_id = '5' , description ='Kapitán týmu, kterému se už bohužel nedaří'
WHERE id = 5;

UPDATE skins
SET description ='Nejdražší skin všech dob, krásný'
WHERE id = 1;

UPDATE skins
SET description ='Velmi drahý skin a také velmi starý'
WHERE id = 2;

UPDATE skins
SET description ='Velmi drahý skin a také velmi starý'
WHERE id = 3;

UPDATE skins
SET description ='Nejhezčí skin co znám (asi)'
WHERE id = 4;

UPDATE skins
SET description ='Prostě MEDUSA'
WHERE id = 5;

UPDATE sponsors
SET description ='Neznámá firma'
WHERE id = 1;

UPDATE sponsors
SET description ='Red Bull Energy:)'
WHERE id = 2;

UPDATE sponsors
SET description ='Můj oblíbený Energy Drink'
WHERE id = 3;

UPDATE sponsors
SET description ='Známá značka příslušenství k PC'
WHERE id = 4;

UPDATE sponsors
SET description ='Nissan Kaštan'
WHERE id = 5;

UPDATE players 
SET skin_id = 1
WHERE id =1;

UPDATE players 
SET skin_id = 2
WHERE id =2;

UPDATE players 
SET skin_id = 3
WHERE id =3;

UPDATE players 
SET skin_id = 4
WHERE id =4;

UPDATE players 
SET skin_id = 5
WHERE id =5;


SELECT * 
FROM players p
JOIN skins s ON p.skin_id=s.id; 

SELECT * 
FROM players p
JOIN maps m ON p.map_id=m.id; 

SELECT * 
FROM players p
JOIN teams t ON p.team_id=t.id; 

SELECT MIN(age)
FROM players  ;

SELECT AVG(age)
FROM players  ;

SELECT MAX(age)
FROM players  ;

SELECT COUNT(age)
FROM players  ;

SELECT MIN(p.age), p.name
FROM players p 
JOIN skins s ON p.skin_id=s.id
GROUP BY p.name
HAVING MIN(p.age) <30;

SELECT * FROM players 
WHERE name LIKE 'k%';

SELECT * FROM players 
WHERE name NOT LIKE 'k%';
