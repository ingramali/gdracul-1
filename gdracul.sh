#!/bin/bash

dracul_signature(){
echo  "|------------------------------------------------|"
echo  "|                                                |"			 
echo  "|  |  __ \|  __ \     /\   / ____| |  | | |      |"
echo  "|  | |  | | |__) |   /  \ | |    | |  | | |      |"
echo  "|  | |  | |  _  /   / /\ \| |    | |  | | |      |"
echo  "|  | |__| | | \ \  / ____ \ |____| |__| | |____  |"	
echo  "|  |_____/|_|  \_\/_/    \_\_____|\____/|______| |"
echo  "|                                                |"
echo  "|------------------------------------------------|"
}

help_msg(){  
echo  "|                     USAGE                      |"
echo  "|------------------------------------------------|"
echo  "| gdracul -s | Start the software                |"
echo  "|------------------------------------------------|"
echo  "| gdracul -u | Update the software script        |"
echo  "|------------------------------------------------|"
echo  "| gdracul -h | Open Help Dialog                  |"
echo  "|------------------------------------------------|"
echo " "
}

clear
dracul_signature

	if [ "$1" == "" ]
	then
		help_msg	
	echo " "
	else
		case $1 in
			"-u")	
				echo " "
				echo "[*] Update Google Dork List Started"
				python /usr/share/gdracul_dork_finder/ghdb_scraper.py 
				echo " "
			;;
			"-s")	
				gdracul-u
				echo "[*] GDracul V 1.0.1 started"
				wine /usr/share/gdracul_dork_finder/gdracul.exe
			;;
			"-h")	
				help_msg			
			;;
			*)
				help_msg			
			;;
		esac
	fi
