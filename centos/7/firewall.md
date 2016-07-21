- 操作時若要設定為永久需要加上 --permanent

```bash
# 查看運作中的 zone 和裡的介面
firewall-cmd --get-active-zones

# 查看此 zone 所開的服務
firewall-cmd --zone=public --list-all

# 在 public zone 新增 port (tcp)
firewall-cmd --zone=public --add-port=80/tcp

# 移除在 public zone 上的 port (tcp/udp)
firewall-cmd --zone=public --remove-port=80

# 新增接受限制 x.x.40.0 可以讀取 3306 埠
firewall-cmd --zone=public --add-rich-rule='rule family="ipv4" source address="192.168.40.0/24" port port="3306" protocol="tcp" accept'
```
