set verify off
ACCEPT sysPassword CHAR PROMPT 'Enter new password for SYS: ' HIDE
ACCEPT systemPassword CHAR PROMPT 'Enter new password for SYSTEM: ' HIDE
host /home/oracle/app/oracle/product/11.2.0/dbhome_1/bin/orapwd file=/home/oracle/app/oracle/product/11.2.0/dbhome_1/dbs/orapwtestdb force=y
@/home/oracle/app/oracle/testdb_data/admin/testdb/scripts/CloneRmanRestore.sql
@/home/oracle/app/oracle/testdb_data/admin/testdb/scripts/cloneDBCreation.sql
@/home/oracle/app/oracle/testdb_data/admin/testdb/scripts/postScripts.sql
@/home/oracle/app/oracle/testdb_data/admin/testdb/scripts/lockAccount.sql
@/home/oracle/app/oracle/testdb_data/admin/testdb/scripts/postDBCreation.sql
