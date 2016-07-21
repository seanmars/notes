```bash
# 暫時性
$ getenforce
Enforcing

$ sudo setenforce 0
$ getenforce
Permissive

$ sudo setenforce 1
$ getenforce
Enforcing

# 暫時性

$ sudo vi /etc/sysconfig/selinux     
SELINUX=disabled
# 重新開機
