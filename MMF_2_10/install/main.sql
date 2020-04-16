SPOOL 'install_schema.log'
PROMPT creating tablespaces
@install\create_tablespace.sql &1 &2

PROMPT creating user
@install\create_user.sql &1

PROMPT executing grants script
@install\grants.sql &1
SPOOL OFF
