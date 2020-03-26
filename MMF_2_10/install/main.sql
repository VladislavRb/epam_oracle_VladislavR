SPOOL 'install.log'
@install\create_tablespaces.sql &1
@install\create_user.sql &1 &2
@install\priveleges.sql &1
SPOOL OFF
