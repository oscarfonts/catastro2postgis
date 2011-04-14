#!/bin/bash

# Params
s_srs=23031
grid="./peninsula.gsb"
dbname=catastro
dbuser=opengeo

# Create catastro database
psql -d postgres -U $dbuser -f create_catastro_db.sql -v owner=$dbuser

# Uncompress downloaded files
mkdir tmp
for file in *.zip
do
    unzip "$file" -d tmp
done
for file in tmp/*.zip
do
    unzip "$file" -d tmp
done
for file in *.gz
do
    gunzip -c "$file" > tmp/attr.cat
done

# Reproject shapes to 4326
ogr2ogr -s_srs "+init=epsg:$s_srs +nadgrids=./peninsula.gsb +wktext" -t_srs EPSG:4326 data tmp

# Load shapes to PostGIS
for file in data/*.shp
do
    table=`basename $file .shp`
    shp2pgsql -d -s 4326 $file $table | psql -d $dbname -U $dbuser
done

# Load street names: dbf -> csv -> postgis & make postgis view
ogr2ogr -F CSV data/tmp data/Carvia.dbf
mv data/tmp/Carvia.csv data/Carvia.csv
rm -R data/tmp
psql -d $dbname -U $dbuser -f create_calles_view.sql
psql -d $dbname -U $dbuser -c "COPY carvia FROM '${PWD}/data/Carvia.csv' WITH DELIMITER ',' CSV HEADER"

# Convert .cat to .csv and load to PostGIS
iconv -f ISO-8859-1 -t UTF8 tmp/attr.cat -o data/attr.cat
./cat2csv.py
./catstruct2createsql.py | psql -d $dbname -U $dbuser
for file in data/*.csv
do
   table=`basename $file .csv`
   psql -d $dbname -U $dbuser -c "COPY ${table} FROM '${PWD}/${file}' WITH DELIMITER ',' CSV HEADER" 
done

# Load dictionaries to PostGIS (cod_usos and tipos_via)
psql -d $dbname -U $dbuser -f create_dictionaries.sql
for file in *.csv
do
   table=`basename $file .csv`
   psql -d $dbname -U $dbuser -c "COPY ${table} FROM '${PWD}/${file}' WITH DELIMITER ',' CSV HEADER" 
done

# Join shapes & attributes
psql -d $dbname -U $dbuser -f parcela_direccion.sql

# Cleanup
rm -R tmp

