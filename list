#!/bin/bash
#====================================================
#	SCRIPT: CONEXAO SSHPLUS MANAGER
#   DATA ATT:   15 de Jul 2020
#	DESENVOLVIDO POR:	LiL Gun-X
#	CONTATO TELEGRAM:	http://t.me/dev_vpn
#	CANAL TELEGRAM:	http://t.me/khmernetvpn
#====================================================
_lvk=$(wget -qO- https://raw.githubusercontent.com/teamvpn/SSHPLUS29/master/Install/versao)
IP=$(wget -qO- ipv4.icanhazip.com)
IP2=$(wget -qO- http://whatismyip.akamai.com/)
[[ "$IP" != "$IP2" ]] && ipdovps="$IP2" || ipdovps="$IP"
echo -e "$ipdovps" >/etc/IP
echo -e "America/Sao_Paulo" >/etc/timezone
ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime >/dev/null 2>&1
dpkg-reconfigure --frontend noninteractive tzdata >/dev/null 2>&1
[[ ! -d /etc/SSHPlus ]] && mkdir /etc/SSHPlus
[[ ! -d /etc/SSHPlus/senha ]] && mkdir /etc/SSHPlus/senha
[[ ! -e /etc/SSHPlus/Exp ]] && touch /etc/SSHPlus/Exp
[[ ! -d /etc/SSHPlus/userteste ]] && mkdir /etc/SSHPlus/userteste
[[ ! -d /etc/bot ]] && mkdir /etc/bot
[[ ! -d /etc/bot/info-users ]] && mkdir /etc/bot/info-users
[[ ! -d /etc/bot/arquivos ]] && mkdir /etc/bot/arquivos
[[ ! -d /etc/bot/revenda ]] && mkdir /etc/bot/revenda
[[ ! -d /etc/bot/suspensos ]] && mkdir /etc/bot/suspensos
[[ ! -e /etc/bot/lista_ativos ]] && touch /etc/bot/lista_ativos
[[ ! -e /etc/bot/lista_suspensos ]] && touch /etc/bot/lista_suspensos
echo -e 'by: @crazy_vpn' > /usr/lib/sshplus && cat /usr/lib/sshplus > /usr/lib/licence
netstat -nplt | grep -w 'apache2' | grep -w '80' && sed -i "s/Listen 80/Listen 81/g" /etc/apache2/ports.conf && service apache2 restart
[[ "$(grep -o '#Port 22' /etc/ssh/sshd_config)" == "#Port 22" ]] && sed -i "s;#Port 22;Port 22;" /etc/ssh/sshd_config && service ssh restart
grep -v "^PasswordAuthentication" /etc/ssh/sshd_config >/tmp/passlogin && mv /tmp/passlogin /etc/ssh/sshd_config
echo "PasswordAuthentication yes" >>/etc/ssh/sshd_config
service ssh restart

wget https://raw.githubusercontent.com/GunGZN/menu-SxVPN/main/addhost.sh -O /bin/addhost > /dev/null 2>&1
chmod +x /bin/addhost
wget https://raw.githubusercontent.com/GunGZN/menu-SxVPN/main/ajuda.sh -O /bin/ajuda > /dev/null 2>&1
chmod +x /bin/ajuda
wget https://raw.githubusercontent.com/GunGZN/menu-SxVPN/main/alterarlimite.sh -O /bin/alterarlimite > /dev/null 2>&1
chmod +x /bin/alterarlimite
wget https://raw.githubusercontent.com/GunGZN/menu-SxVPN/main/alterarsenha.sh -O /bin/alterarsenha > /dev/null 2>&1
chmod +x /bin/alterarsenha
wget https://raw.githubusercontent.com/GunGZN/menu-SxVPN/main/attscript.sh -O /bin/attscript > /dev/null 2>&1
chmod +x /bin/attscript
wget https://raw.githubusercontent.com/GunGZN/menu-SxVPN/main/badvpn.sh -O /bin/badvpn > /dev/null 2>&1
chmod +x /bin/badvpn
wget https://raw.githubusercontent.com/GunGZN/menu-SxVPN/main/banner.sh -O /bin/banner > /dev/null 2>&1
chmod +x /bin/banner
wget https://raw.githubusercontent.com/GunGZN/menu-SxVPN/main/blockt.sh -O /bin/blockt > /dev/null 2>&1
chmod +x /bin/blockt
wget https://raw.githubusercontent.com/GunGZN/menu-SxVPN/main/botssh.sh -O /bin/botssh > /dev/null 2>&1
chmod +x /bin/botssh
wget https://raw.githubusercontent.com/GunGZN/menu-SxVPN/main/conexao.sh -O /bin/conexao > /dev/null 2>&1
chmod +x /bin/conexao
wget https://raw.githubusercontent.com/GunGZN/menu-SxVPN/main/criarteste.sh -O /bin/criarteste > /dev/null 2>&1
chmod +x /bin/criarteste
wget https://raw.githubusercontent.com/GunGZN/menu-SxVPN/main/criarusuario.sh -O /bin/criarusuario > /dev/null 2>&1
chmod +x /bin/criarusuario
wget https://raw.githubusercontent.com/GunGZN/menu-SxVPN/main/delhost.sh -O /bin/delhost > /dev/null 2>&1
chmod +x /bin/delhost
wget https://raw.githubusercontent.com/GunGZN/menu-SxVPN/main/delscript.sh -O /bin/delscript > /dev/null 2>&1
chmod +x /bin/delscript
wget https://raw.githubusercontent.com/GunGZN/menu-SxVPN/main/detalhes.sh -O /bin/detalhes > /dev/null 2>&1
chmod +x /bin/detalhes
wget https://raw.githubusercontent.com/GunGZN/menu-SxVPN/main/droplimiter.sh -O /bin/droplimiter > /dev/null 2>&1
chmod +x /bin/droplimiter
wget https://raw.githubusercontent.com/GunGZN/menu-SxVPN/main/expcleaner.sh -O /bin/expcleaner > /dev/null 2>&1
chmod +x /bin/expcleaner
wget https://raw.githubusercontent.com/GunGZN/menu-SxVPN/main/infousers.shh -O /bin/infousers > /dev/null 2>&1
chmod +x /bin/infousers
wget https://raw.githubusercontent.com/GunGZN/menu-SxVPN/main/limiter.sh -O /bin/limiter > /dev/null 2>&1
chmod +x /bin/limiter
wget https://raw.githubusercontent.com/GunGZN/menu-SxVPN/main/menu.sh -O /bin/menu > /dev/null 2>&1
chmod +x /bin/menu
wget https://raw.githubusercontent.com/GunGZN/menu-SxVPN/main/mudardata.sh -O /bin/mudardata > /dev/null 2>&1
chmod +x /bin/mudardata
wget https://raw.githubusercontent.com/GunGZN/menu-SxVPN/main/otimizar.sh -O /bin/otimizar > /dev/null 2>&1
chmod +x /bin/otimizar
wget https://raw.githubusercontent.com/GunGZN/menu-SxVPN/main/reiniciarservicos.sh -O /bin/reiniciarservicos > /dev/null 2>&1
chmod +x /bin/reiniciarservicos
wget https://raw.githubusercontent.com/GunGZN/menu-SxVPN/main/reiniciarsistema.sh -O /bin/reiniciarsistema > /dev/null 2>&1
chmod +x /bin/reiniciarsistema
wget https://raw.githubusercontent.com/GunGZN/menu-SxVPN/main/remover.sh -O /bin/remover > /dev/null 2>&1
chmod +x /bin/remover
wget https://raw.githubusercontent.com/GunGZN/menu-SxVPN/main/senharoot.sh -O /bin/senharoot > /dev/null 2>&1
chmod +x /bin/senharoot
wget https://raw.githubusercontent.com/GunGZN/menu-SxVPN/main/speedtest.sh -O /bin/speedtest > /dev/null 2>&1
chmod +x /bin/speedtest
wget https://raw.githubusercontent.com/GunGZN/menu-SxVPN/main/sshmonitor.sh -O /bin/sshmonitor > /dev/null 2>&1
chmod +x /bin/sshmonitor
wget https://raw.githubusercontent.com/GunGZN/menu-SxVPN/main/uexpired.sh -O /bin/uexpired > /dev/null 2>&1
chmod +x /bin/uexpired
wget https://raw.githubusercontent.com/GunGZN/menu-SxVPN/main/userbackup.sh -O /bin/userbackup > /dev/null 2>&1
chmod +x /bin/userbackup
wget https://raw.githubusercontent.com/GunGZN/menu-SxVPN/main/verifbot.sh -O /bin/verifbot > /dev/null 2>&1
chmod +x /bin/verifbot
wget https://raw.githubusercontent.com/GunGZN/menu-SxVPN/main/verifatt.sh -O /bin/verifatt > /dev/null 2>&1
chmod +x /bin/verifatt
wget https://raw.githubusercontent.com/GunGZN/menu-SxVPN/main/cabecalho.sh -O /etc/SSHPlus/cabecalho > /dev/null 2>&1
chmod +x /etc/SSHPlus/cabecalho
wget https://raw.githubusercontent.com/GunGZN/menu-SxVPN/main/bot.sh -O /etc/SSHPlus/bot > /dev/null 2>&1
chmod +x /etc/SSHPlus/bot
wget https://raw.githubusercontent.com/GunGZN/menu-SxVPN/main/proxy.py -O /etc/SSHPlus/proxy.py > /dev/null 2>&1
chmod +x /etc/SSHPlus/proxy.py
wget https://raw.githubusercontent.com/GunGZN/menu-SxVPN/main/proxy.py -O /etc/SSHPlus/open.py > /dev/null 2>&1
chmod +x /etc/SSHPlus/open.py

_dir1='/bin'
_dir2='/etc/SSHPlus'
_mdls=("addhost" "delhost" "alterarsenha" "criarusuario" "expcleaner" "mudardata" "remover" "criarteste" "verifbot" "droplimiter" "alterarlimite" "ajuda" "sshmonitor" "badvpn" "userbackup" "blockt" "otimizar" "menu" "speedtest" "banner" "senharoot" "reiniciarservicos" "reiniciarsistema" "attscript" "conexao" "delscript" "detalhes" "botssh" "infousers" "verifatt" "limiter" "uexpired" "cabecalho" "bot" "open.py" "proxy.py")
_arq_host="/etc/hosts"
_host[0]="d1n212ccp6ldpw.cloudfront.net"
_host[1]="www.opensignal.com"
_host[2]="portalrecarga.vivo.com.br/recarga"
_host[3]="navegue.vivo.com.br/controle/"
_host[4]="navegue.vivo.com.br/pre/"
_host[5]="www.whatsapp.net"
_host[6]="www.opensignal.com"
for host in ${_host[@]}; do
	if [[ "$(grep -w "$host" $_arq_host | wc -l)" = "0" ]]; then
		sed -i "3i\127.0.0.1 $host" $_arq_host
	fi
done
[[ ! -e /etc/autostart ]] && {
	echo '#!/bin/bash
clear
#INICIO AUTOMATICO' >/etc/autostart
	chmod +x /etc/autostart
} || {
	[[ $(ps x | grep "bot_plus" | grep -v grep | wc -l) != '0' ]] && wget -qO- https://raw.githubusercontent.com/shellscriptx/shellbot/master/ShellBot.sh >/etc/SSHPlus/ShellBot.sh
	for proc in $(ps x | grep 'dmS' | grep -v 'grep' | awk {'print $1'}); do
		screen -r -S "$proc" -X quit
	done
	screen -wipe >/dev/null
	echo '#!/bin/bash
clear
#INICIO AUTOMATICO' >/etc/autostart
	chmod +x /etc/autostart
}
crontab -r >/dev/null 2>&1
(
	crontab -l 2>/dev/null
	echo "@daily /bin/verifatt"
	echo "@reboot /etc/autostart"
	echo "* * * * * /etc/autostart"
	echo "0 */6 * * * /bin/uexpired"
) | crontab -
echo "$_lvk" | sed -n '1 p' | cut -d' ' -f2 >/bin/versao && cat /bin/versao >/home/sshplus
wget https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64 >/dev/null 2>&1
chmod +x jq-linux64 && mv jq-linux64 $(which jq)
service cron restart >/dev/null 2>&1
service ssh restart >/dev/null 2>&1
[[ -d /var/www/html/openvpn ]] && service apache2 restart >/dev/null 2>&1
rm -rf $home/list >/dev/null 2>&1