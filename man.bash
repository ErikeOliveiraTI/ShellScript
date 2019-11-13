#!/bin/bash

#author: Erike Oliveira - <Er1k3.ti@gmail.com>
#describe: Graphic Interface for OPenBTS
#version: 0.1
#arquivo="OpenBTS.conf"
#projeto de extensão = Mineração de dados em fluxo de bits


#band="850|900|1800|1900"

arquivo="OpenBTS.conf"
band="850|900|1800|1900"
comad=("TRX.IP" "TRX.Port" "Path" "Asterisk.IP" "Asterisk.Port" "Messenger.IP" "Messenger.Port" "SIP.Port" "RTP.Start" "RTP.Range" "SMSLoopback.Port")


main()
{
	input=$(\
		zenity --forms \
	 	--title="OpenGUI" \
	 	--separator=" "\
	 	--window-icon=gcompi.ico\
	 	--text="Configurações IP Port" \
	 	--width 600\
	 	--add-entry="TRX.IP"\
		--add-entry="TRX.Port" \
	 	--add-entry="Path" \
	 	--add-entry="Asterisk.IP" \
	 	--add-entry="Asterisk.Port" \
	 	--add-entry="Messenger.IP" \
	 	--add-entry="Messenger.Port"\
	 	--add-entry="SIP.Port"\
	 	--add-entry="RTP.Start"\
	 	--add-entry="RTP.Range"\
	 	--add-entry="SMiSLoopback.Port"\
	 	--add-combo="GSM.Band"\
	 	--combo-values="$band"\	 
	 )
	echo $input
}
main
