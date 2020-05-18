#!/bin/sh

OLD_UMASK=`umask`
umask 0027
mkdir -p /home/oracle/app/oracle/admin/testdb/adump
mkdir -p /home/oracle/app/oracle/admin/testdb/dpdump
mkdir -p /home/oracle/app/oracle/admin/testdb/pfile
mkdir -p /home/oracle/app/oracle/cfgtoollogs/dbca/testdb
mkdir -p /home/oracle/app/oracle/flash_recovery_area
mkdir -p /home/oracle/app/oracle/flash_recovery_area/testdb
mkdir -p /home/oracle/app/oracle/product/11.2.0/dbhome_1/dbs
mkdir -p /home/oracle/app/oracle/testdb_data12/testdb
umask ${OLD_UMASK}
ORACLE_SID=testdb; export ORACLE_SID
PATH=$ORACLE_HOME/bin:$PATH; export PATH
echo You should Add this entry in the /etc/oratab: testdb:/home/oracle/app/oracle/product/11.2.0/dbhome_1:Y
/home/oracle/app/oracle/product/11.2.0/dbhome_1/bin/sqlplus /nolog @/home/oracle/app/oracle/testdb_data/admin/testdb/scripts/testdb.sql
