DROP TABLE attacks;
DROP TABLE zombies;
DROP TABLE victims;

CREATE TABLE zombies(
  id SERIAL8 PRIMARY KEY,
  zombie_name VARCHAR,
  type VARCHAR
);

CREATE TABLE victims(
  id SERIAL8 PRIMARY KEY,
  victim_name VARCHAR,
  age INT2
);

CREATE TABLE attacks(
  id SERIAL8 PRIMARY KEY,
  zombie_id INT8 REFERENCES zombies(id),
  victim_id INT8 REFERENCES victims(id)
);


INSERT INTO zombies(zombie_name,type)
  VALUES ('alan','angry');

INSERT INTO zombies(zombie_name,type)
  VALUES ('bob','happy');

INSERT INTO zombies(zombie_name,type)
  VALUES ('chris','tired');



INSERT INTO victims(victim_name, age)
  VALUES ('dave',79);

INSERT INTO victims(victim_name, age)
  VALUES ('eddy',45);

INSERT INTO victims(victim_name, age)
  VALUES ('fred',23);


INSERT INTO attacks(zombie_id, victim_id)
  VALUES (1,1);

INSERT INTO attacks(zombie_id, victim_id)
  VALUES (1,2);

INSERT INTO attacks(zombie_id, victim_id)
  VALUES (1,3);

INSERT INTO attacks(zombie_id, victim_id)
  VALUES (2,1);

INSERT INTO attacks(zombie_id, victim_id)
  VALUES (2,1);

INSERT INTO attacks(zombie_id, victim_id)
  VALUES (3,1);

-- Name and shame list for bad(good?) zombies
SELECT zombies.zombie_name, victims.*
FROM victims, zombies, attacks
WHERE victims.id = attacks.victim_id;


SELECT * FROM attacks;
