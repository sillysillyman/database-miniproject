BEGIN TRANSACTION;

DROP TABLE IF EXISTS "kmooc_user";

CREATE TABLE IF NOT EXISTS "kmooc_user" (
  "id" integer NOT NULL,
  "first_name" text NOT NULL,
  "last_name" text NOT NULL,
  PRIMARY KEY("id" AUTOINCREMENT)
);

DROP TABLE IF EXISTS "kmooc_developer";

CREATE TABLE IF NOT EXISTS "kmooc_developer" (
  "user_id" integer NOT NULL,
  "level" text NOT NULL,
  PRIMARY KEY("user_id"),
  FOREIGN KEY("user_id") REFERENCES "kmooc_user"("id")
  ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS "kmooc_tech";

CREATE TABLE IF NOT EXISTS "kmooc_tech" (
  "id" integer NOT NULL,
  "name" text NOT NULL,
  PRIMARY KEY("id" AUTOINCREMENT)
);

DROP TABLE IF EXISTS "kmooc_developer_techs";

CREATE TABLE IF NOT EXISTS "kmooc_developer_techs" (
  "id" integer NOT NULL,
  "developer_id" integer NOT NULL,
  "tech_id" integer NOT NULL,
  PRIMARY KEY("id" AUTOINCREMENT),
  FOREIGN KEY("tech_id") REFERENCES "kmooc_tech"("id"),
  FOREIGN KEY("developer_id") REFERENCES "kmooc_developer"("user_id")
);

INSERT INTO "kmooc_user" ("id","first_name","last_name") VALUES (1,'Daniel','Harris');
INSERT INTO "kmooc_user" ("id","first_name","last_name") VALUES (2,'Daniel','Thompson');
INSERT INTO "kmooc_user" ("id","first_name","last_name") VALUES (3,'Shelly','Hudson');
INSERT INTO "kmooc_user" ("id","first_name","last_name") VALUES (4,'John','Taylor');
INSERT INTO "kmooc_user" ("id","first_name","last_name") VALUES (5,'Sharon','Johnson');
INSERT INTO "kmooc_user" ("id","first_name","last_name") VALUES (6,'Carol','Horn');
INSERT INTO "kmooc_user" ("id","first_name","last_name") VALUES (7,'Paula','Burke');
INSERT INTO "kmooc_user" ("id","first_name","last_name") VALUES (8,'Michaela','Garrison');
INSERT INTO "kmooc_user" ("id","first_name","last_name") VALUES (9,'William','Lopez');
INSERT INTO "kmooc_user" ("id","first_name","last_name") VALUES (10,'James','Simons');
INSERT INTO "kmooc_user" ("id","first_name","last_name") VALUES (11,'Joshua','Brown');
INSERT INTO "kmooc_user" ("id","first_name","last_name") VALUES (12,'Mason','Robinson');
INSERT INTO "kmooc_user" ("id","first_name","last_name") VALUES (13,'Lisa','Johnson');

INSERT INTO "kmooc_developer" ("user_id","level") VALUES (1,'junior');
INSERT INTO "kmooc_developer" ("user_id","level") VALUES (2,'mid');
INSERT INTO "kmooc_developer" ("user_id","level") VALUES (3,'senior');
INSERT INTO "kmooc_developer" ("user_id","level") VALUES (4,'senior');
INSERT INTO "kmooc_developer" ("user_id","level") VALUES (5,'junior');
INSERT INTO "kmooc_developer" ("user_id","level") VALUES (6,'mid');
INSERT INTO "kmooc_developer" ("user_id","level") VALUES (7,'junior');
INSERT INTO "kmooc_developer" ("user_id","level") VALUES (8,'senior');
INSERT INTO "kmooc_developer" ("user_id","level") VALUES (9,'mid');
INSERT INTO "kmooc_developer" ("user_id","level") VALUES (10,'senior');

INSERT INTO "kmooc_tech" ("id","name") VALUES (1,'python');
INSERT INTO "kmooc_tech" ("id","name") VALUES (2,'java');
INSERT INTO "kmooc_tech" ("id","name") VALUES (3,'sql');
INSERT INTO "kmooc_tech" ("id","name") VALUES (4,'html');
INSERT INTO "kmooc_tech" ("id","name") VALUES (5,'css');
INSERT INTO "kmooc_tech" ("id","name") VALUES (6,'cloud');
INSERT INTO "kmooc_tech" ("id","name") VALUES (7,'javascript');
INSERT INTO "kmooc_tech" ("id","name") VALUES (8,'django');
INSERT INTO "kmooc_tech" ("id","name") VALUES (9,'c++');
INSERT INTO "kmooc_tech" ("id","name") VALUES (10,'c#');
INSERT INTO "kmooc_tech" ("id","name") VALUES (11,'unity');
INSERT INTO "kmooc_tech" ("id","name") VALUES (12,'git');
INSERT INTO "kmooc_tech" ("id","name") VALUES (13,'php');
INSERT INTO "kmooc_tech" ("id","name") VALUES (14,'scala');
INSERT INTO "kmooc_tech" ("id","name") VALUES (15,'testing');
INSERT INTO "kmooc_tech" ("id","name") VALUES (16,'go');
INSERT INTO "kmooc_tech" ("id","name") VALUES (17,'flutter');
INSERT INTO "kmooc_tech" ("id","name") VALUES (18,'dart');
INSERT INTO "kmooc_tech" ("id","name") VALUES (19,'ruby');
INSERT INTO "kmooc_tech" ("id","name") VALUES (20,'r');
INSERT INTO "kmooc_tech" ("id","name") VALUES (21,'swift');
INSERT INTO "kmooc_tech" ("id","name") VALUES (22,'kotlin');
INSERT INTO "kmooc_tech" ("id","name") VALUES (23,'linux');

INSERT INTO "kmooc_developer_techs" ("id","developer_id","tech_id") VALUES (1,1,1);
INSERT INTO "kmooc_developer_techs" ("id","developer_id","tech_id") VALUES (2,1,4);
INSERT INTO "kmooc_developer_techs" ("id","developer_id","tech_id") VALUES (3,1,5);
INSERT INTO "kmooc_developer_techs" ("id","developer_id","tech_id") VALUES (4,2,1);
INSERT INTO "kmooc_developer_techs" ("id","developer_id","tech_id") VALUES (5,2,4);
INSERT INTO "kmooc_developer_techs" ("id","developer_id","tech_id") VALUES (6,2,5);
INSERT INTO "kmooc_developer_techs" ("id","developer_id","tech_id") VALUES (7,2,7);
INSERT INTO "kmooc_developer_techs" ("id","developer_id","tech_id") VALUES (8,2,8);
INSERT INTO "kmooc_developer_techs" ("id","developer_id","tech_id") VALUES (9,3,4);
INSERT INTO "kmooc_developer_techs" ("id","developer_id","tech_id") VALUES (10,3,5);
INSERT INTO "kmooc_developer_techs" ("id","developer_id","tech_id") VALUES (11,3,7);
INSERT INTO "kmooc_developer_techs" ("id","developer_id","tech_id") VALUES (12,4,2);
INSERT INTO "kmooc_developer_techs" ("id","developer_id","tech_id") VALUES (13,4,3);
INSERT INTO "kmooc_developer_techs" ("id","developer_id","tech_id") VALUES (14,4,12);
INSERT INTO "kmooc_developer_techs" ("id","developer_id","tech_id") VALUES (15,5,8);
INSERT INTO "kmooc_developer_techs" ("id","developer_id","tech_id") VALUES (16,5,1);
INSERT INTO "kmooc_developer_techs" ("id","developer_id","tech_id") VALUES (17,5,4);
INSERT INTO "kmooc_developer_techs" ("id","developer_id","tech_id") VALUES (18,5,12);
INSERT INTO "kmooc_developer_techs" ("id","developer_id","tech_id") VALUES (19,6,17);
INSERT INTO "kmooc_developer_techs" ("id","developer_id","tech_id") VALUES (20,6,18);
INSERT INTO "kmooc_developer_techs" ("id","developer_id","tech_id") VALUES (21,6,12);
INSERT INTO "kmooc_developer_techs" ("id","developer_id","tech_id") VALUES (22,6,23);
INSERT INTO "kmooc_developer_techs" ("id","developer_id","tech_id") VALUES (23,7,9);
INSERT INTO "kmooc_developer_techs" ("id","developer_id","tech_id") VALUES (24,7,10);
INSERT INTO "kmooc_developer_techs" ("id","developer_id","tech_id") VALUES (25,7,11);
INSERT INTO "kmooc_developer_techs" ("id","developer_id","tech_id") VALUES (26,7,12);
INSERT INTO "kmooc_developer_techs" ("id","developer_id","tech_id") VALUES (27,7,23);
INSERT INTO "kmooc_developer_techs" ("id","developer_id","tech_id") VALUES (28,8,2);
INSERT INTO "kmooc_developer_techs" ("id","developer_id","tech_id") VALUES (29,8,3);
INSERT INTO "kmooc_developer_techs" ("id","developer_id","tech_id") VALUES (30,8,15);
INSERT INTO "kmooc_developer_techs" ("id","developer_id","tech_id") VALUES (31,9,1);
INSERT INTO "kmooc_developer_techs" ("id","developer_id","tech_id") VALUES (32,9,4);
INSERT INTO "kmooc_developer_techs" ("id","developer_id","tech_id") VALUES (33,9,5);
INSERT INTO "kmooc_developer_techs" ("id","developer_id","tech_id") VALUES (34,9,7);
INSERT INTO "kmooc_developer_techs" ("id","developer_id","tech_id") VALUES (35,9,8);
INSERT INTO "kmooc_developer_techs" ("id","developer_id","tech_id") VALUES (36,9,12);
INSERT INTO "kmooc_developer_techs" ("id","developer_id","tech_id") VALUES (37,10,17);
INSERT INTO "kmooc_developer_techs" ("id","developer_id","tech_id") VALUES (38,10,18);
INSERT INTO "kmooc_developer_techs" ("id","developer_id","tech_id") VALUES (39,10,21);
INSERT INTO "kmooc_developer_techs" ("id","developer_id","tech_id") VALUES (40,10,22);

COMMIT;