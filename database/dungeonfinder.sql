DROP TABLE IF EXISTS "person";
Drop SEQUENCE seq_person_id;


CREATE SEQUENCE seq_person_id;

CREATE TABLE public."person"
(person_id integer NOT NULL DEFAULT nextval('seq_person_id'),
username varchar(25) NOT NULL,
first_name varchar(25) NOT NULL,
last_name varchar(25) NOT NULL,
email varchar(50),
gender varchar(1) DEFAULT 'M' NOT NULL,
alignment varchar(50),
join_date date NOT NULL,
CONSTRAINT ck_gender CHECK (gender IN ('M','F'))
); 
UNIQUE(username, email));


INSERT INTO "person"(username, first_name, last_name, gender, alignment ,join_date) VALUES ('RufusMcdoogan','Daniel','Burke','M','Lawful-Good','2018-07-17');
INSERT INTO "person"(username, first_name, last_name, gender, alignment ,join_date) VALUES ('BrakMcRibber','Brak','Fondue','M','Lawful-Neutral','2018-07-18');
INSERT INTO "person"(username, first_name, last_name, gender, alignment ,join_date) VALUES ('SrGreaterGood','Lord','Vold','M','Lawful-Evil','2018-07-18');
INSERT INTO "person"(username, first_name, last_name, gender, alignment ,join_date) VALUES ('SuzyBGoode','Susan','Mebal','F','Neutral-Good','2018-07-19');
INSERT INTO "person"(username, first_name, last_name, gender, alignment ,join_date) VALUES ('MadameMeh','Gray','Area','F','True-Neutral','2018-07-20');
INSERT INTO "person"(username, first_name, last_name, gender, alignment ,join_date) VALUES ('MrWhatev','Ted','Bearry','M','Neutral-Evil','2018-07-21');
INSERT INTO "person"(username, first_name, last_name, gender, alignment ,join_date) VALUES ('Sif','Mary','Sue','F','Chaotic-Good','2018-07-22');
INSERT INTO "person"(username, first_name, last_name, gender, alignment ,join_date) VALUES ('MrPink','Tony','Farsetter','M','Chaotic-Neutral','2018-07-22');
INSERT INTO "person"(username, first_name, last_name, gender, alignment ,join_date) VALUES ('PieceOSith','Darth','Plagus','M','Chaotic-Evil','2018-07-23');
