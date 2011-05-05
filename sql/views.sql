--
-- Ejes con sus nombres
--
﻿CREATE OR REPLACE VIEW ejes_nombre AS
 SELECT DISTINCT ejes.gid, ejes.the_geom, calles.nombre, dict_ttggss.ttggss, dict_ttggss.descripcion as tipo
   FROM ejes
   LEFT OUTER JOIN calles
     ON ejes.via = calles.id, dict_ttggss
  WHERE dict_ttggss.ttggss = ejes.ttggss;
  
INSERT INTO geometry_columns(f_table_catalog, f_table_schema, f_table_name, f_geometry_column, coord_dimension, srid, "type")
  SELECT '', '', 'ejes_nombre', 'the_geom', ST_CoordDim(the_geom), ST_SRID(the_geom), GeometryType(the_geom)
  FROM ejes_nombre LIMIT 1;

SELECT 
, *
FROM constru

---
--- Construcciones con sus direcciones y si tienen alturas positivas
---
CREATE OR REPLACE VIEW construcciones AS 
   SELECT DISTINCT constru.gid, constru.the_geom, constru.refcat, constru.constru, dict_constru.desc as tipo,
     CASE
       WHEN nombre_via = ''
       THEN initcap(nombre_paraje)
       ELSE dict_tipus_via.desc || ' ' || INITCAP(nombre_via) ||
         CASE
	   WHEN primer_numero_policia <> 0
           THEN ', ' || primer_numero_policia ||
	     CASE
	       WHEN primera_letra <> ''
	       THEN primera_letra
	       ELSE ''
	     END
	   ELSE ''
         END ||
         CASE
           WHEN segundo_numero_policia <> 0
	   THEN '-' || segundo_numero_policia ||
	     CASE
	       WHEN segunda_letra <> ''
	       THEN segunda_letra
	       ELSE ''
	     END
	   ELSE ''
         END
     END AS direccion,
        (constru.constru ~ E'(?:^|\\+)(L{1,3}|(XL|X{1,3})|IX|VI{1,3}|I?V|I{1,3})') as tiene_alturas_positivas
   FROM constru
   LEFT OUTER JOIN dict_constru
     ON constru.constru = dict_constru.id
   LEFT OUTER JOIN cat_11
     ON constru.refcat=cat_11.parcela_catastral
   LEFT OUTER JOIN dict_tipus_via
    ON dict_tipus_via.id = cat_11.tipo_via;

INSERT INTO geometry_columns(f_table_catalog, f_table_schema, f_table_name, f_geometry_column, coord_dimension, srid, "type")
  SELECT '', '', 'construcciones', 'the_geom', ST_CoordDim(the_geom), ST_SRID(the_geom), GeometryType(the_geom)
  FROM construcciones LIMIT 1;

