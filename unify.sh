#!/bin/bash

# Verifica se o usuário é root
if [ "$USER" = "root" ]; then
    UPDATE_CMD="apt update && apt install awscli redis -y"
else
    UPDATE_CMD="sudo apt update && sudo apt install awscli redis -y"
fi

echo "Escolha um serviço:"
echo "1. SQS Standard"
echo "2. SQS FIFO"
echo "3. Secrets Manager"
echo "4. S3"

read -p "Digite o número correspondente ao serviço desejado: " opcao

case $opcao in
    1)
        echo "Digite a url do SQS Standard:"
        read url_standard
        # Executa o comando de envio de mensagem para o SQS Standard
        aws sqs send-message --queue-url $url_standard --message-body "Envio de mensagem de dentro do pod"
        ;;
    2)
        echo "Digite a url do SQS FIFO."
        read url_fifo
        aws sqs send-message --queue-url "$url_fifo" --message-group-id 100 --message-deduplication-id 100 --message-body "Envio de mensagem de dentro do pod para fila fifo"
        ;;
    3)
        echo "Digite o arn do SecretsManager: "
        read arn_sm
        sleep 2     
        RESULT=$(aws secretsmanager get-secret-value --secret-id $arn_sm --query SecretString --output text | sed 's/\"//g' | sed 's/{//g' | sed 's/}//g' | sed 's/:/ /g')
        echo $RESULT
        ;;
    4)
        echo "Digite o nome do bucket: "
        read bucket_name
        echo "Novo arquivo para envio de teste" > script_teste.txt
        aws s3 cp script_teste.txt s3://$bucket_name
        ;;
    *)
        echo "Opção inválida. Por favor, escolha um número de 1 a 4."
        ;;
esac
