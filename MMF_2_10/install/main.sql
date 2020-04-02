SPOOL 'install_schema.log'
@create_tablespace.sql &1
@create_user.sql &1 &2
@grants.sql &1
SPOOL OFF
