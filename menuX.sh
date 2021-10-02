kguza="https://kguza.net/scrip/u-d/openvpn"
# download script
cd /usr/bin
wget -q -O m2 "https://raw.githubusercontent.com/GunGZN/AxG/main/menu.sh"
wget -q -O a1 "$kguza/menu/adduser.sh"
wget -q -O a2 "$kguza/menu/testuser.sh"
wget -q -O a3 "$kguza/menu/ChangPass.sh"
wget -q -O a4 "$kguza/menu/changExp.sh"
wget -q -O a5 "$kguza/menu/delet.sh"
wget -q -O a6 "$kguza/menu/deletuserxp.sh"
wget -q -O a7 "$kguza/menu/viewuser.sh"
wget -q -O a8 "$kguza/menu/restart.sh"
wget -q -O a9 "$kguza/menu/speedtest.py"
wget -q -O a10 "$kguza/menu/vnstat.sh"
wget -q -O k "$kguza/menu/b-user.sh"
wget -q -O 31 "$kguza/menu/max.sh"
wget -q -O a12 "$kguza/menu/lock.sh"
wget -q -O a13 "$kguza/menu/unlock.sh"
wget -q -O a14 "$kguza/menu/httpcredit.sh"
wget -q -O a15 "$kguza/menu/aboutscrip.sh"
wget -q -O 16 "$kguza/menu/TimeReboot.sh"
wget -q -O 17 "$kguza/menu/backup.sh"
wget -q -O 18 "$kguza/menu/setspeed.sh"
wget -q -O 19 "$kguza/menu/addfile.sh"
wget -q -O 20 "$kguza/menu/ChangPassRoot.sh"
wget -q -O 21 "$kguza/menu/deletlimit.sh"
 wget -q -O 22 "$kguza/menu/check.sh"
 wget -q -O 23 "$kguza/menu/ssh-online.sh"
 wget -q -O 24 "$kguza/menu/pptp.sh"
 wget -q -O 25 "$kguza/menu/shc.sh"
wget -q -O cr "$kguza/menu/cr.sh"
wget -q -O 27 "$kguza/menu/add-aa.sh"
wget -q -O 26 "$kguza/menu/edit-host.sh"
wget -q -O nipa "$kguza/menu/nipa.sh"
wget -q -O 28 "$kguza/menu/proxy.sh"
wget -q -O 29 "$kguza/menu/up.sh"
wget -q -O panel "$kguza/menu/Ocs-panel.sh"
wget -q -O 30 "$kguza/menu/squid.sh"
wget -q -O 443 "$kguza/menu/443.sh"
wget -q -O 32 "$kguza/menu/m443.sh"
wget -q -O a11 "$kguza/menu/port.sh"
wget -q -O squid3.3 "$kguza/menu/squid3.3.sh"

echo "30 3 * * 0 root /sbin/reboot" > /etc/cron.d/reboot

chmod +x m2
chmod +x a1
chmod +x a2
chmod +x 03
chmod +x a4
chmod +x a5
chmod +x a6
chmod +x a7
chmod +x a8
chmod +x a9
chmod +x a10
chmod +x k
chmod +x 31
chmod +x a12
chmod +x a13
chmod +x a14
chmod +x a15
chmod +x 16
chmod +x 17
chmod +x 18
chmod +x 19
chmod +x 20
chmod +x 21
chmod +x 22
chmod +x 23
chmod +x 24
chmod +x 25
chmod +x 27
chmod +x 26
chmod +x cr
chmod +x nipa
chmod +x 28
chmod +x 29
chmod +x panel
chmod +x 30
chmod +x 443
chmod +x 32
chmod +x a11
chmod +x squid3.3
