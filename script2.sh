#!/bin/bash

PURPLE='0;35'
NC='\033[0m'
VERSAO=11

echo  "$(tput setaf 10)[Bot assistant]:$(tput setaf 7) Olá , "$(whoami)" Bem-vindo ao sistema Beehive!;"
sleep 2
echo  "$(tput setaf 10)[Bot assistant]:$(tput setaf 7)  Vamos verificar se você possui o Java instalado...;"
sleep 2

java -version
if [ $? -eq 0 ]
	then
	
		echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7) : O java já está instalado nessa máquina!!"
		sleep 2
	
	else
		echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7) Não identificamos nenhuma versão do Java instalado, iremos instalar agora!"
		sleep 2

			echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7)  Adicionando o repositório!"
			sleep 2
			sudo add-apt-repository ppa:webupd8team/java -y
			clear
			echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7)  Atualizando Pacotes."
			sleep 2
			sudo apt update -y
			clear

			if [ $VERSAO -eq 11 ]
				then
					echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7) Preparando para instalar a versão 11 do Java. Confirme a instalação quando solicitado"
					sleep 1
					sudo apt install default-jre ; apt install openjdk-11-jre; -y
					clear
					echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7) Java 11 instalado com sucesso!"
					sleep 1
				fi

fi


echo "$(tput setaf 10)[Bot assistant]:$(tput setaf 7) : Agora iremos verificar o sistema Beehive"

sleep 2

file="projeto-java-1.0-SNAPSHOT-jar-with-dependencies.jar"

		
		            if [ -e ./Desktop/$file ] 
                        then
						
                        echo "O Beehive está instalado iremos iniciá-lo ..."
						
                        cd Desktop

                        chmod -X $file
						
						sleep 3
						
                        java -jar $file
                else
                        echo "O sistema não está instalado !, Iremos instalá-lo antes de iniciar"
                        sleep 2

                        cd Desktop
                        git clone https://github.com/BH-Beehive/aplicacao-java.git
						clear
						echo "Aplicação instalada!"
						
                        cd aplicacao-java/projeto-java/target/
                        mv projeto-java-1.0-SNAPSHOT-jar-with-dependencies.jar ~/Desktop/
		
                        cd ~/Desktop/
						
						mv aplicacao-java .aplicacao-java
						
                        chmod +x $file
						
						echo "Preparando para iniciar..."
						
						sleep 3
						
                        java -jar $file
                fi
 
 

# ===================================================================
# Todos direitos reservados para o autor: Dra. Profa. Marise Miranda.
# Sob licença Creative Commons @2020
# Podera modificar e reproduzir para uso pessoal.
# Proibida a comercialização e a exclusão da autoria.
# ===================================================================
