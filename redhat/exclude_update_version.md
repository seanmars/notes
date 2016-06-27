如果連 Kernal 都不想要更新則加入 kernel*

```
# yum update --exclude="redhat-release* centos-release*( kernel*)"
```

or

- Add the line below current content in file: /etc/yum.conf

```
exclude=redhat-release* centos-release*( kernel*)
```
