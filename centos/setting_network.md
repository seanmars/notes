- 啟用網卡

```
ifup eth0
```

- 關閉網卡

```
ifdonw eth0
```

- 固定ip

```
vim /etc/sysconfig/network-scripts/ifcfg-eth0

# 依照環境設定
DEVICE=eth0
HWADDR=08:00:27:D5:1D:E5
TYPE=Ethernet
UUID=3ce383e6-8545-4fde-bff0-c401c0fc6c70
ONBOOT=no
NM_CONTROLLED=yes
BOOTPROTO=none
IPADDR=192.168.1.123
NETMASK=255.255.255.0
GATEWAY=192.168.11.1

# 使用DHCP模式
BOOTPROTO=dhcp

# 開機時自動啟用
ONBOOT=yes
```
