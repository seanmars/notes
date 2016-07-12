# Setting MySQL 5.6 replication on Centos 6.6

## NOTE:

只有在 CentOS 6.6 + MySQL 5.6 測試過

## Reference:

- http://www.phpini.com/mysql/mysql-master-slave-replication
- http://xyz.cinc.biz/2014/10/mysql-replication.html
- http://blog.miniasp.com/post/2012/07/04/How-to-setup-MySQL-55-One-way-replication-Master-Slave-mode.aspx

## Master configuration

- 設定 MySQL config
- 建立一個 replication 用的帳號
- 設定, 開啟 Master
- Dump 資料

## Slave configuration

- 設定 MySQL config
- 導入 Master 的 dump 資料
- 設定 Master 資訊
- 開啟 Slave
