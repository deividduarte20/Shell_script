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
# Somente executar com usuário root para o caso de o programa lynx não estar
# instalado o mesmo já o fará a instalação do lynx
# ----------------------------------------------------------------------------#
# Histórico:
#  v1.0 01-01-2019 , Deivid:
#	- Inicio do programa
#
# -------------------------------------EXECUÇÃO-------------------------------#

# Lynx instalar?
[ ! -x "$(which lynx)" ] && printf "${AMARELO}Precisamos instalar o ${VERDE}Lynx${AMARELO}, por favor, digite sua senha:${SEM_COR}\n" && apt install lynx

Site=$(lynx -source https://mikrotik.com/download | grep "[Ss]table" | cut -d \> -f7 | head -n1 | cut -c1-6)

echo $SITE
