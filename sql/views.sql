CREATE OR REPLACE VIEW calle_nombre AS
  SELECT DISTINCT ejes.gid, ejes.the_geom, ejes.ttggss, initcap(carvia.denomina) as nombre
  FROM ejes, carvia
  WHERE ejes.via = carvia.via;
  
INSERT INTO geometry_columns(f_table_catalog, f_table_schema, f_table_name, f_geometry_column, coord_dimension, srid, "type")
  SELECT '', '', 'calle_nombre', 'the_geom', ST_CoordDim(the_geom), ST_SRID(the_geom), GeometryType(the_geom)
  FROM calle_nombre LIMIT 1;


CREATE OR REPLACE VIEW parcela_direccion AS 
   SELECT DISTINCT parcela.gid, parcela.the_geom, parcela.refcat, (initcap(carvia.denomina) || ', ' || parcela.numero) as direccion
     FROM parcela, carvia
     WHERE parcela.via = carvia.via;

INSERT INTO geometry_columns(f_table_catalog, f_table_schema, f_table_name, f_geometry_column, coord_dimension, srid, "type")
  SELECT '', '', 'parcela_direccion', 'the_geom', ST_CoordDim(the_geom), ST_SRID(the_geom), GeometryType(the_geom)
  FROM parcela_direccion LIMIT 1;

-- TODO sacar direcciones mas chulas
CREATE OR REPLACE VIEW construcciones AS 
   SELECT DISTINCT constru.gid, constru.the_geom, constru.refcat, constru.constru, dict_constru.desc as construccion, parcela_direccion.direccion
     FROM constru, dict_constru, parcela_direccion
     WHERE constru.constru = dict_constru.id
     AND constru.refcat = parcela_direccion.refcat;

INSERT INTO geometry_columns(f_table_catalog, f_table_schema, f_table_name, f_geometry_column, coord_dimension, srid, "type")
  SELECT '', '', 'construcciones', 'the_geom', ST_CoordDim(the_geom), ST_SRID(the_geom), GeometryType(the_geom)
  FROM construcciones LIMIT 1;

