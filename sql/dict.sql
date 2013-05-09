DROP TABLE IF EXISTS dict_usos;
CREATE TABLE dict_usos
(
   "id" char(1),
   "desc" varchar(128)
);

DROP TABLE IF EXISTS dict_tipos_via;
CREATE TABLE dict_tipos_via
(
   "id" char(2),
   "desc" varchar(32)
);

DROP TABLE IF EXISTS dict_tipus_via;
CREATE TABLE dict_tipus_via
(
   "id" char(2),
   "desc" varchar(32)
);

DROP TABLE IF EXISTS dict_constru;
CREATE TABLE dict_constru
(
    "id" varchar(5),
    "desc" varchar(32)
);

DROP TABLE IF EXISTS dict_ttggss;
CREATE TABLE dict_ttggss
(
    "ttggss" char(6),
    "descripcion" varchar(128),
    "tipo" varchar(64),
    "descr_tema" varchar(128)
);

DROP TABLE IF EXISTS dict_destino_locales;
CREATE TABLE dict_destino_locales
(
    "id" varchar(5),
    "desc" varchar(32)
);

