#!/usr/bin/python
# -*- coding: utf-8 -*-

# Estructura de los ficheros .cat
# 2011-04-13

# Transposicion literal de la especificacion (salvo error u omision):
# http://www.catastro.meh.es/pdf/formatos_intercambio/catastro_fin_cat_2006.pdf

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

# 11 - Registro de Finca
catstruct[11] = [
    [24, 2, 'N', 'codigo_delegacion_meh'],
    [26, 3, 'N', 'codigo_municipio_dgc'],
    [31, 14, 'X', 'parcela_catastral'],
    [51, 2, 'N', 'codigo_provincia_ine'],
    [53, 25, 'X', 'nombre_provincia'],
    [78, 3, 'N', 'codigo_municipio_dgc_2'],
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

# 13 - Registro de Unidad Constructiva
catstruct[13] = [
    [24, 2, 'N', 'codigo_delegacion_meh'],
    [26, 3, 'N', 'codigo_municipio_dgc'],
    [29, 2, 'X', 'clase_unidad_constructiva'],
    [31, 14, 'X', 'parcela_catastral'],
    [45, 4, 'X', 'codigo_unidad_constructiva'],
    [51, 2, 'N', 'codigo_provincia_ine'],
    [53, 25, 'X', 'nombre_provincia'],
    [78, 3, 'N', 'codigo_municipio_dgc_2'],
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
    [216, 25, 'X', 'direccion_no_estructurada'],
    [296, 4, 'N', 'anyo_construccion'],    
    [300, 1, 'X', 'exactitud_anyo_construccion'], #'E', '+', '-', 'C'
    [301, 7, 'N', 'superficie_suelo_ocupado'],
    [308, 5, 'N', 'longitud_fachada_cm'],
    [410, 4, 'X', 'codigo_unidad_constructiva_matriz']
]

# 14 - Registro de Construccion
catstruct[14] = [
    [24, 2, 'N', 'codigo_delegacion_meh'],
    [26, 3, 'N', 'codigo_municipio_dgc'],
    [31, 14, 'X', 'parcela_catastral'],
    [45, 4, 'N', 'numero_orden_elemento_construccion'],
    [51, 4, 'X', 'codigo_unidad_constructiva_asociada'],
    [59, 4, 'X', 'bloque'],
    [63, 2, 'X', 'escalera'],
    [65, 3, 'X', 'planta'],
    [68, 3, 'X', 'puerta'],
    [71, 3, 'X', 'codigo_destino_dgc'],
    [74, 1, 'X', 'tipo_reforma_o_rehabilitacion'], # 'R', 'O', 'E', 'I', ''
    [75, 4, 'N', 'anyo_reforma'],
    [79, 4, 'N', 'anyo_antiguedad_efectiva_catastro'],
    [83, 1, 'X', 'indicador_local_interior'], # 'S', 'N'
    [84, 7, 'N', 'superficie_total_efectos_catastro_m2'],
    [91, 7, 'N', 'superficie_porches_y_terrazas_m2'],
    [98, 7, 'N', 'superficie_imputable_en_otras_plantas_m2'],
    [105, 5, 'X', 'tipologia_constructiva'],
    [112, 3, 'X', 'modalidad_reparto_elementos_comunes']
]

# 15 - Registro de Inmueble
catstruct[15] = [
    [24, 2, 'N', 'codigo_delegacion_meh'],
    [26, 3, 'N', 'codigo_municipio_dgc'],
    [29, 2, 'X', 'clase_bien_inmueble'],
    [31, 14, 'X', 'parcela_catastral'],
    [45, 4, 'N', 'numero_secuencia_en_parcela'],
    [49, 1, 'X', 'primer_caracter_control'],
    [50, 1, 'X', 'segundo_caracter_control'],
    [51, 8, 'N', 'numero_fijo_bien_inmueble'],
    [59, 15, 'X', 'identificacion_inmueble_segun_ayuntamiento'],
    [74, 19, 'X', 'numero_finca_registral'],
    [93, 2, 'N', 'codigo_provincia_ine'],
    [95, 25, 'X', 'nombre_provincia'],
    [120, 3, 'N', 'codigo_municipio_dgc_2'],
    [123, 3, 'N', 'codigo_municipio_ine'],
    [126, 40, 'X', 'nombre_municipio'],
    [166, 30, 'X', 'nombre_entidad_menor'],
    [196, 5, 'N', 'codigo_via_publica_dgc'],
    [201, 5, 'X', 'tipo_via'],
    [206, 25, 'X', 'nombre_via'],
    [231, 4, 'N', 'primer_numero_policia'],
    [235, 1, 'X', 'primera_letra'],
    [236, 4, 'N', 'segundo_numero_policia'],
    [240, 1, 'X', 'segunda_letra'],
    [241, 5, 'N', 'kilometro_por_cien'],
    [246, 4, 'X', 'bloque'],
    [250, 2, 'X', 'escalera'],
    [252, 3, 'X', 'planta'],
    [255, 3, 'X', 'puerta'],
    [258, 25, 'X', 'direccion_no_estructurada'],
    [283, 5, 'N', 'codigo_postal'],
    [288, 2, 'X', 'distrito_municipal'],
    [290, 3, 'N', 'codigo_municipio_origen_caso_agregacion_dgc'],
    [293, 2, 'N', 'codigo_zona_concentracion'],
    [295, 3, 'N', 'codigo_poligono'],
    [298, 5, 'N', 'codigo_parcela'],
    [303, 5, 'X', 'codigo_paraje_dgc'],
    [308, 30, 'X', 'nombre_paraje'],
    [368, 4, 'X', 'numero_orden_inmueble_en_escritura'],
    [372, 4, 'N', 'anyo_antiguedad_inmueble'],
    [428, 1, 'X', 'clave_uso'], # Ver cod_usos.csv
    [442, 10, 'N', 'superficie_construida_m2'],
    [452, 10, 'N', 'superficie_asociada_m2'],
    [462, 9, 'N', 'coeficiente_propiedad_en_cienmillonesimas_partes']
]

# 16 - Registro de reparto de elementos comunes
catstruct[16] = [
    [24, 2, 'N', 'codigo_delegacion_meh'],
    [26, 3, 'N', 'codigo_municipio_dgc'],
    [31, 14, 'X', 'parcela_catastral'],
    [45, 4, 'N', 'numero_elemento'],
    [49, 2, 'X', 'calificacion_catastral_subparcela_abstracta'],
    [51, 4, 'N', 'numero_orden_segmento']
    # Aqui hay un bloque que se repite hasta 15 veces, y que nos saltamos
]

# 17 - Registro de cultivos
catstruct[17] = [
    [24, 2, 'N', 'codigo_delegacion_meh'],
    [26, 3, 'N', 'codigo_municipio_dgc'],
    [29, 2, 'X', 'naturaleza_suelo_ocupado'], # 'UR' urbana, 'RU' rustica
    [31, 14, 'X', 'parcela_catastral'],
    [45, 4, 'X', 'codigo_subparcela'],
    [51, 4, 'N', 'numero_orden_fiscal_en_parcela'],
    [55, 1, 'X', 'tipo_subparcela'], # 'T' terreno, 'A' absracta, 'D' dominio publico
    [56, 10, 'N', 'superficie_subparcela_m2'],
    [66, 2, 'X', 'calificacion_catastral_o_clase_cultivo'],
    [68, 40, 'X', 'denominacion_clase_cultivo'],
    [108, 2, 'N', 'intensidad_productiva'],
    [127, 3, 'X', 'codigo_modalidad_reparto'] # [TA]C[1234]
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

