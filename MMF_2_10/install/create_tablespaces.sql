DEFINE DBFILE_EXT = '.DBF'
DEFINE DATA_TBS = '_DATA'
DEFINE IDX_TBS = '_IDX'
COLUMN CPATH NEW_VALUE TBS_PATH

select CASE INSTR(file_name, '\') WHEN 0 THEN substr(file_name, 1, instr(file_name, '/', -1))
ELSE substr(file_name, 1, instr(file_name, '\', -1)) END AS CPATH
from dba_data_files where rownum = 1;

CREATE TABLESPACE &1&DATA_TBS DATAFILE '&TBS_PATH&1&DATA_TBS&DBFILE_EXT' SIZE 1G AUTOEXTEND ON NEXT 64M MAXSIZE UNLIMITED;
CREATE TABLESPACE &1&IDX_TBS DATAFILE '&TBS_PATH&1&IDX_TBS&DBFILE_EXT' SIZE 1G AUTOEXTEND ON NEXT 64M MAXSIZE UNLIMITED;
