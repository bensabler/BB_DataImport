select 'drop table ' + t.TABLE_SCHEMA + '.' + t.TABLE_NAME
from INFORMATION_SCHEMA.TABLES t
where t.TABLE_SCHEMA = 'core'

