#!/bin/bash
grep -E "^duplicate-cn" /etc/openvpn/server-tcp-443.conf >/dev/null
 if [ $? -eq 0 ]; then
 clear
cr
echo " ┈╭━━━━━━━━━━━━━━━━━━━━━━╮"
echo " ┈┣ ♻️♻️ สถานะปัจจุบันเชื่อมได้ไม่จำกัดเครื่อง ♻️♻️"
echo " ┈┣━━━━━━━━━━━━━━━━━━━━━━╯ "
read -p " ┈┣ เปลี่ยนเป็น1ยุสเซอ ต่อ1เครื่องหรือไม่ Y/N :" selet
if [[ "$selet" = "Y" || "$selet" = "y" ]]; then
smilevpn="/duplicate-cn/d";
sed -i $smilevpn /etc/openvpn/server-tcp-443.conf
service openvpn restart -q > /dev/null 2>&1
clear
cr
echo " ┈╭━━━━━━━━━━━━━━━━━━━━━━╮"
echo " ┈┣ ♻️♻️ สถานะเปลี่ยนเป็น 1ยุสเซอ ต่อ1เครื่อง ♻️♻️"                             
echo " ┈╰━━━━━━━━━━━━━━━━━━━━━━╯ "
exit
fi
clear
cr
echo " ┈╭━━━━━━━━━━━━━━━━━━━━━━╮"
echo " ┈┣ ♻️♻️ สถานะปัจจุบันเชื่อมได้ไม่จำกัดเครื่อง ♻️♻️"
echo " ┈╰━━━━━━━━━━━━━━━━━━━━━━╯ "
exit
 else
 clear
cr
echo " ┈╭━━━━━━━━━━━━━━━━━━━━━━╮"
echo " ┈┣ ♻️♻️ สถานะปัจจุบัน 1ยุสเซอ ต่อ1เครื่อง ♻️♻️"
echo " ┈┣━━━━━━━━━━━━━━━━━━━━━━╯ "
read -p " ┈┣ เปลี่ยนเป็นไม่จำกัดเครื่องหรือไม่ Y/N :" selet
if [[ "$selet" = "Y" || "$selet" = "y" ]]; then
echo "duplicate-cn" >> /etc/openvpn/server-tcp-443.conf
service openvpn restart -q > /dev/null 2>&1
clear
cr
echo " ┈╭━━━━━━━━━━━━━━━━━━━━━━╮"
echo " ┈┣ ♻️♻️ สถานะเปลี่ยนเป็นเชื่อมได้ไม่จำกัดเครื่อง ♻️♻️"
echo " ┈╰━━━━━━━━━━━━━━━━━━━━━━╯ "
exit
fi
clear
cr
echo " ┈╭━━━━━━━━━━━━━━━━━━━━━━╮"
echo " ┈┣ ♻️♻️ สถานะปัจจุบัน 1ยุสเซอ ต่อ1เครื่อง ♻️♻️"
echo " ┈╰━━━━━━━━━━━━━━━━━━━━━━╯ "
exit
fi
