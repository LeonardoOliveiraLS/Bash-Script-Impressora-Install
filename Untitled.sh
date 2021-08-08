#!/bin/bash
#Criado por: Leonardo de Oliveira Moreira
#Instalador do Driver impressora Brother




x = "menu"

menu ()
{
	while true $x != "menu"
	do
	clear
	echo "--------------------------------------------------------------"
	echo "	INSTALADOR E DESINSTALADOR DO DRIVER LINUX"
	echo "--------------------------------------------------------------"
	echo "1) Instalar driver"
	echo ""
	echo "2) Desinstalar driver"
	echo ""
	echo "3) Reinstalar driver"
	echo ""

	echo "Digite a opçao:"
	read x
	echo "Opçao escolhida ($x)"
	echo "--------------------------------------------------------------"
	echo ""
	

	case "$x" in 

		1)
		      echo "!!!!!!!1"

		clear
			

;;
		2)

;;
		3)


;;

*)
	echo "Opço invalida!"
	esac
	done

	}
	menu




















Modelo = "HLL6402DW"
Pacote_nome="linux-brprinter-installer-2.2.2-2.gz"
Pacote="linux-brprinter-installer-2.2.2-2"
Pacote_link="https://download.brother.com/welcome/dlf006893/linux-brprinter-installer-2.2.2-2.gz"
#-------------------------------------------------------------------------
VerificaDriverInstalado(){

pacote=$(dpkg -l | grep -i "brother" ) 

echo "$Modelo"

echo "Intalador impressora Brother"



echo -n "Verificando se o Pacote Brother esta instalado."

}

verificaArquivoExtrai(){

if [ -f "$Pacote_nome" ]; then
				echo "Driver baixado preparando para descompactar"
				sleep 2
				gunzip -f "linux-brprinter-installer-2.2.2-2.gz"
				echo "Arquivo descompactado e pronto para instalar"
				sleep 3
				
			fi
}

baixarArquivoeVerificaSeErroLink(){
		wget_link= $( wget $Pacote_link )

			
			if [ $? -ne 0 ]; then
			zenity --error --text="Link quebrado por favor baixe manualmente e roda o script no mesmo local do arquivo" --title="Falha no download" --width=500 --width=200
				echo "Link quebrado por favor baixe manualmente e roda o script no mesmo local do arquivo"
			else echo
				echo false
			fi
			}

AvisoConclusaoDescompactacao(){
	zenity --info --text="Pronto para instalaçao" --width=100
}


#-------------------------------------------------------------------------



	# Funcao para verificar se o arquivo esta instalado utilizando grep
	VerificaDriverInstalado

if [ -n "$pacote" ] ; then 
	echo "DRIVER Brother ja instalado"
else echo
	echo "DRIVER Brother Necessario-> Nao instalado"

	echo "Instalando Automaticamente Pacote $Modelo_Impressora..."



	if [ -f "$Pacote_nome" ]; then
		echo " Driver esta na pasta, preparando para descompactar!"
	sleep 3
		gunzip -f "linux-brprinter-installer-2.2.2-2.gz"
	elif [ -f "$Pacote" ]; then
		echo " Driver esta na pasta e descompactado, aguardando instalaçao."
	
	else echo
		zenity --info --text="Nao foi encontrado o Arquivo na pasta, iniciando download do site oficial!" --title="Aviso" --width=500 --width=200
		echo " Driver nao esta na pasta, iniciando o download..." 
	sleep 3

			baixarArquivoeVerificaSeErroLink
		
			verificaArquivoExtrai
			
	fi	




fi


AvisoConclusaoDescompactacao

 echo y 'no' | bash linux-brprinter-installer-2.2.2-2 HLL6402DW  
echo -n "Pressione qualquer tecla para sair..."
read
exit
