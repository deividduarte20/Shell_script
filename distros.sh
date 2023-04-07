#!/bin/bash

# Detectar o tipo de distribuição
if [ -f /etc/lsb-release ]; then
    # Ubuntu ou Debian
    sudo apt-get update
    sudo apt-get install -y curl
elif [ -f /etc/redhat-release ]; then
    # Red Hat, CentOS ou Fedora
    sudo yum install -y curl
else
    # Não é possível determinar a distribuição
    echo "Não é possível determinar a distribuição. Instale o Curl manualmente."
    exit 1
fi
