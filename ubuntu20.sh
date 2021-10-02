#!/bin/bash
# สคริป​โดย​ lilgunx
#
# ==================================================

# initializing var
export DEBIAN_FRONTEND=noninteractive
MYIP=$(wget -qO- icanhazip.com);
MYIP2="s/xxxxxxxxx/$MYIP/g";
NET=$(ip -o $ANU -4 route show to default | awk '{print $5}');
source /etc/os-release
ver=$VERSION_ID

cd
apt -y install squid3
wget -O /etc/squid/squid.conf "https://raw.githubusercontent.com/GunGZN/menu-Oxv2/main/squid3.conf"
sed -i $MYIP2 /etc/squid/squid.conf
