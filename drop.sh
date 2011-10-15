/etc/init.d/tomcat6 stop
psql -U postgres -d postgres -c "drop database catastro;"
/etc/init.d/tomcat6 start
