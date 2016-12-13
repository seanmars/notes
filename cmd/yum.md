# yum

```bash
yum check   檢查問題
yum check-update    檢查套件更新
yum clean [headers, packages, metadata, dbcache, plugins, expire-cache, rpmdb, all] 清理 cache 資料
yum search <package name>   尋找套件
yum install <package name>  安裝套件
yum update  更新目前安裝的套件
yum makecache   產生 metadata cache
```

## install

```bash
yum install package-name
```

## update

```bash
yum update package-name
```

## find what package is

```bash
which process
yum provides path-of-process
```
