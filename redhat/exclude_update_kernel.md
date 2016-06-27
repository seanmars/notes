```
# yum update --exclude="kernel* redhat-release* centos-release*"
```

or

- Add the line below current content in file: /etc/yum.conf

```
exclude=kernel* redhat-release* centos-release*
```
