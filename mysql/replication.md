# Setting MySQL 5.6 replication on Centos 6.6

## Reference:

- http://www.phpini.com/mysql/mysql-master-slave-replication
- http://xyz.cinc.biz/2014/10/mysql-replication.html
- http://blog.miniasp.com/post/2012/07/04/How-to-setup-MySQL-55-One-way-replication-Master-Slave-mode.aspx
- http://blog.sina.com.cn/s/blog_55a0f1f40101cw1z.html

## Master configuration

- 設定 MySQL config

```
# 若有設定 bind-address 要記得 comment　不然會無法連線
# bind-address=127.0.0.1

# 設定 server id (不可重複)
server_id=1

#　設定 log 檔名
log_bin=mysql-bin

# 設定 log 檔要忽略記錄的資料庫名稱
binlog_ignore_db = "mysql"

# 設定大於等於 0 的數字, 控制每幾次將 binary log 寫入硬碟
# 0: 系統自己控制
# 1: 最安全但效能較低
sync_binlog=1

# 0: 每秒將 log buffer 寫入 log file 並 flush to disk 但在 transaction commit 時不做任何事
# 1(default): transaction commit 時將 log buffer 寫入 log file 並 flush to disk
# 2: transaction commit 時將 log buffer 寫入 log file 不過 flush to disk 是每秒執行一次
innodb_flush_log_at_trx_commit=1

# 設定 log 檔案儲存的格式
# STATEMENT: causes logging to be statement based.
# ROW causes logging to be row based.
# MIXED causes logging to use mixed format.
binlog_format = mixed
```

- 建立一個 replication 用的帳號

```
$ mysql -u root -p
# 這邊直接使用 % 不受限制, 可以自行限制登入
mysql> GRANT REPLICATION SLAVE ON *.* TO 'user'@'%' IDENTIFIED BY 'password' WITH GRANT OPTION;
mysql> FLUSH privileges;

# 刷新資料並暫時設定成 read only 避免設定過程中資料表有異動
mysql> FLUSH TABLES WITH READ LOCK;
# 檢視 master 資訊
mysql> SHOW MASTER STATUS;
mysql> UNLOCK TABLES;
mysql> exit;
```

- Dump 資料

```
$ mysqldump --skip-lock-tables --all-databases --user=root --password --master-data > masterdatabase.sql
```

## Slave configuration

- 設定 MySQL config

```
# 設定 server id (不可重複)
server_id=2

#　設定 log 檔名
log_bin=mysql-bin
# 啟動將 relay log 寫入到 log-bin 中
log_slave_updates=1

# 設定中繼檔檔名
relay_log=relay-bin.log

# 設定 log 檔案儲存的格式
# STATEMENT: causes logging to be statement based.
# ROW causes logging to be row based.
# MIXED causes logging to use mixed format.
binlog_format=mixed

read_only=1
```

- 導入 Master 的 dump 資料

```
$ mysql -u root -p < masterdatabase.sql
```

- 設定 Master 資訊

```
# MASTER_LOG_FILE 及 MASTER_LOG_POS 要填入之前 SHOW MASTER STATUS 的資料
mysql> CHANGE MASTER TO MASTER_HOST='255.255.255.255',MASTER_USER='user',MASTER_PASSWORD='password', MASTER_LOG_FILE='mysql-bin.000001', MASTER_LOG_POS=123;
```

- 開啟 Slave

```
mysql> START SLAVE;
mysql> SHOW SLAVE STATUS\G;
```
