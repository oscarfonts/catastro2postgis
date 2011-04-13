#!/usr/bin/python

# Estructura de los ficheros .cat
catstruct = {}

# 01 - Registro de cabecera
catstruct[1] = [
    [3, 1, 'X', 'tipo_entidad_generadora'],
    [4, 9, 'N', 'codigo_entidad_generadora'],
    [13, 27, 'X', 'nombre_entidad_generadora'],
    [40, 8, 'N', 'fecha_generacion_fichero'],
    [48, 6, 'N', 'hora_generacion_fichero'],
    [54, 4, 'X', 'tipo_fichero'],
    [58, 39, 'X', 'descripcion_contenido_fichero'],
    [97, 21, 'X', 'nombre_fichero'],
    [118, 3, 'N', 'codigo_entidad_destinataria'],
    [121, 8, 'N', 'fecha_inicio_periodo'],
    [129, 8, 'N', 'fecha_finalizacion_periodo']
]

# 11 - Registro de finca
catstruct[11] = [
    [24, 2, 'N', 'codigo_delegacion_meh'],
    [26, 3, 'N', 'codigo_municipio_dgc'],
    [31, 14, 'X', 'parcela_catastral'],
    [51, 2, 'N', 'codigo_provincia_ine'],
    [53, 25, 'X', 'nombre_provincia'],
    [78, 3, 'N', 'codigo_municipio_dgc'],
    [81, 3, 'N', 'codigo_municipio_ine'],
    [84, 40, 'X', 'nombre_municipio'],
    [124, 30, 'X', 'nombre_entidad_menor'],
    [154, 5, 'N', 'codigo_via_publica_dgc'],
    [159, 5, 'X', 'tipo_via'],
    [164, 25, 'X', 'nombre_via'],
    [189, 4, 'N', 'primer_numero_policia'],
    [193, 1, 'X', 'primera_letra'],
    [194, 4, 'N', 'segundo_numero_policia'],
    [198, 1, 'X', 'segunda_letra'],
    [199, 5, 'N', 'kilometro_por_cien'],
    [204, 4, 'X', 'bloque'],
    [216, 25, 'X', 'direccion_no_estructurada'],
    [241, 5, 'N', 'codigo_postal'],
    [246, 2, 'X', 'distrito_municipal'],
    [248, 3, 'N', 'codigo_municipio_origen_caso_agregacion_dgc'],
    [251, 2, 'N', 'codigo_zona_concentracion'],
    [253, 3, 'N', 'codigo_poligono'],
    [256, 5, 'N', 'codigo_parcela'],
    [261, 5, 'X', 'codigo_paraje_dgc'],
    [266, 30, 'N', 'nombre_paraje'],
    [296, 10, 'N', 'superficie_finca_o_parcela_catastral_m2'],
    [306, 7, 'N', 'superficie_construida_total'],
    [313, 7, 'N', 'superficie_construida_sobre_rasante'],
    [320, 7, 'N', 'superficie_construida_bajo_rasante'],
    [327, 7, 'N', 'superficie_cubierta'],
    [334, 9, 'N', 'coordenada_x_por_cien'],
    [343, 10, 'N', 'coordenada_y_por_cien'],
    [582, 20, 'X', 'referencia_catastral_bice'],
    [602, 65, 'X', 'denominacion_bice'],
    [667, 10, 'X', 'codigo_epsg']
]

# 90 - Registro de cola
catstruct[90] = [
    [10, 7, 'N', 'numero_registros_tipo_11'],
    [24, 7, 'N', 'numero_registros_tipo_13'],    
    [31, 7, 'N', 'numero_registros_tipo_14'],
    [38, 7, 'N', 'numero_registros_tipo_15'],
    [45, 7, 'N', 'numero_registros_tipo_16'],
    [52, 7, 'N', 'numero_registros_tipo_17']
]

