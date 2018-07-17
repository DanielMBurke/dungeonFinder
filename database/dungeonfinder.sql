DROP TABLE IF EXISTS "person";
DROP TABLE IF EXISTS "person_attributes";
DROP TABLE IF EXISTS "attributes";

CREATE SEQUENCE seq_person_id;

CREATE TABLE public."person"
(person_id integer NOT NULL DEFAULT nextval('seq_person_id'),
username varchar(25) NOT NULL,
first_name varchar(25) NOT NULL,
last_name varchar(25) NOT NULL,
email varchar(50),
gender varchar(1) DEFAULT 'M' NOT NULL,
join_date date NOT NULL,
CONSTRAINT pk_person_person_id PRIMARY KEY (person_id),
CONSTRAINT ck_gender CHECK (gender IN ('M','F'))
);
UNIQUE (username, email));


CREATE TABLE public."person_attributes"
(attribute_id integer NOT NULL, 
person_id integer NOT NULL,

CONSTRAINT pk_person_attributes_attributes_attributes_id_person_id
PRIMARY KEY (attribute_id, person_id));

CREATE SEQUENCE seq_attribute_id;

CREATE TABLE public."attributes"
(attribute_id integer NOT NULL DEFAULT nextval('seq_attribute_id'),
attribute1 varchar(25) NOT NULL,
attribute2 varchar(25) NOT NULL,
attribute3 varchar(25) NOT NULL,
attribute4 varchar(25) NOT NULL,
attribute5 varchar(25) NOT NULL,
CONSTRAINT pk_attribute_attribute_id
PRIMARY KEY (attribute_id));

ALTER TABLE person_attributes ADD FOREIGN KEY (attribute_id) REFERENCES attributes(attribute_id);
ALTER TABLE person_attributes ADD FOREIGN KEY (person_id) REFERENCES person(person_id);


INSERT INTO "person"(username, first_name, last_name) VALUES ('RufusMcdoogan','Daniel','Burke');
INSERT INTO "attributes"(attribute_id,attribute1,attribute2,attribute3,attribute4,attribute5) VALUES (1,'futuristic','achiever','strategic','significance','positivity');
