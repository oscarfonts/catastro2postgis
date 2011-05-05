-- tipos de eje (3)
--select distinct ttggss, descripcion, count(*) from ejes_nombre group by ttggss, descripcion order by count desc;

-- tipos de constru (14) !! SIN alturas positivas !!
--select distinct constru, tipo, count(*) from construcciones where not tiene_alturas_positivas group by constru, tipo order by count desc;

-- tipos de elemlin (11)
--select distinct dict_ttggss.ttggss, dict_ttggss.descripcion, count(*) from dict_ttggss, elemlin where dict_ttggss.ttggss = elemlin.ttggss group by dict_ttggss.ttggss, dict_ttggss.descripcion order by count desc;

-- tipos de elempun (3)
--select distinct dict_ttggss.ttggss, dict_ttggss.descripcion, count(*) from dict_ttggss, elempun where dict_ttggss.ttggss = elempun.ttggss group by dict_ttggss.ttggss, dict_ttggss.descripcion order by count desc;

-- tipos de limite (1)
--select distinct dict_ttggss.ttggss, dict_ttggss.descripcion, count(*) from dict_ttggss, limites where dict_ttggss.ttggss = limites.ttggss group by dict_ttggss.ttggss, dict_ttggss.descripcion order by count desc;

-- tipos de elemtex (10)
--select distinct dict_ttggss.ttggss, dict_ttggss.descripcion, count(*) from dict_ttggss, elemtex where dict_ttggss.ttggss = elemtex.ttggss group by dict_ttggss.ttggss, dict_ttggss.descripcion order by count desc;
