#!/bin/bash
#
#
# mikrotik.sh - Verifica versão do mikrotik no site
#
# Site:		https://deividduarte2012.blogspot.com
# Autor:	Deivid Duarte
# Manutenção: 	Deivid Duarte / Diego Henrique
#
# ----------------------------------------------------------------------------#
# Este programa irá acessar o site no modo terminal filtrar a versão stable
# do site e exibir na saída padrão (tela)
#
# Exemplos:
# ./mikrotik.sh
#
#
# ----------------------------------------------------------------------------#
# Histórico:
#  v1.0 01-01-2019 , Deivid:
#	- Inicio do programa
#
# -------------------------------------EXECUÇÃO-------------------------------#

# Lynx instalar?
[ ! -x "$(which lynx)" ] && printf "${AMARELO}Precisamos instalar o ${VERDE}Lynx${AMARELO}, por favor, digite sua senha:${SEM_COR}\n" && apt install lynx

SITE=$(lynx -source https://mikrotik.com/download | grep "^.th" | cut -c 22-27)

echo $SITE
