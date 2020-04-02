SPOOL 'drop_schema.log'
@drop_user.sql &1
@drop_tablespace.sql &1
SPOOL OFF
