#!/bin/bash

# Params
dbname=catastro
dbuser=postgres
s_srs=23031
grid="./ntv2/peninsula.gsb"
datadir=SantaEugeniaDeBerga/


# Crear base de datos
echo Creando base de datos $dbname con propietario $dbuser
psql -d postgres -U $dbuser -f sql/create_db.sql -v owner=$dbuser -v database=$dbname


# Diccionarios
echo Creando diccionarios
psql -d $dbname -U $dbuser -f sql/dict.sql
for file in dict/*.csv
do
   table=`basename $file .csv`
   psql -d $dbname -U $dbuser -c "COPY ${table} FROM '${PWD}/${file}' WITH DELIMITER ',' CSV HEADER" 
done


# Shapefiles
for zipfile in ${datadir}*.zip
do
    folder=`basename $zipfile .zip`
    echo Descomprimiendo cartografia ${folder}
        
    # Unzip twice to tmp
    mkdir -p ${datadir}tmp/${folder}
    unzip -qo "$zipfile" -d ${datadir}tmp/${folder}
    for layerzip in ${datadir}tmp/${folder}/*.zip
    do
        unzip -qo "$layerzip" -d ${datadir}tmp/${folder}
        rm $layerzip
    done
    
    # Reproject to EPSG:4326
    echo Reproyectando ${folder}
    ogr2ogr -overwrite -s_srs "+init=epsg:$s_srs +nadgrids=${grid} +wktext" -t_srs EPSG:4326 ${datadir}${folder} ${datadir}tmp/${folder}

    for shapefile in ${datadir}${folder}/*.dbf
    do
        table=`basename $shapefile .dbf`
        shp2pgsql -p -s 4326 $shapefile $table | psql -d $dbname -U $dbuser > /dev/null
        shp2pgsql -W ISO-8859-1 -a -s 4326 $shapefile $table | psql -d $dbname -U $dbuser > /dev/null
    done
done


# Datos alfanumericos (.cat)
./catstruct2sql.py | psql -d $dbname -U $dbuser
for gzfile in ${datadir}*.gz
do
    filename=`basename $gzfile .gz`
    echo Descomprimiendo datos alfanumericos ${filename}
    gunzip -c "$gzfile" > ${datadir}tmp/${filename}
    iconv -f ISO-8859-1 -t UTF-8 ${datadir}tmp/${filename} -o ${datadir}${filename}
    dirname=`basename $filename .CAT`
    mkdir ${datadir}$dirname
    ./cat2csv.py ${datadir}${filename} ${datadir}${dirname}
    for csvfile in ${datadir}${dirname}/*.csv
    do
       table=`basename $csvfile .csv`
       psql -d $dbname -U $dbuser -c "COPY ${table} FROM '${PWD}/${csvfile}' WITH DELIMITER ',' CSV HEADER" 
    done
done


# Calles & Vistas
echo Creando vistas
psql -d $dbname -U $dbuser -f sql/calles.sql
psql -d $dbname -U $dbuser -f sql/views.sql

# Limpieza
rm -R ${datadir}/tmp

