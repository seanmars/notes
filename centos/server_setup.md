- Add exclude to yum.conf

```
exclude=redhat-release* centos-release*x86_64
```

- Install apache 2.2.x

```
yum update -y

yum install httpd -y

# start httpd
service httpd start
# setting auto httpd up on boot
chkconfig httpd on
```

- Install PHP 5.4.x

```
# install the EPEL repository configuration package
yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm

# install the Remi repository configuration package
yum install http://rpms.remirepo.net/enterprise/remi-release-6.rpm

# install the yum-utils package (for the yum-config-manager command)
yum install yum-utils

# enable the repository
yum-config-manager --enable remi
yum update

# install php54
yum install php54 php54-php php54-php-cli php54-php-common php54-php-fpm php54-php-gd php54-php-mbstring php54-php-mcrypt php54-php-mysql php54-php-xml php54-php-xmlrpc php54-php-pecl-yaml php54-php-pecl-msgpack

# check version
/opt/remi/php54/root/usr/bin/php -v
```
