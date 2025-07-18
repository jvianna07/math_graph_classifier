#!/bin/bash

#Link do arquivo: https://drive.google.com/file/d/1SqDrEWdYIKbx71ycqHDi81R7l6trl26V/view?usp=sharing

dataset_OK="Dataset baixado com sucesso!"
dataset_error="Erro ao baixar o dataset!"


# Cores para terminal
RED='\033[0;31m' #cor vermelha
RESET='\033[0m' #restaura para cor original

# Função para checar status do último comando
# Uso: check_status "Mensagem de sucesso" "Mensagem de erro"
check_status() {
    if [[ $? == 0 ]] 
    then
        echo "$1 "
    else
        echo -e "${RED}$2 ${RESET}"
    fi
}

# ID do arquivo no Google Drive
file_id="-1SqDrEWdYIKbx71ycqHDi81R7l6trl26V"

# Baixa o arquivo com gdown
echo "Baixando dataset.pkl.zip com gdown..."
gdown "$file_id" --output "dataset.pkl.zip"
check_status "Dataset baixado com sucesso" "Erro ao baixar do dataset."

# Descompactar o arquivo 
echo "Descompactando o dataset..."
unzip -o dataset.pkl.zip
check_status "Dataset descompactado com sucesso!" "Erro ao descompactar o dataset."

# Remover Arquivos duplicados 
echo "Removendo arquivos duplicados..."
rm dataset.pkl.zip
check_status "Arquivos duplicados foram removidos!" "Erro ao remover arquivos duplicados."

# Criando o dataset 
echo "Criando o dataset..."
mkdir -p dataset && mv -f LID_fg_dataset.pkl dataset/dataset.pkl
check_status "Dataset criado com sucesso!" "Erro ao criar o dataset."

