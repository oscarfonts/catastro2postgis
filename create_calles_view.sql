DROP TABLE IF EXISTS carvia;
CREATE TABLE carvia
(
   "mapa" numeric(6,0), 
   "ttggss" text, 
   "via" numeric(10,0), 
   "denomina" text, 
   "fechaalta" numeric(8,0), 
   "fechabaja" numeric(8,0)
) 
WITH (
  OIDS = FALSE
);

CREATE OR REPLACE VIEW calles_nombre AS
  SELECT ejes.*, carvia.denomina
  from ejes, carvia
  WHERE ejes.via = carvia.via;
  
INSERT INTO geometry_columns(f_table_catalog, f_table_schema, f_table_name, f_geometry_column, coord_dimension, srid, "type")
  SELECT '', '', 'calles_nombre', 'the_geom', ST_CoordDim(the_geom), ST_SRID(the_geom), GeometryType(the_geom)
  FROM calles_nombre LIMIT 1;

