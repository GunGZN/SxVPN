
# download script
cd /usr/bin
wget -q -O 02 "https://raw.githubusercontent.com/GunGZN/SxVPN/main/delet.sh"
wget -q -O 11 "https://raw.githubusercontent.com/GunGZN/SxVPN/main/confix.sh"
wget -q -O 12 "https://raw.githubusercontent.com/GunGZN/SxVPN/main/setspeed.sh"
wget -q -O 13 "https://raw.githubusercontent.com/GunGZN/SxVPN/main/m443.sh"
echo "30 3 * * 0 root /sbin/reboot" > /etc/cron.d/reboot

chmod +x 02
chmod +x 11
chmod +x 12
chmod +x 13
