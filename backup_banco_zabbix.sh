#!/usr/bin env
# Criado por: Deivid Duarte <deividdua32@gmail.com>
BACKUPDIR="/opt/backup/zabbix/mysql"
DATE=`date +%d%m%Y_%H_%M_%S`
LOG="backup_zabbix_mysql.log"
LOGERRO="backup_zabbix_mysql_error.log"
USER="zabbix"
PASSWORD="teste"
DATABASE="zabbix"

echo "Iniciando Backup da base de dados $DATABASE: $DATE" >> $BACKUPDIR/$LOG
mysqldump -u"$USER" --password="$PASSWORD" --single-transaction --routines $DATABASE > $BACKUPDIR/$DATABASE.$DATE.sql 2> $BACKUPDIR/$LOGERRO

if [ "$?" -eq 0 ]; then
    echo "Backup executado com sucesso."
else
    echo "Erro na execução do backup. Verifique o log de erro."
    rm -f $BACKUPDIR/$DATABASE.$DATE.sql
    exit 1
fi
