- Environment
  - Centos 6.6
  - Apache 2.2.x
  - PHP 5.4.x
  - MySQL 5.6.x
  - Memcached

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
# setting auto startup on boot
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
yum install php54 php54-php php54-php-cli php54-php-common php54-php-fpm php54-php-gd php54-php-mbstring php54-php-mcrypt php54-php-mysql php54-php-xml php54-php-xmlrpc php54-php-pecl-yaml php54-php-pecl-msgpack php54-php-memcached

# install xdebug
yum install php54-php-pecl-xdebug

# check version
/opt/remi/php54/root/usr/bin/php -v
# if want to enable php command
source /opt/remi/php54/enable
php -v

service httpd restart
```

- Install MySQL 5.6.x

```
# or get the latest version form mysql official website
wget http://dev.mysql.com/get/mysql57-community-release-el6-8.noarch.rpm
yum localinstall mysql57-community-release-el6-8.noarch.rpm

# just ignore this if you want to install 5.7.x
yum install yum-utils
yum-config-manager --disable mysql57-community
yum-config-manager --enable mysql56-community

yum update
yum install mysql-community-server

service mysqld start
# setting auto startup on boot
chkconfig mysqld on
```

- Install Memcached

```
yum install memcached libmemcached
```

- NOTE:

由於可能會碰到權限上的問題可以先暫時把 SELinux 設定成 Permissive

```
setenforec 0
getenforce
// Permissive
```
