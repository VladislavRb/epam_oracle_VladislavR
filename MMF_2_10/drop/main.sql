SPOOL 'drop.log'
@drop\drop_user.sql &1
@drop\drop_tablespaces.sql &1
SPOOL OFF
