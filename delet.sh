clear
cr
echo " ┈╭━━━━━━━━━━━━━━━━╮
 ┈┣ 🚫🚫 ลบผู้ใช้ตามรายชื่อ 🚫🚫
 ┈┣━━━━━━━━━━━━━━━━╯"
read -p " ┈┣ใส่ชื่อผู้ใช้ที่ต้องการลบ : " User
echo " ┈╰━━━━━━━━━━━━╯"
read -p " ╰┫ยืนยัน Y/N :" selet
if [[ "$selet" = "Y" || "$selet" = "y" ]]; then
if getent passwd $User > /dev/null 2>&1; then
        userdel $User
clear
cr
echo -e " ┈╭━━━━━━━━━━━━━━━━━━━━━━━╮
 ┈┣  $User $deleted: ⚀ ถูกลบออกจากระบบเรียบร้อยแล้ว ⚀
 ┈╰━━━━━━━━━━━━━━━━━━━━━━━╯"
exit
fi
clear
cr
echo ""
        echo " ┈╭━━━━━━━━━━━━━━━━╮
 ┈┣ ❎ ไม่พบชื่อผู้ใช้นี้ในระบบ ❎
 ┈╰━━━━━━━━━━━━━━━━╯"
echo ""
exit
fi
