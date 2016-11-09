# crontab

### 直接在 /etc/crontab 中設定排程

```
# Example of job definition:
# .---------------- minute (0 - 59)
# |  .------------- hour (0 - 23)
# |  |  .---------- day of month (1 - 31)
# |  |  |  .------- month (1 - 12) OR jan,feb,mar,apr ...
# |  |  |  |  .---- day of week (0 - 6) (Sunday=0 or 7) OR sun,mon,tue,wed,thu,fri,sat
# |  |  |  |  |
# *  *  *  *  * user-name  command to be executed
```

### 使用 crontab 指令來增加使用者的排程

```
使用者透過 crontab 指令編輯的排程會在 /var/spool/cron/user-name 路徑底下
```

- list

```bash
crontab -l
```

- edit

```bash
crontab -e
```

- remove all

```bash
crontab -r
```

- export

```bash
crontab -l cron.txt
```

- import

```bash
crontab cron.txt
```
