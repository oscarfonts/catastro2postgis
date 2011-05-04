CREATE OR REPLACE VIEW ejes_nombre AS
 SELECT DISTINCT ejes.gid, ejes.the_geom, calles.nombre, dict_ttggss.ttggss, dict_ttggss.descripcion as tipo
   FROM ejes
   LEFT OUTER JOIN calles
     ON ejes.via = calles.id, dict_ttggss
  WHERE dict_ttggss.ttggss = ejes.ttggss;

  
INSERT INTO geometry_columns(f_table_catalog, f_table_schema, f_table_name, f_geometry_column, coord_dimension, srid, "type")
  SELECT '', '', 'ejes_nombre', 'the_geom', ST_CoordDim(the_geom), ST_SRID(the_geom), GeometryType(the_geom)
  FROM ejes_nombre LIMIT 1;

CREATE OR REPLACE VIEW parcela_direccion AS 
   SELECT DISTINCT parcela.gid, parcela.the_geom, parcela.refcat,
          CASE WHEN parcela.numero <> 0 THEN (calles.nombre || ', ' || parcela.numero) ELSE calles.nombre END AS direccion
     FROM parcela
     LEFT OUTER JOIN calles
       ON parcela.via = calles.id;

INSERT INTO geometry_columns(f_table_catalog, f_table_schema, f_table_name, f_geometry_column, coord_dimension, srid, "type")
  SELECT '', '', 'parcela_direccion', 'the_geom', ST_CoordDim(the_geom), ST_SRID(the_geom), GeometryType(the_geom)
  FROM parcela_direccion LIMIT 1;

-- TODO sacar direcciones mas chulas, con numeros de policia
CREATE OR REPLACE VIEW construcciones AS 
   SELECT DISTINCT constru.gid, constru.the_geom, constru.constru, dict_constru.desc as tipo, parcela_direccion.direccion
     FROM constru
     LEFT OUTER JOIN dict_constru
       ON constru.constru = dict_constru.id
     LEFT OUTER JOIN parcela_direccion
       ON constru.refcat = parcela_direccion.refcat;

INSERT INTO geometry_columns(f_table_catalog, f_table_schema, f_table_name, f_geometry_column, coord_dimension, srid, "type")
  SELECT '', '', 'construcciones', 'the_geom', ST_CoordDim(the_geom), ST_SRID(the_geom), GeometryType(the_geom)
  FROM construcciones LIMIT 1;

