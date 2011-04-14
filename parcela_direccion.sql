-- Parcelas con direcciones

CREATE OR REPLACE VIEW parcela_direccion AS 
 SELECT parcela.gid, parcela.mapa, parcela.delegacio, parcela.municipio, parcela.masa, parcela.hoja, parcela.tipo, parcela.parcela, parcela.coorx, parcela.coory, parcela.via, parcela.numero, parcela.numerodup, parcela.numsymbol, parcela.area, parcela.fechaalta, parcela.fechabaja, parcela.ninterno, parcela.refcat, parcela.the_geom, cat_11.codigo_delegacion_meh, cat_11.codigo_municipio_dgc, cat_11.parcela_catastral, cat_11.codigo_provincia_ine, cat_11.nombre_provincia, cat_11.codigo_municipio_dgc_2, cat_11.codigo_municipio_ine, cat_11.nombre_municipio, cat_11.nombre_entidad_menor, cat_11.codigo_via_publica_dgc, cat_11.tipo_via, cat_11.nombre_via, cat_11.primer_numero_policia, cat_11.primera_letra, cat_11.segundo_numero_policia, cat_11.segunda_letra, cat_11.kilometro_por_cien, cat_11.bloque, cat_11.direccion_no_estructurada, cat_11.codigo_postal, cat_11.distrito_municipal, cat_11.codigo_municipio_origen_caso_agregacion_dgc, cat_11.codigo_zona_concentracion, cat_11.codigo_poligono, cat_11.codigo_parcela, cat_11.codigo_paraje_dgc, cat_11.nombre_paraje, cat_11.superficie_finca_o_parcela_catastral_m2, cat_11.superficie_construida_total, cat_11.superficie_construida_sobre_rasante, cat_11.superficie_construida_bajo_rasante, cat_11.superficie_cubierta, cat_11.coordenada_x_por_cien, cat_11.coordenada_y_por_cien, cat_11.referencia_catastral_bice, cat_11.denominacion_bice, cat_11.codigo_epsg, (tipo_via ||' ' || nombre_via || ' ' || primer_numero_policia) AS direccion
   FROM parcela
   LEFT OUTER JOIN cat_11 ON parcela.refcat::text = cat_11.parcela_catastral::text;

ALTER TABLE parcela_direccion OWNER TO opengeo;

INSERT INTO geometry_columns(f_table_catalog, f_table_schema, f_table_name, f_geometry_column, coord_dimension, srid, "type")
  SELECT '', '', 'parcela_direccion', 'the_geom', ST_CoordDim(the_geom), ST_SRID(the_geom), GeometryType(the_geom)
  FROM parcela_direccion LIMIT 1;
