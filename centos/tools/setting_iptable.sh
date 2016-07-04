# erase them all.
iptables -F

## DROP
# blocking null packets.
iptables -A INPUT -p tcp --tcp-flags ALL NONE -j DROP
# reject is a syn-flood attack.
iptables -A INPUT -p tcp ! --syn -m state --state NEW -j DROP
# XMAS packets, also a recon packet.
iptables -A INPUT -p tcp --tcp-flags ALL ALL -j DROP

## ACCEPT
# localhost interface
iptables -A INPUT -i lo -j ACCEPT
# web server traffic
iptables -A INPUT -p tcp -m tcp --dport 80 -j ACCEPT
iptables -A INPUT -p tcp -m tcp --dport 443 -j ACCEPT
# SMTP servers
iptables -A INPUT -p tcp -m tcp --dport 25 -j ACCEPT
iptables -A INPUT -p tcp -m tcp --dport 465 -j ACCEPT
# proceed to allow the users read email on their server
iptables -A INPUT -p tcp -m tcp --dport 143 -j ACCEPT
iptables -A INPUT -p tcp -m tcp --dport 993 -j ACCEPT
# SSH traffic
iptables -A INPUT -p tcp -m tcp --dport 22 -j ACCEPT
# if only some address use ssh
# iptables -A INPUT -p tcp -s YOUR_IP_ADDRESS -m tcp --dport 22 -j ACCEPT

# allow us to use outgoing connections
iptables -I INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
# block everything else, and allow all outgoing connections.
iptables -P OUTPUT ACCEPT
iptables -P INPUT DROP

# Save the configuration
iptables-save | sudo tee /etc/sysconfig/iptables
service iptables restart
