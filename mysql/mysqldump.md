Reference:

[Mysqldump with Modern MySQL](https://serversforhackers.com/mysqldump-with-modern-mysql)

```shell
mysqldump some_database > some_database.sql

# Or with user auth
mysqldump -u some_user -p some_database > some_database.sql

# Or with gzip compression
mysqldump some_database | gzip > some_database.sql.gz

# Or with the "pv" tool, which let's us know how much data is
# flowing between our pipes - useful for knowing if the msyqldump
# has stalled
mysqldump some_database | pv | gzip > some_database.sql.gz
# 102kB 0:01:23 [1.38MB/s] [  <=>
```
