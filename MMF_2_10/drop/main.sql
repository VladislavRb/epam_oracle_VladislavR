SPOOL 'drop_schema.log'
PROMPT dropping user
@drop\drop_user.sql &1

PROMPT dropping tablespaces
@drop\drop_tablespace.sql &1
SPOOL OFF
