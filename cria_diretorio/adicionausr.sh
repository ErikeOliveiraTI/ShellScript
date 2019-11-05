#!/bin/bash
source funcao.source

if [ "$(whoami)" != "root" ] #Verifica se o usuario e admin do sistema
then
	echo "Você é não administrador do sistema, para continuar digite: "
	echo "opção su root"
	exit 0
fi

EscolhaDeAcao  #chama a função criar grupo ou user
Grupo #chama a função criar grupo

while true
do
	read -p "Deseja adiciona usuario [Y/n]:  " OPCAO
	if  [ "$OPCAO"  = "Y" ] || [ "$OPCAO"  = "y" ]
	then 
		User 
		CriarDiretorio
	else
		break
	fi
done
