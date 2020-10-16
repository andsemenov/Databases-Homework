drop table if exists mentors CASCADE;
drop table if exists students CASCADE;
drop table if exists classes CASCADE;
drop table if exists activities CASCADE;

CREATE TABLE mentors (
  id       SERIAL PRIMARY KEY,
  name     VARCHAR(30) NOT NULL,
  years_in_Glasgow    INT,
  address  VARCHAR(120),
  city     VARCHAR(30),
  postcode VARCHAR(12),
  country  VARCHAR(20),
  favourite_language VARCHAR(30)
);

CREATE TABLE students (
  id       SERIAL PRIMARY KEY,
  name     VARCHAR(120) NOT NULL,
  graduated  boolean NOT NULL
);

CREATE TABLE classes (
  id            SERIAL PRIMARY KEY,
  topic     VARCHAR(30),
  mentor_id   INT REFERENCES mentors(id),
  time TIME NOT NULL,
  date  DATE NOT NULL
);

CREATE TABLE activities (
  id            SERIAL PRIMARY KEY,
  classes_id   INT REFERENCES classes(id),
  student_id      INT REFERENCES students(id)
);

INSERT INTO mentors (name, years_in_Glasgow, address, city, postcode, country,favourite_language) VALUES ('John Smith',0,'11 New Road','Glasgow','G11 5AB','UK','Javascript');
INSERT INTO mentors (name, years_in_Glasgow, address, city, postcode, country,favourite_language) VALUES ('Sue Jones',11,'120 Old Street','Glasgow','G21 6AC','UK','NodeJs');
INSERT INTO mentors (name, years_in_Glasgow, address, city, postcode, country,favourite_language) VALUES ('Alice Evans',21,'3 High Road','Glasgow','G31 7AD','UK','ReactJS');
INSERT INTO mentors (name, years_in_Glasgow, address, city, postcode, country,favourite_language) VALUES ('Mohammed Trungpa',3,'25 Blue Road','Glasgow','G41 8AG','UK','Javascript');
INSERT INTO mentors (name, years_in_Glasgow, address, city, postcode, country,favourite_language) VALUES ('Steven King',14,'19 Bed Street','Glasgow','G51 9AF','UK','CSS');


INSERT INTO students (name, graduated) VALUES ('Nadia Sethuraman',true);
INSERT INTO students (name, graduated) VALUES ('Melinda Marsh',false);
INSERT INTO students (name, graduated) VALUES ('Martín Sommer',true);
INSERT INTO students (name, graduated) VALUES ('Laurence Lebihan',true);
INSERT INTO students (name, graduated) VALUES ('Keith Stewart',false);
INSERT INTO students (name, graduated) VALUES ('Aria Sethan',true);
INSERT INTO students (name, graduated) VALUES ('Beata Forsh',false);
INSERT INTO students (name, graduated) VALUES ('Cinda Lommer',true);
INSERT INTO students (name, graduated) VALUES ('Diana Serhan',true);
INSERT INTO students (name, graduated) VALUES ('Ellton Smart',false);


INSERT INTO classes (topic, mentor_id, time, date) VALUES ('Javascript', 1, '10:00','2020-07-01');
INSERT INTO classes (topic, mentor_id, time, date) VALUES ('NodeJS', 2, '17:00','2020-09-02');
INSERT INTO classes (topic, mentor_id, time, date) VALUES ('React', 3, '11:00','2020-08-03');
INSERT INTO classes (topic, mentor_id, time, date) VALUES ('CSS', 4, '13:00', '2020-03-08');
INSERT INTO classes (topic, mentor_id, time, date) VALUES ('Javascript', 1, '15:00','2020-10-09' );
INSERT INTO classes (topic, mentor_id, time, date) VALUES ('HTML', 2, '12:00','2020-04-10');
INSERT INTO classes (topic, mentor_id, time, date) VALUES ('React', 3,'10:00', '2020-10-11' );
INSERT INTO classes (topic, mentor_id, time, date) VALUES ('Javascript', 4, '10:00','2020-10-15');
INSERT INTO classes (topic, mentor_id, time, date) VALUES ('NodeJS', 1, '10:00', '2020-10-18');
INSERT INTO classes (topic, mentor_id, time, date) VALUES ('React', 2, '13:00','2020-10-23');
INSERT INTO classes (topic, mentor_id, time, date) VALUES ('CSS', 3, '11:00','2020-04-25');
INSERT INTO classes (topic, mentor_id, time, date) VALUES ('Javascript', 4, '14:00','2020-10-26');

INSERT INTO activities (classes_id, student_id) VALUES (1, 1);
INSERT INTO activities (classes_id, student_id) VALUES (1, 2);
INSERT INTO activities (classes_id, student_id) VALUES (1, 3);
INSERT INTO activities (classes_id, student_id) VALUES (2, 1);
INSERT INTO activities (classes_id, student_id) VALUES (2, 2);
INSERT INTO activities (classes_id, student_id) VALUES (2, 3);
INSERT INTO activities (classes_id, student_id) VALUES (3, 1);
INSERT INTO activities (classes_id, student_id) VALUES (3, 2);
INSERT INTO activities (classes_id, student_id) VALUES (3, 3);
INSERT INTO activities (classes_id, student_id) VALUES (4, 4);
INSERT INTO activities (classes_id, student_id) VALUES (4, 5);
INSERT INTO activities (classes_id, student_id) VALUES (4, 6);
INSERT INTO activities (classes_id, student_id) VALUES (5, 4);
INSERT INTO activities (classes_id, student_id) VALUES (5, 5);
INSERT INTO activities (classes_id, student_id) VALUES (5, 6);
INSERT INTO activities (classes_id, student_id) VALUES (6, 4);
INSERT INTO activities (classes_id, student_id) VALUES (6, 5);
INSERT INTO activities (classes_id, student_id) VALUES (6, 6);