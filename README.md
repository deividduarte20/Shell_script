DEIVID DUARTE

# Sumário

   ### Requisitos
   ### Downloads
   ### Configuração
   ### Informações para contato

# Informações para contato

# Repositório pessoal

Script desenvolvido para monitoramento de versão do firmware mikrotik via shell script.
O script consiste em acessar site via navegador lynx e apresentar na tela podendo ser adaptado para armazenar resultado em arquivo.

# Requisitos:

    Instale o pacote

    Debian/Ubuntu

$ sudo apt-get install -y lynx
    
# Downloads:
  
    Baixe os arqivos:
    mikrotik.sh 

# Configuração:

Copie o arquivo de script mikrotik para /usr/local/bin/
Atribua permissão de execução com o comando: chmod +x mikrotik.sh
Copie o arquivo de configuração do UserParameter mikrotik para a pasta /etc/zabbix/zabbix_agentd.d/

Para testar se o script está funcionando basta executar o comando:
mikrotik
Se o comando executar e caso o status do serviço esteja disponível o retorno do comando será 1 se estiver indisponível retornará 0.

Verifique a opção Timeout no arquivo /etc/zabbix/zabbix_agentd.conf e mude para Timeout=30.
 
Acesse o front-end do seu servidor
 
# Informações para contato

Telegram: @deividduarte2020
Linkedin: https://www.linkedin.com/in/deivid-duarte-b726a83a/
E-mail: deividdua32@gmail.com
Canal Yotube: https://www.youtube.com/user/SuperDeivid22/featured?sub_confirmation=1


