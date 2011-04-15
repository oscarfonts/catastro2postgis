#!/usr/bin/python
# -*- coding: utf-8 -*-

from catstruct import catstruct # define la estructura de un .CAT

# Creamos una tabla por cada tipo de registro
for tipo in catstruct:
    table = 'cat_'+str(tipo)
    fields = []
    
    # Crear el fragmento SQL para cada campo de la tabla
    for meta in catstruct[tipo]:
        fname = meta[3]
        flen = str(meta[1])
        ftype = 'numeric' if meta[2] == 'N' else 'varchar'        
        fields.append('   "'+fname+'" '+ftype+'('+flen+')')
        
    # Salida SQL directamente a stdout
    print 'DROP TABLE IF EXISTS '+table+';'
    print 'CREATE TABLE '+table+' ('
    print ", \n".join(fields)
    print ');'

