SPOOL 'install_schema.log'
PROMPT creating tablespaces
@create_tablespace.sql &1

PROMPT creating user
@create_user.sql &1 &2

PROMPT executing grants script
@grants.sql &1
SPOOL OFF
