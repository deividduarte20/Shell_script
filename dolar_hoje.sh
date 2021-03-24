#!/usr/bin/env bash
#
# dolarhoje.sh - Extrai Cotação do dólar
#
# Site:       https://youtube.com/user/SuperDeivid22
# Autor:      Deivid Duarte
# Manutenção: Deivid Duarte
#
# ------------------------------------------------------------------------ #
#  Este programa irá extrair a cotação do dólar de Hoje
#
#  Exemplos:
#      $ ./dolarhoje.sh
#      Neste exemplo o programa vai extrair a cotação do dólar em real.
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v1.0 24/03/2021, Deivid:
#       - Criado primeiro código com cores
# ------------------------------------------------------------------------ #
# Testado em:
#   bash 4.19
# ------------------------------------------------------------------------ #

# ------------------------------- VARIÁVEIS ----------------------------------------- #
VERDE="\033[32;1m"
CIANO="\033[36;1m"
# ------------------------------------------------------------------------ #

# ------------------------------- TESTES ----------------------------------------- #
[ ! -x "$(which lynx)" ] && sudo apt install lynx -y # Lynx instalado?
# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #
COTACAO=$(lynx -source https://dolarhoje.com/ i| grep id\=\"nacional\" | cut -d \" -f24)

echo -e "${CIANO}Cotação Dolar: ${VERDE}$COTACAO"


# ------------------------------------------------------------------------ #
