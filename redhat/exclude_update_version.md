直接使用指令參數

```
# yum update --exclude="redhat-release* centos-release*"

// 如果連 Kernal 都不想要更新則加入 kernel*
# yum update --exclude="redhat-release* centos-release* kernel*"
```

or 如果不想每次都打指令可以在 /etc/yum.conf 加入下列設定


```
exclude=redhat-release* centos-release*
# // 如果連 Kernal 都不想要更新則加入 kernel*
exclude=redhat-release* centos-release* kernel*
```
