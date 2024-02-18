BEGIN TRANSACTION;

DROP TABLE IF EXISTS "kmooc_instructor";

CREATE TABLE IF NOT EXISTS "kmooc_instructor" (
  "id" integer NOT NULL,
  "first_name" text NOT NULL,
  "last_name" text NOT NULL,
  "description" text NOT NULL,
  PRIMARY KEY("id" AUTOINCREMENT)
);

DROP TABLE IF EXISTS "kmooc_course";

CREATE TABLE IF NOT EXISTS "kmooc_course" (
  "id" integer NOT NULL,
  "title" text NOT NULL,
  "category" text NOT NULL,
  "subcategory" text NOT NULL,
  "language" text NOT NULL,
  "length" text NOT NULL,
  "rating" real NOT NULL,
  "instructor_id" integer NOT NULL,
  PRIMARY KEY("id" AUTOINCREMENT),
  FOREIGN KEY("instructor_id") REFERENCES "kmooc_instructor"("id")
  ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS "kmooc_learningpath";

CREATE TABLE IF NOT EXISTS "kmooc_learningpath" (
  "id" integer NOT NULL,
  "title" text NOT NULL,
  "subtitle" text NOT NULL,
  PRIMARY KEY("id" AUTOINCREMENT)
);

DROP TABLE IF EXISTS "kmooc_learningpath_courses";

CREATE TABLE IF NOT EXISTS "kmooc_learningpath_courses" (
  "id" integer NOT NULL,
  "learningpath_id" integer NOT NULL,
  "course_id" integer NOT NULL,
  PRIMARY KEY("id" AUTOINCREMENT),
  FOREIGN KEY("course_id") REFERENCES "kmooc_course"("id")
  ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY("learningpath_id") REFERENCES "kmooc_learningpath"("id")
  ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO "kmooc_instructor" ("id", "first_name", "last_name", "description") VALUES (1, "James", "Smith", "Data Scientist");
INSERT INTO "kmooc_instructor" ("id", "first_name", "last_name", "description") VALUES (2, "Mary", "Brown", "Programmer");

INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (1,'Data Science with Python - Pandas','development','programming languages','en','12h 18min',4.78,1);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (2,'Deep Learning with Python','development','data science','en','8h 27min',4.5,1);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (3,'Machine Learning - Decision Trees and Random Forests - Python','development','data science','en','5h 43min',4.86,1);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (4,'Python programming - from A to Z','development','programming languages','en','16h 5min',4.72, 1);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (5,'Create modern web applications in Python - Dash, Plotly','development','web development','en','11h 38min',4.81,1);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (6,'Interactive data visualization in Python - Plotly','development','programming languages','en','8h 37min',4.67,1);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (7,'Big Data, Hadoop and MapReduce in Python','development','programming languages','en','7h 44min',4.64,1);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (8,'Introduction to Neural Networks - Tensorflow 2.0 + Keras','development','data science','en','8h 38min',4.64, 1);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (9,'Big Data: Data analysis using SQL and BigQuery','development','database design & development','en','9h 26min',4.45, 1);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (10,'Artificial Intelligence - Computer Vision in Python','development','data science','en','6h 51min',4.87,1);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (11,'Data Science Bootcamp in Python - from A to Z','development','data science','en','12h 40min',4.48,1);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (12,'Machine Learning Bootcamp in Python Part I - from A to Z','development','data science','en','11h 1min',4.73,1);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (13,'Machine Learning Bootcamp in Python Part II - from A to Z','development','data science','en','5h 9min',4.89,1);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (14,'200+ Exercises - Programming in Python - from A to Z','development','programming languages','en','0h 37 min',4.66,1);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (15,'250+ Exercises - Data Science Bootcamp in Python','development','programming languages','en','7h 8min',4.89,1);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (16,'200+ Exercises - Programming in Python - from A to Z','development','programming languages','eng','0h 30min',4.29,1);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (17,'250+ Exercises - Data Science Bootcamp in Python','development','data science','eng','0h 29min',4.29,1);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (18,'100+ Exercises - Python Programming - Data Science - NumPy', 'development','data science','eng','0h 30min',4.13,1);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (19,'130+ Exercises - Python Programming - Data Science - Pandas','development','data science','eng','0h 28min',4.08,1);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (20,'100+ Exercises - Python - Data Science - scikit-learn','development','data science','eng','0h 28min',3.6,1);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (21,'Machine Learning Bootcamp in Python Part III - Exercises', 'development','data science','en','0h 33min',4.87,1);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (22,'210+ Exercises - Python - Embedded Modules - A to Z','development','programming languages','en','0h 33min',4.61,1);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (23,'210+ Exercises - Python Standard Libraries - from A to Z','development','programming languages','eng','0h 28min',4.41,1);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (24,'Object-oriented programming in Python - OOP - from A to Z','development','programming languages','en','10h 5min',4.6,1);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (25,'150+ Exercises - Object Oriented Programming in Python - OOP','development','programming languages','en','0h 43min',4.81,1);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (26,'150+ Exercises - Object Oriented Programming in Python - OOP','development','programming languages','eng','0h 28min',4.92,1);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (27,'120+ Exercises in Python - Data Science - NumPy','development','data science','en','0h 33min',4.81,1);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (28,'130+ Exercises in Python - Data Science - Pandas', 'development','data science','en','0h 33min',4.78,1);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (29,'Unit tests in Python - unittest framework','development','programming languages','en','4h 58min',4.64,1);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (30,'100+ Exercises - Unit Tests in Python - unittest','development','programming languages','en','0h 33min',4.4,1);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (31,'100+ Exercises - Unit tests in Python - unittest framework','development','programming languages','eng','0h 28min',4.76,1);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (32,'SQL Bootcamp - SQLite Databases - Part I','development','database design & development','en','5h 17min',4.47,1);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (33,'SQL Bootcamp - SQLite Databases - Part II','development','database design & development','en','4h 56min',4.57,1);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (34,'SQL Bootcamp - SQLite Databases - Part III','development','database design & development','en','0h 36min',4.72,1);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (35,'SQL Bootcamp - SQLite Databases - Part IV','development','database design & development','en','0h 36min',5.0,1);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (36,'SQL Bootcamp - Hands-On Exercises - SQLite - Part I','development','database design & development','eng','0h 28min',4.61,1);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (37,'SQL Bootcamp - Hands-On Exercises - SQLite - Part II','development','database design & development','eng','0h 28min',4.61,1);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (38,'100+ Exercises - Advanced Python Programming','development','programming languages','en','0h 33min',4.56,1);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (39,'100+ Exercises - Advanced Python Programming','development','programming languages','eng','0h 28min',5.0,1);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (40,'150+ Exercises - Data Structures in Python - Hands-On','development','programming languages','eng','0h 28min',5.0,1);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (41,'C programming - from A to Z','development','programming languages','en','6h 28min',4.24,2);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (42,'150+ Exercises - Programming in C language - from A to Z','development','programming languages','en','0h 31min',4.25,2);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (43,'Programming in C++ - from A to Z','development','programming languages','en','9h 4min',4.61,2);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (44,'150+ Exercises - Programming in C++ - from A to Z','development','programming languages','en','0h 38min',4.56,2);
INSERT INTO "kmooc_course" ("id","title","category","subcategory","language","length","rating","instructor_id") VALUES (45,'150+ Exercises - Object Oriented Programming in C++ - OOP','development','programming languages','en','0h 30min',5.0,2);

INSERT INTO "kmooc_learningpath" ("id","title","subtitle") VALUES (1,'Path C Developer','Learn one of the most popular programming languages ​​and open the door to a career in IT!');
INSERT INTO "kmooc_learningpath" ("id","title","subtitle") VALUES (2,'Path C++ Developer','Learn one of the most popular programming languages ​​and open the door to a career in IT!');
INSERT INTO "kmooc_learningpath" ("id","title","subtitle") VALUES (3,'Path Python Developer','Learn one of the most popular programming languages ​​and open the door to a career in IT!');
INSERT INTO "kmooc_learningpath" ("id","title","subtitle") VALUES (4,'Path Big Data Analyst','Analyze data in the cloud using the latest Big Data technologies!');
INSERT INTO "kmooc_learningpath" ("id","title","subtitle") VALUES (5,'Path BI Analyst / Data Analyst','Become a data analyst for the 21st century!');
INSERT INTO "kmooc_learningpath" ("id","title","subtitle") VALUES (6,'Path Data Scientist / Machine Learning Engineer','Choose the direction of the profession of the future and open the door to a career in IT!');
INSERT INTO "kmooc_learningpath" ("id","title","subtitle") VALUES (7,'Path Data Scientist / Deep Learning Engineer','Enter the world of deep learning and take advantage of machine learning on the market!');
INSERT INTO "kmooc_learningpath" ("id","title","subtitle") VALUES (8,'Path All-in-One','Buy access to all courses on the platform!');

INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (1,1,41);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (2,1,42);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (3,2,43);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (4,2,44);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (5,2,45);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (6,3,4);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (7,3,38);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (8,3,14);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (9,3,22);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (10,3,24);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (11,3,25);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (12,3,29);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (13,3,30);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (14,4,4);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (15,4,6);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (16,4,7);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (17,4,38);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (18,4,9);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (19,4,14);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (20,4,22);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (21,4,24);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (22,4,25);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (23,4,27);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (24,4,28);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (25,4,29);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (26,4,30);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (27,5,32);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (28,5,33);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (29,5,4);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (30,5,5);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (31,5,6);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (32,5,38);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (33,5,11);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (34,5,14);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (35,5,15);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (36,5,22);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (37,5,24);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (38,5,25);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (39,5,27);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (40,5,28);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (41,5,29);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (42,6,1);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (43,6,3);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (44,6,4);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (45,6,6);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (46,6,11);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (47,6,12);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (48,6,13);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (49,6,14);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (50,6,15);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (51,6,21);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (52,6,22);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (53,6,24);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (54,6,25);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (55,6,27);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (56,6,28);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (57,6,29);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (58,6,32);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (59,6,33);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (60,6,38);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (61,7,1);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (62,7,2);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (63,7,4);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (64,7,6);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (65,7,8);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (66,7,10);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (67,7,11);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (68,7,12);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (69,7,13);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (70,7,14);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (71,7,15);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (72,7,21);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (73,7,22);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (74,7,24);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (75,7,25);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (76,7,27);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (77,7,28);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (78,7,29);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (79,7,32);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (80,7,33);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (81,7,38);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (82,8,1);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (83,8,2);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (84,8,3);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (85,8,4);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (86,8,5);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (87,8,6);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (88,8,7);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (89,8,8);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (90,8,9);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (91,8,10);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (92,8,11);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (93,8,12);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (94,8,13);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (95,8,14);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (96,8,15);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (97,8,21);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (98,8,22);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (99,8,24);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (100,8,25);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (101,8,27);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (102,8,28);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (103,8,29);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (104,8,32);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (105,8,33);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (106,8,38);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (107,8,41);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (108,8,42);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (109,8,43);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (110,8,44);
INSERT INTO "kmooc_learningpath_courses" ("id","learningpath_id","course_id") VALUES (111,8,45);

DROP INDEX IF EXISTS "kmooc_course_instructor_id_idx";
CREATE INDEX IF NOT EXISTS "kmooc_course_instructor_id_idx" ON "kmooc_course" ("instructor_id");

DROP INDEX IF EXISTS "kmooc_learningpath_courses_learningpath_id_idx";
CREATE INDEX IF NOT EXISTS "kmooc_learningpath_courses_learningpath_id_idx" ON "kmooc_learningpath_courses" ("learningpath_id");

DROP INDEX IF EXISTS "kmooc_learningpath_courses_course_id_idx";
CREATE INDEX IF NOT EXISTS "kmooc_learningpath_courses_course_id_idx" ON "kmooc_learningpath_courses" ("course_id");

DROP INDEX IF EXISTS "kmooc_learningpath_courses_learningpath_id_course_id_idx";
CREATE UNIQUE INDEX IF NOT EXISTS "kmooc_learningpath_courses_learningpath_id_course_id_idx" ON "kmooc_learningpath_courses" ("learningpath_id", "course_id");

COMMIT;