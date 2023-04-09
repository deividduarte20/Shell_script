#!/bin/bash

PACKAGE=vim

# Detectar o tipo de distribuição
if [ -f /etc/lsb-release ]; then
    # Ubuntu ou Debian
    apt-get update
    apt-get install -y $PACKAGE
elif [ -f /etc/redhat-release ]; then
    # Red Hat, CentOS ou Fedora
    yum upate && yum install -y $PACKAGE
else
    # Não é possível determinar a distribuição
    echo "Não é possível determinar a distribuição. Instale o $PACKAGE manualmente."
    exit 1
fi
