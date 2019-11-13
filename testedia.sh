#!/bin/bash

dia=$1
case $dia in 
	1)
	nome_dia="segunda"
	;;
	2)
	nome_dia="terça"
	;;
esac
echo "Hoje é $nome_dia"
exit 0


