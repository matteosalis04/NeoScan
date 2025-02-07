#!/bin/bash
##############################
###### Scan with Nmap     ####
#############################
##############################
#############################
###### version.1.0.0 ########
##############################

# Banner principale
cat << "EOF"
███╗   ██╗███╗   ███╗ █████╗ ██████╗     ████████╗ ██████╗  ██████╗ ██╗     
████╗  ██║████╗ ████║██╔══██╗██╔══██╗    ╚══██╔══╝██╔═══██╗██╔═══██╗██║     
██╔██╗ ██║██╔████╔██║███████║██████╔╝       ██║   ██║   ██║██║   ██║██║     
██║╚██╗██║██║╚██╔╝██║██╔══██║██╔═══╝        ██║   ██║   ██║██║   ██║██║     
██║ ╚████║██║ ╚═╝ ██║██║  ██║██║            ██║   ╚██████╔╝╚██████╔╝███████╗
╚═╝  ╚═══╝╚═╝     ╚═╝╚═╝  ╚═╝╚═╝            ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
EOF



partcp="-sS -sV -Pn"
parudp="-sU -Pn"
script="-O --script vuln"
	
read -p "Parameters(tcp, udp, all, vuln(script)): " parametro

read -p "Target: " target

echo "Scan the $target...."


if [[ "$parametro" == "tcp" ]]; then
    comando="nmap $partcp $target"
    $comando > output.txt
elif [[ "$parametro" == "udp" ]]; then
    comando="nmap $parudp $target"
    $comando > output.txt
elif [[ "$parametro" == "all" ]]; then
    comando="nmap -p- $target"
    $comando > output.txt
elif [[ "$parametro" == "vuln" ]]; then
    comando="nmap $script $target"
    $comando > output.txt
else
    echo "Parameters not valid!"
    exit
fi


echo "####################"
echo "Scan Complete"
echo "####################"
