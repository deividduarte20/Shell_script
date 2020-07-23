DEIVID DUARTE

Repositório pessoal

Script desenvolvido para monitoramento de versão do firmware mikrotik via shell script.
O script consiste em acessar site via navegador lynx e apresentar na tela podendo ser adaptado para armazenar resultado em arquivo.

Sumário

    Requisitos
    Downloads
    Configuração
    Importar template
    Conclusão

Requisitos:

    Instale o pacote

    Debian/Ubuntu

$ sudo apt-get install -y lynx
    
Downloads:
  
    Baixe os arqivos:
      locaweb_status
      locaweb.conf
      template_locaweb_zabbix4.2.3.xml

Configuração:

Copie o arquivo de script locaweb_status para /usr/local/bin/
Atribua permissão de execução com o comando: chmod +x locaweb_status
Copie o arquivo de configuração do UserParameter locaweb_status para a pasta /etc/zabbix/zabbix_agentd.d/

Para testar se o script está funcionando basta executar o comando:
  locaweb_status
Se o comando executar e caso o status do serviço esteja disponível o retorno do comando será 1 se estiver indisponível retornará 0.

Verifique a opção Timeout no arquivo /etc/zabbix/zabbix_agentd.conf e mude para Timeout=30.
 
 Acesse o front-end do seu servidor



