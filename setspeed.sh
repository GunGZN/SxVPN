clear
cr
echo " ┈╭━━━━━━━━━━━━━━━━━━━━━━╮ "
echo " ┈┣  🛠🛠 ตั้งค่าจำกัดความเร็วอินเตอร์เน็ต 🛠🛠 "
echo " ┈╰━┳━━━━━┳━━━━━━━━━━━━━━╯ "
echo " ┈╭━┻━━━━━┻━━━━━━━━━━━━━━╮ "
echo " ┈┣ 🚀 1. เปิดเซ็ทค่าความเร็วอินเทอร์เน็ต"
echo " ┈┣━━━━━━━━━━━━━━━━━━━┫"
echo " ┈┣ 🚀 2. ปิดเซ็ทค่าความเร็วอินเทอร์เน็ต"
echo " ┈╰━━━━━━━━━━━━━━━━━━━━━━╯"
echo ""
read -p " ┈┣  พิมพ์เลข : " LIMITINTERNET
case $LIMITINTERNET in
	1)
clear
cr
echo ""
echo " ┈╭━━━━━━━━━━━━━━━━━╮ "
echo " ┈┣  🛠🛠 เลือกหน่วยความเร็ว 🛠🛠 "
echo " ┈╰━┳━━━━━┳━━━━━━━━━╯ "
echo " ┈╭━┻━━━━━┻━━━━━━━━━╮"
echo " ┈┣ 🖥🖥 1. เมกะไบต์ 🖥🖥 "
echo " ┈┣━━━━━━━━━━━━┫"
echo " ┈┣ 🖥🖥 2. กิโลไบต์ 🖥🖥 "
echo " ┈╰━━━━━━━━━━━━━━━━━╯"
echo ""
read -p " ┈┣ พิมพ์เลข : " -e PERSECOND
case $PERSECOND in
	1)
	PERSECOND=mbit
	;;
	2)
	PERSECOND=kbit
	;;
esac
clear
cr
echo ""
echo " ┈╭━━━━━━━━━━━━━━━━━━━━━━━━━╮"
echo " ┈┃ 📤📤📤 วิธีเซ็ตค่าความเร็ว 📤📤📤 "
echo " ┈┣━━━━━━━━━━┳━━━━━━━━━━━━━━╯"
echo " ┈┣━━━━━━━━━━┻━━━━━━━━━━━━━━╮"
echo " ┈┣ 📥 ต้องการให้มีความเร็ว 10 เมกะไบต์ ให้ใส่เลข 10  "
echo " ┈┣ 📥 ต้องการให้มีความเร็ว 512 กิโลไบต์ ให้ใส่เลข 512   "
echo " ┈╰━━━━━━━━━━━━━━━━━━━━━━━━━╯"
echo ""
read -p " ┈┣ ใส่จำนวนความเร็วการดาวน์โหลด : " -e CHDL
read -p " ┈┣ ใส่จำนวนความเร็วการอัพโหลด : " -e CHUL

DNLD=$CHDL$PERSECOND
UPLD=$CHUL$PERSECOND

TC=/sbin/tc

IF="$(ip ro | awk '$1 == "default" { print $5 }')"
IP="$(ip -o ro get $(ip ro | awk '$1 == "default" { print $3 }') | awk '{print $5}')/32"     # Host IP

U32="$TC filter add dev $IF protocol ip parent 1: prio 1 u32"

    $TC qdisc add dev $IF root handle 1: htb default 30
    $TC class add dev $IF parent 1: classid 1:1 htb rate $DNLD
    $TC class add dev $IF parent 1: classid 1:2 htb rate $UPLD
    $U32 match ip dst $IP flowid 1:1
    $U32 match ip src $IP flowid 1:2
    echo ""
    clear
    cr
echo " ┈╭━━━━━━━━━━━━━━━━━━━━━━╮"
echo " ┈┃ 📤📤 เปิดใช้งานตั้งค่าความเร็วเรียบร้อย 📤📤 "
echo " ┈┣━━━━━━━━━━┳━━━━━━━━━━━╯"
echo " ┈┣━━━━━━━━━━┻━━━━━━━━━━━╮"
echo " ┈┣ 📥 ความเร็วดาวน์โหลด $CHDL $PERSECOND  "
echo " ┈┣ 📥 ความเร็วอัพโหลด $CHUL $PERSECOND  "
echo " ┈╰━━━━━━━━━━━━━━━━━━━━━━╯"
    echo ""
    exit

	;;
	
	2)

TC=/sbin/tc
IF="$(ip ro | awk '$1 == "default" { print $5 }')"

    $TC qdisc del dev $IF root
    clear
    cr
echo " ┈╭━━━━━━━━━━━━━━━━━━━━━━╮"
echo " ┈┃ ⛔ ปิดใช้งานตั้งค่าความเร็วเรียบร้อย ⛔ "
echo " ┈╰━━━━━━━━━━━━━━━━━━━━━━╯"
echo ""
    exit

	;;

esac

