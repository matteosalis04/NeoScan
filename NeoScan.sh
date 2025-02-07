
#!/bin/bash
##############################
###### Scan with Nmap ########
##############################
##############################
##############################
######### By .MagicSale ######
##############################
##############################
###### version.2.0.0. ########
##############################

## Permission root
if ((! $EUID == 0)); then 
    echo "Please run as root"
    exit 1 
fi
### Control if Nmap installed on device
if ! command -v nmap &> /dev/null; then
    echo "nmap is not installed!"
    sudo apt install nmap
    exit 1
fi

### Variables
data=$(date +%Y-%m-%d-%H:%M)
parametri=("tcp" "udp" "all" "vuln")
partcp="-sS -sV -Pn"
parudp="-sU -Pn"
script="-O --script vuln"
username=$(whoami)


### Banner  
cat << "EOF" 

 ______     ______     ______     __   __        __    __     ______    
/\  ___\   /\  ___\   /\  __ \   /\ "-.\ \      /\ "-./  \   /\  ___\   
\ \___  \  \ \ \____  \ \  __ \  \ \ \-.  \     \ \ \-./\ \  \ \  __\   
 \/\_____\  \ \_____\  \ \_\ \_\  \ \_\\"\_\     \ \_\ \ \_\  \ \_____\ 
  \/_____/   \/_____/   \/_/\/_/   \/_/ \/_/      \/_/  \/_/   \/_____/ 
                                                                                      
EOF

echo "NeoScan v2.0.0 - Advanced Nmap Scanning Tool"
echo "Created by .MagicSale - https://github.com/matteosalis04"
echo "Welcome $username - $data"


### Zone Input
function input(){
    read -p "Parameters(tcp, udp, all, vuln(script)): " parametro
    read -p "Directory(leave empty for default): " directory
    read -p "Target: " target
} 


### Check Zone
function check_parameter(){
    if [[ ! " ${parametri[*]} " =~ " $parametro " ]]; then
        echo "Error - Parameters: $parametro. Parameters valid: ${parametri[*]}"
        exit 1
    fi
         
}

function check_target(){
    if [[ -z "$target" || ! "$target" =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ && ! "$target" =~ ^[a-zA-Z0-9._-]+$ ]]; then
        echo "Target not valid - $target"
        echo "write a IP valid (es. 192.168.1.1) or hostname (es. example.com)."
        exit 1
    fi
}


### Zone Comands
function comands(){
    if [[ "$parametro" == "tcp" ]]; then
        comando="nmap $partcp $target"
        ### Control if exist the directory
        if [[ "$directory" == "" ]]; then
            directory="./scan_tcp.txt" 
            $comando > ./scan_tcp.txt
        else
            $comando > $directory
        fi       
    elif [[ "$parametro" == "udp" ]]; then
        comando="nmap $parudp $target"
        ### Control if exist the directory
        if [[ "$directory" == "" ]]; then
            directory="./scan_udp.txt" 
            $comando > ./scan_udp.txt
        else
            $comando > $directory
        fi  
    elif [[ "$parametro" == "all" ]]; then
        comando="nmap -p- $target"
        ### Control if exist the directory
        if [[ "$directory" == "" ]]; then
            directory="./scan_all.txt"
            $comando > ./scan_all.txt
        else
            $comando > $directory
        fi 
    elif [[ "$parametro" == "vuln" ]]; then
        comando="nmap $script $target"
        ### Control if exist the directory
        if [[ "$directory" == "" ]]; then
            directory="./scan_vuln.txt"
            $comando > ./scan_vuln.txt
        else
            $comando > $directory
        fi
    else
        echo "error!"
        exit 1
    fi
}

function complete(){
    echo "####################"
    echo "Scan Complete"
    echo "Result -> cat $directory"
    echo "####################"
}


function main(){
    input
    check_parameter
    check_target
    echo "Scan the $target...."
    comands
    complete
}

main 
