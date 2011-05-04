DROP TABLE IF EXISTS calles;
CREATE TABLE calles
(
   "id" numeric(10),
   "nombre" varchar(128)
);

INSERT INTO calles
SELECT distinct carvia.via as id, dict_tipus_via.desc || ' ' || initcap(substring(carvia.denomina from char_length(split_part(carvia.denomina, ' ', 1))+2)) as nombre
  FROM carvia, dict_tipus_via
 WHERE dict_tipus_via.id =  split_part(carvia.denomina, ' ', 1);

